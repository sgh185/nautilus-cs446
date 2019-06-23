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
 * Copyright (c) 2019, Peter Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2019, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Author:  Michael A. Cuevas <cuevas@u.northwestern.edu>
 *          Enrico Deiana <3nric000@gmail.com>
 *          Peter Dinda <pdinda@northwestern.edu>
 *  
 * This is free software.  You are permitted to use,
 * redistribute, and modify it as specified in the file "LICENSE.txt".
 */

#include <nautilus/nautilus.h>
#include <nautilus/thread.h>
#include <nautilus/fiber.h>
#include <nautilus/scheduler.h>
#include <nautilus/shell.h>
#include <nautilus/vc.h>

#define DO_PRINT       0

#if DO_PRINT
#define PRINT(...) nk_vc_printf(__VA_ARGS__)
#else
#define PRINT(...) 
#endif

struct nk_virtual_console *vc;

void fiber_inner(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 10){
    nk_vc_printf("Fiber inner a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber inner is finished, a = %d\n", a);
}

void fiber_outer(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 3){
    nk_vc_printf("Fiber outer a = %d\n", a++);
    nk_fiber_t *f_inner;
    nk_fiber_start(fiber_inner, 0, 0, 0, 1, &f_inner);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber outer is finished, a = %d\n", a);
}

void fiber4(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 10){
    nk_vc_printf("Fiber 4 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 4 is finished, a = %d\n", a);
}


void fiber3(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 2){
    nk_vc_printf("Fiber 3 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 3 is finished, a = %d\n", a);
  nk_fiber_t *f4;
  nk_fiber_start(fiber4, 0, 0, 0, 1, &f4);
}

void fiber1(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 5){
    nk_vc_printf("Fiber 1 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 1 is finished, a = %d\n", a);
  nk_fiber_t *f3;
  nk_fiber_start(fiber3, 0, 0, 0, 1, &f3);
}


void fiber2(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 10){
    nk_vc_printf("Fiber 2 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 2 is finished, a = %d\n", a);
  nk_fiber_t *f4;
  nk_fiber_start(fiber4, 0, 0, 0, 1, &f4);
}

void print_even(void *i, void **o){
  nk_fiber_set_vc(vc);
  for (int i = 0; i < 10; ++i){
    if ((i % 2) == 0){
      nk_vc_printf("Fiber even, counter = %d\n", i);
      nk_fiber_yield();
    }
  }
  nk_vc_printf("Fiber even is finished\n");

  return;
}

void print_odd(void *i, void **o){
  nk_fiber_set_vc(vc);
  for (int i = 0; i < 10; ++i){
    if ((i % 2) != 0){
      nk_vc_printf("Fiber odd, counter = %d\n", i);
      nk_fiber_yield();
    }
  }
  nk_vc_printf("Fiber odd is finished\n");

  return;
}

void fiber_first(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  nk_fiber_t *f_to = (nk_fiber_t*)i;
  while(a < 5){
    nk_vc_printf("Fiber_first() : a = %d and yielding to fiber_second = %p\n", a++, f_to);
    nk_vc_printf("Fiber_first() : f_to = %p\n", &(f_to));
    nk_fiber_yield_to(f_to);
  }
  nk_vc_printf("Fiber 1 is finished, a = %d\n", a);
}


void fiber_second(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  nk_fiber_t *f_to = (nk_fiber_t*)i;
  while(a < 5){
    nk_vc_printf("Fiber_second() : a = %d and yielding to fiber_third = %p\n", a++, f_to);
    nk_fiber_yield_to(f_to);
  }
  nk_vc_printf("Fiber 2 is finished, a = %d\n", a);
}

void fiber_third(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  //nk_fiber_t **temp = (nk_fiber_t**)i;
  nk_fiber_t *f_to = (nk_fiber_t*)i;
  while(a < 5){
    nk_vc_printf("fiber_third() : a = %d and yielding to fiber_fourth = %p\n", a++, f_to);
    nk_fiber_yield_to(f_to);
  }
  nk_vc_printf("fiber 3 is finished, a = %d\n", a);
}

void fiber_fourth(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  //nk_fiber_t **temp = (nk_fiber_t**)i;
  nk_fiber_t *f_to = (nk_fiber_t*)i;
  while(a < 5){
    nk_vc_printf("fiber_fourth() : a = %d and yielding to fiber_first = %p\n", a++, f_to);
    nk_fiber_yield_to(f_to);
  }
  nk_vc_printf("fiber 4 is finished, a = %d\n", a);
}


int test_fibers_counter(){
  nk_fiber_t *even;
  nk_fiber_t *odd;
  vc = get_cur_thread()->vc;
  nk_fiber_start(print_even, 0, 0, 0, 1, &even);
  nk_fiber_start(print_odd, 0, 0, 0, 1, &odd);

  return 0;
}

int test_nested_fibers()
{
  nk_fiber_t *f_outer;
  vc = get_cur_thread()->vc;
  nk_vc_printf("test_nested_fibers() : virtual console %p\n", vc);
  nk_fiber_start(fiber_outer, 0, 0, 0, 1, &f_outer);
  return 0;
}

int test_fibers()
{
  nk_fiber_t *f1;
  nk_fiber_t *f2;
  nk_fiber_t *f3;
  vc = get_cur_thread()->vc;
  nk_vc_printf("test_fibers() : virtual console %p\n", vc);
  nk_fiber_start(fiber1, 0, 0, 0, 1, &f1);
  nk_fiber_start(fiber2, 0, 0, 0, 1, &f2);
  nk_fiber_start(fiber3, 0, 0, 0, 1, &f3);
  return 0;
}

int test_yield_to()
{
  nk_fiber_t *f_first;
  nk_fiber_t *f_second;
  nk_fiber_t *f_third;
  nk_fiber_t *f_fourth;
  vc = get_cur_thread()->vc;
  nk_vc_printf("test_yield_to() : virtual console %p\n", vc);
  nk_fiber_create(fiber_fourth, 0, 0, 0, &f_fourth);
  nk_fiber_create(fiber_first, 0, 0, 0, &f_first);
  nk_fiber_create(fiber_third, 0, 0, 0, &f_third);
  nk_fiber_create(fiber_second, 0, 0, 0, &f_second);
  //void *input[4] = {&f_first, &f_second, &f_third, &f_fourth};
  f_first->input = f_second;
  f_second->input = f_third;
  f_third->input = f_fourth;
  f_fourth->input = f_first;
  nk_fiber_run(f_fourth, 0);
  nk_fiber_run(f_first, 0);
  nk_fiber_run(f_third, 0);
  nk_fiber_run(f_second, 0);
  return 0;
}

static int
handle_fibers (char * buf, void * priv)
{
  test_fibers();

  return 0;
}

static int
handle_fibers2 (char * buf, void * priv)
{
  test_nested_fibers();

  return 0;
}

static int
handle_fibers3 (char * buf, void * priv)
{
  test_fibers_counter();

  return 0;
}

static int
handle_fibers4 (char * buf, void * priv)
{
  test_yield_to();

  return 0;
}


static struct shell_cmd_impl fibers_impl = {
  .cmd      = "fibertest",
  .help_str = "fibertest",
  .handler  = handle_fibers,
};

static struct shell_cmd_impl fibers_impl2 = {
  .cmd      = "fibertest2",
  .help_str = "fibertest2",
  .handler  = handle_fibers2,
};

static struct shell_cmd_impl fibers_impl3 = {
  .cmd      = "fibertest3",
  .help_str = "fibertest3",
  .handler  = handle_fibers3,
};

static struct shell_cmd_impl fibers_impl4 = {
  .cmd      = "fibertest4",
  .help_str = "fibertest4",
  .handler  = handle_fibers4,
};

nk_register_shell_cmd(fibers_impl);
nk_register_shell_cmd(fibers_impl2);
nk_register_shell_cmd(fibers_impl3);
nk_register_shell_cmd(fibers_impl4);
