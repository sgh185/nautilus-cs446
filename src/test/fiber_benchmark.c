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
 * Copyright (c) 2019, Souradip Ghosh <sgh@u.northwestern.edu>
 * Copyright (c) 2019, Michael A. Cuevas <cuevas@u.northwestern.edu>
 * Copyright (c) 2019, Peter Dinda <pdinda@northwestern.edu>
 * Copyright (c) 2019, The V3VEE Project  <http://www.v3vee.org> 
 *                     The Hobbes Project <http://xstack.sandia.gov/hobbes>
 * All rights reserved.
 *
 * Author:  Souradip Ghosh <sgh@u.northwestern.edu>
 * 	    Michael A. Cuevas <cuevas@u.northwestern.edu>
 *          Peter Dinda <pdinda@northwestern.edu>
 *  
 * This is free software.  You are permitted to use,
 * redistribute, and modify it as specified in the file "LICENSE.txt".
 */


/* ******
 * BENCHMARK ROUTINES LISTED AND EXPLAINED IN 'fbREADME'
 */

#include <nautilus/nautilus.h>
#include <nautilus/thread.h>
#include <nautilus/fiber.h>
#include <nautilus/scheduler.h>
#include <nautilus/shell.h>
#include <nautilus/vc.h>
#include <nautilus/libccompat.h>

#define DO_PRINT       0

#if DO_PRINT
#define PRINT(...) nk_vc_printf(__VA_ARGS__)
#else
#define PRINT(...) 
#endif

extern struct nk_virtual_console *vc;


/******************* Macros/Helper Functions *******************/

#define M 200
#define DOT 1000
#define DIMENSION_SIZE(arr) ((sizeof(arr)) / (sizeof((arr)[0])))
#define M1 20
#define M2 40
#define M3 30

extern void nk_simple_timing_loop(uint64_t);

// Benchmark --- Linked List Implementation
List_t * createList(uint64_t start, uint64_t size) __attribute__((noinline))
{
  // List setup
  Node_t *L_head = malloc(sizeof(Node_t));
  if (!L_head) return NULL;

  L_head->value = start;
  L_head->next = NULL;
  
  List_t *LL = malloc(sizeof(List_t));
  if (!LL) return NULL;
  
  LL->head = L_head;
  LL->tail = LL->head;
  
  // Fill list;
  uint64_t a, incr = start;
  for (a = 0; a < size; a++)
  {
    incr += (a * a) + incr;
    
    Node_t *L_node = malloc(sizeof(Node_t));
    if (!L_node) return NULL;
    
    L_node->value = incr;
    L_node->next = NULL;

    LL->tail->next = L_node;
    LL->tail = L_node;  
  }

  return LL;
}

// Benchmark --- Binary Tree Implementation
TreeNode_t * createTree(uint64_t start, uint64_t size) __attribute__((noinline))
{
  // Create root
  TreeNode_t *root = malloc(sizeof(TreeNode_t));
  if (!root) return NULL;

  root->value = start;
  root->left = NULL;
  root->right = NULL;

  // Fill tree
  int i = 0;
  for (; i < size; i++)
  {
    TreeNode_t *iterator = root;
    
    //srand48(); 
    uint64_t val = (lrand48() % 10000); 

    // Create new node with value val
    TreeNode_t *newNode = malloc(sizeof(TreeNode_t));
    if (!newNode) return NULL;
 
    newNode->value = val;
    newNode->left = NULL;
    newNode->right = NULL;
    
    // Place in tree (based on binary search tree invariant)
    while(1)
    {
      if (val > iterator->value)
      {
	if (!(iterator->right))
	{
	  iterator->right = newNode;
	  break; 
	}

	iterator = iterator->right;
      }
      else
      {
	if (!(iterator->left))
	{
	  iterator->left = newNode;
	  break;
	}

	iterator = iterator->left;
      }  
    }
  }

  return root;
}

// Create Queue for BST
#define MAX_QUEUE_SIZE 10000
TreeQueue_t * createQueue(void) __attribute__((noinline))
{
  TreeQueue_t *new_queue = malloc(sizeof(TreeQueue_t));
  if (!new_queue) return NULL;

  new_queue->queue = malloc(sizeof(TreeNode_t *) * MAX_QUEUE_SIZE);
  if (!new_queue->queue) return NULL;
  
  new_queue->head_pos = 0;
  new_queue->tail_pos = 0;

  return new_queue;
}

// Create array of 25 random unsigned longs 
uint64_t * createRandArray50() __attribute__((noinline))
{
  uint64_t *r_array = malloc(sizeof(uint64_t) * 50);
  if(!r_array) return NULL;

  int i = 0;
  for (; i < 50; i++)
    r_array[i] = (lrand48() % 1000);

  return r_array;
}

// Dummy function --- for floating point (non-loop) benchmarks
void dummy_func(double a, double b, double c) __attribute__((noinline))
{
  nk_vc_printf("%f, %f, %f\n", a, b, c);
  return;
}

// Dummy function --- for "sum" variables in loop benchmarks
void sum_dummy_func(uint64_t a) __attribute__((noinline))
{
  nk_vc_printf("%d\n", a);
  return;
}
 
/******************* Test Routines *******************/

// BENCHMARK --- Timing loops (interprocedural)
void benchmark1(void *i, void **o) __attribute__((optnone))
{
  nk_fiber_set_vc(vc);
  int a = 0;

  // #pragma unroll M
  while(a < M){
    nk_simple_timing_loop(200);
    a++;
  }

  nk_vc_printf("Benchmark 1 is finished\n");
  return;
}

void benchmark2(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
  
  // #pragma unroll M
  while(a < M){
    nk_simple_timing_loop(200);
    a++;
  }
  nk_vc_printf("Benchmark 2 is finished\n");

  print_data();
  return;
}


// BENCHMARK --- Staggered timing loops (interprocedural)
void benchmark3(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;

  // #pragma unroll M
  while(a < M){
    if (a % 25 == 0)
      nk_simple_timing_loop(200000000);
    else
      nk_simple_timing_loop(200);

    a++;
  }
  
  nk_vc_printf("Benchmark 1 is finished\n");
  return;
}

void benchmark4(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int a = 0;
 
  // #pragma unroll M
  while(a < M){
    nk_simple_timing_loop(200);
    a++;
  }
  nk_vc_printf("Benchmark 2 is finished\n");

  print_data();
  
  return;
}


// Benchmark --- Dot product (known induction variables, parameters, volatile sum, intraprocedural)
void benchmark5(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int k, first = 8, second = 134;
  
  // Allocate on stack
  uint64_t b[DOT];
  uint64_t c[DOT];

  // Fill arrays with some value
  for (k = 0; k < DOT; k++)
  {
    b[k] = first * second;
    c[k] = first + second;

    first += 4;
    second += 2; 
  }

  // Dot product
  volatile uint64_t sum = 0;
  for (k = 0; k < DOT; k++)
    sum += (b[k] * c[k]);


  nk_vc_printf("Benchmark 5 is finished\n");

  return;
}

void benchmark6(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  int k, first = 5, second = 127;
  
  uint64_t b[DOT];
  uint64_t c[DOT];

  // Fill arrays with some value
  for (k = 0; k < DOT; k++)
  {
    b[k] = first * second;
    c[k] = first + second;

    first += 4;
    second += 2; 
  }

  // Dot product
  volatile uint64_t sum = 0;
  for (k = 0; k < DOT; k++)
    sum += (b[k] * c[k]);

  nk_vc_printf("Benchmark 6 is finished\n");
  print_data();

  return;
}


// BENCHMARK --- Linked list traversal (known parameters, volatile sum, intraprocedural)
void benchmark7(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  List_t *LL = createList(7, 2000);
  
  // Traverse list, calculate sum
  volatile uint64_t sum = 0;
  Node_t *iterator = LL->head;
  
  while(iterator != NULL)
  {
    sum += iterator->value;
    iterator = iterator->next;
  }

  // nk_vc_printf("Sum: %d\n", sum);
  nk_vc_printf("Benchmark 7 is finished\n");
  
  // Purposely avoid free --- limit function calls at end of control flow to 1 call
  return;
}

void benchmark8(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  List_t *LL = createList(11, 2000);
  
  // Traverse list, calculate sum
  volatile uint64_t sum = 0;
  Node_t *iterator = LL->head;
  
  while(iterator != NULL)
  {
    sum += iterator->value;
    iterator = iterator->next;
  }

  nk_vc_printf("Benchmark 8 is finished\n");
  print_data();
  
  // Purposely avoid free --- limit function calls at end of control flow to 1 call
  return;
}


// BENCHMARK --- Matrix multiply (known dimensions, parameters, volatile sum, intraprocedural) 
void benchmark9(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  // Allocate on stack
  // Multiply matrices with known dimensions
  uint64_t first[M1][M2];
  uint64_t second[M2][M3];
  uint64_t result[M1][M3];

  memset(result, 0, sizeof(result));

  // Fill first and second matricies
  uint64_t start = 4;
  int a, b, c;

  for (a = 0; a < M1; a++)
    for (b = 0; b < M2; b++)
      first[a][b] = a + (a * b) + b;

  for (a = 0; a < M2; a++)
    for (b = 0; b < M3; b++)
      second[a][b] = (a * b);

  // Naive matrix multiply
  for (a = 0; a < M1; a++) {
    for (b = 0; b < M3; b++) {
      uint64_t sum = 0;
      
      for (c = 0; c < M2; c++)
	sum += (first[a][c] * second[c][b]);
      
      result[a][b] = sum;
    }
  }
 
  nk_vc_printf("Benchmark 9 is finished\n");
  
  return;
}

void benchmark10(void *i, void **o)
{
  nk_fiber_set_vc(vc);

  // Allocate on stack
  // Multiply matrices with known dimensions
  uint64_t first[M1][M2];
  uint64_t second[M2][M3];
  uint64_t result[M1][M3];

  memset(result, 0, sizeof(result));

  // Fill first and second matricies
  uint64_t start = 8;
  int a, b, c;

  for (a = 0; a < M1; a++)
    for (b = 0; b < M2; b++)
      first[a][b] = a + (a * b) + b;

  for (a = 0; a < M2; a++)
    for (b = 0; b < M3; b++)
      second[a][b] = (a * b);

  // Naive matrix multiply
  for (a = 0; a < M1; a++) {
    for (b = 0; b < M3; b++) {
      uint64_t sum = 0;
      
      for (c = 0; c < M2; c++)
	sum += (first[a][c] * second[c][b]);
      
      result[a][b] = sum;
    }
  }

  nk_vc_printf("Benchmark 10 is finished\n");
  print_data();
  
  return;
}


// BENCHMARK --- Binary search tree (known parameters, volatile sum, intraprocedural)
void benchmark11(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  TreeNode_t *tree = createTree(4520, 50);
  uint64_t *nums = createRandArray50(); 
  uint64_t totalTraversalSum = 0;
  int a;
  
  for (a = 0; a < 50; a++)
  {
    uint64_t currTraversalSum = 0;
    volatile TreeNode_t *iterator = tree;
    
    while (iterator != NULL)
    {
      uint64_t currValue = iterator->value;
      currTraversalSum += currValue;

      if (nums[a] == currValue)
        break;      
      else if (nums[a] > currValue)
	iterator = iterator->right;
      else
	iterator = iterator->left;        
    } 

    totalTraversalSum += currTraversalSum; 
  }

  nk_vc_printf("Benchmark 11 is finished\n");
  
  // Purposely avoid free --- limit function calls at end of control flow to 1 call
  return;
}

void benchmark12(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  TreeNode_t *tree = createTree(5380, 50);
  uint64_t *nums = createRandArray50();
  
  uint64_t totalTraversalSum = 0;
  int a;
  for (a = 0; a < 50; a++)
  {
    uint64_t currTraversalSum = 0;
    TreeNode_t *iterator = tree;
    
    while (iterator != NULL)
    {
      uint64_t currValue = iterator->value;
      currTraversalSum += currValue;

      if (nums[a] == currValue)
        break;      
      else if (nums[a] > currValue)
	iterator = iterator->right;
      else
	iterator = iterator->left;        
    } 
    
    totalTraversalSum += currTraversalSum; 
  }

  nk_vc_printf("Benchmark 12 is finished\n");
  print_data();
  
  // Purposely avoid free --- limit function calls at end of control flow to 1 call
  return;
}


// BENCHMARK --- Matrix multiply (random dimensions, unknown induction variables, intraprocedural)
void benchmark13(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  uint64_t R1 = (lrand48() % 50);
  uint64_t R2 = (lrand48() % 50);
  uint64_t R3 = (lrand48() % 50);
  
  // Random distributions --- allocate on stack
  uint64_t first[R1][R2];
  uint64_t second[R2][R3];
  uint64_t result[R1][R3];

  memset(result, 0, sizeof(result));

  // Fill first and second matricies
  uint64_t start = 8;
  int a, b, c;

  for (a = 0; a < R1; a++)
    for (b = 0; b < R2; b++)
      first[a][b] = a + (a * b) + b;

  for (a = 0; a < R2; a++)
    for (b = 0; b < R3; b++)
      second[a][b] = (a * b);

  // Naive matrix multiply
  for (a = 0; a < R1; a++) {
    for (b = 0; b < R3; b++) {
      uint64_t sum = 0;
      for (c = 0; c < R2; c++)
	sum += (first[a][c] * second[c][b]);
      result[a][b] = sum;
    }
  }

  nk_vc_printf("Benchmark 13 is finished\n");
  
  return;
}

void benchmark14(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  // No need to seed at this point
  uint64_t R1 = (lrand48() % 50);
  uint64_t R2 = (lrand48() % 50);
  uint64_t R3 = (lrand48() % 50);
 
  // Random distributions --- allocate on stack 
  uint64_t first[R1][R2];
  uint64_t second[R2][R3];
  uint64_t result[R1][R3];

  memset(result, 0, sizeof(result));

  // Fill first and second matricies
  uint64_t start = 8;
  int a, b, c;

  // #pragma unroll 
  for (a = 0; a < R1; a++)
    for (b = 0; b < R2; b++)
      first[a][b] = a + (a * b) + b;

  //#pragma unroll
  for (a = 0; a < R2; a++)
    for (b = 0; b < R3; b++)
      second[a][b] = (a * b);

  // Naive matrix multiply
  for (a = 0; a < R1; a++) {
    for (b = 0; b < R3; b++) {
      uint64_t sum = 0;
      for (c = 0; c < R2; c++)
	sum += (first[a][c] * second[c][b]);
      result[a][b] = sum;
    }
  }

  nk_vc_printf("Benchmark 14 is finished\n");
  print_data();
  
  return;
}


// BENCHMARK --- Floating point operations (random operands, NO loops, volatile sums/vars, intraprocedural)
void benchmark15(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  volatile double R1 = (double)(lrand48() % 50);
  volatile double R2 = (double)(lrand48() % 50);
  volatile double R3 = (double)(lrand48() % 50);

  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  nk_vc_printf("Benchmark 15 is finished\n");
  
  return;
}

void benchmark16(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  volatile double R1 = (double)(lrand48() % 50);
  volatile double R2 = (double)(lrand48() % 50);
  volatile double R3 = (double)(lrand48() % 50);

  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  nk_vc_printf("Benchmark 16 is finished\n");
  print_data();
  
  return;
}


// BENCHMARK --- Floating point operations (random operands, NO loop, NO volatile sums/vars, intraprocedural)
void benchmark17(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  double R1 = (double)(lrand48() % 50);
  double R2 = (double)(lrand48() % 50);
  double R3 = (double)(lrand48() % 50);

  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  dummy_func(R1, R2, R3); 
  nk_vc_printf("Benchmark 17 is finished\n");
  
  return;
}

void benchmark18(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  
  double R1 = (double)(lrand48() % 50);
  double R2 = (double)(lrand48() % 50);
  double R3 = (double)(lrand48() % 50);

  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  dummy_func(R1, R2, R3);
  nk_vc_printf("Benchmark 18 is finished\n");
   
  print_data();
  return;
}

void benchmark19(void *i, void **o) __attribute__((optnone))
{
  nk_fiber_set_vc(vc);
  
  volatile uint64_t R1 = (lrand48() % 50);
  volatile uint64_t R2 = (lrand48() % 50);
  volatile uint64_t R3 = (lrand48() % 50);
  
  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  dummy_func(R1, R2, R3); 
  nk_vc_printf("Benchmark 19 is finished\n");
  
  return;
}

void benchmark20(void *i, void **o) __attribute__((optnone))
{
  nk_fiber_set_vc(vc);
  
  volatile uint64_t R1 = (lrand48() % 50);
  volatile uint64_t R2 = (lrand48() % 50);
  volatile uint64_t R3 = (lrand48() % 50);
  
  uint32_t m;
  asm volatile ("stmxcsr %[_m]" : [_m] "=m" (m) : : "memory");
  nk_vc_printf("%d: SIMD Floating point exception (MXCSR=0x%x)\n", my_cpu_id(), m);
  if (!m) return;

  // Long sequence of un-optimized operations --- tests CMU accuracy, no loops, etc.


  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2;

  R1 += R2 * R3;
  R2 += R1 * R3;
  R3 += R1 * R2; 

  dummy_func(R1, R2, R3); 
  nk_vc_printf("Benchmark 20 is finished\n");
  print_data();  
  return;
}

// BENCHMARK --- Level-order tree traversal (known parameters, volatile sum, intraprocedural)
void benchmark21(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  TreeQueue_t *LO = createQueue();
  TreeNode_t *tree = createTree(5170, 200);

  TreeNode_t *iterator = tree;
  volatile uint64_t sum = 0;
  
  while (iterator != NULL)
  {
    sum += iterator->value;
    
    if ((LO->tail_pos == MAX_QUEUE_SIZE) || (LO->head_pos > LO->tail_pos))
      break;

    // Enqueue children of iterator
    if (iterator->left) {
      LO->queue[LO->tail_pos] = iterator->left;
      LO->tail_pos++;
    }

    if (iterator->right) {
      LO->queue[LO->tail_pos] = iterator->right;
      LO->tail_pos++;
    }

    // Dequeue --- set to iterator
    iterator = LO->queue[LO->head_pos];
    LO->head_pos++;
  }
  
  
  nk_vc_printf("Benchmark 21 is finished\n");
  // Purposely avoid free --- limit function calls at end of control flow to 1 call

  return;
}

void benchmark22(void *i, void **o)
{
  nk_fiber_set_vc(vc);
  TreeQueue_t *LO = createQueue();
  TreeNode_t *tree = createTree(4720, 200);

  TreeNode_t *iterator = tree;
  volatile uint64_t sum = 0;
  
  while (iterator != NULL)
  {
    sum += iterator->value;
    
    if ((LO->tail_pos == MAX_QUEUE_SIZE) || (LO->head_pos > LO->tail_pos))
      break;

    // Enqueue children of iterator
    if (iterator->left) {
      LO->queue[LO->tail_pos] = iterator->left;
      LO->tail_pos++;
    }

    if (iterator->right) {
      LO->queue[LO->tail_pos] = iterator->right;
      LO->tail_pos++;
    }
    
    // Dequeue --- set to iterator
    iterator = LO->queue[LO->head_pos];
    LO->head_pos++;
  }
  
  
  nk_vc_printf("Benchmark 22 is finished\n");
  print_data();
  // Purposely avoid free --- limit function calls at end of control flow to 1 call

  return;
}

/******************* Test Wrappers *******************/

int test_fibers_bench(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark1, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark2, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench2(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark3, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark4, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench3(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark5, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark6, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench4(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark7, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark8, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench5(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark9, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark10, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench6(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark11, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark12, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench7(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark13, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark14, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench8(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark15, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark16, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench9(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark17, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark18, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench10(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark19, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark20, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}

int test_fibers_bench11(){
  nk_fiber_t *simple1;
  nk_fiber_t *simple2;
  vc = get_cur_thread()->vc;
  nk_fiber_start(benchmark21, 0, 0, 0, 1, &simple1);
  nk_fiber_start(benchmark22, 0, 0, 0, 1, &simple2);
  //print_data();
  return 0;
}


/******************* Test Handlers *******************/

static int
handle_fibers1 (char * buf, void * priv)
{
  test_fibers_bench();
  return 0;
}

static int
handle_fibers2 (char * buf, void * priv)
{
  test_fibers_bench2();
  return 0;
}

static int
handle_fibers3 (char * buf, void * priv)
{
  test_fibers_bench3();
  return 0;
}

static int
handle_fibers4 (char * buf, void * priv)
{
  test_fibers_bench4();
  return 0;
}

static int
handle_fibers5 (char * buf, void * priv)
{
  test_fibers_bench5();
  return 0;
}

static int
handle_fibers6 (char * buf, void * priv)
{
  test_fibers_bench6();
  return 0;
}

static int
handle_fibers7 (char * buf, void * priv)
{
  test_fibers_bench7();
  return 0;
}

static int
handle_fibers8 (char * buf, void * priv)
{
  test_fibers_bench8();
  return 0;
}

static int
handle_fibers9 (char * buf, void * priv)
{
  test_fibers_bench9();
  return 0;
}

static int
handle_fibers10 (char * buf, void * priv)
{
  test_fibers_bench10();
  return 0;
}

static int
handle_fibers11 (char * buf, void * priv)
{
  test_fibers_bench11();
  return 0;
}


static struct shell_cmd_impl fibers_impl1 = {
  .cmd      = "fiberbench1",
  .help_str = "fiberbench1",
  .handler  = handle_fibers1,
};

static struct shell_cmd_impl fibers_impl2 = {
  .cmd      = "fiberbench2",
  .help_str = "fiberbench2",
  .handler  = handle_fibers2,
};

static struct shell_cmd_impl fibers_impl3 = {
  .cmd      = "fiberbench3",
  .help_str = "fiberbench3",
  .handler  = handle_fibers3,
};

static struct shell_cmd_impl fibers_impl4 = {
  .cmd      = "fiberbench4",
  .help_str = "fiberbench4",
  .handler  = handle_fibers4,
};

static struct shell_cmd_impl fibers_impl5 = {
  .cmd      = "fiberbench5",
  .help_str = "fiberbench5",
  .handler  = handle_fibers5,
};

static struct shell_cmd_impl fibers_impl6 = {
  .cmd      = "fiberbench6",
  .help_str = "fiberbench6",
  .handler  = handle_fibers6,
};

static struct shell_cmd_impl fibers_impl7 = {
  .cmd      = "fiberbench7",
  .help_str = "fiberbench7",
  .handler  = handle_fibers7,
};

static struct shell_cmd_impl fibers_impl8 = {
  .cmd      = "fiberbench8",
  .help_str = "fiberbench8",
  .handler  = handle_fibers8,
};

static struct shell_cmd_impl fibers_impl9 = {
  .cmd      = "fiberbench9",
  .help_str = "fiberbench9",
  .handler  = handle_fibers9,
};

static struct shell_cmd_impl fibers_impl10 = {
  .cmd      = "fiberbench10",
  .help_str = "fiberbench10",
  .handler  = handle_fibers10,
};

static struct shell_cmd_impl fibers_impl11 = {
  .cmd      = "fiberbench11",
  .help_str = "fiberbench11",
  .handler  = handle_fibers11,
};


/******************* Shell Commands *******************/

nk_register_shell_cmd(fibers_impl1);
nk_register_shell_cmd(fibers_impl2);
nk_register_shell_cmd(fibers_impl3);
nk_register_shell_cmd(fibers_impl4);
nk_register_shell_cmd(fibers_impl5);
nk_register_shell_cmd(fibers_impl6);
nk_register_shell_cmd(fibers_impl7);
nk_register_shell_cmd(fibers_impl8);
nk_register_shell_cmd(fibers_impl9);
nk_register_shell_cmd(fibers_impl10);
nk_register_shell_cmd(fibers_impl11);


