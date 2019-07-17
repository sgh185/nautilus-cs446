/* 
 * This file is part of the Nautilus AeroKernel developed
 * by the Hobbes and V3VEE Projects with funding from the 
 * United States National  Science Foundation and the Department of Energy.  
 *
 * The V3VEE Project is a joint project between Northwestern University
 * and the University of New Mexico.  The Hobbes Project is a collaboration
 * led by Sandia National Laboratories that includes several national 
 * laboratories and universities. You can find out more at:
 * http://www.v3vee.org  and
 * http://xstack.sandia.gov/hobbes
 *
 * Copyright (c) 2019, Michael A. Cuevas <cuevas@u.northwestern.edu>
 * Copyright (c) 2019, Enrico Deiana <ead@u.northwestern.edu>
 * Copyright (c) 2019, Peter A. Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2019, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Authors: Michael A. Cuevas <cuevas@u.northwestern.edu>
 *          Enrico Deiana <ead@u.northwestern.edu>
 *          Peter A. Dinda <pdinda@northwestern.edu>
 *
 * This is free software.  You are permitted to use,
 * redistribute, and modify it as specified in the file "LICENSE.txt".
 */
#include <nautilus/nautilus.h>
#include <nautilus/cpu.h>
#include <nautilus/naut_assert.h>
#include <nautilus/irq.h>
#include <nautilus/idle.h>
#include <nautilus/paging.h>
#include <nautilus/fiber.h>
#include <nautilus/waitqueue.h>
#include <nautilus/timer.h>
#include <nautilus/percpu.h>
#include <nautilus/atomic.h>
#include <nautilus/list.h>
#include <nautilus/errno.h>
#include <nautilus/mm.h>
#include <nautilus/random.h>

#ifndef NAUT_CONFIG_DEBUG_FIBERS
#undef  DEBUG_PRINT
#define DEBUG_PRINT(fmt, args...)
#endif
#define FIBER_INFO(fmt, args...) INFO_PRINT("Fiber: " fmt, ##args)
#define FIBER_ERROR(fmt, args...) ERROR_PRINT("Fiber: " fmt, ##args)
#define FIBER_DEBUG(fmt, args...) DEBUG_PRINT("Fiber: " fmt, ##args)
#define FIBER_WARN(fmt, args...)  WARN_PRINT("Fiber: " fmt, ##args)
#define LAUNCHPAD 16
#define STACK_CLONE_DEPTH 2
#define GPR_RAX_OFFSET 0x70

extern void nk_fiber_context_switch(nk_fiber_t *cur, nk_fiber_t *next);
extern void _exit_switch(nk_fiber_t *next);
extern nk_fiber_t *nk_fiber_fork();
extern void _nk_fiber_fork_exit();

/******** EXTERNAL INTERFACE **********/

int nk_fiber_create(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, nk_fiber_t **fiber_output){
  // Create pointer to fiber, initialize to NULL
  nk_fiber_t *fiber = NULL;

  // Get stack size
  nk_stack_size_t required_stack_size = stack_size ? stack_size: PAGE_SIZE;

  // Allocate space for a fiber
  fiber = malloc(sizeof(nk_fiber_t));

  // Check if an error happened when allocating space for a nk_fiber_t
  if (!fiber) {
    // Print error here
    return -EINVAL;
  }

  // Initialize the whole struct with zeros
  memset(fiber, 0, sizeof(nk_fiber_t));

  // Set stack size
  fiber->stack_size = required_stack_size;
 
  // Allocate stack space
  fiber->stack = (void*) malloc(required_stack_size);

  // Check if an error happened when allocating space for the stack
  if (!fiber->stack){
    // Print error here
    // Free the previously allocated nk_fiber_t
    free(fiber);
    return -EINVAL;
  }

  // Initialize function, input, and output related to the fiber
  fiber->fun = fun;
  fiber->input = input;
  fiber->output = output;

  // Initialize the fiber's stack
  _nk_fiber_init(fiber);

  // Return the fiber
  if (fiber_output){
    *fiber_output = fiber;
  }
  fiber->vc = get_cur_thread()->vc;

  // Initializes the fiber's list field
  INIT_LIST_HEAD(&(fiber->l_head)); 

  // Sets wait queue count to 0
  fiber->num_wait = 0;
  fiber->wait_queue = malloc(sizeof(struct fiber_queue));
  // Checks to see if malloc failed
  if(!(fiber->wait_queue)){
    return  -EINVAL;
  }
  // initializes fiber wait queue to 0
  fiber_queue_init(fiber->wait_queue);

  return 0;
}

int nk_fiber_run(nk_fiber_t *f, uint8_t random_cpu_flag){
  //by default, the curr_thread is is set to the fiber thread
  nk_thread_t *curr_thread = _get_fiber_thread();
  
  //if the random cpu flag is set, the fiber will be placed on a random fiber thread's queue
  if (random_cpu_flag){
    curr_thread = _get_random_fiber_thread();
  }
  
  // Enqueues the fiber into the chosen fiber thread's queue.
  struct list_head *fiber_sched_queue = &(curr_thread->f_sched_queue);
  
  //DEBUG: Prints the fiber that is about to be enqueued and the CPU it will be enqueued on
  //FIBER_INFO("nk_fiber_run() : about to enqueue a fiber: %p on cpu: %d\n", f, curr_thread->current_cpu); 
  list_add_tail(&(f->l_head), fiber_sched_queue);

  // Wake up fiber thread if it is sleeping (so it can schedule & run fibers)
  if(curr_thread->timer){
    //DEBUG: Prints info whenever a fiber thread is awakened
    //FIBER_INFO("nk_fiber_run() : waking fiber thread\n");
    //FIBER_INFO("nk_fiber_run() : curr_thread = %p named %s, timer = %p named %s, cpu = %d \n", curr_thread, curr_thread->name, curr_thread->timer, curr_thread->timer->name, curr_thread->current_cpu);
    nk_timer_cancel(curr_thread->timer);
  }

  return 0;
}

int nk_fiber_start(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, uint8_t random_cpu_flag, nk_fiber_t **fiber_output){
  // Creates fiber and puts it into scheduling queue
  nk_fiber_create(fun, input, output, stack_size, fiber_output);
  nk_fiber_run(*fiber_output, random_cpu_flag);

  return 0;
}

int nk_fiber_yield(){
  // Pick a random fiber to yield to (NULL if no fiber in queue)
  nk_fiber_t *f_to = _rr_policy();

  //DEBUG: Indicates what fiber was picked to schedule
  //FIBER_INFO("The fiber picked to schedule is %p\n", f_to); 
  
  
  /*DEBUG: Will print out the fiber queue for this CPU's fiber thread
  nk_fiber_t *f_iter = NULL;
  struct list_head *f_sched = &(_get_fiber_thread()->f_sched_queue);
  list_for_each_entry(f_iter, f_sched, l_head){

    FIBER_INFO("The fiber queue contains fiber: %p\n", f_iter);
    }
    //DEBUG: Will indicate when fiber queue is done printing (to indicate whether queue is finite)
    FIBER_INFO("Done printing out the fiber queue.\n");
  */

  // If f_to is NULL, there are no fibers in the queue
  // We can then exit early and sleep
  if(f_to == NULL){
   return 0;
   FIBER_INFO("nk_fiber_yield() : yield aborted. Returning 0\n");
  }
  // Utility function to perform enqueue and other yield housekeeping
  return _nk_fiber_yield_to(f_to);
}

int nk_fiber_yield_to(nk_fiber_t *f_to){
  // Remove f_to from its respective fiber queue (need to check all CPUs)
  // This is currently not safe, fiber may be running and therefore not in sched queue
  if(_check_all_queues_remove(f_to)){
    //DEBUG: Will indicate whether the fiber we're attempting to yield to was not found
    //FIBER_INFO("yield_to() : Failed to find fiber in queues :(\n");
    
    // If the fiber could not be found, we need to yield to a random fiber instead
    _nk_fiber_yield_to(_rr_policy());
    // Return 1 to indicate failure
    return 1;
  }

  // Use utility function to perform rest of yield
  _nk_fiber_yield_to(f_to);
  
  // returns 0 to indicate we successfully yielded to f_to
  return 0;
}

int nk_fiber_conditional_yield(nk_fiber_t *fib, uint8_t (*cond_function)(void *param), void *state){
  if(cond_function(state)){
    nk_fiber_yield();
    return 0;
  }
  return 1;
}

nk_fiber_t *__nk_fiber_fork(){
  // Fetch current fiber
  nk_fiber_t *curr = _nk_fiber_current();

  // Variables needed to hold stack frame information
  uint64_t size, alloc_size;
  uint64_t     rbp1_offset_from_ret0_addr;
  uint64_t     rbp_stash_offset_from_ret0_addr;
  uint64_t     rbp_offset_from_ret0_addr;
  void         *child_stack;
  uint64_t     rsp;

  // Store the value of %rsp into var rsp and clobber memory
  __asm__ __volatile__ ( "movq %%rsp, %0" : "=r"(rsp) : : "memory");
 
  void *rbp0      = __builtin_frame_address(0);                   // current rbp, *rbp0 = rbp1
  void *rbp1      = __builtin_frame_address(1);                   // caller rbp, *rbp1 = rbp2  (forker's frame)
  void *rbp_tos   = __builtin_frame_address(STACK_CLONE_DEPTH);   // should scan backward to avoid having this be zero or crazy
  void *ret0_addr = rbp0 + 8;
  //FIBER_INFO("__nk_fiber_fork() : rbp0: %p, rbp1: %p, rbp_tos: %p, ret0_addr: %p\n", rbp0, rbp1, rbp_tos, ret0_addr);
  if ((uint64_t)rbp_tos <= (uint64_t)curr->stack ||
	(uint64_t)rbp_tos >= (uint64_t)(curr->stack + curr->stack_size)) { 
	//FIBER_INFO("__nk_fiber_fork() : Cannot resolve %lu stack frames on fork, using just one\n", STACK_CLONE_DEPTH);
        rbp_tos = rbp1;
    }


    // this is the address at which the fork wrapper (nk_fiber_fork) stashed
    // the current value of rbp - this must conform to the REG_SAVE model
    // in fiber.h
  void *rbp_stash_addr = ret0_addr + 9*8; 
  
  // from last byte of tos_rbp to the last byte of the stack on return from this function 
    // (return address of wrapper)
    // the "launch pad" is added so that in the case where there is no stack frame above the caller
    // we still have the space to fake one.
  size = (rbp_tos + 8) - ret0_addr + LAUNCHPAD;
  rbp1_offset_from_ret0_addr = rbp1 - ret0_addr;

  rbp_stash_offset_from_ret0_addr = rbp_stash_addr - ret0_addr;
  rbp_offset_from_ret0_addr = (*(void**)rbp_stash_addr) - ret0_addr;
  alloc_size = curr->stack_size;
 
  //FIBER_INFO("__nk_fiber_fork() : rbp_stash_addr: %p, rbp1_offset_from_ret0: %p, rbp_stash_offset: %p, rbp_offset_from: %p\n", rbp_stash_addr, rbp1_offset_from_ret0_addr, rbp_stash_offset_from_ret0_addr, rbp_offset_from_ret0_addr);
   
  // Allocate new fiber struct using current fiber's data
  nk_fiber_t *new;
  nk_fiber_create(NULL, NULL, 0, alloc_size, &new);
  
  // current fiber's stack is copied to new fiber
  _fiber_push(new, (uint64_t)&_nk_fiber_cleanup);  
  
  child_stack = new->stack;
  //FIBER_INFO("__nk_fiber_fork() : child_stack: %p, alloc_size: %p, size: %p\n", child_stack, alloc_size, size);
  memcpy(child_stack + alloc_size - size, ret0_addr, size - LAUNCHPAD);
  new->rsp = (uint64_t)(child_stack + alloc_size - size + 0x8);
  //FIBER_INFO("__nk_fiber_fork() : new->rsp is %p\n", new->rsp); 

  // Update the child's snapshot of rbp on its stack (that was done
   // by nk_thread_fork()) with the corresponding position in the child's stack
   // when nk_thread_fork() unwinds the GPRs, it will end up with rbp pointing
   // into the cloned stack
  void **rbp_stash_ptr = (void**)(new->rsp + rbp_stash_offset_from_ret0_addr - 0x8);
  *rbp_stash_ptr = (void*)(new->rsp + rbp_offset_from_ret0_addr);
  
  // Determine caller's rbp copy and return address in the child stack
  void **rbp2_ptr = (void**)(new->rsp + rbp1_offset_from_ret0_addr + 0x8);
  void **ret2_ptr = rbp2_ptr-1;
   
  //FIBER_INFO("__nk_fiber_fork() : rbp_stash_ptr: %p, rbp2_ptr: %p, ret2_ptr: %p\n", rbp_stash_ptr, rbp2_ptr, ret2_ptr);
  // rbp2 we don't care about since we will not not
  // return from the caller in the child, but rather go into the thread cleanup
  *rbp2_ptr = 0x0ULL;

  // fix up the return address to point to our thread cleanup function
  // so when caller returns, the thread exists
  *ret2_ptr = &_nk_fiber_cleanup;
  
  // now we need to setup the interrupt stack etc.
  // we provide null for thread func to indicate this is a fork
  //new->fun = &_nk_fiber_cleanup; 
  //_nk_fiber_fork_init(new); 

 

  //DEBUG: Printing the fibers data
  //FIBER_INFO("nk_fiber_fork() : printing fiber data for curr fiber. ptr %p, stack ptr %p\n", curr, curr->rsp);
  //FIBER_INFO("nk_fiber_fork() : printing fiber data for new fiber. ptr %p, stack ptr %p\n", new, new->rsp); 
  //FIBER_INFO("nk_fiber_fork() : printing queues. old fiber queue %p, new queue %p\n", curr->wait_queue, new->wait_queue);  

  /* Add the original fiber back to the sched queue
  nk_thread_t *cur_thread = _get_fiber_thread();
  struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
  list_add_tail(&(curr->l_head), fiber_sched_queue);
  
  //DEBUG: Prints Enqueued info
  FIBER_INFO("nk_fiber_fork() : just enqueued fiber %p\n", curr);

  // Switch to the new fiber
  get_cur_thread()->curr_fiber = new;
  nk_fiber_t *ret = nk_fiber_fork_switch(curr, new);
  FIBER_INFO("nk_fiber_fork() : just switched to the new fiber\n");
  */
  *(uint64_t*)(new->rsp+GPR_RAX_OFFSET) = 0x0ul;
  nk_fiber_run(new, 0); 
  return new;
}

void nk_fiber_join(nk_fiber_t *wait_on){
  // Check if wait_on is NULL
  if(!wait_on){
    return;
  }
  // Fetchees current fiber
  nk_fiber_t *curr_fiber = _nk_fiber_current();
  // DEBUG: Prints out our intent to add curr_fiber to wait_on's wait queue
  //FIBER_INFO("nk_fiber_join() : about to enqueue fiber %p on the wait queue %p\n", curr_fiber, wait_on->wait_queue);

  // MAC TODO: Should check if wait_on is a valid fiber? But how?

  // Adds curr_fiber to wait_on's wait queue
  // Not safe, need to lock before we enqueue
  fiber_queue_enqueue(wait_on->wait_queue, curr_fiber);
  
  // Increments the number of fibers curr_fiber is waiting on
  // This indicates to yield that the fiber should not be re-enqueued
  
  // Not safe, need to lock before we increment
  curr_fiber->num_wait++;
  
  // Handled by special case in fiber yield
  // TODO: Could also attempt to yield directy to wait_on (might speed up wait time)?
  nk_fiber_yield();
}

void nk_fiber_set_vc(struct nk_virtual_console *vc){
  // Fetches current fiber
  nk_fiber_t* curr_fiber = _nk_fiber_current();

  // Changes the vc of current fiber and the current thread
  curr_fiber->vc = vc;
  get_cur_thread()->vc = vc;
}

/******** INTERNAL INTERFACE **********/

/*
 * utility function for setting up
 * a fiber's stack 
 */
void _fiber_push(nk_fiber_t * f, uint64_t x){
    f->rsp -= 8;
    *(uint64_t*)(f->rsp) = x;
}

void _fiber_wrapper(nk_fiber_t* f_to){
  // Execute fiber function
  FIBER_DEBUG("_fiber_wrapper BEGIN\n");
  f_to->fun(f_to->input, f_to->output);
  FIBER_DEBUG("_fiber_wrapper END\n");

  // Exit when fiber function ends
  // Starts each fiber on f's wait queue and switches stacks to idle fiber
  //FIBER_INFO("_nk_fiber_exit() : exiting from fiber %p\n", f_to);
  _nk_fiber_exit(f_to);

  return;
}

/* Utility function that sets up the given fiber's stack
 *
 * The stack will look like:
 *
 * ________________________
 *|                        |
 *|  Ptr to Fiber Wrapper  |
 *|________________________|
 *|                        |
  |    Dummy GPR VALUES    |
 *|           .            |
 *|           .            |
 *|           .            |
 *| ptr to f in rdi's spot |
 *|           .            |
 *|           .            |
 *|           .            |
 *|  Remaining dummy GPRs  |
 *|________________________|
 *
 * Order of GPRs can be found in include/nautilus/fiber.c
 * All values except %rdi are dummy values.
 * %rdi's stack position will contain ptr to fiber (stack).
 * We use this setup in context switch assembly code
 * to help us switch stacks.
 * We pop these values off the stack and ptr to fiber
 * will go into %rdi which is first argument register. We
 * can then retq to Fiber Wrapper and the first argument will
 * be the fiber in  %rdi. This allows us to run the routine
 * held in the fiber structure.
 *
 */

void _nk_fiber_init(nk_fiber_t *f){
  f->rsp = (uint64_t) f->stack + f->stack_size;
  _fiber_push(f, (uint64_t) _fiber_wrapper);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, (uint64_t) f);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0x0ul);

  return;
}

void _nk_fiber_debug_init(nk_fiber_t *f){
  f->rsp = (uint64_t) f->stack + f->stack_size;
  _fiber_push(f, (uint64_t) _fiber_wrapper);
  _fiber_push(f, 0xdeadbeef12345670ul);
  _fiber_push(f, 0xdeadbeef12345671ul);
  _fiber_push(f, 0xdeadbeef12345672ul);
  _fiber_push(f, 0xdeadbeef12345673ul);
  _fiber_push(f, 0xdeadbeef12345674ul);
  _fiber_push(f, (uint64_t) f);
  _fiber_push(f, 0xdeadbeef12345675ul);
  _fiber_push(f, 0xdeadbeef12345676ul);
  _fiber_push(f, 0xdeadbeef12345677ul);
  _fiber_push(f, 0xdeadbeef12345678ul);
  _fiber_push(f, 0xdeadbeef12345679ul);
  _fiber_push(f, 0x0ul);
  _fiber_push(f, 0xdeadbeef1234567bul);
  _fiber_push(f, 0xdeadbeef1234567cul);
  _fiber_push(f, 0xdeadbeef1234567dul);

  return;
}


nk_fiber_t* _nk_fiber_current(){
  // returns the current CPU's current fiber
  nk_thread_t *curr_thread = get_cur_thread();
  return curr_thread->curr_fiber;
}

nk_fiber_t* _nk_idle_fiber(){
  // returns the idle fiber of the current CPU
  nk_thread_t *curr_thread = _get_fiber_thread();
  return curr_thread->idle_fiber;
}

nk_fiber_t* _rr_policy(){
  // Get the sched queue from the fiber thread on the current CPU
  nk_thread_t *cur_thread = _get_fiber_thread();
  struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
  
  
  // Pick the fiber at the front of the queue and return it if the queue is not empty
  nk_fiber_t *fiber_to_schedule = NULL;
  if(!(list_empty(fiber_sched_queue))){
    // Grab the first fiber from the sched queue
    fiber_to_schedule = list_first_entry(fiber_sched_queue, nk_fiber_t, l_head);
    
    // Remove the fiber from the sched queue
    list_del_init(&(fiber_to_schedule->l_head));
  } else {
    // If empty, reset the fiber sched queue
    // MAC: might be unecessary (?)
    list_del_init(fiber_sched_queue);
    }

  
  /*DEBUG: prints the fiber that was just dequeued and indicates current and idle fiber
  nk_thread_t *current_t = get_cur_thread();
  FIBER_INFO("_rr_policy() : just dequeued a fiber : %p\n", fiber_to_schedule);
  FIBER_INFO("_rr_policy() : current fiber is %p and idle fiber is %p\n", current_t->curr_fiber, cur_thread->idle_fiber); 
  */

  // Returns the fiber to schedule (or NULL if no fiber to schedule)
  return fiber_to_schedule;
}

int _nk_fiber_yield_to(nk_fiber_t *f_to){
  // Get the current fiber
  nk_fiber_t *f_from = _nk_fiber_current();
  // DEBUG: Prints the current queue size
  //FIBER_INFO("Current queue size is %d\n", _get_fiber_thread()->fiber_sched_queue.size);
 
 // Enqueue the current fiber (if not on wait queue)
  if(f_to != f_from && f_from->num_wait <= 0) {
    // Gets the sched queue for the current CPU
    nk_thread_t *cur_thread = _get_fiber_thread();
    struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
    
    // DEBUG: Prints the fiber that's about to be enqueued
    //FIBER_INFO("nk_fiber_yield() : About to enqueue fiber: %p \n", f_from);
    
    // Adds fiber we're switching away from to the current CPU's fiber queue
    list_add_tail(&(f_from->l_head), fiber_sched_queue);
  }
  
  // Change the vc of the current thread if we aren't switching away from the idle fiber
  // TODO: MAC: Might not do what I think it does
  if(!f_from->is_idle){ 
    nk_fiber_set_vc(f_from->vc);
  }
  
  // Context switch (register saving and stack change)
  get_cur_thread()->curr_fiber = f_to;
  nk_fiber_context_switch(f_from, f_to);

  return 0;
}

void _nk_fiber_exit(nk_fiber_t *f){
   // Get the idle fiber for the current CPU
  nk_fiber_t *idle = _nk_idle_fiber();
  
  // DEBUG: Prints out the exiting fiber's wait queue size
  //FIBER_INFO("_nk_fiber_exit() : queue size is %d\n", f->wait_queue->size);
  
  // On exit, go through each fiber in wait queue
  nk_fiber_t *temp;
  fiber_queue *waitq = f->wait_queue; 
  // DEBUG: Prints out wait queue address, head, and tail.
  //FIBER_INFO("_nk_fiber_exit() : The wait queue is %p on fiber %p\n", waitq, f);
  //FIBER_INFO("_nk_fiber_exit() : waitq head %d, waitq tail %d, and waitq size %d\n", waitq->head, waitq->tail, waitq->size);
    
  while(waitq->size > 0){
    // Dequeue a fiber from the waitq
    temp = fiber_queue_dequeue(f->wait_queue);
    // DEBUG: Prints out what fibers are in waitq and what the waitq size is
    //FIBER_INFO("_nk_fiber_exit() : In waitq loop. Temp is %p and size is %d\n", temp, waitq->size);
    if(temp != 0){
      // Decrease the number of fibers temp is waiting on
      temp->num_wait--;
      // DEBUG: prints the number of fibers that temp is waiting on
      //FIBER_INFO("_nk_fiber_exit() : got to the inner if, num wait is %d\n", temp->num_wait);
      if(temp->num_wait <= 0){
        // Adds the fiber back to the sched queue is it is done waiting
        nk_fiber_run(temp, 1);
      }
    }
  }
  // Mark the current fiber as done (since we are exiting)
  f->is_done = 1;

  //TODO: PROBABLY WANT TO DO THESE ATOMICALLY (Frees and changing curr fiber)
 
  /* if((_check_queue_not_empty(&(_get_fiber_thread()->f_sched_queue)))) {
    struct list_head *fiber_sched_queue = &(_get_fiber_thread()->f_sched_queue);
    nk_fiber_t *f_to = list_first_entry(fiber_sched_queue, nk_fiber_t, l_head);
    list_del_init(&(f_to->l_head));
    get_cur_thread()->curr_fiber = f_to;
  } else {*/
      // Changes current fiber to the idle fiber (since we are about to switch to it)
      get_cur_thread()->curr_fiber = idle;
    
      // Removes the idle fiber from the queue
      list_del_init(&(get_cur_thread()->curr_fiber->l_head));  
    //}
  // Free the current fiber's memory (stack, stack ptr, and wait queue)
  free(f->stack);
  free(f->wait_queue);
  free(f);
  
   // Switch back to the idle fiber using special exit function
  _exit_switch(idle);

  return;
}

void _nk_fiber_cleanup(){
  nk_fiber_t *curr = _nk_fiber_current();
  //FIBER_INFO("_nk_fiber_cleanup() : starting fiber cleanup on %p\n", curr);
  _nk_fiber_exit(curr);
}

uint8_t _is_idle_fiber(nk_fiber_t *f){
  nk_fiber_t *idle_fiber = _nk_idle_fiber();

  // if the argument fiber is the idle fiber, return 1
  uint8_t result = 0;
  if (idle_fiber == f){
    result = 1;
  }
 
  return result; 
}

static inline uint64_t _get_random()
{
    uint64_t t;
    nk_get_rand_bytes((uint8_t *)&t,sizeof(t));
    return t;
}

static int _nk_initial_placement()
{
    // Picks a random number between 0 and the number of CPUs
    struct sys_info * sys = per_cpu_get(system);
    return (int)(_get_random() % sys->num_cpus);
}

nk_thread_t *_get_random_fiber_thread(){
  // Picks a random CPU and returns that CPU's fiber thread
  int random_cpu = _nk_initial_placement();
  struct sys_info * sys = per_cpu_get(system);
  return sys->cpus[random_cpu]->fiber_thread;
}

nk_thread_t *_get_fiber_thread(){
  // returns the current CPU's fiber thread
  return get_cpu()->fiber_thread;
}

// Checks all queues for the specified fiber and removes it from the queue if found
int _check_all_queues_remove(nk_fiber_t *to_del){
  // Gets number of CPUs on system
  struct sys_info *sys = per_cpu_get(system);
  int cpu_iter = sys->num_cpus;

  // Iterates through sched queues on each CPU
  struct list_head *temp;
  nk_fiber_t *test;
  for(int iter = 0; iter < cpu_iter; iter++){
    // Checks each sched queue to see if it contains to_del
    temp = &(sys->cpus[iter]->fiber_thread->f_sched_queue);
    list_for_each_entry(test, temp, l_head){
      //DEBUG: Prints all the fibers (and queues) that are being checked
      //FIBER_INFO("_check_all_queues_remove() : %d outer loop and %p is the temp fiber\n", iter, test);
      
      // If the fiber is found, remove it from the sched queue and return 0 (to indicate success)
      if(test == to_del){
        list_del_init(&(to_del->l_head));
        return  0;
      }
    }
  }
  // Fiber was not found, return 1 to indicate failure
  return 1;
}

int _check_queue_not_empty(struct list_head *q) {
  int num = 0;
  nk_fiber_t *fib;
  list_for_each_entry(fib, q, l_head) {
    num++;
    if(num > 2){
      return 1;
    }
  }
  return 0;
}
