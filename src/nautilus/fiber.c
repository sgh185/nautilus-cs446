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
 * Copyright (c) 2019, Enrico Deiana <3nric000@gmail.com>
 * Copyright (c) 2019, Peter A. Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2019, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Authors: Michael A. Cuevas <cuevas@u.northwestern.edu>
 *          Enrico Deiana <3nric000@gmail.com>
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

extern void nk_fiber_context_switch(nk_fiber_t *cur, nk_fiber_t *next);
extern void _exit_switch(nk_fiber_t *next);
extern nk_fiber_t *nk_fiber_fork_switch(nk_fiber_t *f_from, nk_fiber_t *f_to);

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
  fiber->fid = fiber;

  // Initializes the fiber's list field
  INIT_LIST_HEAD(&(fiber->l_head)); 

  // Sets wait queue count to 0
  fiber->num_wait = 0;
  fiber->wait_queue = malloc(sizeof(struct fiber_queue));
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
  
  //enqueues the fiber into the chosen fiber thread's queue
 // fiber_queue *fiber_sched_queue = &(curr_thread->fiber_sched_queue);
  struct list_head *fiber_sched_queue = &(curr_thread->f_sched_queue);
  //DEBUG: Prints the fiber that is about to be enqueued and the CPU it will be enqueued on
  //FIBER_INFO("nk_fiber_run() : about to enqueue a fiber: %p cpu: %d\n", f, curr_thread->current_cpu); 
  //fiber_queue_enqueue(fiber_sched_queue, f);
  list_add_tail(&(f->l_head), fiber_sched_queue);

  //if the fiber thread is sleeping, wake it up so it can start the fibers
  if(curr_thread->timer){
    //DEBUG: Prints info whenever a fiber thread is awakened
    //FIBER_INFO("nk_fiber_run() : waking fiber thread\n");
    //FIBER_INFO("nk_fiber_run() : curr_thread = %p %s timer = %p %s cpu = %d \n", curr_thread, curr_thread->name, curr_thread->timer, curr_thread->timer->name, curr_thread->current_cpu);
    nk_timer_cancel(curr_thread->timer);
  }

  return 0;
}

int nk_fiber_start(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, uint8_t random_cpu_flag, nk_fiber_t **fiber_output){
  nk_fiber_create(fun, input, output, stack_size, fiber_output);
  nk_fiber_run(*fiber_output, random_cpu_flag);

  return 0;
}

int nk_fiber_yield(){
  // Get the fiber we are switching to
  nk_fiber_t *f_to = _rr_policy();
  //DEBUG: Indicates what fiber was picked to schedule
  //FIBER_INFO("The fiber picked to schedule is %p\n", f_to); 
  nk_fiber_t *f_iter = NULL;
    struct list_head *f_sched = &(_get_fiber_thread()->f_sched_queue);
    list_for_each_entry(f_iter, f_sched, l_head){

    //DEBUG: Will print out the fiber queue for this CPU's fiber thread
    //FIBER_INFO("The fiber queue contains fiber: %p\n", f_iter);
    }
    //DEBUG: Will indicate when fiber queue is done printing (to indicate whether queue is finite)
    //FIBER_INFO("Done printing out the fiber queue.\n");

  //if f_to is NULL, there are no fibers in the queue, and therefore there are no fibers to switch to
  // we can then exit early and sleep
  if(f_to == NULL){
   return 0;
  }
  // Utility function to perform enqueue and other housekeeping
  return _nk_fiber_yield_to(f_to);
}

int nk_fiber_yield_to(nk_fiber_t *f_to){
  // remove f_to from its respective fiber queue
  if(_check_all_queues_remove(f_to)){
    //DEBUG: Will indicate whether the fiber we're attempting to yield to was not found
    //FIBER_INFO("yield_to() : Failed to find fiber in queues :(\n");
    
    // If the fiber could not be found, we need to pick a random fiber to yield to instead
    _nk_fiber_yield_to(_rr_policy());
    // Return 1 to indicate failure
    return 1;
  }

  // use utility function to perform rest of yield
  // returns 0 to indicate we found and removed f_to from the queue and sucessfully yielded
  _nk_fiber_yield_to(f_to);
  return 0;
}

int nk_fiber_conditional_yield(nk_fiber_t *fib, uint8_t (*cond_function)(void *), void *state){

  return 0;
}

nk_fiber_t *nk_fiber_fork(){
  // current fiber is fetched
  nk_fiber_t *curr = _nk_fiber_current();
  
  // new fiber struct is allocated using current fiber's data
  nk_fiber_t *new;
  nk_fiber_create(curr->fun, curr->input, 0, curr->stack_size, &new);
  
  // current fiber's stack is copied to new fiber
  memcpy(new->stack, curr->stack, curr->stack_size);
  new->num_wait = curr->num_wait;
  memcpy(new->wait_queue, curr->wait_queue, sizeof(curr->wait_queue));

  // reference counts of fibers in the wait queue are incremented
  fiber_queue *newq = new->wait_queue;
  nk_fiber_t *temp;
  for(int iter = 0; iter < newq->size; iter++){
    temp = newq->fibers[newq->head + iter];
    if(temp != 0){
      temp->num_wait++;
    }
  }
  // add the original fiber back to the sched queue
  nk_thread_t *cur_thread = _get_fiber_thread();
  struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
  list_add_tail(&(curr->l_head), fiber_sched_queue);

  // switch to the new fiber
  get_cur_thread()->curr_fiber = new;
  nk_fiber_t *ret = nk_fiber_fork_switch(curr, new);
  return ret;
}

void nk_fiber_join(nk_fiber_t *wait_on){
  nk_fiber_t *curr_fiber = _nk_fiber_current();
  FIBER_INFO("nk_fiber_join() : about to enqueue a fiber on the wait queue %p\n", wait_on->wait_queue);
  // Not safe, need to lock before we enqueue
  FIBER_INFO("nk_fiber_join() : the fiber is %p\n", curr_fiber);
  fiber_queue_enqueue(wait_on->wait_queue, curr_fiber);
  // Not safe, need to lock before we increment
  curr_fiber->num_wait++;
  nk_fiber_yield();
  return;
}

void nk_fiber_set_vc(struct nk_virtual_console *vc){
  nk_fiber_t* curr_fiber = _nk_fiber_current();
  curr_fiber->vc = vc;
  get_cur_thread()->vc = vc;

  return;
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
  // Set current fiber
  //get_cur_thread()->curr_fiber = 

  // Execute fiber function
  FIBER_DEBUG("_fiber_wrapper BEGIN\n");
  f_to->fun(f_to->input, f_to->output);
  FIBER_DEBUG("_fiber_wrapper END\n");

  // Exit when fiber function ends
  //MAC: This is kind of a messy fix, maybe we can find a better way to avoid adding the fiber back into the queue
  get_cur_thread()->curr_fiber = _nk_idle_fiber();
  list_del_init(&(get_cur_thread()->curr_fiber->l_head));
  _nk_fiber_exit(f_to);

  return;
}

/* Utility function that sets up
the given fiber's stack
 * The stack will look like:
 *
 * ________________________
 *| Ptr to Fiber's Routine |
 *|________________________|
 *|   Dummy  GPR VALUES    |
 *|           .            |
 *|           .            |
 *|           .            |
 *| ptr to f in rdi's spot |
 *|                        |
 *|  Remaining dummy GPRs  |
 *|________________________|
 *
 * Order of GPRs can be found in include/nautilus/fiber.c
 * All values except %rdi are dummy values
 * %rdi's stack position will contain ptr to fiber (stack).
 * When we pop these values off the stack, ptr to fiber
 * will go into %rdi which is first argument register.
 * We can then use this in context switch assembly to help
 * us switch stacks.
 *
 */

void _nk_fiber_init(nk_fiber_t *f){
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
  _fiber_push(f, 0xdeadbeef1234567aul);
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
  // Get the queue from the fiber thread on the current CPU
  nk_thread_t *cur_thread = _get_fiber_thread();
  //fiber_queue *fiber_sched_queue = &(cur_thread->fiber_sched_queue); 
  struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
  nk_fiber_t *fiber_to_schedule = NULL;
  // Pick the fiber at the front of the queue and return it (will return 1 if no fibers in queue)
  if(!(list_empty(fiber_sched_queue))){
    fiber_to_schedule = list_first_entry(fiber_sched_queue, nk_fiber_t, l_head);
    list_del_init(&(fiber_to_schedule->l_head));
  } else{
    list_del_init(fiber_sched_queue);
    }
 /* nk_fiber_t *fiber_to_schedule = fiber_queue_dequeue(fiber_sched_queue);
*/
  nk_thread_t *current_t = get_cur_thread();
  //DEBUG: prints the fiber that was just dequeued and indicates current and idle fiber
  //FIBER_INFO("_rr_policy() : just dequeued a fiber : %p\n", fiber_to_schedule);
  //FIBER_INFO("_rr_policy() : current fiber is %p and idle fiber is %p\n", current_t->curr_fiber, cur_thread->idle_fiber); 
  
  // Returns the fiber to schedule
  return fiber_to_schedule;
}

int _nk_fiber_yield_to(nk_fiber_t *f_to){
  // Get the current fiber
  nk_fiber_t *f_from = _nk_fiber_current();
  //FIBER_INFO("Current queue size is %d\n", _get_fiber_thread()->fiber_sched_queue.size);
 
 // Enqueue the current fiber
  if(f_to->fid != f_from->fid && f_from->num_wait <= 0) {
    nk_thread_t *cur_thread = _get_fiber_thread();
    //fiber_queue *fiber_sched_queue = &(cur_thread->fiber_sched_queue);
    struct list_head *fiber_sched_queue = &(cur_thread->f_sched_queue);
    // DEBUG: Prints the fiber that's about to be enqueued
    //FIBER_INFO("nk_fiber_yield() : About to enqueue fiber: %p \n", f_from);
    //fiber_queue_enqueue(fiber_sched_queue, f_from);
    list_add_tail(&(f_from->l_head), fiber_sched_queue);
  }

  // Context switch
  get_cur_thread()->curr_fiber = f_to;
  if(!f_from->is_idle){ 
    nk_fiber_set_vc(f_from->vc);
  }

  nk_fiber_context_switch(f_from, f_to);

  return 0;
}

void _nk_fiber_exit(nk_fiber_t *f){
  // Get the idle fiber for the current CPU
  nk_fiber_t *idle = _nk_idle_fiber();
  nk_fiber_t *temp = 0xdeadbeef12345670ul;
  // On exit, go through each fiber in wait queue
  FIBER_INFO("_nk_fiber_exit() : queue size is %d\n", f->wait_queue->size);
  while(f->wait_queue->size > 0){
    FIBER_INFO("nk_fiber_exit() : made it here, queue is %p\n", f->wait_queue);
    FIBER_INFO("nk_fiber_exit() : fiber tail %d, fiber head %d\n", f->wait_queue->head, f->wait_queue->tail);
    temp = fiber_queue_dequeue(f->wait_queue);
    FIBER_INFO("nk_fiber_exit() : Entered the queue loop. Curr is %p, temp is %p and size is %d\n", f, temp, f->wait_queue->size);
    if(temp != 0){
      temp->num_wait--;
      FIBER_INFO("nk_fiber_exit() : got to the inner if, num wait is %d\n", temp->num_wait);
      if(temp->num_wait <= 0){
        nk_fiber_run(temp, 1);
      }
    }
  }
  // Mark the current fiber as done (since we are exiting)
  f->is_done = 1;

  // Free the current fiber's memory (stack and stack ptr)
  free(f->stack);
  free(f->wait_queue);
  free(f);
  
  // Switch back to the idle fiber using special exit function
  _exit_switch(idle);

  return;
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
  struct sys_info *sys = per_cpu_get(system);
  int cpu_iter = sys->num_cpus;
  struct list_head *temp;
  nk_fiber_t *test;
  for(int iter = 0; iter < cpu_iter; iter++){
    temp = &(sys->cpus[iter]->fiber_thread->f_sched_queue);
    list_for_each_entry(test, temp, l_head){
      //DEBUG: Prints all the fibers (and queues) that are being checked
      //FIBER_INFO("_check_all_queues_remove() : %d outer loop and %p is the temp fiber\n", iter, test);
      if(test->fid == to_del->fid){
        list_del_init(&(to_del->l_head));
        return  0;
      }
    }
  }
  return 1;
}


