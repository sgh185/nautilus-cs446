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

#ifndef __FIBER_H__
#define __FIBER_H__

#ifdef __cplusplus
extern "C" {
#endif

#ifndef __ASSEMBLER__

#include <nautilus/spinlock.h>
#include <nautilus/intrinsics.h>

// Always included so we get the necessary type
#include <nautilus/cachepart.h>

#include <nautilus/scheduler.h>
#include <nautilus/thread.h>

typedef uint64_t nk_stack_size_t;
typedef struct nk_thread nk_thread_t;
#define CPU_ANY -1

/* common thread stack sizes */
#define TSTACK_DEFAULT 0 // will be 4K
#define TSTACK_4KB 0x001000
#define TSTACK_1MB 0x100000
#define TSTACK_2MB 0x200000

#define MAX_QUEUE (NAUT_CONFIG_MAX_THREADS)

/******** EXTERNAL INTERFACE **********/

typedef void (*nk_fiber_fun_t)(void *input, void **output);

// All code above was copied from thread.h
// I thought it would be a good place to start for headers

typedef struct nk_fiber {
  uint64_t rsp;                /* +0  SHOULD NOT CHANGE POSITION */
  void *stack;                 /* +8  SHOULD NOT CHANGE POSITION */
  uint16_t fpu_state_offset;   /* +16 SHOULD NOT CHANGE POSITION */
  nk_cache_part_thread_state_t /* +18 SHOULD NOT CHANGE POSITION */
      cache_part_state;        /* Always included to reserve this "slot" for asm code */
  nk_stack_size_t stack_size;
  unsigned long fid; /* Fiber ID, may not be needed? */

  struct nk_virtual_console *vc; // for printing
  int is_idle;

  /* Only necessary if we decide to implement join/wait */
  //nk_wait_queue_t *waitq; // wait queue for threads waiting on this thread
  //int num_wait;           // how many wait queues this thread is currently on

  nk_fiber_fun_t fun;
  void *input;
  void **output;

  uint8_t is_done;
} nk_fiber_t;

// Create a fiber but do not launch it
int nk_fiber_create(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, nk_fiber_t **fiber_output);

// Initialize fiber stack
void _nk_fiber_init(nk_fiber_t *f);

// Launch a previously created fiber
int nk_fiber_run(nk_fiber_t *f, uint8_t random_cpu_flag);

// Create and launch a fiber
int nk_fiber_start(nk_fiber_fun_t fun, void *input, void **output, nk_stack_size_t stack_size, uint8_t random_cpu_flag, nk_fiber_t **fiber_output);

// Default yield function, implemented on top of conditional yield
int nk_fiber_yield();

// Yield that allows choice of fiber to yield to
int nk_fiber_yield_to(nk_fiber_t *f_to);

// Takes a fiber, a condition to yield on, and a function to check that condition
// returns 0 if the fiber does not yield
int nk_fiber_conditional_yield(nk_fiber_t *fib, uint8_t (*cond_function)(void *), void *state);

// Returns a ptr to the current fiber
nk_fiber_t *_nk_fiber_current();

// Not needed for initial implementation
nk_fiber_t *nk_fiber_fork();

// Not needed for inital implementation
void nk_fiber_join();

// Set virtual console
void nk_fiber_set_vc(struct nk_virtual_console *vc);

// TODO: condier to hide the internal interface from the user
/******** INTERNAL INTERFACE **********/
void _fiber_push(nk_fiber_t * f, uint64_t x);

void _fiber_wrapper(nk_fiber_t * f_to);

void _nk_fiber_init(nk_fiber_t *f);

nk_fiber_t* _nk_fiber_current();

nk_fiber_t* _nk_idle_fiber();

nk_fiber_t* _rr_policy();

int _nk_fiber_yield_to();

void _nk_fiber_exit(nk_fiber_t *f);

uint8_t _is_idle_fiber(nk_fiber_t *f);

nk_thread_t *_get_random_fiber_thread();

nk_thread_t* _get_fiber_thread();

/******** FIBER QUEUE **********/
typedef struct fiber_queue {
    uint64_t   size;        // number of elements currently in the queue
    uint64_t   head;        // index of newest element 
    uint64_t   tail;        // index of oldest element
    nk_fiber_t *fibers[MAX_QUEUE];
} fiber_queue ;

static int        fiber_queue_enqueue(fiber_queue *queue, nk_fiber_t *fiber);
static nk_fiber_t* fiber_queue_dequeue(fiber_queue *queue);
static nk_fiber_t* fiber_queue_remove(fiber_queue *queue, nk_fiber_t *fiber);
static int        fiber_queue_empty(fiber_queue *queue);

static int fiber_queue_enqueue(fiber_queue *queue, nk_fiber_t *fiber)
{
  if (queue->size==MAX_QUEUE) {
	  return -1;
  } else {
	  queue->fibers[queue->head] = fiber;
	  queue->head = (queue->head + 1 ) % MAX_QUEUE;
	  queue->size++;
	  return 0;
  }
}

static nk_fiber_t* fiber_queue_dequeue(fiber_queue *queue)
{
  if (queue->size==0) { 
	  return 0;
  } else {
	  nk_fiber_t *fiber = queue->fibers[queue->tail];
	  queue->tail = (queue->tail+1) % MAX_QUEUE;
	  queue->size--;
	  return fiber;
  }
}

static nk_fiber_t* fiber_queue_remove(fiber_queue *queue, nk_fiber_t *fiber)
{
  if (queue->size==0) { 
	  return 0;
  } else {
	  uint64_t now, cur, next;

	  for (now=0;now<queue->size;now++) { 
	    cur = (queue->tail + now) % MAX_QUEUE;
	    if (queue->fibers[cur] == fiber) { 
		    break;
	    }
	  }

	  if (now==queue->size) {
	    // not found
	    return 0;
	  }

	  // copy down
	  for (;now<queue->size-1;now++) {
	    cur = (queue->tail + now) % MAX_QUEUE;
	    next = (queue->tail + now + 1) % MAX_QUEUE;
	    queue->fibers[cur] = queue->fibers[next];
	  }
	
	  // decrement head
	  queue->head = (queue->head + MAX_QUEUE - 1) % MAX_QUEUE;
	  queue->size--;
	
	  return fiber;
  }
}

static int fiber_queue_empty(fiber_queue *queue)
{
  return queue->size==0;
}

/*
static void       fiber_queue_dump(fiber_queue *queue, char *pre);
static void fiber_queue_dump(fiber_queue *queue, char *pre)
{
    int now;
    int cur;
    DEBUG("======%s==BEGIN=====\n",pre);
    for (now=0;now<queue->size;now++) { 
	cur = (queue->tail + now) % MAX_QUEUE;
	DEBUG("   %p %d (%llu)\n",queue->fibers[cur],
	      queue->threads[cur]->thread->is_idle ? "*idle*" : 
	      queue->threads[cur]->thread->name[0] ? queue->threads[cur]->thread->name : "(no name)" ,queue->threads[cur]->deadline);
    }
    DEBUG("======%s==END=====\n",pre);
}
*/

#endif /* !__ASSEMBLER */

#define FIBER_SAVE_GPRS() \
    movq %rax, -8(%rsp); \
    movq %rbx, -16(%rsp); \
    movq %rcx, -24(%rsp); \
    movq %rdx, -32(%rsp); \
    movq %rsi, -40(%rsp); \
    movq %rdi, -48(%rsp); \
    movq %rbp, -56(%rsp); \
    movq %r8,  -64(%rsp); \
    movq %r9,  -72(%rsp); \
    movq %r10, -80(%rsp); \
    movq %r11, -88(%rsp); \
    movq %r12, -96(%rsp); \
    movq %r13, -104(%rsp); \
    movq %r14, -112(%rsp); \
    movq %r15, -120(%rsp); \
    subq $120, %rsp; 

#define FIBER_RESTORE_GPRS() \
    movq (%rsp), %r15; \
    movq 8(%rsp), %r14; \
    movq 16(%rsp), %r13; \
    movq 24(%rsp), %r12; \
    movq 32(%rsp), %r11; \
    movq 40(%rsp), %r10; \
    movq 48(%rsp), %r9; \
    movq 56(%rsp), %r8; \
    movq 64(%rsp), %rbp; \
    movq 72(%rsp), %rdi; \
    movq 80(%rsp), %rsi; \
    movq 88(%rsp), %rdx; \
    movq 96(%rsp), %rcx; \
    movq 104(%rsp), %rbx; \
    movq 112(%rsp), %rax; \
    addq $120, %rsp; 

#ifdef __cplusplus
}
#endif

#endif /* !__FIBER_H__ */
