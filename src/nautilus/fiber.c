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
 * Copyright (c) 2015, Kyle C. Hale <kh@u.northwestern.edu>
 * Copyright (c) 2017, Peter A. Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2015, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Authors: Kyle C. Hale <kh@u.northwestern.edu>
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
#include <nautilus/queue.h>
#include <nautilus/list.h>
#include <nautilus/errno.h>
#include <nautilus/mm.h>
#include <nautilus/thread.h>

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

  _nk_fiber_init(fiber);

  // Return the fiber
  if (fiber_output){
    *fiber_output = fiber;
  }

  return 0;
}

int nk_fiber_run(nk_fiber_t *f)
{
  struct nk_thread *cur_thread = _get_fiber_thread();
  fiber_queue *fiber_sched_queue = &(cur_thread->fiber_sched_queue);
  FIBER_INFO("nk_fiber_run() : about to add a fiber to the queue, head is %d\n and addr %p and cur_thread %p\n", fiber_sched_queue->head, fiber_sched_queue, cur_thread); 
  fiber_queue_enqueue(fiber_sched_queue, f);
  FIBER_INFO("nk_fiber_run() : added fiber to the queue, head is %d and size is %d\n and addr %p and cur_thread %p\n", fiber_sched_queue->head, fiber_sched_queue->size, fiber_sched_queue, cur_thread);

  return 0;
}

int nk_fiber_start(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, nk_fiber_t **fiber_output){
  nk_fiber_create(fun, input, output, stack_size, fiber_output);
  nk_fiber_run(*fiber_output);

  return 0;
}

int nk_fiber_yield(){
  // Get the current fiber
  nk_fiber_t *f_from = _nk_fiber_current();

  // Get the fiber we are switching to
  nk_fiber_t *f_to = _rr_policy();
  // Note: optimization
  // special case: if f_to is 0, then it's the idle fiber
  // keep running the current fiber, and enqueue back the idle fiber

  // Enqueue the current fiber 

  struct nk_thread *cur_thread = _get_fiber_thread();
  fiber_queue *fiber_sched_queue = &(cur_thread->fiber_sched_queue);
  if(f_from != f_to){
    //idle fiber switch to idle fiber case
  FIBER_INFO("nk_fiber_yield() : about to enqueue a fiber, head is %d\n and addr is %p and cur_thread %p\n", fiber_sched_queue->head, fiber_sched_queue, cur_thread);
  fiber_queue_enqueue(fiber_sched_queue, f_from);
  }
  FIBER_INFO("nk_fiber_yield() : just enqueued a fiber, head is %d\n and addr is %p\n", fiber_sched_queue->head, fiber_sched_queue);
  //changing current fiber for wrapper
  cur_thread->curr_fiber = f_to;
  // Context switch
  nk_fiber_context_switch(f_from, f_to);

  // Change thread virtual console
  //_get_fiber_thread()->vc = f_to->vc ;
  FIBER_INFO("nk_fiber_yield(): changing vc %p\n", f_to->vc);

  return 0;
}

int nk_fiber_yield_to(nk_fiber_t *fib){

  return 0;
}

int nk_fiber_conditional_yield(nk_fiber_t *fib, uint8_t (*cond_function)(void *), void *state){

  return 0;
}

nk_fiber_t *nk_fiber_fork(){

  return NULL;
}

void nk_fiber_join(){

  return;
}

void nk_fiber_set_vc(struct nk_virtual_console *vc){
  nk_fiber_t* curr_fiber = _nk_fiber_current();
  curr_fiber->vc = vc;
  _get_fiber_thread()->vc = vc;

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

void _fiber_wrapper(nk_fiber_t *f){
  // Set current fiber
  nk_thread_t *curr_thread = _get_fiber_thread();
  //curr_thread->curr_fiber = f;
  nk_fiber_t *f_to = curr_thread->curr_fiber;
  // Execute fiber function
  FIBER_DEBUG("_fiber_wrapper BEGIN\n");
  f_to->fun(f_to->input, f_to->output);
  FIBER_DEBUG("_fiber_wrapper END\n");

  // Exit when fiber function ends
  _nk_fiber_exit(f_to);

  return;
}

void _nk_fiber_init(nk_fiber_t *f){
  // Setup stack
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
  nk_thread_t *curr_thread = _get_fiber_thread();

  return curr_thread->curr_fiber;
}

nk_fiber_t* _nk_idle_fiber(){
  nk_thread_t *curr_thread = _get_fiber_thread();

  return curr_thread->idle_fiber;
}

nk_fiber_t* _rr_policy(){
  nk_thread_t *cur_thread = _get_fiber_thread();
  fiber_queue *fiber_sched_queue = &(cur_thread->fiber_sched_queue);
  FIBER_INFO("_rr_policy() : about to dequeue a fiber, tail now %d\n and addr is %p and cur_thread is %p\n", fiber_sched_queue->tail, fiber_sched_queue, cur_thread);
  nk_fiber_t *fiber_to_schedule = fiber_queue_dequeue(fiber_sched_queue);
  FIBER_INFO("_rr_policy() : dequeued a fiber, tail now %d\n and addr is %p\n", fiber_sched_queue->tail, fiber_sched_queue);
  
  
  // If it is the idle fiber reinsert it into the fiber_queue (or do not dequeue it)
  uint8_t idle_fiber_check = _is_idle_fiber(fiber_to_schedule);
  if (idle_fiber_check){
    nk_fiber_t *idle_fiber = _nk_idle_fiber();
    FIBER_INFO("_rr_policy() : about to enqueue a fiber, head now %d\n and addr is %p\n", fiber_sched_queue->head, fiber_sched_queue);
    fiber_queue_enqueue(fiber_sched_queue, idle_fiber);
    FIBER_INFO("_rr_policy() : just enqueued a fiber, head now %d\n and addr is %p\n", fiber_sched_queue->head, fiber_sched_queue);

  }
 
  return fiber_to_schedule;
}

void _nk_fiber_exit(nk_fiber_t *f){
  nk_fiber_t *idle = _nk_idle_fiber();
  f->is_done = 1;
  free(f->stack);
  free(f);
  _exit_switch(idle);

  return;
}

uint8_t _is_idle_fiber(nk_fiber_t *f){
  nk_fiber_t *idle_fiber = _nk_idle_fiber();

  uint8_t result = 0;
  if (idle_fiber == f){
    result = 1;
  }
 
  return result; 
}

nk_thread_t* _get_fiber_thread(){
  return (nk_thread_t*)(get_cpu()->fiber_thread);
}

