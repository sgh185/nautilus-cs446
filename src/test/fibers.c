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
 * Copyright (c) 2017, Peter Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2017, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Author: Peter Dinda <pdinda@northwestern.edu>
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
    nk_fiber_start(fiber_inner, 0, 0, 0, &f_inner);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber outer is finished, a = %d\n", a);
}

void fiber4(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 20){
    nk_vc_printf("Fiber 4 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 4 is finished, a = %d\n", a);
}


void fiber3(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 5){
    nk_vc_printf("Fiber 3 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 3 is finished, a = %d\n", a);
  nk_fiber_t *f4;
  nk_fiber_start(fiber4, 0, 0, 0, &f4);
}

void fiber1(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 10){
    nk_vc_printf("Fiber 1 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 1 is finished, a = %d\n", a);
  nk_fiber_t *f3;
  nk_fiber_start(fiber3, 0, 0, 0, &f3);
}


void fiber2(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  while(a < 20){
    nk_vc_printf("Fiber 2 a = %d\n", a++);
    nk_fiber_yield();
  }
  nk_vc_printf("Fiber 2 is finished, a = %d\n", a);
  nk_fiber_t *f4;
  nk_fiber_start(fiber4, 0, 0, 0, &f4);
}

int test_nested_fibers()
{
  nk_fiber_t *f_outer;
  vc = get_cur_thread()->vc;
  nk_vc_printf("test_nested_fibers() : virtual console %p\n", vc);
  nk_fiber_start(fiber_outer, 0, 0, 0, &f_outer);
  return 0;
}

int test_fibers()
{
  nk_fiber_t *f1;
  nk_fiber_t *f2;
  nk_fiber_t *f3;
  vc = get_cur_thread()->vc;
  nk_vc_printf("test_fibers() : virtual console %p\n", vc);
  nk_fiber_start(fiber1, 0, 0, 0, &f1);
  nk_fiber_start(fiber2, 0, 0, 0, &f2);
  nk_fiber_start(fiber3, 0, 0, 0, &f3);
  return 0;
}

static int
handle_fibers (char * buf, void * priv)
{
  //test_fibers();
  test_nested_fibers();

  return 0;
}

static struct shell_cmd_impl fibers_impl = {
  .cmd      = "fibertest",
  .help_str = "fibertest",
  .handler  = handle_fibers,
};
nk_register_shell_cmd(fibers_impl);
