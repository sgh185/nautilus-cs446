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

#ifndef NAUT_CONFIG_DEBUG_FIBERS
#undef  DEBUG_PRINT
#define DEBUG_PRINT(fmt, args...)
#endif
#define FIBER_INFO(fmt, args...) INFO_PRINT("Fiber: " fmt, ##args)
#define FIBER_ERROR(fmt, args...) ERROR_PRINT("Fiber: " fmt, ##args)
#define FIBER_DEBUG(fmt, args...) DEBUG_PRINT("Fiber: " fmt, ##args)
#define FIBER_WARN(fmt, args...)  WARN_PRINT("Fiber: " fmt, ##args)

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

  // Set some INIT_FIBER status (?)

  _nk_fiber_init(fiber);

  // Return the fiber
  if (fiber_output){
    *fiber_output = fiber;
  }

  return 0;
}

/*
 * utility function for setting up
 * a thread's stack 
 */
static inline void
fiber_push (nk_fiber_t * f, uint64_t x)
{
    f->rsp -= 8;
    *(uint64_t*)(f->rsp) = x;
}

void _fiber_wrapper(nk_fiber_t *f)
{
  FIBER_DEBUG("_fiber_wrapper BEGIN\n");
  f->fun(f->input, f->output);
  FIBER_DEBUG("_fiber_wrapper END\n");

  return;
}

void _nk_fiber_init(nk_fiber_t *f){
  // Setup stack
  f->rsp = (uint64_t) f->stack + f->stack_size;
  fiber_push(f, _fiber_wrapper);
  fiber_push(f, 0xdeadbeef12345670ul);
  fiber_push(f, 0xdeadbeef12345671ul);
  fiber_push(f, 0xdeadbeef12345672ul);
  fiber_push(f, 0xdeadbeef12345673ul);
  fiber_push(f, 0xdeadbeef12345674ul);
  fiber_push(f, (uint64_t) f);
  fiber_push(f, 0xdeadbeef12345675ul);
  fiber_push(f, 0xdeadbeef12345676ul);
  fiber_push(f, 0xdeadbeef12345677ul);
  fiber_push(f, 0xdeadbeef12345678ul);
  fiber_push(f, 0xdeadbeef12345679ul);
  fiber_push(f, 0xdeadbeef1234567aul);
  fiber_push(f, 0xdeadbeef1234567bul);
  fiber_push(f, 0xdeadbeef1234567cul);
  fiber_push(f, 0xdeadbeef1234567dul);

  return;
}

int nk_fiber_run(nk_fiber_t *f)
{
  _fiber_wrapper(f); // TODO: drop f into a queue

  return 0;
}

int nk_fiber_start(func, arg){
  // Call nk_fiber_create()

  // Call nk_fiber_run()
}

//int nk_fiber_conditional_yield(nk_fiber_t *fib, bool (*cond_function)(void *), void *state);

int nk_fiber_yield();

int nk_fiber_yield_to(nk_fiber_t *fib);

nk_fiber_t *nk_fiber_current();

nk_fiber_t *nk_fiber_fork();

void nk_fiber_join();

void nk_fiber_master_lock(nk_fiber_t *fib);


