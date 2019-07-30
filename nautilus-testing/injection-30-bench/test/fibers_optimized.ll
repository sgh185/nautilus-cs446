; ModuleID = 'src/test/fibers_optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_virtual_console = type opaque
%struct.shell_cmd_impl = type { i8*, i8*, i32 (i8*, i8*)* }
%struct.naut_info = type { %struct.sys_info, %struct.cmdline_state*, %struct.nk_test_harness* }
%struct.sys_info = type { [256 x %struct.cpu*], [16 x %struct.ioapic*], i32, i32, i64, %struct.nk_barrier*, %struct.nk_mem_info, i32, i8, %struct.pci_info*, %struct.hpet_dev*, %struct.multiboot_info*, %struct.nk_int_info, %struct.nk_locality_info, %struct.pmc_info*, %struct.nk_link_info*, %struct.nk_prog_info* }
%struct.cpu = type { %struct.nk_thread*, i16, i16, i64, i64, %struct.nk_fiber_percpu_state*, i32, i32, i8, i8, i32, i32, i8, %struct.apic_dev*, %struct.sys_info*, i32, %struct.nk_sched_percpu_state*, %struct.nk_queue*, %struct.nk_xcall, i64, %struct.nk_topo_params*, %struct.nk_cpu_coords*, %struct.numa_domain*, %struct.nk_queue_entry, %struct.nk_rand_info* }
%struct.nk_thread = type { i64, i8*, i16, i16, i64, i64, i32, %struct.nk_thread*, %struct.list_head, %struct.list_head, i64, %struct.nk_wait_queue*, i32, %struct.nk_timer*, i32, i32, i32, i32, i8, i8**, i8*, i8*, void (i8*, i8**)*, %struct.nk_sched_thread_state*, %struct.nk_virtual_console*, [32 x i8], [256 x i8*], [32 x i8], [4096 x i8] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.nk_wait_queue = type { [32 x i8], i32, %struct.list_head, i64, %struct.list_head, [1024 x %struct.nk_wait_queue_entry] }
%struct.nk_wait_queue_entry = type { %struct.list_head, %struct.nk_thread* }
%struct.nk_timer = type { [32 x i8], i32, i64, i64, %struct.nk_wait_queue*, i32, void (i8*)*, i8*, %struct.list_head, %struct.list_head }
%struct.nk_sched_thread_state = type opaque
%struct.nk_fiber_percpu_state = type { i32, %struct.nk_thread*, %struct.nk_fiber*, %struct.nk_fiber*, %struct.list_head }
%struct.nk_fiber = type { i64, i8*, i16, i64, i64, i32, i32, %struct.nk_virtual_console*, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, void (i8*, i8**)*, i8*, i8**, i8 }
%struct.apic_dev = type { i32, i64, i8, i32, i64, i64, i64, i64, i64, i64, i8, i32, i64, i32, i32 }
%struct.nk_sched_percpu_state = type opaque
%struct.nk_queue = type { %struct.list_head, i32 }
%struct.nk_xcall = type { %struct.nk_queue_entry, i8*, void (i8*)*, i8, i8 }
%struct.nk_topo_params = type { i32, i32 }
%struct.nk_cpu_coords = type { i32, i32, i32 }
%struct.numa_domain = type { i32, i64, i32, %struct.list_head, %struct.list_head }
%struct.nk_queue_entry = type { %struct.list_head }
%struct.nk_rand_info = type { i32, i64, i64, i64 }
%struct.ioapic = type { i8, i8, i8, i64, i8, %struct.iored_entry*, i32 }
%struct.iored_entry = type { i8, %struct.nk_int_entry*, i8 }
%struct.nk_int_entry = type { i32, i32, i32, i8, i8, i8, i8, %struct.list_head }
%struct.nk_barrier = type <{ i32, i32, i32, i8, [52 x i8], i32, [59 x i8] }>
%struct.nk_mem_info = type { i64*, i64, i64, i64, i64, %struct.list_head }
%struct.pci_info = type opaque
%struct.hpet_dev = type opaque
%struct.multiboot_info = type opaque
%struct.nk_int_info = type { %struct.list_head, %struct.list_head, [256 x %struct.irq_mapping] }
%struct.irq_mapping = type { %struct.ioapic*, i8, i8 }
%struct.nk_locality_info = type { i32, i8*, [128 x %struct.numa_domain*] }
%struct.pmc_info = type opaque
%struct.nk_link_info = type opaque
%struct.nk_prog_info = type opaque
%struct.cmdline_state = type opaque
%struct.nk_test_harness = type opaque
%struct.nk_sched_constraints = type { i32, i8, %union.anon }
%union.anon = type { %struct.nk_sched_sporadic_constraints }
%struct.nk_sched_sporadic_constraints = type { i64, i64, i64, i64 }

@vc = dso_local local_unnamed_addr global %struct.nk_virtual_console* null, align 8
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl10 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl11 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl3 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl4 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl5 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl6 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl7 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl8 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl9 to i8*)], section "llvm.metadata"
@_nk_cmd_fibers_impl = internal global %struct.shell_cmd_impl* @fibers_impl, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl10 = internal global %struct.shell_cmd_impl* @fibers_impl10, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl11 = internal global %struct.shell_cmd_impl* @fibers_impl11, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl3 = internal global %struct.shell_cmd_impl* @fibers_impl3, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl4 = internal global %struct.shell_cmd_impl* @fibers_impl4, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl5 = internal global %struct.shell_cmd_impl* @fibers_impl5, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl6 = internal global %struct.shell_cmd_impl* @fibers_impl6, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl7 = internal global %struct.shell_cmd_impl* @fibers_impl7, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl8 = internal global %struct.shell_cmd_impl* @fibers_impl8, section ".shell_cmds", align 8
@_nk_cmd_fibers_impl9 = internal global %struct.shell_cmd_impl* @fibers_impl9, section ".shell_cmds", align 8
@fibers_impl9 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers9 }, align 8
@.str.52 = private unnamed_addr constant [11 x i8] c"fibertest9\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"test_fiber_routine_2() : virtual console %p\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"fiber_routine3() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"fiber_routine3() : fiber is finished, a = %d\0A\00", align 1
@fibers_impl8 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers8 }, align 8
@.str.51 = private unnamed_addr constant [11 x i8] c"fibertest8\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"test_fiber_routine() : virtual console %p\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"fiber_routine1() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"fiber_routine1() : fiber is finished, a = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"fiber_routine2() : Fiber created\0A\00", align 1
@fibers_impl7 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers7 }, align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"fibertest7\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"test_fiber_fork_join() : virtual console %p\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"fiber_fork_join() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"fiber %p is finished, a = %d\0A\00", align 1
@fibers_impl6 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers6 }, align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"fibertest6\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"test_fiber_fork() : virtual console %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"fiber_fork() : This is the %dth iteration of fiber %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"fiber 4 is finished, a = %d\0A\00", align 1
@fibers_impl5 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers5 }, align 8
@.str.48 = private unnamed_addr constant [11 x i8] c"fibertest5\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"test_fiber_join() : virtual console %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Fiber outer a = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Fiber outer is finished, a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Fiber inner a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Fiber inner is finished, a = %d\0A\00", align 1
@fibers_impl4 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers4 }, align 8
@.str.47 = private unnamed_addr constant [11 x i8] c"fibertest4\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"test_yield_to() : virtual console %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Fiber_second() : a = %d and yielding to fiber_third = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Fiber 2 is finished, a = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"fiber_third() : a = %d and yielding to fiber_fourth = %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"fiber 3 is finished, a = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Fiber_first() : a = %d and yielding to fiber_second = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Fiber 1 is finished, a = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"fiber_fourth() : a = %d and yielding to fiber_first = %p\0A\00", align 1
@fibers_impl3 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers3 }, align 8
@.str.46 = private unnamed_addr constant [11 x i8] c"fibertest3\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fiber odd, counter = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Fiber odd is finished\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Fiber even, counter = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Fiber even is finished\0A\00", align 1
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8
@.str.45 = private unnamed_addr constant [11 x i8] c"fibertest2\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"test_nested_fibers() : virtual console %p\0A\00", align 1
@fibers_impl11 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers11 }, align 8
@.str.54 = private unnamed_addr constant [12 x i8] c"fiberbench1\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Benchmark Timer2 is finished\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Delta (%d itr. to %d itr.) : %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Benchmark Timer1 is finished\0A\00", align 1
@fibers_impl10 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers10 }, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"fibertime1\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Second Timer is finished, a = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"First Timer is finished, a = %d, cycle count = %d, cycles per iteration = %d\0A\00", align 1
@fibers_impl = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers }, align 8
@.str.44 = private unnamed_addr constant [10 x i8] c"fibertest\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"test_fibers() : virtual console %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Fiber 3 a = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Fiber 3 is finished, a = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Fiber 4 a = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Fiber 4 is finished, a = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Fiber 2 a = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Fiber 1 a = %d\0A\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"Curr: %d\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3.7 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.5.8 = private unnamed_addr constant [10 x i8] c"*unnamed*\00", align 1
@.str.4.9 = private unnamed_addr constant [7 x i8] c"*idle*\00", align 1
@.str.6.10 = private unnamed_addr constant [7 x i8] c"*none*\00", align 1
@.str.55 = private unnamed_addr constant [83 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.7.56 = private unnamed_addr constant [21 x i8] c"src/nautilus/fiber.c\00", align 1
@.str.8.57 = private unnamed_addr constant [73 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.27.58 = private unnamed_addr constant [81 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@.str.28.59 = private unnamed_addr constant [71 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@nautilus_info = external dso_local local_unnamed_addr global %struct.naut_info, align 8
@.str.9.60 = private unnamed_addr constant [59 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.10.61 = private unnamed_addr constant [49 x i8] c"CPU ? (%s%s): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.11.62 = private unnamed_addr constant [8 x i8] c"(fiber)\00", align 1
@.str.12.63 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.13.64 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.14.65 = private unnamed_addr constant [93 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.15.66 = private unnamed_addr constant [83 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.16.67 = private unnamed_addr constant [61 x i8] c"PANIC at %s(%d): Unable to set constraints for fiber thread\0A\00", align 1
@.str.17.68 = private unnamed_addr constant [84 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.18.69 = private unnamed_addr constant [74 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.19.72 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.20.73 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.21.74 = private unnamed_addr constant [65 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.22.75 = private unnamed_addr constant [55 x i8] c"CPU ? (%s%s): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.29.76 = private unnamed_addr constant [79 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.30.77 = private unnamed_addr constant [69 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.23.78 = private unnamed_addr constant [85 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.24.79 = private unnamed_addr constant [75 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.25.80 = private unnamed_addr constant [53 x i8] c"PANIC at %s(%d): Cannot start fiber thread for CPU!\0A\00", align 1
@.str.26.85 = private unnamed_addr constant [34 x i8] c"wrapper_nk_fiber_yield : running\0A\00", align 1

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_routine3, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %13 = call i64 @msr_read(i32 -1073741567) #11
  %14 = inttoptr i64 %13 to %struct.cpu*
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 1
  %18 = load %struct.nk_thread*, %struct.nk_thread** %17, align 8
  %19 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %20 = icmp eq %struct.nk_thread* %18, %19
  br i1 %20, label %21, label %wrapper_nk_fiber_yield.exit

; <label>:21:                                     ; preds = %2
  %22 = call i64 @msr_read(i32 -1073741567) #11
  %23 = inttoptr i64 %22 to %struct.cpu*
  %24 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i64 0, i32 5
  %25 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %24, align 8
  %26 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %25, i64 0, i32 4
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = icmp eq %struct.list_head* %28, %26
  br i1 %29, label %42, label %30

; <label>:30:                                     ; preds = %21
  %31 = getelementptr %struct.list_head, %struct.list_head* %28, i64 -7, i32 1
  %32 = bitcast %struct.list_head** %31 to %struct.nk_fiber*
  %33 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 13
  %34 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 14
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %33, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 0, i32 1
  store %struct.list_head* %35, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = bitcast %struct.list_head** %33 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %39, align 8
  %40 = bitcast %struct.list_head** %34 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %40, align 8
  %41 = icmp eq %struct.list_head** %31, null
  br i1 %41, label %42, label %63

; <label>:42:                                     ; preds = %30, %21
  %43 = call i64 @msr_read(i32 -1073741567) #11
  %44 = inttoptr i64 %43 to %struct.cpu*
  %45 = getelementptr inbounds %struct.cpu, %struct.cpu* %44, i64 0, i32 5
  %46 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %45, align 8
  %47 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %46, i64 0, i32 2
  %48 = load %struct.nk_fiber*, %struct.nk_fiber** %47, align 8
  %49 = call i64 @msr_read(i32 -1073741567) #11
  %50 = inttoptr i64 %49 to %struct.cpu*
  %51 = getelementptr inbounds %struct.cpu, %struct.cpu* %50, i64 0, i32 5
  %52 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %51, align 8
  %53 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %52, i64 0, i32 3
  %54 = load %struct.nk_fiber*, %struct.nk_fiber** %53, align 8
  %55 = icmp eq %struct.nk_fiber* %48, %54
  br i1 %55, label %wrapper_nk_fiber_yield.exit, label %56

; <label>:56:                                     ; preds = %42
  %57 = call i64 @msr_read(i32 -1073741567) #11
  %58 = inttoptr i64 %57 to %struct.cpu*
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %30
  %64 = phi %struct.nk_fiber* [ %62, %56 ], [ %32, %30 ]
  %65 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %64) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %42, %63
  %66 = phi i32 [ 1, %2 ], [ 0, %42 ], [ 0, %63 ]
  %67 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %68 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_routine1, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %6 = icmp eq %struct.nk_fiber* %5, null
  br i1 %6, label %106, label %7

; <label>:7:                                      ; preds = %wrapper_nk_fiber_yield.exit, %172, %168, %wrapper_nk_fiber_yield.exit1, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %wrapper_nk_fiber_yield.exit1 ], [ 2, %168 ], [ 3, %172 ], [ 4, %wrapper_nk_fiber_yield.exit ]
  %9 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  %10 = call i8* @kmem_malloc(i64 152) #11
  %11 = icmp eq i8* %10, null
  br i1 %11, label %nk_fiber_create.exit, label %12

; <label>:12:                                     ; preds = %7
  %13 = call i8* @memset(i8* nonnull %10, i8 signext 0, i64 152) #11
  %14 = getelementptr inbounds i8, i8* %10, i64 44
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i8, i8* %10, i64 24
  %17 = bitcast i8* %16 to i64*
  store i64 2097152, i64* %17, align 8
  %18 = call i8* @kmem_malloc(i64 2097152) #11
  %19 = getelementptr inbounds i8, i8* %10, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = icmp eq i8* %18, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %12
  call void @kmem_free(i8* nonnull %10) #11
  br label %nk_fiber_create.exit

; <label>:23:                                     ; preds = %12
  %24 = ptrtoint i8* %18 to i64
  %25 = getelementptr inbounds i8, i8* %10, i64 120
  %26 = bitcast i8* %25 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_routine2, void (i8*, i8**)** %26, align 8
  %27 = getelementptr inbounds i8, i8* %10, i64 128
  %28 = bitcast i8* %27 to i8**
  store i8* null, i8** %28, align 8
  %29 = getelementptr inbounds i8, i8* %10, i64 136
  %30 = bitcast i8* %29 to i8***
  store i8** null, i8*** %30, align 8
  %31 = load i64, i64* %17, align 8
  %32 = bitcast i8* %10 to i64*
  %33 = add i64 %24, -8
  %34 = add i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %35, align 8
  %36 = load i64, i64* %32, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %32, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %32, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %32, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %32, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %32, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %32, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %32, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %32, align 8
  %49 = add i64 %48, -8
  store i64 %49, i64* %32, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64 0, i64* %50, align 8
  %51 = ptrtoint i8* %10 to i64
  %52 = load i64, i64* %32, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %32, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %32, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %32, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %32, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %32, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %32, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %32, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %32, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %32, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %32, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %32, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %32, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %32, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %32, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %32, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %32, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %32, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %32, align 8
  %80 = add i64 %79, -8
  store i64 %80, i64* %32, align 8
  %81 = inttoptr i64 %80 to i64*
  store i64 0, i64* %81, align 8
  %82 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %10, i8** %82, align 8
  %83 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %84 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %83, i64 0, i32 24
  %85 = bitcast %struct.nk_virtual_console** %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %10, i64 48
  %88 = bitcast i8* %87 to i64*
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds i8, i8* %10, i64 104
  %90 = bitcast i8* %89 to i8**
  store i8* %89, i8** %90, align 8
  %91 = getelementptr inbounds i8, i8* %10, i64 112
  %92 = bitcast i8* %91 to i8**
  store i8* %89, i8** %92, align 8
  %93 = getelementptr inbounds i8, i8* %10, i64 96
  %94 = bitcast i8* %93 to i32*
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds i8, i8* %10, i64 64
  %96 = bitcast i8* %95 to i8**
  store i8* %95, i8** %96, align 8
  %97 = getelementptr inbounds i8, i8* %10, i64 72
  %98 = bitcast i8* %97 to i8**
  store i8* %95, i8** %98, align 8
  %99 = getelementptr inbounds i8, i8* %10, i64 80
  %100 = bitcast i8* %99 to i8**
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds i8, i8* %10, i64 88
  %102 = bitcast i8* %101 to i8**
  store i8* %99, i8** %102, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %7, %22, %23
  %103 = phi i32 [ 0, %23 ], [ -22, %22 ], [ -22, %7 ]
  %104 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %105 = call i32 @nk_fiber_run(%struct.nk_fiber* %104, i8 zeroext 0) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  br label %165

; <label>:106:                                    ; preds = %2
  %107 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11
  %108 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %109 = call i64 @msr_read(i32 -1073741567) #11
  %110 = inttoptr i64 %109 to %struct.cpu*
  %111 = getelementptr inbounds %struct.cpu, %struct.cpu* %110, i64 0, i32 5
  %112 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %111, align 8
  %113 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %112, i64 0, i32 1
  %114 = load %struct.nk_thread*, %struct.nk_thread** %113, align 8
  %115 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %116 = icmp eq %struct.nk_thread* %114, %115
  br i1 %116, label %117, label %wrapper_nk_fiber_yield.exit1

; <label>:117:                                    ; preds = %106
  %118 = call i64 @msr_read(i32 -1073741567) #11
  %119 = inttoptr i64 %118 to %struct.cpu*
  %120 = getelementptr inbounds %struct.cpu, %struct.cpu* %119, i64 0, i32 5
  %121 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %120, align 8
  %122 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %121, i64 0, i32 4
  %123 = getelementptr inbounds %struct.list_head, %struct.list_head* %122, i64 0, i32 0
  %124 = load %struct.list_head*, %struct.list_head** %123, align 8
  %125 = icmp eq %struct.list_head* %124, %122
  br i1 %125, label %138, label %126

; <label>:126:                                    ; preds = %117
  %127 = getelementptr %struct.list_head, %struct.list_head* %124, i64 -7, i32 1
  %128 = bitcast %struct.list_head** %127 to %struct.nk_fiber*
  %129 = getelementptr inbounds %struct.list_head*, %struct.list_head** %127, i64 13
  %130 = getelementptr inbounds %struct.list_head*, %struct.list_head** %127, i64 14
  %131 = load %struct.list_head*, %struct.list_head** %130, align 8
  %132 = load %struct.list_head*, %struct.list_head** %129, align 8
  %133 = getelementptr inbounds %struct.list_head, %struct.list_head* %132, i64 0, i32 1
  store %struct.list_head* %131, %struct.list_head** %133, align 8
  %134 = getelementptr inbounds %struct.list_head, %struct.list_head* %131, i64 0, i32 0
  store %struct.list_head* %132, %struct.list_head** %134, align 8
  %135 = bitcast %struct.list_head** %129 to %struct.list_head***
  store %struct.list_head** %129, %struct.list_head*** %135, align 8
  %136 = bitcast %struct.list_head** %130 to %struct.list_head***
  store %struct.list_head** %129, %struct.list_head*** %136, align 8
  %137 = icmp eq %struct.list_head** %127, null
  br i1 %137, label %138, label %159

; <label>:138:                                    ; preds = %126, %117
  %139 = call i64 @msr_read(i32 -1073741567) #11
  %140 = inttoptr i64 %139 to %struct.cpu*
  %141 = getelementptr inbounds %struct.cpu, %struct.cpu* %140, i64 0, i32 5
  %142 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %141, align 8
  %143 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %142, i64 0, i32 2
  %144 = load %struct.nk_fiber*, %struct.nk_fiber** %143, align 8
  %145 = call i64 @msr_read(i32 -1073741567) #11
  %146 = inttoptr i64 %145 to %struct.cpu*
  %147 = getelementptr inbounds %struct.cpu, %struct.cpu* %146, i64 0, i32 5
  %148 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %147, align 8
  %149 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %148, i64 0, i32 3
  %150 = load %struct.nk_fiber*, %struct.nk_fiber** %149, align 8
  %151 = icmp eq %struct.nk_fiber* %144, %150
  br i1 %151, label %wrapper_nk_fiber_yield.exit1, label %152

; <label>:152:                                    ; preds = %138
  %153 = call i64 @msr_read(i32 -1073741567) #11
  %154 = inttoptr i64 %153 to %struct.cpu*
  %155 = getelementptr inbounds %struct.cpu, %struct.cpu* %154, i64 0, i32 5
  %156 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %155, align 8
  %157 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %156, i64 0, i32 3
  %158 = load %struct.nk_fiber*, %struct.nk_fiber** %157, align 8
  br label %159

; <label>:159:                                    ; preds = %152, %126
  %160 = phi %struct.nk_fiber* [ %158, %152 ], [ %128, %126 ]
  %161 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %160) #11
  br label %wrapper_nk_fiber_yield.exit1

wrapper_nk_fiber_yield.exit1:                     ; preds = %106, %138, %159
  %162 = phi i32 [ 1, %106 ], [ 0, %138 ], [ 0, %159 ]
  %163 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %164 = icmp eq %struct.nk_fiber* %163, null
  br i1 %164, label %168, label %7

; <label>:165:                                    ; preds = %235, %nk_fiber_create.exit
  %166 = phi i32 [ %8, %nk_fiber_create.exit ], [ 5, %235 ]
  %167 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %166) #11
  ret void

; <label>:168:                                    ; preds = %wrapper_nk_fiber_yield.exit1
  %169 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11
  %170 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %171 = icmp eq %struct.nk_fiber* %170, null
  br i1 %171, label %172, label %7

; <label>:172:                                    ; preds = %168
  %173 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11
  %174 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %175 = icmp eq %struct.nk_fiber* %174, null
  br i1 %175, label %176, label %7

; <label>:176:                                    ; preds = %172
  %177 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11
  %178 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %179 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %180 = call i64 @msr_read(i32 -1073741567) #11
  %181 = inttoptr i64 %180 to %struct.cpu*
  %182 = getelementptr inbounds %struct.cpu, %struct.cpu* %181, i64 0, i32 5
  %183 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %182, align 8
  %184 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %183, i64 0, i32 1
  %185 = load %struct.nk_thread*, %struct.nk_thread** %184, align 8
  %186 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %187 = icmp eq %struct.nk_thread* %185, %186
  br i1 %187, label %188, label %wrapper_nk_fiber_yield.exit

; <label>:188:                                    ; preds = %176
  %189 = call i64 @msr_read(i32 -1073741567) #11
  %190 = inttoptr i64 %189 to %struct.cpu*
  %191 = getelementptr inbounds %struct.cpu, %struct.cpu* %190, i64 0, i32 5
  %192 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %191, align 8
  %193 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %192, i64 0, i32 4
  %194 = getelementptr inbounds %struct.list_head, %struct.list_head* %193, i64 0, i32 0
  %195 = load %struct.list_head*, %struct.list_head** %194, align 8
  %196 = icmp eq %struct.list_head* %195, %193
  br i1 %196, label %209, label %197

; <label>:197:                                    ; preds = %188
  %198 = getelementptr %struct.list_head, %struct.list_head* %195, i64 -7, i32 1
  %199 = bitcast %struct.list_head** %198 to %struct.nk_fiber*
  %200 = getelementptr inbounds %struct.list_head*, %struct.list_head** %198, i64 13
  %201 = getelementptr inbounds %struct.list_head*, %struct.list_head** %198, i64 14
  %202 = load %struct.list_head*, %struct.list_head** %201, align 8
  %203 = load %struct.list_head*, %struct.list_head** %200, align 8
  %204 = getelementptr inbounds %struct.list_head, %struct.list_head* %203, i64 0, i32 1
  store %struct.list_head* %202, %struct.list_head** %204, align 8
  %205 = getelementptr inbounds %struct.list_head, %struct.list_head* %202, i64 0, i32 0
  store %struct.list_head* %203, %struct.list_head** %205, align 8
  %206 = bitcast %struct.list_head** %200 to %struct.list_head***
  store %struct.list_head** %200, %struct.list_head*** %206, align 8
  %207 = bitcast %struct.list_head** %201 to %struct.list_head***
  store %struct.list_head** %200, %struct.list_head*** %207, align 8
  %208 = icmp eq %struct.list_head** %198, null
  br i1 %208, label %209, label %230

; <label>:209:                                    ; preds = %197, %188
  %210 = call i64 @msr_read(i32 -1073741567) #11
  %211 = inttoptr i64 %210 to %struct.cpu*
  %212 = getelementptr inbounds %struct.cpu, %struct.cpu* %211, i64 0, i32 5
  %213 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %212, align 8
  %214 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %213, i64 0, i32 2
  %215 = load %struct.nk_fiber*, %struct.nk_fiber** %214, align 8
  %216 = call i64 @msr_read(i32 -1073741567) #11
  %217 = inttoptr i64 %216 to %struct.cpu*
  %218 = getelementptr inbounds %struct.cpu, %struct.cpu* %217, i64 0, i32 5
  %219 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %218, align 8
  %220 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %219, i64 0, i32 3
  %221 = load %struct.nk_fiber*, %struct.nk_fiber** %220, align 8
  %222 = icmp eq %struct.nk_fiber* %215, %221
  br i1 %222, label %wrapper_nk_fiber_yield.exit, label %223

; <label>:223:                                    ; preds = %209
  %224 = call i64 @msr_read(i32 -1073741567) #11
  %225 = inttoptr i64 %224 to %struct.cpu*
  %226 = getelementptr inbounds %struct.cpu, %struct.cpu* %225, i64 0, i32 5
  %227 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %226, align 8
  %228 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %227, i64 0, i32 3
  %229 = load %struct.nk_fiber*, %struct.nk_fiber** %228, align 8
  br label %230

; <label>:230:                                    ; preds = %223, %197
  %231 = phi %struct.nk_fiber* [ %229, %223 ], [ %199, %197 ]
  %232 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %231) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %176, %209, %230
  %233 = phi i32 [ 1, %176 ], [ 0, %209 ], [ 0, %230 ]
  %234 = icmp eq %struct.nk_fiber* %178, null
  br i1 %234, label %235, label %7

; <label>:235:                                    ; preds = %wrapper_nk_fiber_yield.exit
  %236 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11
  br label %165
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_fork_join, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %5 = icmp eq %struct.nk_fiber* %4, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #11
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %15 = call i64 @msr_read(i32 -1073741567) #11
  %16 = inttoptr i64 %15 to %struct.cpu*
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 1
  %20 = load %struct.nk_thread*, %struct.nk_thread** %19, align 8
  %21 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %22 = icmp eq %struct.nk_thread* %20, %21
  br i1 %22, label %23, label %wrapper_nk_fiber_yield.exit

; <label>:23:                                     ; preds = %8
  %24 = call i64 @msr_read(i32 -1073741567) #11
  %25 = inttoptr i64 %24 to %struct.cpu*
  %26 = getelementptr inbounds %struct.cpu, %struct.cpu* %25, i64 0, i32 5
  %27 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %26, align 8
  %28 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %27, i64 0, i32 4
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0
  %30 = load %struct.list_head*, %struct.list_head** %29, align 8
  %31 = icmp eq %struct.list_head* %30, %28
  br i1 %31, label %44, label %32

; <label>:32:                                     ; preds = %23
  %33 = getelementptr %struct.list_head, %struct.list_head* %30, i64 -7, i32 1
  %34 = bitcast %struct.list_head** %33 to %struct.nk_fiber*
  %35 = getelementptr inbounds %struct.list_head*, %struct.list_head** %33, i64 13
  %36 = getelementptr inbounds %struct.list_head*, %struct.list_head** %33, i64 14
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8
  %38 = load %struct.list_head*, %struct.list_head** %35, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 0, i32 1
  store %struct.list_head* %37, %struct.list_head** %39, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i64 0, i32 0
  store %struct.list_head* %38, %struct.list_head** %40, align 8
  %41 = bitcast %struct.list_head** %35 to %struct.list_head***
  store %struct.list_head** %35, %struct.list_head*** %41, align 8
  %42 = bitcast %struct.list_head** %36 to %struct.list_head***
  store %struct.list_head** %35, %struct.list_head*** %42, align 8
  %43 = icmp eq %struct.list_head** %33, null
  br i1 %43, label %44, label %65

; <label>:44:                                     ; preds = %32, %23
  %45 = call i64 @msr_read(i32 -1073741567) #11
  %46 = inttoptr i64 %45 to %struct.cpu*
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 2
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8
  %51 = call i64 @msr_read(i32 -1073741567) #11
  %52 = inttoptr i64 %51 to %struct.cpu*
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 3
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8
  %57 = icmp eq %struct.nk_fiber* %50, %56
  br i1 %57, label %wrapper_nk_fiber_yield.exit, label %58

; <label>:58:                                     ; preds = %44
  %59 = call i64 @msr_read(i32 -1073741567) #11
  %60 = inttoptr i64 %59 to %struct.cpu*
  %61 = getelementptr inbounds %struct.cpu, %struct.cpu* %60, i64 0, i32 5
  %62 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %61, align 8
  %63 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %62, i64 0, i32 3
  %64 = load %struct.nk_fiber*, %struct.nk_fiber** %63, align 8
  br label %65

; <label>:65:                                     ; preds = %58, %32
  %66 = phi %struct.nk_fiber* [ %64, %58 ], [ %34, %32 ]
  %67 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %66) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %8, %44, %65
  %68 = phi i32 [ 1, %8 ], [ 0, %44 ], [ 0, %65 ]
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_fork, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_outer_join, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit3, label %9

; <label>:9:                                      ; preds = %2
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit3

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner_join, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit3

nk_fiber_create.exit3:                            ; preds = %2, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %2 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_join(%struct.nk_fiber* %103) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %105 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %106 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %107 = call i64 @msr_read(i32 -1073741567) #11
  %108 = inttoptr i64 %107 to %struct.cpu*
  %109 = getelementptr inbounds %struct.cpu, %struct.cpu* %108, i64 0, i32 5
  %110 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %109, align 8
  %111 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %110, i64 0, i32 1
  %112 = load %struct.nk_thread*, %struct.nk_thread** %111, align 8
  %113 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %114 = icmp eq %struct.nk_thread* %112, %113
  br i1 %114, label %115, label %wrapper_nk_fiber_yield.exit1

; <label>:115:                                    ; preds = %nk_fiber_create.exit3
  %116 = call i64 @msr_read(i32 -1073741567) #11
  %117 = inttoptr i64 %116 to %struct.cpu*
  %118 = getelementptr inbounds %struct.cpu, %struct.cpu* %117, i64 0, i32 5
  %119 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %118, align 8
  %120 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %119, i64 0, i32 4
  %121 = getelementptr inbounds %struct.list_head, %struct.list_head* %120, i64 0, i32 0
  %122 = load %struct.list_head*, %struct.list_head** %121, align 8
  %123 = icmp eq %struct.list_head* %122, %120
  br i1 %123, label %136, label %124

; <label>:124:                                    ; preds = %115
  %125 = getelementptr %struct.list_head, %struct.list_head* %122, i64 -7, i32 1
  %126 = bitcast %struct.list_head** %125 to %struct.nk_fiber*
  %127 = getelementptr inbounds %struct.list_head*, %struct.list_head** %125, i64 13
  %128 = getelementptr inbounds %struct.list_head*, %struct.list_head** %125, i64 14
  %129 = load %struct.list_head*, %struct.list_head** %128, align 8
  %130 = load %struct.list_head*, %struct.list_head** %127, align 8
  %131 = getelementptr inbounds %struct.list_head, %struct.list_head* %130, i64 0, i32 1
  store %struct.list_head* %129, %struct.list_head** %131, align 8
  %132 = getelementptr inbounds %struct.list_head, %struct.list_head* %129, i64 0, i32 0
  store %struct.list_head* %130, %struct.list_head** %132, align 8
  %133 = bitcast %struct.list_head** %127 to %struct.list_head***
  store %struct.list_head** %127, %struct.list_head*** %133, align 8
  %134 = bitcast %struct.list_head** %128 to %struct.list_head***
  store %struct.list_head** %127, %struct.list_head*** %134, align 8
  %135 = icmp eq %struct.list_head** %125, null
  br i1 %135, label %136, label %157

; <label>:136:                                    ; preds = %124, %115
  %137 = call i64 @msr_read(i32 -1073741567) #11
  %138 = inttoptr i64 %137 to %struct.cpu*
  %139 = getelementptr inbounds %struct.cpu, %struct.cpu* %138, i64 0, i32 5
  %140 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %139, align 8
  %141 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %140, i64 0, i32 2
  %142 = load %struct.nk_fiber*, %struct.nk_fiber** %141, align 8
  %143 = call i64 @msr_read(i32 -1073741567) #11
  %144 = inttoptr i64 %143 to %struct.cpu*
  %145 = getelementptr inbounds %struct.cpu, %struct.cpu* %144, i64 0, i32 5
  %146 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %145, align 8
  %147 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %146, i64 0, i32 3
  %148 = load %struct.nk_fiber*, %struct.nk_fiber** %147, align 8
  %149 = icmp eq %struct.nk_fiber* %142, %148
  br i1 %149, label %wrapper_nk_fiber_yield.exit1, label %150

; <label>:150:                                    ; preds = %136
  %151 = call i64 @msr_read(i32 -1073741567) #11
  %152 = inttoptr i64 %151 to %struct.cpu*
  %153 = getelementptr inbounds %struct.cpu, %struct.cpu* %152, i64 0, i32 5
  %154 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %153, align 8
  %155 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %154, i64 0, i32 3
  %156 = load %struct.nk_fiber*, %struct.nk_fiber** %155, align 8
  br label %157

; <label>:157:                                    ; preds = %150, %124
  %158 = phi %struct.nk_fiber* [ %156, %150 ], [ %126, %124 ]
  %159 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %158) #11
  br label %wrapper_nk_fiber_yield.exit1

wrapper_nk_fiber_yield.exit1:                     ; preds = %nk_fiber_create.exit3, %136, %157
  %160 = phi i32 [ 1, %nk_fiber_create.exit3 ], [ 0, %136 ], [ 0, %157 ]
  %161 = call i8* @kmem_malloc(i64 152) #11
  %162 = icmp eq i8* %161, null
  br i1 %162, label %nk_fiber_create.exit2, label %163

; <label>:163:                                    ; preds = %wrapper_nk_fiber_yield.exit1
  %164 = call i8* @memset(i8* nonnull %161, i8 signext 0, i64 152) #11
  %165 = getelementptr inbounds i8, i8* %161, i64 44
  %166 = bitcast i8* %165 to i32*
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds i8, i8* %161, i64 24
  %168 = bitcast i8* %167 to i64*
  store i64 2097152, i64* %168, align 8
  %169 = call i8* @kmem_malloc(i64 2097152) #11
  %170 = getelementptr inbounds i8, i8* %161, i64 8
  %171 = bitcast i8* %170 to i8**
  store i8* %169, i8** %171, align 8
  %172 = icmp eq i8* %169, null
  br i1 %172, label %173, label %174

; <label>:173:                                    ; preds = %163
  call void @kmem_free(i8* nonnull %161) #11
  br label %nk_fiber_create.exit2

; <label>:174:                                    ; preds = %163
  %175 = ptrtoint i8* %169 to i64
  %176 = getelementptr inbounds i8, i8* %161, i64 120
  %177 = bitcast i8* %176 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner_join, void (i8*, i8**)** %177, align 8
  %178 = getelementptr inbounds i8, i8* %161, i64 128
  %179 = bitcast i8* %178 to i8**
  store i8* null, i8** %179, align 8
  %180 = getelementptr inbounds i8, i8* %161, i64 136
  %181 = bitcast i8* %180 to i8***
  store i8** null, i8*** %181, align 8
  %182 = load i64, i64* %168, align 8
  %183 = bitcast i8* %161 to i64*
  %184 = add i64 %175, -8
  %185 = add i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = inttoptr i64 %185 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %186, align 8
  %187 = load i64, i64* %183, align 8
  %188 = add i64 %187, -8
  store i64 %188, i64* %183, align 8
  %189 = inttoptr i64 %188 to i64*
  store i64 0, i64* %189, align 8
  %190 = load i64, i64* %183, align 8
  %191 = add i64 %190, -8
  store i64 %191, i64* %183, align 8
  %192 = inttoptr i64 %191 to i64*
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* %183, align 8
  %194 = add i64 %193, -8
  store i64 %194, i64* %183, align 8
  %195 = inttoptr i64 %194 to i64*
  store i64 0, i64* %195, align 8
  %196 = load i64, i64* %183, align 8
  %197 = add i64 %196, -8
  store i64 %197, i64* %183, align 8
  %198 = inttoptr i64 %197 to i64*
  store i64 0, i64* %198, align 8
  %199 = load i64, i64* %183, align 8
  %200 = add i64 %199, -8
  store i64 %200, i64* %183, align 8
  %201 = inttoptr i64 %200 to i64*
  store i64 0, i64* %201, align 8
  %202 = ptrtoint i8* %161 to i64
  %203 = load i64, i64* %183, align 8
  %204 = add i64 %203, -8
  store i64 %204, i64* %183, align 8
  %205 = inttoptr i64 %204 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %183, align 8
  %207 = add i64 %206, -8
  store i64 %207, i64* %183, align 8
  %208 = inttoptr i64 %207 to i64*
  store i64 0, i64* %208, align 8
  %209 = load i64, i64* %183, align 8
  %210 = add i64 %209, -8
  store i64 %210, i64* %183, align 8
  %211 = inttoptr i64 %210 to i64*
  store i64 0, i64* %211, align 8
  %212 = load i64, i64* %183, align 8
  %213 = add i64 %212, -8
  store i64 %213, i64* %183, align 8
  %214 = inttoptr i64 %213 to i64*
  store i64 0, i64* %214, align 8
  %215 = load i64, i64* %183, align 8
  %216 = add i64 %215, -8
  store i64 %216, i64* %183, align 8
  %217 = inttoptr i64 %216 to i64*
  store i64 0, i64* %217, align 8
  %218 = load i64, i64* %183, align 8
  %219 = add i64 %218, -8
  store i64 %219, i64* %183, align 8
  %220 = inttoptr i64 %219 to i64*
  store i64 0, i64* %220, align 8
  %221 = load i64, i64* %183, align 8
  %222 = add i64 %221, -8
  store i64 %222, i64* %183, align 8
  %223 = inttoptr i64 %222 to i64*
  store i64 0, i64* %223, align 8
  %224 = load i64, i64* %183, align 8
  %225 = add i64 %224, -8
  store i64 %225, i64* %183, align 8
  %226 = inttoptr i64 %225 to i64*
  store i64 0, i64* %226, align 8
  %227 = load i64, i64* %183, align 8
  %228 = add i64 %227, -8
  store i64 %228, i64* %183, align 8
  %229 = inttoptr i64 %228 to i64*
  store i64 0, i64* %229, align 8
  %230 = load i64, i64* %183, align 8
  %231 = add i64 %230, -8
  store i64 %231, i64* %183, align 8
  %232 = inttoptr i64 %231 to i64*
  store i64 0, i64* %232, align 8
  %233 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %161, i8** %233, align 8
  %234 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %235 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %234, i64 0, i32 24
  %236 = bitcast %struct.nk_virtual_console** %235 to i64*
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i8, i8* %161, i64 48
  %239 = bitcast i8* %238 to i64*
  store i64 %237, i64* %239, align 8
  %240 = getelementptr inbounds i8, i8* %161, i64 104
  %241 = bitcast i8* %240 to i8**
  store i8* %240, i8** %241, align 8
  %242 = getelementptr inbounds i8, i8* %161, i64 112
  %243 = bitcast i8* %242 to i8**
  store i8* %240, i8** %243, align 8
  %244 = getelementptr inbounds i8, i8* %161, i64 96
  %245 = bitcast i8* %244 to i32*
  store i32 0, i32* %245, align 8
  %246 = getelementptr inbounds i8, i8* %161, i64 64
  %247 = bitcast i8* %246 to i8**
  store i8* %246, i8** %247, align 8
  %248 = getelementptr inbounds i8, i8* %161, i64 72
  %249 = bitcast i8* %248 to i8**
  store i8* %246, i8** %249, align 8
  %250 = getelementptr inbounds i8, i8* %161, i64 80
  %251 = bitcast i8* %250 to i8**
  store i8* %250, i8** %251, align 8
  %252 = getelementptr inbounds i8, i8* %161, i64 88
  %253 = bitcast i8* %252 to i8**
  store i8* %250, i8** %253, align 8
  br label %nk_fiber_create.exit2

nk_fiber_create.exit2:                            ; preds = %wrapper_nk_fiber_yield.exit1, %173, %174
  %254 = phi i32 [ 0, %174 ], [ -22, %173 ], [ -22, %wrapper_nk_fiber_yield.exit1 ]
  %255 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %256 = call i32 @nk_fiber_run(%struct.nk_fiber* %255, i8 zeroext 1) #11
  %257 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %258 = call i32 @nk_fiber_join(%struct.nk_fiber* %257) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %259 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %260 = call i8* @kmem_malloc(i64 152) #11
  %261 = icmp eq i8* %260, null
  br i1 %261, label %nk_fiber_create.exit, label %262

; <label>:262:                                    ; preds = %nk_fiber_create.exit2
  %263 = call i8* @memset(i8* nonnull %260, i8 signext 0, i64 152) #11
  %264 = getelementptr inbounds i8, i8* %260, i64 44
  %265 = bitcast i8* %264 to i32*
  store i32 0, i32* %265, align 4
  %266 = getelementptr inbounds i8, i8* %260, i64 24
  %267 = bitcast i8* %266 to i64*
  store i64 2097152, i64* %267, align 8
  %268 = call i8* @kmem_malloc(i64 2097152) #11
  %269 = getelementptr inbounds i8, i8* %260, i64 8
  %270 = bitcast i8* %269 to i8**
  store i8* %268, i8** %270, align 8
  %271 = icmp eq i8* %268, null
  br i1 %271, label %272, label %273

; <label>:272:                                    ; preds = %262
  call void @kmem_free(i8* nonnull %260) #11
  br label %nk_fiber_create.exit

; <label>:273:                                    ; preds = %262
  %274 = ptrtoint i8* %268 to i64
  %275 = getelementptr inbounds i8, i8* %260, i64 120
  %276 = bitcast i8* %275 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner_join, void (i8*, i8**)** %276, align 8
  %277 = getelementptr inbounds i8, i8* %260, i64 128
  %278 = bitcast i8* %277 to i8**
  store i8* null, i8** %278, align 8
  %279 = getelementptr inbounds i8, i8* %260, i64 136
  %280 = bitcast i8* %279 to i8***
  store i8** null, i8*** %280, align 8
  %281 = load i64, i64* %267, align 8
  %282 = bitcast i8* %260 to i64*
  %283 = add i64 %274, -8
  %284 = add i64 %283, %281
  store i64 %284, i64* %282, align 8
  %285 = inttoptr i64 %284 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %285, align 8
  %286 = load i64, i64* %282, align 8
  %287 = add i64 %286, -8
  store i64 %287, i64* %282, align 8
  %288 = inttoptr i64 %287 to i64*
  store i64 0, i64* %288, align 8
  %289 = load i64, i64* %282, align 8
  %290 = add i64 %289, -8
  store i64 %290, i64* %282, align 8
  %291 = inttoptr i64 %290 to i64*
  store i64 0, i64* %291, align 8
  %292 = load i64, i64* %282, align 8
  %293 = add i64 %292, -8
  store i64 %293, i64* %282, align 8
  %294 = inttoptr i64 %293 to i64*
  store i64 0, i64* %294, align 8
  %295 = load i64, i64* %282, align 8
  %296 = add i64 %295, -8
  store i64 %296, i64* %282, align 8
  %297 = inttoptr i64 %296 to i64*
  store i64 0, i64* %297, align 8
  %298 = load i64, i64* %282, align 8
  %299 = add i64 %298, -8
  store i64 %299, i64* %282, align 8
  %300 = inttoptr i64 %299 to i64*
  store i64 0, i64* %300, align 8
  %301 = ptrtoint i8* %260 to i64
  %302 = load i64, i64* %282, align 8
  %303 = add i64 %302, -8
  store i64 %303, i64* %282, align 8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  %305 = load i64, i64* %282, align 8
  %306 = add i64 %305, -8
  store i64 %306, i64* %282, align 8
  %307 = inttoptr i64 %306 to i64*
  store i64 0, i64* %307, align 8
  %308 = load i64, i64* %282, align 8
  %309 = add i64 %308, -8
  store i64 %309, i64* %282, align 8
  %310 = inttoptr i64 %309 to i64*
  store i64 0, i64* %310, align 8
  %311 = load i64, i64* %282, align 8
  %312 = add i64 %311, -8
  store i64 %312, i64* %282, align 8
  %313 = inttoptr i64 %312 to i64*
  store i64 0, i64* %313, align 8
  %314 = load i64, i64* %282, align 8
  %315 = add i64 %314, -8
  store i64 %315, i64* %282, align 8
  %316 = inttoptr i64 %315 to i64*
  store i64 0, i64* %316, align 8
  %317 = load i64, i64* %282, align 8
  %318 = add i64 %317, -8
  store i64 %318, i64* %282, align 8
  %319 = inttoptr i64 %318 to i64*
  store i64 0, i64* %319, align 8
  %320 = load i64, i64* %282, align 8
  %321 = add i64 %320, -8
  store i64 %321, i64* %282, align 8
  %322 = inttoptr i64 %321 to i64*
  store i64 0, i64* %322, align 8
  %323 = load i64, i64* %282, align 8
  %324 = add i64 %323, -8
  store i64 %324, i64* %282, align 8
  %325 = inttoptr i64 %324 to i64*
  store i64 0, i64* %325, align 8
  %326 = load i64, i64* %282, align 8
  %327 = add i64 %326, -8
  store i64 %327, i64* %282, align 8
  %328 = inttoptr i64 %327 to i64*
  store i64 0, i64* %328, align 8
  %329 = load i64, i64* %282, align 8
  %330 = add i64 %329, -8
  store i64 %330, i64* %282, align 8
  %331 = inttoptr i64 %330 to i64*
  store i64 0, i64* %331, align 8
  %332 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %260, i8** %332, align 8
  %333 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %334 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %333, i64 0, i32 24
  %335 = bitcast %struct.nk_virtual_console** %334 to i64*
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds i8, i8* %260, i64 48
  %338 = bitcast i8* %337 to i64*
  store i64 %336, i64* %338, align 8
  %339 = getelementptr inbounds i8, i8* %260, i64 104
  %340 = bitcast i8* %339 to i8**
  store i8* %339, i8** %340, align 8
  %341 = getelementptr inbounds i8, i8* %260, i64 112
  %342 = bitcast i8* %341 to i8**
  store i8* %339, i8** %342, align 8
  %343 = getelementptr inbounds i8, i8* %260, i64 96
  %344 = bitcast i8* %343 to i32*
  store i32 0, i32* %344, align 8
  %345 = getelementptr inbounds i8, i8* %260, i64 64
  %346 = bitcast i8* %345 to i8**
  store i8* %345, i8** %346, align 8
  %347 = getelementptr inbounds i8, i8* %260, i64 72
  %348 = bitcast i8* %347 to i8**
  store i8* %345, i8** %348, align 8
  %349 = getelementptr inbounds i8, i8* %260, i64 80
  %350 = bitcast i8* %349 to i8**
  store i8* %349, i8** %350, align 8
  %351 = getelementptr inbounds i8, i8* %260, i64 88
  %352 = bitcast i8* %351 to i8**
  store i8* %349, i8** %352, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %nk_fiber_create.exit2, %272, %273
  %353 = phi i32 [ 0, %273 ], [ -22, %272 ], [ -22, %nk_fiber_create.exit2 ]
  %354 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %355 = call i32 @nk_fiber_run(%struct.nk_fiber* %354, i8 zeroext 1) #11
  %356 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %357 = call i32 @nk_fiber_join(%struct.nk_fiber* %356) #11
  %358 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %359 = call i64 @msr_read(i32 -1073741567) #11
  %360 = inttoptr i64 %359 to %struct.cpu*
  %361 = getelementptr inbounds %struct.cpu, %struct.cpu* %360, i64 0, i32 5
  %362 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %361, align 8
  %363 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %362, i64 0, i32 1
  %364 = load %struct.nk_thread*, %struct.nk_thread** %363, align 8
  %365 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %366 = icmp eq %struct.nk_thread* %364, %365
  br i1 %366, label %367, label %wrapper_nk_fiber_yield.exit

; <label>:367:                                    ; preds = %nk_fiber_create.exit
  %368 = call i64 @msr_read(i32 -1073741567) #11
  %369 = inttoptr i64 %368 to %struct.cpu*
  %370 = getelementptr inbounds %struct.cpu, %struct.cpu* %369, i64 0, i32 5
  %371 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %370, align 8
  %372 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %371, i64 0, i32 4
  %373 = getelementptr inbounds %struct.list_head, %struct.list_head* %372, i64 0, i32 0
  %374 = load %struct.list_head*, %struct.list_head** %373, align 8
  %375 = icmp eq %struct.list_head* %374, %372
  br i1 %375, label %388, label %376

; <label>:376:                                    ; preds = %367
  %377 = getelementptr %struct.list_head, %struct.list_head* %374, i64 -7, i32 1
  %378 = bitcast %struct.list_head** %377 to %struct.nk_fiber*
  %379 = getelementptr inbounds %struct.list_head*, %struct.list_head** %377, i64 13
  %380 = getelementptr inbounds %struct.list_head*, %struct.list_head** %377, i64 14
  %381 = load %struct.list_head*, %struct.list_head** %380, align 8
  %382 = load %struct.list_head*, %struct.list_head** %379, align 8
  %383 = getelementptr inbounds %struct.list_head, %struct.list_head* %382, i64 0, i32 1
  store %struct.list_head* %381, %struct.list_head** %383, align 8
  %384 = getelementptr inbounds %struct.list_head, %struct.list_head* %381, i64 0, i32 0
  store %struct.list_head* %382, %struct.list_head** %384, align 8
  %385 = bitcast %struct.list_head** %379 to %struct.list_head***
  store %struct.list_head** %379, %struct.list_head*** %385, align 8
  %386 = bitcast %struct.list_head** %380 to %struct.list_head***
  store %struct.list_head** %379, %struct.list_head*** %386, align 8
  %387 = icmp eq %struct.list_head** %377, null
  br i1 %387, label %388, label %409

; <label>:388:                                    ; preds = %376, %367
  %389 = call i64 @msr_read(i32 -1073741567) #11
  %390 = inttoptr i64 %389 to %struct.cpu*
  %391 = getelementptr inbounds %struct.cpu, %struct.cpu* %390, i64 0, i32 5
  %392 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %391, align 8
  %393 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %392, i64 0, i32 2
  %394 = load %struct.nk_fiber*, %struct.nk_fiber** %393, align 8
  %395 = call i64 @msr_read(i32 -1073741567) #11
  %396 = inttoptr i64 %395 to %struct.cpu*
  %397 = getelementptr inbounds %struct.cpu, %struct.cpu* %396, i64 0, i32 5
  %398 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %397, align 8
  %399 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %398, i64 0, i32 3
  %400 = load %struct.nk_fiber*, %struct.nk_fiber** %399, align 8
  %401 = icmp eq %struct.nk_fiber* %394, %400
  br i1 %401, label %wrapper_nk_fiber_yield.exit, label %402

; <label>:402:                                    ; preds = %388
  %403 = call i64 @msr_read(i32 -1073741567) #11
  %404 = inttoptr i64 %403 to %struct.cpu*
  %405 = getelementptr inbounds %struct.cpu, %struct.cpu* %404, i64 0, i32 5
  %406 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %405, align 8
  %407 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %406, i64 0, i32 3
  %408 = load %struct.nk_fiber*, %struct.nk_fiber** %407, align 8
  br label %409

; <label>:409:                                    ; preds = %402, %376
  %410 = phi %struct.nk_fiber* [ %408, %402 ], [ %378, %376 ]
  %411 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %410) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %nk_fiber_create.exit, %388, %409
  %412 = phi i32 [ 1, %nk_fiber_create.exit ], [ 0, %388 ], [ 0, %409 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %413 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #11
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %13 = call i64 @msr_read(i32 -1073741567) #11
  %14 = inttoptr i64 %13 to %struct.cpu*
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 1
  %18 = load %struct.nk_thread*, %struct.nk_thread** %17, align 8
  %19 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %20 = icmp eq %struct.nk_thread* %18, %19
  br i1 %20, label %21, label %wrapper_nk_fiber_yield.exit

; <label>:21:                                     ; preds = %2
  %22 = call i64 @msr_read(i32 -1073741567) #11
  %23 = inttoptr i64 %22 to %struct.cpu*
  %24 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i64 0, i32 5
  %25 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %24, align 8
  %26 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %25, i64 0, i32 4
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = icmp eq %struct.list_head* %28, %26
  br i1 %29, label %42, label %30

; <label>:30:                                     ; preds = %21
  %31 = getelementptr %struct.list_head, %struct.list_head* %28, i64 -7, i32 1
  %32 = bitcast %struct.list_head** %31 to %struct.nk_fiber*
  %33 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 13
  %34 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 14
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %33, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 0, i32 1
  store %struct.list_head* %35, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = bitcast %struct.list_head** %33 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %39, align 8
  %40 = bitcast %struct.list_head** %34 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %40, align 8
  %41 = icmp eq %struct.list_head** %31, null
  br i1 %41, label %42, label %63

; <label>:42:                                     ; preds = %30, %21
  %43 = call i64 @msr_read(i32 -1073741567) #11
  %44 = inttoptr i64 %43 to %struct.cpu*
  %45 = getelementptr inbounds %struct.cpu, %struct.cpu* %44, i64 0, i32 5
  %46 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %45, align 8
  %47 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %46, i64 0, i32 2
  %48 = load %struct.nk_fiber*, %struct.nk_fiber** %47, align 8
  %49 = call i64 @msr_read(i32 -1073741567) #11
  %50 = inttoptr i64 %49 to %struct.cpu*
  %51 = getelementptr inbounds %struct.cpu, %struct.cpu* %50, i64 0, i32 5
  %52 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %51, align 8
  %53 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %52, i64 0, i32 3
  %54 = load %struct.nk_fiber*, %struct.nk_fiber** %53, align 8
  %55 = icmp eq %struct.nk_fiber* %48, %54
  br i1 %55, label %wrapper_nk_fiber_yield.exit, label %56

; <label>:56:                                     ; preds = %42
  %57 = call i64 @msr_read(i32 -1073741567) #11
  %58 = inttoptr i64 %57 to %struct.cpu*
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %30
  %64 = phi %struct.nk_fiber* [ %62, %56 ], [ %32, %30 ]
  %65 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %64) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %42, %63
  %66 = phi i32 [ 1, %2 ], [ 0, %42 ], [ 0, %63 ]
  %67 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #11
  %68 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #11
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = tail call i32 @test_yield_to() #12
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast %struct.nk_fiber** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %11) #11
  %13 = call i8* @kmem_malloc(i64 152) #11
  %14 = icmp eq i8* %13, null
  br i1 %14, label %nk_fiber_create.exit, label %15

; <label>:15:                                     ; preds = %0
  %16 = call i8* @memset(i8* nonnull %13, i8 signext 0, i64 152) #11
  %17 = getelementptr inbounds i8, i8* %13, i64 44
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i8, i8* %13, i64 24
  %20 = bitcast i8* %19 to i64*
  store i64 2097152, i64* %20, align 8
  %21 = call i8* @kmem_malloc(i64 2097152) #11
  %22 = getelementptr inbounds i8, i8* %13, i64 8
  %23 = bitcast i8* %22 to i8**
  store i8* %21, i8** %23, align 8
  %24 = icmp eq i8* %21, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  call void @kmem_free(i8* nonnull %13) #11
  br label %nk_fiber_create.exit

; <label>:26:                                     ; preds = %15
  %27 = ptrtoint i8* %21 to i64
  %28 = getelementptr inbounds i8, i8* %13, i64 120
  %29 = bitcast i8* %28 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_fourth, void (i8*, i8**)** %29, align 8
  %30 = getelementptr inbounds i8, i8* %13, i64 128
  %31 = bitcast i8* %30 to i8**
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds i8, i8* %13, i64 136
  %33 = bitcast i8* %32 to i8***
  store i8** null, i8*** %33, align 8
  %34 = load i64, i64* %20, align 8
  %35 = bitcast i8* %13 to i64*
  %36 = add i64 %27, -8
  %37 = add i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %38, align 8
  %39 = load i64, i64* %35, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %35, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %35, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %35, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %35, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %35, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %35, align 8
  %49 = add i64 %48, -8
  store i64 %49, i64* %35, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %35, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %35, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 0, i64* %53, align 8
  %54 = ptrtoint i8* %13 to i64
  %55 = load i64, i64* %35, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %35, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %35, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %35, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %35, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %35, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %35, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %35, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %35, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %35, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %35, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %35, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %35, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %35, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %35, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %35, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %35, align 8
  %80 = add i64 %79, -8
  store i64 %80, i64* %35, align 8
  %81 = inttoptr i64 %80 to i64*
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %35, align 8
  %83 = add i64 %82, -8
  store i64 %83, i64* %35, align 8
  %84 = inttoptr i64 %83 to i64*
  store i64 0, i64* %84, align 8
  %85 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %13, i8** %85, align 8
  %86 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %87 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %86, i64 0, i32 24
  %88 = bitcast %struct.nk_virtual_console** %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %13, i64 48
  %91 = bitcast i8* %90 to i64*
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds i8, i8* %13, i64 104
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %13, i64 112
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %13, i64 96
  %97 = bitcast i8* %96 to i32*
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds i8, i8* %13, i64 64
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %13, i64 72
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %13, i64 80
  %103 = bitcast i8* %102 to i8**
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds i8, i8* %13, i64 88
  %105 = bitcast i8* %104 to i8**
  store i8* %102, i8** %105, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %25, %26
  %106 = phi i32 [ 0, %26 ], [ -22, %25 ], [ -22, %0 ]
  %107 = call i8* @kmem_malloc(i64 152) #11
  %108 = icmp eq i8* %107, null
  br i1 %108, label %nk_fiber_create.exit1, label %109

; <label>:109:                                    ; preds = %nk_fiber_create.exit
  %110 = call i8* @memset(i8* nonnull %107, i8 signext 0, i64 152) #11
  %111 = getelementptr inbounds i8, i8* %107, i64 44
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds i8, i8* %107, i64 24
  %114 = bitcast i8* %113 to i64*
  store i64 2097152, i64* %114, align 8
  %115 = call i8* @kmem_malloc(i64 2097152) #11
  %116 = getelementptr inbounds i8, i8* %107, i64 8
  %117 = bitcast i8* %116 to i8**
  store i8* %115, i8** %117, align 8
  %118 = icmp eq i8* %115, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109
  call void @kmem_free(i8* nonnull %107) #11
  br label %nk_fiber_create.exit1

; <label>:120:                                    ; preds = %109
  %121 = ptrtoint i8* %115 to i64
  %122 = getelementptr inbounds i8, i8* %107, i64 120
  %123 = bitcast i8* %122 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_first, void (i8*, i8**)** %123, align 8
  %124 = getelementptr inbounds i8, i8* %107, i64 128
  %125 = bitcast i8* %124 to i8**
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %107, i64 136
  %127 = bitcast i8* %126 to i8***
  store i8** null, i8*** %127, align 8
  %128 = load i64, i64* %114, align 8
  %129 = bitcast i8* %107 to i64*
  %130 = add i64 %121, -8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %132, align 8
  %133 = load i64, i64* %129, align 8
  %134 = add i64 %133, -8
  store i64 %134, i64* %129, align 8
  %135 = inttoptr i64 %134 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %129, align 8
  %137 = add i64 %136, -8
  store i64 %137, i64* %129, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %129, align 8
  %140 = add i64 %139, -8
  store i64 %140, i64* %129, align 8
  %141 = inttoptr i64 %140 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %129, align 8
  %143 = add i64 %142, -8
  store i64 %143, i64* %129, align 8
  %144 = inttoptr i64 %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %129, align 8
  %146 = add i64 %145, -8
  store i64 %146, i64* %129, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64 0, i64* %147, align 8
  %148 = ptrtoint i8* %107 to i64
  %149 = load i64, i64* %129, align 8
  %150 = add i64 %149, -8
  store i64 %150, i64* %129, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %129, align 8
  %153 = add i64 %152, -8
  store i64 %153, i64* %129, align 8
  %154 = inttoptr i64 %153 to i64*
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %129, align 8
  %156 = add i64 %155, -8
  store i64 %156, i64* %129, align 8
  %157 = inttoptr i64 %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %129, align 8
  %159 = add i64 %158, -8
  store i64 %159, i64* %129, align 8
  %160 = inttoptr i64 %159 to i64*
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %129, align 8
  %162 = add i64 %161, -8
  store i64 %162, i64* %129, align 8
  %163 = inttoptr i64 %162 to i64*
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %129, align 8
  %165 = add i64 %164, -8
  store i64 %165, i64* %129, align 8
  %166 = inttoptr i64 %165 to i64*
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %129, align 8
  %168 = add i64 %167, -8
  store i64 %168, i64* %129, align 8
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169, align 8
  %170 = load i64, i64* %129, align 8
  %171 = add i64 %170, -8
  store i64 %171, i64* %129, align 8
  %172 = inttoptr i64 %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %129, align 8
  %174 = add i64 %173, -8
  store i64 %174, i64* %129, align 8
  %175 = inttoptr i64 %174 to i64*
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %129, align 8
  %177 = add i64 %176, -8
  store i64 %177, i64* %129, align 8
  %178 = inttoptr i64 %177 to i64*
  store i64 0, i64* %178, align 8
  %179 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %107, i8** %179, align 8
  %180 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %181 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %180, i64 0, i32 24
  %182 = bitcast %struct.nk_virtual_console** %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* %107, i64 48
  %185 = bitcast i8* %184 to i64*
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds i8, i8* %107, i64 104
  %187 = bitcast i8* %186 to i8**
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %107, i64 112
  %189 = bitcast i8* %188 to i8**
  store i8* %186, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %107, i64 96
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds i8, i8* %107, i64 64
  %193 = bitcast i8* %192 to i8**
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %107, i64 72
  %195 = bitcast i8* %194 to i8**
  store i8* %192, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %107, i64 80
  %197 = bitcast i8* %196 to i8**
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %107, i64 88
  %199 = bitcast i8* %198 to i8**
  store i8* %196, i8** %199, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %119, %120
  %200 = phi i32 [ 0, %120 ], [ -22, %119 ], [ -22, %nk_fiber_create.exit ]
  %201 = call i8* @kmem_malloc(i64 152) #11
  %202 = icmp eq i8* %201, null
  br i1 %202, label %nk_fiber_create.exit2, label %203

; <label>:203:                                    ; preds = %nk_fiber_create.exit1
  %204 = call i8* @memset(i8* nonnull %201, i8 signext 0, i64 152) #11
  %205 = getelementptr inbounds i8, i8* %201, i64 44
  %206 = bitcast i8* %205 to i32*
  store i32 0, i32* %206, align 4
  %207 = getelementptr inbounds i8, i8* %201, i64 24
  %208 = bitcast i8* %207 to i64*
  store i64 2097152, i64* %208, align 8
  %209 = call i8* @kmem_malloc(i64 2097152) #11
  %210 = getelementptr inbounds i8, i8* %201, i64 8
  %211 = bitcast i8* %210 to i8**
  store i8* %209, i8** %211, align 8
  %212 = icmp eq i8* %209, null
  br i1 %212, label %213, label %214

; <label>:213:                                    ; preds = %203
  call void @kmem_free(i8* nonnull %201) #11
  br label %nk_fiber_create.exit2

; <label>:214:                                    ; preds = %203
  %215 = ptrtoint i8* %209 to i64
  %216 = getelementptr inbounds i8, i8* %201, i64 120
  %217 = bitcast i8* %216 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_third, void (i8*, i8**)** %217, align 8
  %218 = getelementptr inbounds i8, i8* %201, i64 128
  %219 = bitcast i8* %218 to i8**
  store i8* null, i8** %219, align 8
  %220 = getelementptr inbounds i8, i8* %201, i64 136
  %221 = bitcast i8* %220 to i8***
  store i8** null, i8*** %221, align 8
  %222 = load i64, i64* %208, align 8
  %223 = bitcast i8* %201 to i64*
  %224 = add i64 %215, -8
  %225 = add i64 %224, %222
  store i64 %225, i64* %223, align 8
  %226 = inttoptr i64 %225 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %226, align 8
  %227 = load i64, i64* %223, align 8
  %228 = add i64 %227, -8
  store i64 %228, i64* %223, align 8
  %229 = inttoptr i64 %228 to i64*
  store i64 0, i64* %229, align 8
  %230 = load i64, i64* %223, align 8
  %231 = add i64 %230, -8
  store i64 %231, i64* %223, align 8
  %232 = inttoptr i64 %231 to i64*
  store i64 0, i64* %232, align 8
  %233 = load i64, i64* %223, align 8
  %234 = add i64 %233, -8
  store i64 %234, i64* %223, align 8
  %235 = inttoptr i64 %234 to i64*
  store i64 0, i64* %235, align 8
  %236 = load i64, i64* %223, align 8
  %237 = add i64 %236, -8
  store i64 %237, i64* %223, align 8
  %238 = inttoptr i64 %237 to i64*
  store i64 0, i64* %238, align 8
  %239 = load i64, i64* %223, align 8
  %240 = add i64 %239, -8
  store i64 %240, i64* %223, align 8
  %241 = inttoptr i64 %240 to i64*
  store i64 0, i64* %241, align 8
  %242 = ptrtoint i8* %201 to i64
  %243 = load i64, i64* %223, align 8
  %244 = add i64 %243, -8
  store i64 %244, i64* %223, align 8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  %246 = load i64, i64* %223, align 8
  %247 = add i64 %246, -8
  store i64 %247, i64* %223, align 8
  %248 = inttoptr i64 %247 to i64*
  store i64 0, i64* %248, align 8
  %249 = load i64, i64* %223, align 8
  %250 = add i64 %249, -8
  store i64 %250, i64* %223, align 8
  %251 = inttoptr i64 %250 to i64*
  store i64 0, i64* %251, align 8
  %252 = load i64, i64* %223, align 8
  %253 = add i64 %252, -8
  store i64 %253, i64* %223, align 8
  %254 = inttoptr i64 %253 to i64*
  store i64 0, i64* %254, align 8
  %255 = load i64, i64* %223, align 8
  %256 = add i64 %255, -8
  store i64 %256, i64* %223, align 8
  %257 = inttoptr i64 %256 to i64*
  store i64 0, i64* %257, align 8
  %258 = load i64, i64* %223, align 8
  %259 = add i64 %258, -8
  store i64 %259, i64* %223, align 8
  %260 = inttoptr i64 %259 to i64*
  store i64 0, i64* %260, align 8
  %261 = load i64, i64* %223, align 8
  %262 = add i64 %261, -8
  store i64 %262, i64* %223, align 8
  %263 = inttoptr i64 %262 to i64*
  store i64 0, i64* %263, align 8
  %264 = load i64, i64* %223, align 8
  %265 = add i64 %264, -8
  store i64 %265, i64* %223, align 8
  %266 = inttoptr i64 %265 to i64*
  store i64 0, i64* %266, align 8
  %267 = load i64, i64* %223, align 8
  %268 = add i64 %267, -8
  store i64 %268, i64* %223, align 8
  %269 = inttoptr i64 %268 to i64*
  store i64 0, i64* %269, align 8
  %270 = load i64, i64* %223, align 8
  %271 = add i64 %270, -8
  store i64 %271, i64* %223, align 8
  %272 = inttoptr i64 %271 to i64*
  store i64 0, i64* %272, align 8
  %273 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %201, i8** %273, align 8
  %274 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %274, i64 0, i32 24
  %276 = bitcast %struct.nk_virtual_console** %275 to i64*
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds i8, i8* %201, i64 48
  %279 = bitcast i8* %278 to i64*
  store i64 %277, i64* %279, align 8
  %280 = getelementptr inbounds i8, i8* %201, i64 104
  %281 = bitcast i8* %280 to i8**
  store i8* %280, i8** %281, align 8
  %282 = getelementptr inbounds i8, i8* %201, i64 112
  %283 = bitcast i8* %282 to i8**
  store i8* %280, i8** %283, align 8
  %284 = getelementptr inbounds i8, i8* %201, i64 96
  %285 = bitcast i8* %284 to i32*
  store i32 0, i32* %285, align 8
  %286 = getelementptr inbounds i8, i8* %201, i64 64
  %287 = bitcast i8* %286 to i8**
  store i8* %286, i8** %287, align 8
  %288 = getelementptr inbounds i8, i8* %201, i64 72
  %289 = bitcast i8* %288 to i8**
  store i8* %286, i8** %289, align 8
  %290 = getelementptr inbounds i8, i8* %201, i64 80
  %291 = bitcast i8* %290 to i8**
  store i8* %290, i8** %291, align 8
  %292 = getelementptr inbounds i8, i8* %201, i64 88
  %293 = bitcast i8* %292 to i8**
  store i8* %290, i8** %293, align 8
  br label %nk_fiber_create.exit2

nk_fiber_create.exit2:                            ; preds = %nk_fiber_create.exit1, %213, %214
  %294 = phi i32 [ 0, %214 ], [ -22, %213 ], [ -22, %nk_fiber_create.exit1 ]
  %295 = call i8* @kmem_malloc(i64 152) #11
  %296 = icmp eq i8* %295, null
  br i1 %296, label %nk_fiber_create.exit3, label %297

; <label>:297:                                    ; preds = %nk_fiber_create.exit2
  %298 = call i8* @memset(i8* nonnull %295, i8 signext 0, i64 152) #11
  %299 = getelementptr inbounds i8, i8* %295, i64 44
  %300 = bitcast i8* %299 to i32*
  store i32 0, i32* %300, align 4
  %301 = getelementptr inbounds i8, i8* %295, i64 24
  %302 = bitcast i8* %301 to i64*
  store i64 2097152, i64* %302, align 8
  %303 = call i8* @kmem_malloc(i64 2097152) #11
  %304 = getelementptr inbounds i8, i8* %295, i64 8
  %305 = bitcast i8* %304 to i8**
  store i8* %303, i8** %305, align 8
  %306 = icmp eq i8* %303, null
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %297
  call void @kmem_free(i8* nonnull %295) #11
  br label %nk_fiber_create.exit3

; <label>:308:                                    ; preds = %297
  %309 = ptrtoint i8* %303 to i64
  %310 = getelementptr inbounds i8, i8* %295, i64 120
  %311 = bitcast i8* %310 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_second, void (i8*, i8**)** %311, align 8
  %312 = getelementptr inbounds i8, i8* %295, i64 128
  %313 = bitcast i8* %312 to i8**
  store i8* null, i8** %313, align 8
  %314 = getelementptr inbounds i8, i8* %295, i64 136
  %315 = bitcast i8* %314 to i8***
  store i8** null, i8*** %315, align 8
  %316 = load i64, i64* %302, align 8
  %317 = bitcast i8* %295 to i64*
  %318 = add i64 %309, -8
  %319 = add i64 %318, %316
  store i64 %319, i64* %317, align 8
  %320 = inttoptr i64 %319 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %320, align 8
  %321 = load i64, i64* %317, align 8
  %322 = add i64 %321, -8
  store i64 %322, i64* %317, align 8
  %323 = inttoptr i64 %322 to i64*
  store i64 0, i64* %323, align 8
  %324 = load i64, i64* %317, align 8
  %325 = add i64 %324, -8
  store i64 %325, i64* %317, align 8
  %326 = inttoptr i64 %325 to i64*
  store i64 0, i64* %326, align 8
  %327 = load i64, i64* %317, align 8
  %328 = add i64 %327, -8
  store i64 %328, i64* %317, align 8
  %329 = inttoptr i64 %328 to i64*
  store i64 0, i64* %329, align 8
  %330 = load i64, i64* %317, align 8
  %331 = add i64 %330, -8
  store i64 %331, i64* %317, align 8
  %332 = inttoptr i64 %331 to i64*
  store i64 0, i64* %332, align 8
  %333 = load i64, i64* %317, align 8
  %334 = add i64 %333, -8
  store i64 %334, i64* %317, align 8
  %335 = inttoptr i64 %334 to i64*
  store i64 0, i64* %335, align 8
  %336 = ptrtoint i8* %295 to i64
  %337 = load i64, i64* %317, align 8
  %338 = add i64 %337, -8
  store i64 %338, i64* %317, align 8
  %339 = inttoptr i64 %338 to i64*
  store i64 %336, i64* %339, align 8
  %340 = load i64, i64* %317, align 8
  %341 = add i64 %340, -8
  store i64 %341, i64* %317, align 8
  %342 = inttoptr i64 %341 to i64*
  store i64 0, i64* %342, align 8
  %343 = load i64, i64* %317, align 8
  %344 = add i64 %343, -8
  store i64 %344, i64* %317, align 8
  %345 = inttoptr i64 %344 to i64*
  store i64 0, i64* %345, align 8
  %346 = load i64, i64* %317, align 8
  %347 = add i64 %346, -8
  store i64 %347, i64* %317, align 8
  %348 = inttoptr i64 %347 to i64*
  store i64 0, i64* %348, align 8
  %349 = load i64, i64* %317, align 8
  %350 = add i64 %349, -8
  store i64 %350, i64* %317, align 8
  %351 = inttoptr i64 %350 to i64*
  store i64 0, i64* %351, align 8
  %352 = load i64, i64* %317, align 8
  %353 = add i64 %352, -8
  store i64 %353, i64* %317, align 8
  %354 = inttoptr i64 %353 to i64*
  store i64 0, i64* %354, align 8
  %355 = load i64, i64* %317, align 8
  %356 = add i64 %355, -8
  store i64 %356, i64* %317, align 8
  %357 = inttoptr i64 %356 to i64*
  store i64 0, i64* %357, align 8
  %358 = load i64, i64* %317, align 8
  %359 = add i64 %358, -8
  store i64 %359, i64* %317, align 8
  %360 = inttoptr i64 %359 to i64*
  store i64 0, i64* %360, align 8
  %361 = load i64, i64* %317, align 8
  %362 = add i64 %361, -8
  store i64 %362, i64* %317, align 8
  %363 = inttoptr i64 %362 to i64*
  store i64 0, i64* %363, align 8
  %364 = load i64, i64* %317, align 8
  %365 = add i64 %364, -8
  store i64 %365, i64* %317, align 8
  %366 = inttoptr i64 %365 to i64*
  store i64 0, i64* %366, align 8
  %367 = bitcast %struct.nk_fiber** %2 to i8**
  store i8* %295, i8** %367, align 8
  %368 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %369 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %368, i64 0, i32 24
  %370 = bitcast %struct.nk_virtual_console** %369 to i64*
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds i8, i8* %295, i64 48
  %373 = bitcast i8* %372 to i64*
  store i64 %371, i64* %373, align 8
  %374 = getelementptr inbounds i8, i8* %295, i64 104
  %375 = bitcast i8* %374 to i8**
  store i8* %374, i8** %375, align 8
  %376 = getelementptr inbounds i8, i8* %295, i64 112
  %377 = bitcast i8* %376 to i8**
  store i8* %374, i8** %377, align 8
  %378 = getelementptr inbounds i8, i8* %295, i64 96
  %379 = bitcast i8* %378 to i32*
  store i32 0, i32* %379, align 8
  %380 = getelementptr inbounds i8, i8* %295, i64 64
  %381 = bitcast i8* %380 to i8**
  store i8* %380, i8** %381, align 8
  %382 = getelementptr inbounds i8, i8* %295, i64 72
  %383 = bitcast i8* %382 to i8**
  store i8* %380, i8** %383, align 8
  %384 = getelementptr inbounds i8, i8* %295, i64 80
  %385 = bitcast i8* %384 to i8**
  store i8* %384, i8** %385, align 8
  %386 = getelementptr inbounds i8, i8* %295, i64 88
  %387 = bitcast i8* %386 to i8**
  store i8* %384, i8** %387, align 8
  br label %nk_fiber_create.exit3

nk_fiber_create.exit3:                            ; preds = %nk_fiber_create.exit2, %307, %308
  %388 = phi i32 [ 0, %308 ], [ -22, %307 ], [ -22, %nk_fiber_create.exit2 ]
  %389 = bitcast %struct.nk_fiber** %2 to i64*
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %392 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %391, i64 0, i32 14
  %393 = bitcast i8** %392 to i64*
  store i64 %390, i64* %393, align 8
  %394 = bitcast %struct.nk_fiber** %3 to i64*
  %395 = load i64, i64* %394, align 8
  %396 = inttoptr i64 %390 to %struct.nk_fiber*
  %397 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %396, i64 0, i32 14
  %398 = bitcast i8** %397 to i64*
  store i64 %395, i64* %398, align 8
  %399 = bitcast %struct.nk_fiber** %4 to i64*
  %400 = load i64, i64* %399, align 8
  %401 = inttoptr i64 %395 to %struct.nk_fiber*
  %402 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %401, i64 0, i32 14
  %403 = bitcast i8** %402 to i64*
  store i64 %400, i64* %403, align 8
  %404 = ptrtoint %struct.nk_fiber* %391 to i64
  %405 = inttoptr i64 %400 to %struct.nk_fiber*
  %406 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %405, i64 0, i32 14
  %407 = bitcast i8** %406 to i64*
  store i64 %404, i64* %407, align 8
  %408 = call i32 @nk_fiber_run(%struct.nk_fiber* %405, i8 zeroext 1) #11
  %409 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %410 = call i32 @nk_fiber_run(%struct.nk_fiber* %409, i8 zeroext 1) #11
  %411 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %412 = call i32 @nk_fiber_run(%struct.nk_fiber* %411, i8 zeroext 1) #11
  %413 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8
  %414 = call i32 @nk_fiber_run(%struct.nk_fiber* %413, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = bitcast i8* %0 to %struct.nk_fiber*
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #11
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #11
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #11
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #11
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #11
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %16 = call i64 @msr_read(i32 -1073741567) #11
  %17 = inttoptr i64 %16 to %struct.cpu*
  %18 = getelementptr inbounds %struct.cpu, %struct.cpu* %17, i64 0, i32 5
  %19 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %18, align 8
  %20 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %19, i64 0, i32 1
  %21 = load %struct.nk_thread*, %struct.nk_thread** %20, align 8
  %22 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %23 = icmp eq %struct.nk_thread* %21, %22
  br i1 %23, label %24, label %wrapper_nk_fiber_yield.exit

; <label>:24:                                     ; preds = %2
  %25 = call i64 @msr_read(i32 -1073741567) #11
  %26 = inttoptr i64 %25 to %struct.cpu*
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = icmp eq %struct.list_head* %31, %29
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %24
  %34 = getelementptr %struct.list_head, %struct.list_head* %31, i64 -7, i32 1
  %35 = bitcast %struct.list_head** %34 to %struct.nk_fiber*
  %36 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 13
  %37 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 14
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load %struct.list_head*, %struct.list_head** %36, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i64 0, i32 1
  store %struct.list_head* %38, %struct.list_head** %40, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 0, i32 0
  store %struct.list_head* %39, %struct.list_head** %41, align 8
  %42 = bitcast %struct.list_head** %36 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %42, align 8
  %43 = bitcast %struct.list_head** %37 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %43, align 8
  %44 = icmp eq %struct.list_head** %34, null
  br i1 %44, label %45, label %66

; <label>:45:                                     ; preds = %33, %24
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 2
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 3
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = icmp eq %struct.nk_fiber* %51, %57
  br i1 %58, label %wrapper_nk_fiber_yield.exit, label %59

; <label>:59:                                     ; preds = %45
  %60 = call i64 @msr_read(i32 -1073741567) #11
  %61 = inttoptr i64 %60 to %struct.cpu*
  %62 = getelementptr inbounds %struct.cpu, %struct.cpu* %61, i64 0, i32 5
  %63 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %62, align 8
  %64 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %63, i64 0, i32 3
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %64, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %33
  %67 = phi %struct.nk_fiber* [ %65, %59 ], [ %35, %33 ]
  %68 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %67) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %45, %66
  %69 = phi i32 [ 1, %2 ], [ 0, %45 ], [ 0, %66 ]
  %70 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = bitcast i8* %0 to %struct.nk_fiber*
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #11
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #11
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #11
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #11
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #11
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %16 = call i64 @msr_read(i32 -1073741567) #11
  %17 = inttoptr i64 %16 to %struct.cpu*
  %18 = getelementptr inbounds %struct.cpu, %struct.cpu* %17, i64 0, i32 5
  %19 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %18, align 8
  %20 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %19, i64 0, i32 1
  %21 = load %struct.nk_thread*, %struct.nk_thread** %20, align 8
  %22 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %23 = icmp eq %struct.nk_thread* %21, %22
  br i1 %23, label %24, label %wrapper_nk_fiber_yield.exit

; <label>:24:                                     ; preds = %2
  %25 = call i64 @msr_read(i32 -1073741567) #11
  %26 = inttoptr i64 %25 to %struct.cpu*
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = icmp eq %struct.list_head* %31, %29
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %24
  %34 = getelementptr %struct.list_head, %struct.list_head* %31, i64 -7, i32 1
  %35 = bitcast %struct.list_head** %34 to %struct.nk_fiber*
  %36 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 13
  %37 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 14
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load %struct.list_head*, %struct.list_head** %36, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i64 0, i32 1
  store %struct.list_head* %38, %struct.list_head** %40, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 0, i32 0
  store %struct.list_head* %39, %struct.list_head** %41, align 8
  %42 = bitcast %struct.list_head** %36 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %42, align 8
  %43 = bitcast %struct.list_head** %37 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %43, align 8
  %44 = icmp eq %struct.list_head** %34, null
  br i1 %44, label %45, label %66

; <label>:45:                                     ; preds = %33, %24
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 2
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 3
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = icmp eq %struct.nk_fiber* %51, %57
  br i1 %58, label %wrapper_nk_fiber_yield.exit, label %59

; <label>:59:                                     ; preds = %45
  %60 = call i64 @msr_read(i32 -1073741567) #11
  %61 = inttoptr i64 %60 to %struct.cpu*
  %62 = getelementptr inbounds %struct.cpu, %struct.cpu* %61, i64 0, i32 5
  %63 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %62, align 8
  %64 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %63, i64 0, i32 3
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %64, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %33
  %67 = phi %struct.nk_fiber* [ %65, %59 ], [ %35, %33 ]
  %68 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %67) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %45, %66
  %69 = phi i32 [ 1, %2 ], [ 0, %45 ], [ 0, %66 ]
  %70 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = bitcast i8* %0 to %struct.nk_fiber*
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #11
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #11
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #11
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #11
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #11
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %16 = call i64 @msr_read(i32 -1073741567) #11
  %17 = inttoptr i64 %16 to %struct.cpu*
  %18 = getelementptr inbounds %struct.cpu, %struct.cpu* %17, i64 0, i32 5
  %19 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %18, align 8
  %20 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %19, i64 0, i32 1
  %21 = load %struct.nk_thread*, %struct.nk_thread** %20, align 8
  %22 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %23 = icmp eq %struct.nk_thread* %21, %22
  br i1 %23, label %24, label %wrapper_nk_fiber_yield.exit

; <label>:24:                                     ; preds = %2
  %25 = call i64 @msr_read(i32 -1073741567) #11
  %26 = inttoptr i64 %25 to %struct.cpu*
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = icmp eq %struct.list_head* %31, %29
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %24
  %34 = getelementptr %struct.list_head, %struct.list_head* %31, i64 -7, i32 1
  %35 = bitcast %struct.list_head** %34 to %struct.nk_fiber*
  %36 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 13
  %37 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 14
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load %struct.list_head*, %struct.list_head** %36, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i64 0, i32 1
  store %struct.list_head* %38, %struct.list_head** %40, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 0, i32 0
  store %struct.list_head* %39, %struct.list_head** %41, align 8
  %42 = bitcast %struct.list_head** %36 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %42, align 8
  %43 = bitcast %struct.list_head** %37 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %43, align 8
  %44 = icmp eq %struct.list_head** %34, null
  br i1 %44, label %45, label %66

; <label>:45:                                     ; preds = %33, %24
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 2
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 3
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = icmp eq %struct.nk_fiber* %51, %57
  br i1 %58, label %wrapper_nk_fiber_yield.exit, label %59

; <label>:59:                                     ; preds = %45
  %60 = call i64 @msr_read(i32 -1073741567) #11
  %61 = inttoptr i64 %60 to %struct.cpu*
  %62 = getelementptr inbounds %struct.cpu, %struct.cpu* %61, i64 0, i32 5
  %63 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %62, align 8
  %64 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %63, i64 0, i32 3
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %64, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %33
  %67 = phi %struct.nk_fiber* [ %65, %59 ], [ %35, %33 ]
  %68 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %67) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %45, %66
  %69 = phi i32 [ 1, %2 ], [ 0, %45 ], [ 0, %66 ]
  %70 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = bitcast i8* %0 to %struct.nk_fiber*
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #11
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #11
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #11
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #11
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #11
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %16 = call i64 @msr_read(i32 -1073741567) #11
  %17 = inttoptr i64 %16 to %struct.cpu*
  %18 = getelementptr inbounds %struct.cpu, %struct.cpu* %17, i64 0, i32 5
  %19 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %18, align 8
  %20 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %19, i64 0, i32 1
  %21 = load %struct.nk_thread*, %struct.nk_thread** %20, align 8
  %22 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %23 = icmp eq %struct.nk_thread* %21, %22
  br i1 %23, label %24, label %wrapper_nk_fiber_yield.exit

; <label>:24:                                     ; preds = %2
  %25 = call i64 @msr_read(i32 -1073741567) #11
  %26 = inttoptr i64 %25 to %struct.cpu*
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  %32 = icmp eq %struct.list_head* %31, %29
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %24
  %34 = getelementptr %struct.list_head, %struct.list_head* %31, i64 -7, i32 1
  %35 = bitcast %struct.list_head** %34 to %struct.nk_fiber*
  %36 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 13
  %37 = getelementptr inbounds %struct.list_head*, %struct.list_head** %34, i64 14
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load %struct.list_head*, %struct.list_head** %36, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i64 0, i32 1
  store %struct.list_head* %38, %struct.list_head** %40, align 8
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 0, i32 0
  store %struct.list_head* %39, %struct.list_head** %41, align 8
  %42 = bitcast %struct.list_head** %36 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %42, align 8
  %43 = bitcast %struct.list_head** %37 to %struct.list_head***
  store %struct.list_head** %36, %struct.list_head*** %43, align 8
  %44 = icmp eq %struct.list_head** %34, null
  br i1 %44, label %45, label %66

; <label>:45:                                     ; preds = %33, %24
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 2
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 3
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = icmp eq %struct.nk_fiber* %51, %57
  br i1 %58, label %wrapper_nk_fiber_yield.exit, label %59

; <label>:59:                                     ; preds = %45
  %60 = call i64 @msr_read(i32 -1073741567) #11
  %61 = inttoptr i64 %60 to %struct.cpu*
  %62 = getelementptr inbounds %struct.cpu, %struct.cpu* %61, i64 0, i32 5
  %63 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %62, align 8
  %64 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %63, i64 0, i32 3
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %64, align 8
  br label %66

; <label>:66:                                     ; preds = %59, %33
  %67 = phi %struct.nk_fiber* [ %65, %59 ], [ %35, %33 ]
  %68 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %67) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %45, %66
  %69 = phi i32 [ 1, %2 ], [ 0, %45 ], [ 0, %66 ]
  %70 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %11 = call i8* @kmem_malloc(i64 152) #11
  %12 = icmp eq i8* %11, null
  br i1 %12, label %nk_fiber_create.exit, label %13

; <label>:13:                                     ; preds = %2
  %14 = call i8* @memset(i8* nonnull %11, i8 signext 0, i64 152) #11
  %15 = getelementptr inbounds i8, i8* %11, i64 44
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i8, i8* %11, i64 24
  %18 = bitcast i8* %17 to i64*
  store i64 2097152, i64* %18, align 8
  %19 = call i8* @kmem_malloc(i64 2097152) #11
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %13
  call void @kmem_free(i8* nonnull %11) #11
  br label %nk_fiber_create.exit

; <label>:24:                                     ; preds = %13
  %25 = ptrtoint i8* %19 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 120
  %27 = bitcast i8* %26 to void (i8*, i8**)**
  store void (i8*, i8**)* @print_even, void (i8*, i8**)** %27, align 8
  %28 = getelementptr inbounds i8, i8* %11, i64 128
  %29 = bitcast i8* %28 to i8**
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds i8, i8* %11, i64 136
  %31 = bitcast i8* %30 to i8***
  store i8** null, i8*** %31, align 8
  %32 = load i64, i64* %18, align 8
  %33 = bitcast i8* %11 to i64*
  %34 = add i64 %25, -8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %36, align 8
  %37 = load i64, i64* %33, align 8
  %38 = add i64 %37, -8
  store i64 %38, i64* %33, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %33, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %33, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %33, align 8
  %44 = add i64 %43, -8
  store i64 %44, i64* %33, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %33, align 8
  %47 = add i64 %46, -8
  store i64 %47, i64* %33, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %33, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %33, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 0, i64* %51, align 8
  %52 = ptrtoint i8* %11 to i64
  %53 = load i64, i64* %33, align 8
  %54 = add i64 %53, -8
  store i64 %54, i64* %33, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %33, align 8
  %57 = add i64 %56, -8
  store i64 %57, i64* %33, align 8
  %58 = inttoptr i64 %57 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %33, align 8
  %60 = add i64 %59, -8
  store i64 %60, i64* %33, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %33, align 8
  %63 = add i64 %62, -8
  store i64 %63, i64* %33, align 8
  %64 = inttoptr i64 %63 to i64*
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %33, align 8
  %66 = add i64 %65, -8
  store i64 %66, i64* %33, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %33, align 8
  %69 = add i64 %68, -8
  store i64 %69, i64* %33, align 8
  %70 = inttoptr i64 %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %33, align 8
  %72 = add i64 %71, -8
  store i64 %72, i64* %33, align 8
  %73 = inttoptr i64 %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %33, align 8
  %75 = add i64 %74, -8
  store i64 %75, i64* %33, align 8
  %76 = inttoptr i64 %75 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %33, align 8
  %78 = add i64 %77, -8
  store i64 %78, i64* %33, align 8
  %79 = inttoptr i64 %78 to i64*
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* %33, align 8
  %81 = add i64 %80, -8
  store i64 %81, i64* %33, align 8
  %82 = inttoptr i64 %81 to i64*
  store i64 0, i64* %82, align 8
  %83 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %11, i8** %83, align 8
  %84 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %11, i64 48
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds i8, i8* %11, i64 104
  %91 = bitcast i8* %90 to i8**
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %11, i64 112
  %93 = bitcast i8* %92 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %11, i64 96
  %95 = bitcast i8* %94 to i32*
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds i8, i8* %11, i64 64
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %11, i64 72
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %11, i64 80
  %101 = bitcast i8* %100 to i8**
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %11, i64 88
  %103 = bitcast i8* %102 to i8**
  store i8* %100, i8** %103, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %23, %24
  %104 = phi i32 [ 0, %24 ], [ -22, %23 ], [ -22, %2 ]
  %105 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %106 = call i32 @nk_fiber_run(%struct.nk_fiber* %105, i8 zeroext 1) #11
  %107 = call i8* @kmem_malloc(i64 152) #11
  %108 = icmp eq i8* %107, null
  br i1 %108, label %nk_fiber_create.exit1, label %109

; <label>:109:                                    ; preds = %nk_fiber_create.exit
  %110 = call i8* @memset(i8* nonnull %107, i8 signext 0, i64 152) #11
  %111 = getelementptr inbounds i8, i8* %107, i64 44
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds i8, i8* %107, i64 24
  %114 = bitcast i8* %113 to i64*
  store i64 2097152, i64* %114, align 8
  %115 = call i8* @kmem_malloc(i64 2097152) #11
  %116 = getelementptr inbounds i8, i8* %107, i64 8
  %117 = bitcast i8* %116 to i8**
  store i8* %115, i8** %117, align 8
  %118 = icmp eq i8* %115, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109
  call void @kmem_free(i8* nonnull %107) #11
  br label %nk_fiber_create.exit1

; <label>:120:                                    ; preds = %109
  %121 = ptrtoint i8* %115 to i64
  %122 = getelementptr inbounds i8, i8* %107, i64 120
  %123 = bitcast i8* %122 to void (i8*, i8**)**
  store void (i8*, i8**)* @print_odd, void (i8*, i8**)** %123, align 8
  %124 = getelementptr inbounds i8, i8* %107, i64 128
  %125 = bitcast i8* %124 to i8**
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %107, i64 136
  %127 = bitcast i8* %126 to i8***
  store i8** null, i8*** %127, align 8
  %128 = load i64, i64* %114, align 8
  %129 = bitcast i8* %107 to i64*
  %130 = add i64 %121, -8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %132, align 8
  %133 = load i64, i64* %129, align 8
  %134 = add i64 %133, -8
  store i64 %134, i64* %129, align 8
  %135 = inttoptr i64 %134 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %129, align 8
  %137 = add i64 %136, -8
  store i64 %137, i64* %129, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %129, align 8
  %140 = add i64 %139, -8
  store i64 %140, i64* %129, align 8
  %141 = inttoptr i64 %140 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %129, align 8
  %143 = add i64 %142, -8
  store i64 %143, i64* %129, align 8
  %144 = inttoptr i64 %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %129, align 8
  %146 = add i64 %145, -8
  store i64 %146, i64* %129, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64 0, i64* %147, align 8
  %148 = ptrtoint i8* %107 to i64
  %149 = load i64, i64* %129, align 8
  %150 = add i64 %149, -8
  store i64 %150, i64* %129, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %129, align 8
  %153 = add i64 %152, -8
  store i64 %153, i64* %129, align 8
  %154 = inttoptr i64 %153 to i64*
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %129, align 8
  %156 = add i64 %155, -8
  store i64 %156, i64* %129, align 8
  %157 = inttoptr i64 %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %129, align 8
  %159 = add i64 %158, -8
  store i64 %159, i64* %129, align 8
  %160 = inttoptr i64 %159 to i64*
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %129, align 8
  %162 = add i64 %161, -8
  store i64 %162, i64* %129, align 8
  %163 = inttoptr i64 %162 to i64*
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %129, align 8
  %165 = add i64 %164, -8
  store i64 %165, i64* %129, align 8
  %166 = inttoptr i64 %165 to i64*
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %129, align 8
  %168 = add i64 %167, -8
  store i64 %168, i64* %129, align 8
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169, align 8
  %170 = load i64, i64* %129, align 8
  %171 = add i64 %170, -8
  store i64 %171, i64* %129, align 8
  %172 = inttoptr i64 %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %129, align 8
  %174 = add i64 %173, -8
  store i64 %174, i64* %129, align 8
  %175 = inttoptr i64 %174 to i64*
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %129, align 8
  %177 = add i64 %176, -8
  store i64 %177, i64* %129, align 8
  %178 = inttoptr i64 %177 to i64*
  store i64 0, i64* %178, align 8
  %179 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %107, i8** %179, align 8
  %180 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %181 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %180, i64 0, i32 24
  %182 = bitcast %struct.nk_virtual_console** %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* %107, i64 48
  %185 = bitcast i8* %184 to i64*
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds i8, i8* %107, i64 104
  %187 = bitcast i8* %186 to i8**
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %107, i64 112
  %189 = bitcast i8* %188 to i8**
  store i8* %186, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %107, i64 96
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds i8, i8* %107, i64 64
  %193 = bitcast i8* %192 to i8**
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %107, i64 72
  %195 = bitcast i8* %194 to i8**
  store i8* %192, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %107, i64 80
  %197 = bitcast i8* %196 to i8**
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %107, i64 88
  %199 = bitcast i8* %198 to i8**
  store i8* %196, i8** %199, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %119, %120
  %200 = phi i32 [ 0, %120 ], [ -22, %119 ], [ -22, %nk_fiber_create.exit ]
  %201 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8
  %202 = call i32 @nk_fiber_run(%struct.nk_fiber* %201, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #11
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %10 = call i64 @msr_read(i32 -1073741567) #11
  %11 = inttoptr i64 %10 to %struct.cpu*
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 1
  %15 = load %struct.nk_thread*, %struct.nk_thread** %14, align 8
  %16 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %17 = icmp eq %struct.nk_thread* %15, %16
  br i1 %17, label %18, label %wrapper_nk_fiber_yield.exit

; <label>:18:                                     ; preds = %2
  %19 = call i64 @msr_read(i32 -1073741567) #11
  %20 = inttoptr i64 %19 to %struct.cpu*
  %21 = getelementptr inbounds %struct.cpu, %struct.cpu* %20, i64 0, i32 5
  %22 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %21, align 8
  %23 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %22, i64 0, i32 4
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  %26 = icmp eq %struct.list_head* %25, %23
  br i1 %26, label %39, label %27

; <label>:27:                                     ; preds = %18
  %28 = getelementptr %struct.list_head, %struct.list_head* %25, i64 -7, i32 1
  %29 = bitcast %struct.list_head** %28 to %struct.nk_fiber*
  %30 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 13
  %31 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 14
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  %33 = load %struct.list_head*, %struct.list_head** %30, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 1
  store %struct.list_head* %32, %struct.list_head** %34, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0
  store %struct.list_head* %33, %struct.list_head** %35, align 8
  %36 = bitcast %struct.list_head** %30 to %struct.list_head***
  store %struct.list_head** %30, %struct.list_head*** %36, align 8
  %37 = bitcast %struct.list_head** %31 to %struct.list_head***
  store %struct.list_head** %30, %struct.list_head*** %37, align 8
  %38 = icmp eq %struct.list_head** %28, null
  br i1 %38, label %39, label %60

; <label>:39:                                     ; preds = %27, %18
  %40 = call i64 @msr_read(i32 -1073741567) #11
  %41 = inttoptr i64 %40 to %struct.cpu*
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 2
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = icmp eq %struct.nk_fiber* %45, %51
  br i1 %52, label %wrapper_nk_fiber_yield.exit, label %53

; <label>:53:                                     ; preds = %39
  %54 = call i64 @msr_read(i32 -1073741567) #11
  %55 = inttoptr i64 %54 to %struct.cpu*
  %56 = getelementptr inbounds %struct.cpu, %struct.cpu* %55, i64 0, i32 5
  %57 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %56, align 8
  %58 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %57, i64 0, i32 3
  %59 = load %struct.nk_fiber*, %struct.nk_fiber** %58, align 8
  br label %60

; <label>:60:                                     ; preds = %53, %27
  %61 = phi %struct.nk_fiber* [ %59, %53 ], [ %29, %27 ]
  %62 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %61) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %39, %60
  %63 = phi i32 [ 1, %2 ], [ 0, %39 ], [ 0, %60 ]
  %64 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #11
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %10 = call i64 @msr_read(i32 -1073741567) #11
  %11 = inttoptr i64 %10 to %struct.cpu*
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 1
  %15 = load %struct.nk_thread*, %struct.nk_thread** %14, align 8
  %16 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %17 = icmp eq %struct.nk_thread* %15, %16
  br i1 %17, label %18, label %wrapper_nk_fiber_yield.exit

; <label>:18:                                     ; preds = %2
  %19 = call i64 @msr_read(i32 -1073741567) #11
  %20 = inttoptr i64 %19 to %struct.cpu*
  %21 = getelementptr inbounds %struct.cpu, %struct.cpu* %20, i64 0, i32 5
  %22 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %21, align 8
  %23 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %22, i64 0, i32 4
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  %26 = icmp eq %struct.list_head* %25, %23
  br i1 %26, label %39, label %27

; <label>:27:                                     ; preds = %18
  %28 = getelementptr %struct.list_head, %struct.list_head* %25, i64 -7, i32 1
  %29 = bitcast %struct.list_head** %28 to %struct.nk_fiber*
  %30 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 13
  %31 = getelementptr inbounds %struct.list_head*, %struct.list_head** %28, i64 14
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  %33 = load %struct.list_head*, %struct.list_head** %30, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 1
  store %struct.list_head* %32, %struct.list_head** %34, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0
  store %struct.list_head* %33, %struct.list_head** %35, align 8
  %36 = bitcast %struct.list_head** %30 to %struct.list_head***
  store %struct.list_head** %30, %struct.list_head*** %36, align 8
  %37 = bitcast %struct.list_head** %31 to %struct.list_head***
  store %struct.list_head** %30, %struct.list_head*** %37, align 8
  %38 = icmp eq %struct.list_head** %28, null
  br i1 %38, label %39, label %60

; <label>:39:                                     ; preds = %27, %18
  %40 = call i64 @msr_read(i32 -1073741567) #11
  %41 = inttoptr i64 %40 to %struct.cpu*
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 2
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8
  %46 = call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  %52 = icmp eq %struct.nk_fiber* %45, %51
  br i1 %52, label %wrapper_nk_fiber_yield.exit, label %53

; <label>:53:                                     ; preds = %39
  %54 = call i64 @msr_read(i32 -1073741567) #11
  %55 = inttoptr i64 %54 to %struct.cpu*
  %56 = getelementptr inbounds %struct.cpu, %struct.cpu* %55, i64 0, i32 5
  %57 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %56, align 8
  %58 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %57, i64 0, i32 3
  %59 = load %struct.nk_fiber*, %struct.nk_fiber** %58, align 8
  br label %60

; <label>:60:                                     ; preds = %53, %27
  %61 = phi %struct.nk_fiber* [ %59, %53 ], [ %29, %27 ]
  %62 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %61) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %39, %60
  %63 = phi i32 [ 1, %2 ], [ 0, %39 ], [ 0, %60 ]
  %64 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #11
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_outer, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit2, label %9

; <label>:9:                                      ; preds = %2
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit2

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit2

nk_fiber_create.exit2:                            ; preds = %2, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %2 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %103 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %104 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %105 = call i64 @msr_read(i32 -1073741567) #11
  %106 = inttoptr i64 %105 to %struct.cpu*
  %107 = getelementptr inbounds %struct.cpu, %struct.cpu* %106, i64 0, i32 5
  %108 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %107, align 8
  %109 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %108, i64 0, i32 1
  %110 = load %struct.nk_thread*, %struct.nk_thread** %109, align 8
  %111 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %112 = icmp eq %struct.nk_thread* %110, %111
  br i1 %112, label %113, label %wrapper_nk_fiber_yield.exit

; <label>:113:                                    ; preds = %nk_fiber_create.exit2
  %114 = call i64 @msr_read(i32 -1073741567) #11
  %115 = inttoptr i64 %114 to %struct.cpu*
  %116 = getelementptr inbounds %struct.cpu, %struct.cpu* %115, i64 0, i32 5
  %117 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %116, align 8
  %118 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %117, i64 0, i32 4
  %119 = getelementptr inbounds %struct.list_head, %struct.list_head* %118, i64 0, i32 0
  %120 = load %struct.list_head*, %struct.list_head** %119, align 8
  %121 = icmp eq %struct.list_head* %120, %118
  br i1 %121, label %134, label %122

; <label>:122:                                    ; preds = %113
  %123 = getelementptr %struct.list_head, %struct.list_head* %120, i64 -7, i32 1
  %124 = bitcast %struct.list_head** %123 to %struct.nk_fiber*
  %125 = getelementptr inbounds %struct.list_head*, %struct.list_head** %123, i64 13
  %126 = getelementptr inbounds %struct.list_head*, %struct.list_head** %123, i64 14
  %127 = load %struct.list_head*, %struct.list_head** %126, align 8
  %128 = load %struct.list_head*, %struct.list_head** %125, align 8
  %129 = getelementptr inbounds %struct.list_head, %struct.list_head* %128, i64 0, i32 1
  store %struct.list_head* %127, %struct.list_head** %129, align 8
  %130 = getelementptr inbounds %struct.list_head, %struct.list_head* %127, i64 0, i32 0
  store %struct.list_head* %128, %struct.list_head** %130, align 8
  %131 = bitcast %struct.list_head** %125 to %struct.list_head***
  store %struct.list_head** %125, %struct.list_head*** %131, align 8
  %132 = bitcast %struct.list_head** %126 to %struct.list_head***
  store %struct.list_head** %125, %struct.list_head*** %132, align 8
  %133 = icmp eq %struct.list_head** %123, null
  br i1 %133, label %134, label %155

; <label>:134:                                    ; preds = %122, %113
  %135 = call i64 @msr_read(i32 -1073741567) #11
  %136 = inttoptr i64 %135 to %struct.cpu*
  %137 = getelementptr inbounds %struct.cpu, %struct.cpu* %136, i64 0, i32 5
  %138 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %137, align 8
  %139 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %138, i64 0, i32 2
  %140 = load %struct.nk_fiber*, %struct.nk_fiber** %139, align 8
  %141 = call i64 @msr_read(i32 -1073741567) #11
  %142 = inttoptr i64 %141 to %struct.cpu*
  %143 = getelementptr inbounds %struct.cpu, %struct.cpu* %142, i64 0, i32 5
  %144 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %143, align 8
  %145 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %144, i64 0, i32 3
  %146 = load %struct.nk_fiber*, %struct.nk_fiber** %145, align 8
  %147 = icmp eq %struct.nk_fiber* %140, %146
  br i1 %147, label %wrapper_nk_fiber_yield.exit, label %148

; <label>:148:                                    ; preds = %134
  %149 = call i64 @msr_read(i32 -1073741567) #11
  %150 = inttoptr i64 %149 to %struct.cpu*
  %151 = getelementptr inbounds %struct.cpu, %struct.cpu* %150, i64 0, i32 5
  %152 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %151, align 8
  %153 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %152, i64 0, i32 3
  %154 = load %struct.nk_fiber*, %struct.nk_fiber** %153, align 8
  br label %155

; <label>:155:                                    ; preds = %148, %122
  %156 = phi %struct.nk_fiber* [ %154, %148 ], [ %124, %122 ]
  %157 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %156) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %nk_fiber_create.exit2, %134, %155
  %158 = phi i32 [ 1, %nk_fiber_create.exit2 ], [ 0, %134 ], [ 0, %155 ]
  %159 = call i8* @kmem_malloc(i64 152) #11
  %160 = icmp eq i8* %159, null
  br i1 %160, label %nk_fiber_create.exit1, label %161

; <label>:161:                                    ; preds = %wrapper_nk_fiber_yield.exit
  %162 = call i8* @memset(i8* nonnull %159, i8 signext 0, i64 152) #11
  %163 = getelementptr inbounds i8, i8* %159, i64 44
  %164 = bitcast i8* %163 to i32*
  store i32 0, i32* %164, align 4
  %165 = getelementptr inbounds i8, i8* %159, i64 24
  %166 = bitcast i8* %165 to i64*
  store i64 2097152, i64* %166, align 8
  %167 = call i8* @kmem_malloc(i64 2097152) #11
  %168 = getelementptr inbounds i8, i8* %159, i64 8
  %169 = bitcast i8* %168 to i8**
  store i8* %167, i8** %169, align 8
  %170 = icmp eq i8* %167, null
  br i1 %170, label %171, label %172

; <label>:171:                                    ; preds = %161
  call void @kmem_free(i8* nonnull %159) #11
  br label %nk_fiber_create.exit1

; <label>:172:                                    ; preds = %161
  %173 = ptrtoint i8* %167 to i64
  %174 = getelementptr inbounds i8, i8* %159, i64 120
  %175 = bitcast i8* %174 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner, void (i8*, i8**)** %175, align 8
  %176 = getelementptr inbounds i8, i8* %159, i64 128
  %177 = bitcast i8* %176 to i8**
  store i8* null, i8** %177, align 8
  %178 = getelementptr inbounds i8, i8* %159, i64 136
  %179 = bitcast i8* %178 to i8***
  store i8** null, i8*** %179, align 8
  %180 = load i64, i64* %166, align 8
  %181 = bitcast i8* %159 to i64*
  %182 = add i64 %173, -8
  %183 = add i64 %182, %180
  store i64 %183, i64* %181, align 8
  %184 = inttoptr i64 %183 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %184, align 8
  %185 = load i64, i64* %181, align 8
  %186 = add i64 %185, -8
  store i64 %186, i64* %181, align 8
  %187 = inttoptr i64 %186 to i64*
  store i64 0, i64* %187, align 8
  %188 = load i64, i64* %181, align 8
  %189 = add i64 %188, -8
  store i64 %189, i64* %181, align 8
  %190 = inttoptr i64 %189 to i64*
  store i64 0, i64* %190, align 8
  %191 = load i64, i64* %181, align 8
  %192 = add i64 %191, -8
  store i64 %192, i64* %181, align 8
  %193 = inttoptr i64 %192 to i64*
  store i64 0, i64* %193, align 8
  %194 = load i64, i64* %181, align 8
  %195 = add i64 %194, -8
  store i64 %195, i64* %181, align 8
  %196 = inttoptr i64 %195 to i64*
  store i64 0, i64* %196, align 8
  %197 = load i64, i64* %181, align 8
  %198 = add i64 %197, -8
  store i64 %198, i64* %181, align 8
  %199 = inttoptr i64 %198 to i64*
  store i64 0, i64* %199, align 8
  %200 = ptrtoint i8* %159 to i64
  %201 = load i64, i64* %181, align 8
  %202 = add i64 %201, -8
  store i64 %202, i64* %181, align 8
  %203 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %203, align 8
  %204 = load i64, i64* %181, align 8
  %205 = add i64 %204, -8
  store i64 %205, i64* %181, align 8
  %206 = inttoptr i64 %205 to i64*
  store i64 0, i64* %206, align 8
  %207 = load i64, i64* %181, align 8
  %208 = add i64 %207, -8
  store i64 %208, i64* %181, align 8
  %209 = inttoptr i64 %208 to i64*
  store i64 0, i64* %209, align 8
  %210 = load i64, i64* %181, align 8
  %211 = add i64 %210, -8
  store i64 %211, i64* %181, align 8
  %212 = inttoptr i64 %211 to i64*
  store i64 0, i64* %212, align 8
  %213 = load i64, i64* %181, align 8
  %214 = add i64 %213, -8
  store i64 %214, i64* %181, align 8
  %215 = inttoptr i64 %214 to i64*
  store i64 0, i64* %215, align 8
  %216 = load i64, i64* %181, align 8
  %217 = add i64 %216, -8
  store i64 %217, i64* %181, align 8
  %218 = inttoptr i64 %217 to i64*
  store i64 0, i64* %218, align 8
  %219 = load i64, i64* %181, align 8
  %220 = add i64 %219, -8
  store i64 %220, i64* %181, align 8
  %221 = inttoptr i64 %220 to i64*
  store i64 0, i64* %221, align 8
  %222 = load i64, i64* %181, align 8
  %223 = add i64 %222, -8
  store i64 %223, i64* %181, align 8
  %224 = inttoptr i64 %223 to i64*
  store i64 0, i64* %224, align 8
  %225 = load i64, i64* %181, align 8
  %226 = add i64 %225, -8
  store i64 %226, i64* %181, align 8
  %227 = inttoptr i64 %226 to i64*
  store i64 0, i64* %227, align 8
  %228 = load i64, i64* %181, align 8
  %229 = add i64 %228, -8
  store i64 %229, i64* %181, align 8
  %230 = inttoptr i64 %229 to i64*
  store i64 0, i64* %230, align 8
  %231 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %159, i8** %231, align 8
  %232 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %233 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %232, i64 0, i32 24
  %234 = bitcast %struct.nk_virtual_console** %233 to i64*
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i8, i8* %159, i64 48
  %237 = bitcast i8* %236 to i64*
  store i64 %235, i64* %237, align 8
  %238 = getelementptr inbounds i8, i8* %159, i64 104
  %239 = bitcast i8* %238 to i8**
  store i8* %238, i8** %239, align 8
  %240 = getelementptr inbounds i8, i8* %159, i64 112
  %241 = bitcast i8* %240 to i8**
  store i8* %238, i8** %241, align 8
  %242 = getelementptr inbounds i8, i8* %159, i64 96
  %243 = bitcast i8* %242 to i32*
  store i32 0, i32* %243, align 8
  %244 = getelementptr inbounds i8, i8* %159, i64 64
  %245 = bitcast i8* %244 to i8**
  store i8* %244, i8** %245, align 8
  %246 = getelementptr inbounds i8, i8* %159, i64 72
  %247 = bitcast i8* %246 to i8**
  store i8* %244, i8** %247, align 8
  %248 = getelementptr inbounds i8, i8* %159, i64 80
  %249 = bitcast i8* %248 to i8**
  store i8* %248, i8** %249, align 8
  %250 = getelementptr inbounds i8, i8* %159, i64 88
  %251 = bitcast i8* %250 to i8**
  store i8* %248, i8** %251, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %wrapper_nk_fiber_yield.exit, %171, %172
  %252 = phi i32 [ 0, %172 ], [ -22, %171 ], [ -22, %wrapper_nk_fiber_yield.exit ]
  %253 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %254 = call i32 @nk_fiber_run(%struct.nk_fiber* %253, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %255 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %256 = call i8* @kmem_malloc(i64 152) #11
  %257 = icmp eq i8* %256, null
  br i1 %257, label %nk_fiber_create.exit, label %258

; <label>:258:                                    ; preds = %nk_fiber_create.exit1
  %259 = call i8* @memset(i8* nonnull %256, i8 signext 0, i64 152) #11
  %260 = getelementptr inbounds i8, i8* %256, i64 44
  %261 = bitcast i8* %260 to i32*
  store i32 0, i32* %261, align 4
  %262 = getelementptr inbounds i8, i8* %256, i64 24
  %263 = bitcast i8* %262 to i64*
  store i64 2097152, i64* %263, align 8
  %264 = call i8* @kmem_malloc(i64 2097152) #11
  %265 = getelementptr inbounds i8, i8* %256, i64 8
  %266 = bitcast i8* %265 to i8**
  store i8* %264, i8** %266, align 8
  %267 = icmp eq i8* %264, null
  br i1 %267, label %268, label %269

; <label>:268:                                    ; preds = %258
  call void @kmem_free(i8* nonnull %256) #11
  br label %nk_fiber_create.exit

; <label>:269:                                    ; preds = %258
  %270 = ptrtoint i8* %264 to i64
  %271 = getelementptr inbounds i8, i8* %256, i64 120
  %272 = bitcast i8* %271 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_inner, void (i8*, i8**)** %272, align 8
  %273 = getelementptr inbounds i8, i8* %256, i64 128
  %274 = bitcast i8* %273 to i8**
  store i8* null, i8** %274, align 8
  %275 = getelementptr inbounds i8, i8* %256, i64 136
  %276 = bitcast i8* %275 to i8***
  store i8** null, i8*** %276, align 8
  %277 = load i64, i64* %263, align 8
  %278 = bitcast i8* %256 to i64*
  %279 = add i64 %270, -8
  %280 = add i64 %279, %277
  store i64 %280, i64* %278, align 8
  %281 = inttoptr i64 %280 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %281, align 8
  %282 = load i64, i64* %278, align 8
  %283 = add i64 %282, -8
  store i64 %283, i64* %278, align 8
  %284 = inttoptr i64 %283 to i64*
  store i64 0, i64* %284, align 8
  %285 = load i64, i64* %278, align 8
  %286 = add i64 %285, -8
  store i64 %286, i64* %278, align 8
  %287 = inttoptr i64 %286 to i64*
  store i64 0, i64* %287, align 8
  %288 = load i64, i64* %278, align 8
  %289 = add i64 %288, -8
  store i64 %289, i64* %278, align 8
  %290 = inttoptr i64 %289 to i64*
  store i64 0, i64* %290, align 8
  %291 = load i64, i64* %278, align 8
  %292 = add i64 %291, -8
  store i64 %292, i64* %278, align 8
  %293 = inttoptr i64 %292 to i64*
  store i64 0, i64* %293, align 8
  %294 = load i64, i64* %278, align 8
  %295 = add i64 %294, -8
  store i64 %295, i64* %278, align 8
  %296 = inttoptr i64 %295 to i64*
  store i64 0, i64* %296, align 8
  %297 = ptrtoint i8* %256 to i64
  %298 = load i64, i64* %278, align 8
  %299 = add i64 %298, -8
  store i64 %299, i64* %278, align 8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  %301 = load i64, i64* %278, align 8
  %302 = add i64 %301, -8
  store i64 %302, i64* %278, align 8
  %303 = inttoptr i64 %302 to i64*
  store i64 0, i64* %303, align 8
  %304 = load i64, i64* %278, align 8
  %305 = add i64 %304, -8
  store i64 %305, i64* %278, align 8
  %306 = inttoptr i64 %305 to i64*
  store i64 0, i64* %306, align 8
  %307 = load i64, i64* %278, align 8
  %308 = add i64 %307, -8
  store i64 %308, i64* %278, align 8
  %309 = inttoptr i64 %308 to i64*
  store i64 0, i64* %309, align 8
  %310 = load i64, i64* %278, align 8
  %311 = add i64 %310, -8
  store i64 %311, i64* %278, align 8
  %312 = inttoptr i64 %311 to i64*
  store i64 0, i64* %312, align 8
  %313 = load i64, i64* %278, align 8
  %314 = add i64 %313, -8
  store i64 %314, i64* %278, align 8
  %315 = inttoptr i64 %314 to i64*
  store i64 0, i64* %315, align 8
  %316 = load i64, i64* %278, align 8
  %317 = add i64 %316, -8
  store i64 %317, i64* %278, align 8
  %318 = inttoptr i64 %317 to i64*
  store i64 0, i64* %318, align 8
  %319 = load i64, i64* %278, align 8
  %320 = add i64 %319, -8
  store i64 %320, i64* %278, align 8
  %321 = inttoptr i64 %320 to i64*
  store i64 0, i64* %321, align 8
  %322 = load i64, i64* %278, align 8
  %323 = add i64 %322, -8
  store i64 %323, i64* %278, align 8
  %324 = inttoptr i64 %323 to i64*
  store i64 0, i64* %324, align 8
  %325 = load i64, i64* %278, align 8
  %326 = add i64 %325, -8
  store i64 %326, i64* %278, align 8
  %327 = inttoptr i64 %326 to i64*
  store i64 0, i64* %327, align 8
  %328 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %256, i8** %328, align 8
  %329 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %330 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %329, i64 0, i32 24
  %331 = bitcast %struct.nk_virtual_console** %330 to i64*
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds i8, i8* %256, i64 48
  %334 = bitcast i8* %333 to i64*
  store i64 %332, i64* %334, align 8
  %335 = getelementptr inbounds i8, i8* %256, i64 104
  %336 = bitcast i8* %335 to i8**
  store i8* %335, i8** %336, align 8
  %337 = getelementptr inbounds i8, i8* %256, i64 112
  %338 = bitcast i8* %337 to i8**
  store i8* %335, i8** %338, align 8
  %339 = getelementptr inbounds i8, i8* %256, i64 96
  %340 = bitcast i8* %339 to i32*
  store i32 0, i32* %340, align 8
  %341 = getelementptr inbounds i8, i8* %256, i64 64
  %342 = bitcast i8* %341 to i8**
  store i8* %341, i8** %342, align 8
  %343 = getelementptr inbounds i8, i8* %256, i64 72
  %344 = bitcast i8* %343 to i8**
  store i8* %341, i8** %344, align 8
  %345 = getelementptr inbounds i8, i8* %256, i64 80
  %346 = bitcast i8* %345 to i8**
  store i8* %345, i8** %346, align 8
  %347 = getelementptr inbounds i8, i8* %256, i64 88
  %348 = bitcast i8* %347 to i8**
  store i8* %345, i8** %348, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %nk_fiber_create.exit1, %268, %269
  %349 = phi i32 [ 0, %269 ], [ -22, %268 ], [ -22, %nk_fiber_create.exit1 ]
  %350 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %351 = call i32 @nk_fiber_run(%struct.nk_fiber* %350, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  %352 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #11
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %13 = call i64 @msr_read(i32 -1073741567) #11
  %14 = inttoptr i64 %13 to %struct.cpu*
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 1
  %18 = load %struct.nk_thread*, %struct.nk_thread** %17, align 8
  %19 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %20 = icmp eq %struct.nk_thread* %18, %19
  br i1 %20, label %21, label %wrapper_nk_fiber_yield.exit

; <label>:21:                                     ; preds = %2
  %22 = call i64 @msr_read(i32 -1073741567) #11
  %23 = inttoptr i64 %22 to %struct.cpu*
  %24 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i64 0, i32 5
  %25 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %24, align 8
  %26 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %25, i64 0, i32 4
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = icmp eq %struct.list_head* %28, %26
  br i1 %29, label %42, label %30

; <label>:30:                                     ; preds = %21
  %31 = getelementptr %struct.list_head, %struct.list_head* %28, i64 -7, i32 1
  %32 = bitcast %struct.list_head** %31 to %struct.nk_fiber*
  %33 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 13
  %34 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 14
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %33, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 0, i32 1
  store %struct.list_head* %35, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = bitcast %struct.list_head** %33 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %39, align 8
  %40 = bitcast %struct.list_head** %34 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %40, align 8
  %41 = icmp eq %struct.list_head** %31, null
  br i1 %41, label %42, label %63

; <label>:42:                                     ; preds = %30, %21
  %43 = call i64 @msr_read(i32 -1073741567) #11
  %44 = inttoptr i64 %43 to %struct.cpu*
  %45 = getelementptr inbounds %struct.cpu, %struct.cpu* %44, i64 0, i32 5
  %46 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %45, align 8
  %47 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %46, i64 0, i32 2
  %48 = load %struct.nk_fiber*, %struct.nk_fiber** %47, align 8
  %49 = call i64 @msr_read(i32 -1073741567) #11
  %50 = inttoptr i64 %49 to %struct.cpu*
  %51 = getelementptr inbounds %struct.cpu, %struct.cpu* %50, i64 0, i32 5
  %52 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %51, align 8
  %53 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %52, i64 0, i32 3
  %54 = load %struct.nk_fiber*, %struct.nk_fiber** %53, align 8
  %55 = icmp eq %struct.nk_fiber* %48, %54
  br i1 %55, label %wrapper_nk_fiber_yield.exit, label %56

; <label>:56:                                     ; preds = %42
  %57 = call i64 @msr_read(i32 -1073741567) #11
  %58 = inttoptr i64 %57 to %struct.cpu*
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %30
  %64 = phi %struct.nk_fiber* [ %62, %56 ], [ %32, %30 ]
  %65 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %64) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %42, %63
  %66 = phi i32 [ 1, %2 ], [ 0, %42 ], [ 0, %63 ]
  %67 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #11
  %68 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #11
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers11(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %11 = call i8* @kmem_malloc(i64 152) #11
  %12 = icmp eq i8* %11, null
  br i1 %12, label %nk_fiber_create.exit, label %13

; <label>:13:                                     ; preds = %2
  %14 = call i8* @memset(i8* nonnull %11, i8 signext 0, i64 152) #11
  %15 = getelementptr inbounds i8, i8* %11, i64 44
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i8, i8* %11, i64 24
  %18 = bitcast i8* %17 to i64*
  store i64 2097152, i64* %18, align 8
  %19 = call i8* @kmem_malloc(i64 2097152) #11
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %13
  call void @kmem_free(i8* nonnull %11) #11
  br label %nk_fiber_create.exit

; <label>:24:                                     ; preds = %13
  %25 = ptrtoint i8* %19 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 120
  %27 = bitcast i8* %26 to void (i8*, i8**)**
  store void (i8*, i8**)* @benchmark_timer1, void (i8*, i8**)** %27, align 8
  %28 = getelementptr inbounds i8, i8* %11, i64 128
  %29 = bitcast i8* %28 to i8**
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds i8, i8* %11, i64 136
  %31 = bitcast i8* %30 to i8***
  store i8** null, i8*** %31, align 8
  %32 = load i64, i64* %18, align 8
  %33 = bitcast i8* %11 to i64*
  %34 = add i64 %25, -8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %36, align 8
  %37 = load i64, i64* %33, align 8
  %38 = add i64 %37, -8
  store i64 %38, i64* %33, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %33, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %33, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %33, align 8
  %44 = add i64 %43, -8
  store i64 %44, i64* %33, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %33, align 8
  %47 = add i64 %46, -8
  store i64 %47, i64* %33, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %33, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %33, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 0, i64* %51, align 8
  %52 = ptrtoint i8* %11 to i64
  %53 = load i64, i64* %33, align 8
  %54 = add i64 %53, -8
  store i64 %54, i64* %33, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %33, align 8
  %57 = add i64 %56, -8
  store i64 %57, i64* %33, align 8
  %58 = inttoptr i64 %57 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %33, align 8
  %60 = add i64 %59, -8
  store i64 %60, i64* %33, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %33, align 8
  %63 = add i64 %62, -8
  store i64 %63, i64* %33, align 8
  %64 = inttoptr i64 %63 to i64*
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %33, align 8
  %66 = add i64 %65, -8
  store i64 %66, i64* %33, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %33, align 8
  %69 = add i64 %68, -8
  store i64 %69, i64* %33, align 8
  %70 = inttoptr i64 %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %33, align 8
  %72 = add i64 %71, -8
  store i64 %72, i64* %33, align 8
  %73 = inttoptr i64 %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %33, align 8
  %75 = add i64 %74, -8
  store i64 %75, i64* %33, align 8
  %76 = inttoptr i64 %75 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %33, align 8
  %78 = add i64 %77, -8
  store i64 %78, i64* %33, align 8
  %79 = inttoptr i64 %78 to i64*
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* %33, align 8
  %81 = add i64 %80, -8
  store i64 %81, i64* %33, align 8
  %82 = inttoptr i64 %81 to i64*
  store i64 0, i64* %82, align 8
  %83 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %11, i8** %83, align 8
  %84 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %11, i64 48
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds i8, i8* %11, i64 104
  %91 = bitcast i8* %90 to i8**
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %11, i64 112
  %93 = bitcast i8* %92 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %11, i64 96
  %95 = bitcast i8* %94 to i32*
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds i8, i8* %11, i64 64
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %11, i64 72
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %11, i64 80
  %101 = bitcast i8* %100 to i8**
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %11, i64 88
  %103 = bitcast i8* %102 to i8**
  store i8* %100, i8** %103, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %23, %24
  %104 = phi i32 [ 0, %24 ], [ -22, %23 ], [ -22, %2 ]
  %105 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %106 = call i32 @nk_fiber_run(%struct.nk_fiber* %105, i8 zeroext 1) #11
  %107 = call i8* @kmem_malloc(i64 152) #11
  %108 = icmp eq i8* %107, null
  br i1 %108, label %nk_fiber_create.exit1, label %109

; <label>:109:                                    ; preds = %nk_fiber_create.exit
  %110 = call i8* @memset(i8* nonnull %107, i8 signext 0, i64 152) #11
  %111 = getelementptr inbounds i8, i8* %107, i64 44
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds i8, i8* %107, i64 24
  %114 = bitcast i8* %113 to i64*
  store i64 2097152, i64* %114, align 8
  %115 = call i8* @kmem_malloc(i64 2097152) #11
  %116 = getelementptr inbounds i8, i8* %107, i64 8
  %117 = bitcast i8* %116 to i8**
  store i8* %115, i8** %117, align 8
  %118 = icmp eq i8* %115, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109
  call void @kmem_free(i8* nonnull %107) #11
  br label %nk_fiber_create.exit1

; <label>:120:                                    ; preds = %109
  %121 = ptrtoint i8* %115 to i64
  %122 = getelementptr inbounds i8, i8* %107, i64 120
  %123 = bitcast i8* %122 to void (i8*, i8**)**
  store void (i8*, i8**)* @benchmark_timer2, void (i8*, i8**)** %123, align 8
  %124 = getelementptr inbounds i8, i8* %107, i64 128
  %125 = bitcast i8* %124 to i8**
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %107, i64 136
  %127 = bitcast i8* %126 to i8***
  store i8** null, i8*** %127, align 8
  %128 = load i64, i64* %114, align 8
  %129 = bitcast i8* %107 to i64*
  %130 = add i64 %121, -8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %132, align 8
  %133 = load i64, i64* %129, align 8
  %134 = add i64 %133, -8
  store i64 %134, i64* %129, align 8
  %135 = inttoptr i64 %134 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %129, align 8
  %137 = add i64 %136, -8
  store i64 %137, i64* %129, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %129, align 8
  %140 = add i64 %139, -8
  store i64 %140, i64* %129, align 8
  %141 = inttoptr i64 %140 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %129, align 8
  %143 = add i64 %142, -8
  store i64 %143, i64* %129, align 8
  %144 = inttoptr i64 %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %129, align 8
  %146 = add i64 %145, -8
  store i64 %146, i64* %129, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64 0, i64* %147, align 8
  %148 = ptrtoint i8* %107 to i64
  %149 = load i64, i64* %129, align 8
  %150 = add i64 %149, -8
  store i64 %150, i64* %129, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %129, align 8
  %153 = add i64 %152, -8
  store i64 %153, i64* %129, align 8
  %154 = inttoptr i64 %153 to i64*
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %129, align 8
  %156 = add i64 %155, -8
  store i64 %156, i64* %129, align 8
  %157 = inttoptr i64 %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %129, align 8
  %159 = add i64 %158, -8
  store i64 %159, i64* %129, align 8
  %160 = inttoptr i64 %159 to i64*
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %129, align 8
  %162 = add i64 %161, -8
  store i64 %162, i64* %129, align 8
  %163 = inttoptr i64 %162 to i64*
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %129, align 8
  %165 = add i64 %164, -8
  store i64 %165, i64* %129, align 8
  %166 = inttoptr i64 %165 to i64*
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %129, align 8
  %168 = add i64 %167, -8
  store i64 %168, i64* %129, align 8
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169, align 8
  %170 = load i64, i64* %129, align 8
  %171 = add i64 %170, -8
  store i64 %171, i64* %129, align 8
  %172 = inttoptr i64 %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %129, align 8
  %174 = add i64 %173, -8
  store i64 %174, i64* %129, align 8
  %175 = inttoptr i64 %174 to i64*
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %129, align 8
  %177 = add i64 %176, -8
  store i64 %177, i64* %129, align 8
  %178 = inttoptr i64 %177 to i64*
  store i64 0, i64* %178, align 8
  %179 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %107, i8** %179, align 8
  %180 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %181 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %180, i64 0, i32 24
  %182 = bitcast %struct.nk_virtual_console** %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* %107, i64 48
  %185 = bitcast i8* %184 to i64*
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds i8, i8* %107, i64 104
  %187 = bitcast i8* %186 to i8**
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %107, i64 112
  %189 = bitcast i8* %188 to i8**
  store i8* %186, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %107, i64 96
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds i8, i8* %107, i64 64
  %193 = bitcast i8* %192 to i8**
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %107, i64 72
  %195 = bitcast i8* %194 to i8**
  store i8* %192, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %107, i64 80
  %197 = bitcast i8* %196 to i8**
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %107, i64 88
  %199 = bitcast i8* %198 to i8**
  store i8* %196, i8** %199, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %119, %120
  %200 = phi i32 [ 0, %120 ], [ -22, %119 ], [ -22, %nk_fiber_create.exit ]
  %201 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8
  %202 = call i32 @nk_fiber_run(%struct.nk_fiber* %201, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer1(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca [2000 x i64], align 16
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = bitcast [2000 x i64]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16000, i8* nonnull %5) #10
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %16, %6 ]
  tail call void @nk_simple_timing_loop(i64 100) #11
  %8 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !7
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = extractvalue { i32, i32 } %8, 1
  %11 = zext i32 %9 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %7
  store i64 %14, i64* %15, align 8
  %16 = add nuw nsw i64 %7, 1
  %17 = icmp eq i64 %16, 2000
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %6
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %20 = call i64 @msr_read(i32 -1073741567) #11
  %21 = inttoptr i64 %20 to %struct.cpu*
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8
  %26 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %27 = icmp eq %struct.nk_thread* %25, %26
  br i1 %27, label %28, label %wrapper_nk_fiber_yield.exit

; <label>:28:                                     ; preds = %18
  %29 = call i64 @msr_read(i32 -1073741567) #11
  %30 = inttoptr i64 %29 to %struct.cpu*
  %31 = getelementptr inbounds %struct.cpu, %struct.cpu* %30, i64 0, i32 5
  %32 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %31, align 8
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %32, i64 0, i32 4
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = icmp eq %struct.list_head* %35, %33
  br i1 %36, label %49, label %37

; <label>:37:                                     ; preds = %28
  %38 = getelementptr %struct.list_head, %struct.list_head* %35, i64 -7, i32 1
  %39 = bitcast %struct.list_head** %38 to %struct.nk_fiber*
  %40 = getelementptr inbounds %struct.list_head*, %struct.list_head** %38, i64 13
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %38, i64 14
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  %43 = load %struct.list_head*, %struct.list_head** %40, align 8
  %44 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 1
  store %struct.list_head* %42, %struct.list_head** %44, align 8
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %42, i64 0, i32 0
  store %struct.list_head* %43, %struct.list_head** %45, align 8
  %46 = bitcast %struct.list_head** %40 to %struct.list_head***
  store %struct.list_head** %40, %struct.list_head*** %46, align 8
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***
  store %struct.list_head** %40, %struct.list_head*** %47, align 8
  %48 = icmp eq %struct.list_head** %38, null
  br i1 %48, label %49, label %70

; <label>:49:                                     ; preds = %37, %28
  %50 = call i64 @msr_read(i32 -1073741567) #11
  %51 = inttoptr i64 %50 to %struct.cpu*
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 2
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8
  %56 = call i64 @msr_read(i32 -1073741567) #11
  %57 = inttoptr i64 %56 to %struct.cpu*
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 3
  %61 = load %struct.nk_fiber*, %struct.nk_fiber** %60, align 8
  %62 = icmp eq %struct.nk_fiber* %55, %61
  br i1 %62, label %wrapper_nk_fiber_yield.exit, label %63

; <label>:63:                                     ; preds = %49
  %64 = call i64 @msr_read(i32 -1073741567) #11
  %65 = inttoptr i64 %64 to %struct.cpu*
  %66 = getelementptr inbounds %struct.cpu, %struct.cpu* %65, i64 0, i32 5
  %67 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %66, align 8
  %68 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %67, i64 0, i32 3
  %69 = load %struct.nk_fiber*, %struct.nk_fiber** %68, align 8
  br label %70

; <label>:70:                                     ; preds = %63, %37
  %71 = phi %struct.nk_fiber* [ %69, %63 ], [ %39, %37 ]
  %72 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %71) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %18, %49, %70
  %73 = phi i32 [ 1, %18 ], [ 0, %49 ], [ 0, %70 ]
  %74 = getelementptr inbounds [2000 x i64], [2000 x i64]* %3, i64 0, i64 0
  %75 = load i64, i64* %74, align 16
  br label %76

; <label>:76:                                     ; preds = %76, %wrapper_nk_fiber_yield.exit
  %77 = phi i64 [ %75, %wrapper_nk_fiber_yield.exit ], [ %82, %76 ]
  %78 = phi i64 [ 1, %wrapper_nk_fiber_yield.exit ], [ %86, %76 ]
  %79 = phi i32 [ 1, %wrapper_nk_fiber_yield.exit ], [ %87, %76 ]
  %80 = add nsw i32 %79, -1
  %81 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %78
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, %77
  %84 = trunc i64 %78 to i32
  %85 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i32 %80, i32 %84, i64 %83) #11
  %86 = add nuw nsw i64 %78, 1
  %87 = add nuw nsw i32 %79, 1
  %88 = icmp eq i64 %86, 2000
  br i1 %88, label %89, label %76

; <label>:89:                                     ; preds = %76
  %90 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0)) #11
  call void @llvm.lifetime.end.p0i8(i64 16000, i8* nonnull %5) #10
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer2(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  br label %4

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  tail call void @nk_simple_timing_loop(i64 100) #11
  %6 = add nuw nsw i32 %5, 1
  %7 = icmp eq i32 %6, 2000
  br i1 %7, label %8, label %4

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #11
  ret void
}

; Function Attrs: noredzone
declare dso_local void @nk_simple_timing_loop(i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %11 = call i8* @kmem_malloc(i64 152) #11
  %12 = icmp eq i8* %11, null
  br i1 %12, label %nk_fiber_create.exit, label %13

; <label>:13:                                     ; preds = %2
  %14 = call i8* @memset(i8* nonnull %11, i8 signext 0, i64 152) #11
  %15 = getelementptr inbounds i8, i8* %11, i64 44
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i8, i8* %11, i64 24
  %18 = bitcast i8* %17 to i64*
  store i64 2097152, i64* %18, align 8
  %19 = call i8* @kmem_malloc(i64 2097152) #11
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %13
  call void @kmem_free(i8* nonnull %11) #11
  br label %nk_fiber_create.exit

; <label>:24:                                     ; preds = %13
  %25 = ptrtoint i8* %19 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 120
  %27 = bitcast i8* %26 to void (i8*, i8**)**
  store void (i8*, i8**)* @first_timer, void (i8*, i8**)** %27, align 8
  %28 = getelementptr inbounds i8, i8* %11, i64 128
  %29 = bitcast i8* %28 to i8**
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds i8, i8* %11, i64 136
  %31 = bitcast i8* %30 to i8***
  store i8** null, i8*** %31, align 8
  %32 = load i64, i64* %18, align 8
  %33 = bitcast i8* %11 to i64*
  %34 = add i64 %25, -8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %36, align 8
  %37 = load i64, i64* %33, align 8
  %38 = add i64 %37, -8
  store i64 %38, i64* %33, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %33, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %33, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %33, align 8
  %44 = add i64 %43, -8
  store i64 %44, i64* %33, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %33, align 8
  %47 = add i64 %46, -8
  store i64 %47, i64* %33, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %33, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %33, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 0, i64* %51, align 8
  %52 = ptrtoint i8* %11 to i64
  %53 = load i64, i64* %33, align 8
  %54 = add i64 %53, -8
  store i64 %54, i64* %33, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %33, align 8
  %57 = add i64 %56, -8
  store i64 %57, i64* %33, align 8
  %58 = inttoptr i64 %57 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %33, align 8
  %60 = add i64 %59, -8
  store i64 %60, i64* %33, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %33, align 8
  %63 = add i64 %62, -8
  store i64 %63, i64* %33, align 8
  %64 = inttoptr i64 %63 to i64*
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %33, align 8
  %66 = add i64 %65, -8
  store i64 %66, i64* %33, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %33, align 8
  %69 = add i64 %68, -8
  store i64 %69, i64* %33, align 8
  %70 = inttoptr i64 %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %33, align 8
  %72 = add i64 %71, -8
  store i64 %72, i64* %33, align 8
  %73 = inttoptr i64 %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %33, align 8
  %75 = add i64 %74, -8
  store i64 %75, i64* %33, align 8
  %76 = inttoptr i64 %75 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %33, align 8
  %78 = add i64 %77, -8
  store i64 %78, i64* %33, align 8
  %79 = inttoptr i64 %78 to i64*
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* %33, align 8
  %81 = add i64 %80, -8
  store i64 %81, i64* %33, align 8
  %82 = inttoptr i64 %81 to i64*
  store i64 0, i64* %82, align 8
  %83 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %11, i8** %83, align 8
  %84 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %11, i64 48
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds i8, i8* %11, i64 104
  %91 = bitcast i8* %90 to i8**
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %11, i64 112
  %93 = bitcast i8* %92 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %11, i64 96
  %95 = bitcast i8* %94 to i32*
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds i8, i8* %11, i64 64
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %11, i64 72
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %11, i64 80
  %101 = bitcast i8* %100 to i8**
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %11, i64 88
  %103 = bitcast i8* %102 to i8**
  store i8* %100, i8** %103, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %23, %24
  %104 = phi i32 [ 0, %24 ], [ -22, %23 ], [ -22, %2 ]
  %105 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %106 = call i32 @nk_fiber_run(%struct.nk_fiber* %105, i8 zeroext 1) #11
  %107 = call i8* @kmem_malloc(i64 152) #11
  %108 = icmp eq i8* %107, null
  br i1 %108, label %nk_fiber_create.exit1, label %109

; <label>:109:                                    ; preds = %nk_fiber_create.exit
  %110 = call i8* @memset(i8* nonnull %107, i8 signext 0, i64 152) #11
  %111 = getelementptr inbounds i8, i8* %107, i64 44
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds i8, i8* %107, i64 24
  %114 = bitcast i8* %113 to i64*
  store i64 2097152, i64* %114, align 8
  %115 = call i8* @kmem_malloc(i64 2097152) #11
  %116 = getelementptr inbounds i8, i8* %107, i64 8
  %117 = bitcast i8* %116 to i8**
  store i8* %115, i8** %117, align 8
  %118 = icmp eq i8* %115, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109
  call void @kmem_free(i8* nonnull %107) #11
  br label %nk_fiber_create.exit1

; <label>:120:                                    ; preds = %109
  %121 = ptrtoint i8* %115 to i64
  %122 = getelementptr inbounds i8, i8* %107, i64 120
  %123 = bitcast i8* %122 to void (i8*, i8**)**
  store void (i8*, i8**)* @second_timer, void (i8*, i8**)** %123, align 8
  %124 = getelementptr inbounds i8, i8* %107, i64 128
  %125 = bitcast i8* %124 to i8**
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %107, i64 136
  %127 = bitcast i8* %126 to i8***
  store i8** null, i8*** %127, align 8
  %128 = load i64, i64* %114, align 8
  %129 = bitcast i8* %107 to i64*
  %130 = add i64 %121, -8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %132, align 8
  %133 = load i64, i64* %129, align 8
  %134 = add i64 %133, -8
  store i64 %134, i64* %129, align 8
  %135 = inttoptr i64 %134 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %129, align 8
  %137 = add i64 %136, -8
  store i64 %137, i64* %129, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %129, align 8
  %140 = add i64 %139, -8
  store i64 %140, i64* %129, align 8
  %141 = inttoptr i64 %140 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %129, align 8
  %143 = add i64 %142, -8
  store i64 %143, i64* %129, align 8
  %144 = inttoptr i64 %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %129, align 8
  %146 = add i64 %145, -8
  store i64 %146, i64* %129, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64 0, i64* %147, align 8
  %148 = ptrtoint i8* %107 to i64
  %149 = load i64, i64* %129, align 8
  %150 = add i64 %149, -8
  store i64 %150, i64* %129, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %129, align 8
  %153 = add i64 %152, -8
  store i64 %153, i64* %129, align 8
  %154 = inttoptr i64 %153 to i64*
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %129, align 8
  %156 = add i64 %155, -8
  store i64 %156, i64* %129, align 8
  %157 = inttoptr i64 %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %129, align 8
  %159 = add i64 %158, -8
  store i64 %159, i64* %129, align 8
  %160 = inttoptr i64 %159 to i64*
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %129, align 8
  %162 = add i64 %161, -8
  store i64 %162, i64* %129, align 8
  %163 = inttoptr i64 %162 to i64*
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %129, align 8
  %165 = add i64 %164, -8
  store i64 %165, i64* %129, align 8
  %166 = inttoptr i64 %165 to i64*
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %129, align 8
  %168 = add i64 %167, -8
  store i64 %168, i64* %129, align 8
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169, align 8
  %170 = load i64, i64* %129, align 8
  %171 = add i64 %170, -8
  store i64 %171, i64* %129, align 8
  %172 = inttoptr i64 %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %129, align 8
  %174 = add i64 %173, -8
  store i64 %174, i64* %129, align 8
  %175 = inttoptr i64 %174 to i64*
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %129, align 8
  %177 = add i64 %176, -8
  store i64 %177, i64* %129, align 8
  %178 = inttoptr i64 %177 to i64*
  store i64 0, i64* %178, align 8
  %179 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %107, i8** %179, align 8
  %180 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %181 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %180, i64 0, i32 24
  %182 = bitcast %struct.nk_virtual_console** %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* %107, i64 48
  %185 = bitcast i8* %184 to i64*
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds i8, i8* %107, i64 104
  %187 = bitcast i8* %186 to i8**
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %107, i64 112
  %189 = bitcast i8* %188 to i8**
  store i8* %186, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %107, i64 96
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds i8, i8* %107, i64 64
  %193 = bitcast i8* %192 to i8**
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %107, i64 72
  %195 = bitcast i8* %194 to i8**
  store i8* %192, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %107, i64 80
  %197 = bitcast i8* %196 to i8**
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %107, i64 88
  %199 = bitcast i8* %198 to i8**
  store i8* %196, i8** %199, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %119, %120
  %200 = phi i32 [ 0, %120 ], [ -22, %119 ], [ -22, %nk_fiber_create.exit ]
  %201 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8
  %202 = call i32 @nk_fiber_run(%struct.nk_fiber* %201, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  br label %4

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !7
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  br label %16

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ]
  %18 = add nuw nsw i32 %6, 1
  %19 = icmp eq i32 %18, 100000
  br i1 %19, label %20, label %4

; <label>:20:                                     ; preds = %16
  %21 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %22 = call i64 @msr_read(i32 -1073741567) #11
  %23 = inttoptr i64 %22 to %struct.cpu*
  %24 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i64 0, i32 5
  %25 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %24, align 8
  %26 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %25, i64 0, i32 1
  %27 = load %struct.nk_thread*, %struct.nk_thread** %26, align 8
  %28 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %29 = icmp eq %struct.nk_thread* %27, %28
  br i1 %29, label %30, label %wrapper_nk_fiber_yield.exit

; <label>:30:                                     ; preds = %20
  %31 = call i64 @msr_read(i32 -1073741567) #11
  %32 = inttoptr i64 %31 to %struct.cpu*
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8
  %38 = icmp eq %struct.list_head* %37, %35
  br i1 %38, label %51, label %39

; <label>:39:                                     ; preds = %30
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1
  store %struct.list_head* %44, %struct.list_head** %46, align 8
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0
  store %struct.list_head* %45, %struct.list_head** %47, align 8
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***
  store %struct.list_head** %42, %struct.list_head*** %48, align 8
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***
  store %struct.list_head** %42, %struct.list_head*** %49, align 8
  %50 = icmp eq %struct.list_head** %40, null
  br i1 %50, label %51, label %72

; <label>:51:                                     ; preds = %39, %30
  %52 = call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = call i64 @msr_read(i32 -1073741567) #11
  %59 = inttoptr i64 %58 to %struct.cpu*
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8
  %64 = icmp eq %struct.nk_fiber* %57, %63
  br i1 %64, label %wrapper_nk_fiber_yield.exit, label %65

; <label>:65:                                     ; preds = %51
  %66 = call i64 @msr_read(i32 -1073741567) #11
  %67 = inttoptr i64 %66 to %struct.cpu*
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8
  br label %72

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ]
  %74 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %20, %51, %72
  %75 = phi i32 [ 1, %20 ], [ 0, %51 ], [ 0, %72 ]
  %76 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !7
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = extractvalue { i32, i32 } %76, 1
  %79 = zext i32 %77 to i64
  %80 = zext i32 %78 to i64
  %81 = shl nuw i64 %80, 32
  %82 = or i64 %81, %79
  %83 = sub i64 %82, %17
  %84 = udiv i64 %83, 100000
  %85 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %83, i64 %84) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #11
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  %6 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = bitcast %struct.nk_fiber** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %11) #11
  %13 = call i8* @kmem_malloc(i64 152) #11
  %14 = icmp eq i8* %13, null
  br i1 %14, label %nk_fiber_create.exit1, label %15

; <label>:15:                                     ; preds = %2
  %16 = call i8* @memset(i8* nonnull %13, i8 signext 0, i64 152) #11
  %17 = getelementptr inbounds i8, i8* %13, i64 44
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i8, i8* %13, i64 24
  %20 = bitcast i8* %19 to i64*
  store i64 2097152, i64* %20, align 8
  %21 = call i8* @kmem_malloc(i64 2097152) #11
  %22 = getelementptr inbounds i8, i8* %13, i64 8
  %23 = bitcast i8* %22 to i8**
  store i8* %21, i8** %23, align 8
  %24 = icmp eq i8* %21, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  call void @kmem_free(i8* nonnull %13) #11
  br label %nk_fiber_create.exit1

; <label>:26:                                     ; preds = %15
  %27 = ptrtoint i8* %21 to i64
  %28 = getelementptr inbounds i8, i8* %13, i64 120
  %29 = bitcast i8* %28 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber1, void (i8*, i8**)** %29, align 8
  %30 = getelementptr inbounds i8, i8* %13, i64 128
  %31 = bitcast i8* %30 to i8**
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds i8, i8* %13, i64 136
  %33 = bitcast i8* %32 to i8***
  store i8** null, i8*** %33, align 8
  %34 = load i64, i64* %20, align 8
  %35 = bitcast i8* %13 to i64*
  %36 = add i64 %27, -8
  %37 = add i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %38, align 8
  %39 = load i64, i64* %35, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %35, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %35, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %35, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %35, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %35, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %35, align 8
  %49 = add i64 %48, -8
  store i64 %49, i64* %35, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %35, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %35, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 0, i64* %53, align 8
  %54 = ptrtoint i8* %13 to i64
  %55 = load i64, i64* %35, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %35, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %35, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %35, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %35, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %35, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %35, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %35, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %35, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %35, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %35, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %35, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %35, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %35, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %35, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %35, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %35, align 8
  %80 = add i64 %79, -8
  store i64 %80, i64* %35, align 8
  %81 = inttoptr i64 %80 to i64*
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %35, align 8
  %83 = add i64 %82, -8
  store i64 %83, i64* %35, align 8
  %84 = inttoptr i64 %83 to i64*
  store i64 0, i64* %84, align 8
  %85 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %13, i8** %85, align 8
  %86 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %87 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %86, i64 0, i32 24
  %88 = bitcast %struct.nk_virtual_console** %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %13, i64 48
  %91 = bitcast i8* %90 to i64*
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds i8, i8* %13, i64 104
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %13, i64 112
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %13, i64 96
  %97 = bitcast i8* %96 to i32*
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds i8, i8* %13, i64 64
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %13, i64 72
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %13, i64 80
  %103 = bitcast i8* %102 to i8**
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds i8, i8* %13, i64 88
  %105 = bitcast i8* %104 to i8**
  store i8* %102, i8** %105, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %2, %25, %26
  %106 = phi i32 [ 0, %26 ], [ -22, %25 ], [ -22, %2 ]
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %108 = call i32 @nk_fiber_run(%struct.nk_fiber* %107, i8 zeroext 1) #11
  %109 = call i8* @kmem_malloc(i64 152) #11
  %110 = icmp eq i8* %109, null
  br i1 %110, label %nk_fiber_create.exit2, label %111

; <label>:111:                                    ; preds = %nk_fiber_create.exit1
  %112 = call i8* @memset(i8* nonnull %109, i8 signext 0, i64 152) #11
  %113 = getelementptr inbounds i8, i8* %109, i64 44
  %114 = bitcast i8* %113 to i32*
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds i8, i8* %109, i64 24
  %116 = bitcast i8* %115 to i64*
  store i64 2097152, i64* %116, align 8
  %117 = call i8* @kmem_malloc(i64 2097152) #11
  %118 = getelementptr inbounds i8, i8* %109, i64 8
  %119 = bitcast i8* %118 to i8**
  store i8* %117, i8** %119, align 8
  %120 = icmp eq i8* %117, null
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %111
  call void @kmem_free(i8* nonnull %109) #11
  br label %nk_fiber_create.exit2

; <label>:122:                                    ; preds = %111
  %123 = ptrtoint i8* %117 to i64
  %124 = getelementptr inbounds i8, i8* %109, i64 120
  %125 = bitcast i8* %124 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber2, void (i8*, i8**)** %125, align 8
  %126 = getelementptr inbounds i8, i8* %109, i64 128
  %127 = bitcast i8* %126 to i8**
  store i8* null, i8** %127, align 8
  %128 = getelementptr inbounds i8, i8* %109, i64 136
  %129 = bitcast i8* %128 to i8***
  store i8** null, i8*** %129, align 8
  %130 = load i64, i64* %116, align 8
  %131 = bitcast i8* %109 to i64*
  %132 = add i64 %123, -8
  %133 = add i64 %132, %130
  store i64 %133, i64* %131, align 8
  %134 = inttoptr i64 %133 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %134, align 8
  %135 = load i64, i64* %131, align 8
  %136 = add i64 %135, -8
  store i64 %136, i64* %131, align 8
  %137 = inttoptr i64 %136 to i64*
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %131, align 8
  %139 = add i64 %138, -8
  store i64 %139, i64* %131, align 8
  %140 = inttoptr i64 %139 to i64*
  store i64 0, i64* %140, align 8
  %141 = load i64, i64* %131, align 8
  %142 = add i64 %141, -8
  store i64 %142, i64* %131, align 8
  %143 = inttoptr i64 %142 to i64*
  store i64 0, i64* %143, align 8
  %144 = load i64, i64* %131, align 8
  %145 = add i64 %144, -8
  store i64 %145, i64* %131, align 8
  %146 = inttoptr i64 %145 to i64*
  store i64 0, i64* %146, align 8
  %147 = load i64, i64* %131, align 8
  %148 = add i64 %147, -8
  store i64 %148, i64* %131, align 8
  %149 = inttoptr i64 %148 to i64*
  store i64 0, i64* %149, align 8
  %150 = ptrtoint i8* %109 to i64
  %151 = load i64, i64* %131, align 8
  %152 = add i64 %151, -8
  store i64 %152, i64* %131, align 8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  %154 = load i64, i64* %131, align 8
  %155 = add i64 %154, -8
  store i64 %155, i64* %131, align 8
  %156 = inttoptr i64 %155 to i64*
  store i64 0, i64* %156, align 8
  %157 = load i64, i64* %131, align 8
  %158 = add i64 %157, -8
  store i64 %158, i64* %131, align 8
  %159 = inttoptr i64 %158 to i64*
  store i64 0, i64* %159, align 8
  %160 = load i64, i64* %131, align 8
  %161 = add i64 %160, -8
  store i64 %161, i64* %131, align 8
  %162 = inttoptr i64 %161 to i64*
  store i64 0, i64* %162, align 8
  %163 = load i64, i64* %131, align 8
  %164 = add i64 %163, -8
  store i64 %164, i64* %131, align 8
  %165 = inttoptr i64 %164 to i64*
  store i64 0, i64* %165, align 8
  %166 = load i64, i64* %131, align 8
  %167 = add i64 %166, -8
  store i64 %167, i64* %131, align 8
  %168 = inttoptr i64 %167 to i64*
  store i64 0, i64* %168, align 8
  %169 = load i64, i64* %131, align 8
  %170 = add i64 %169, -8
  store i64 %170, i64* %131, align 8
  %171 = inttoptr i64 %170 to i64*
  store i64 0, i64* %171, align 8
  %172 = load i64, i64* %131, align 8
  %173 = add i64 %172, -8
  store i64 %173, i64* %131, align 8
  %174 = inttoptr i64 %173 to i64*
  store i64 0, i64* %174, align 8
  %175 = load i64, i64* %131, align 8
  %176 = add i64 %175, -8
  store i64 %176, i64* %131, align 8
  %177 = inttoptr i64 %176 to i64*
  store i64 0, i64* %177, align 8
  %178 = load i64, i64* %131, align 8
  %179 = add i64 %178, -8
  store i64 %179, i64* %131, align 8
  %180 = inttoptr i64 %179 to i64*
  store i64 0, i64* %180, align 8
  %181 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %109, i8** %181, align 8
  %182 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %183 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %182, i64 0, i32 24
  %184 = bitcast %struct.nk_virtual_console** %183 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %109, i64 48
  %187 = bitcast i8* %186 to i64*
  store i64 %185, i64* %187, align 8
  %188 = getelementptr inbounds i8, i8* %109, i64 104
  %189 = bitcast i8* %188 to i8**
  store i8* %188, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %109, i64 112
  %191 = bitcast i8* %190 to i8**
  store i8* %188, i8** %191, align 8
  %192 = getelementptr inbounds i8, i8* %109, i64 96
  %193 = bitcast i8* %192 to i32*
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds i8, i8* %109, i64 64
  %195 = bitcast i8* %194 to i8**
  store i8* %194, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %109, i64 72
  %197 = bitcast i8* %196 to i8**
  store i8* %194, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %109, i64 80
  %199 = bitcast i8* %198 to i8**
  store i8* %198, i8** %199, align 8
  %200 = getelementptr inbounds i8, i8* %109, i64 88
  %201 = bitcast i8* %200 to i8**
  store i8* %198, i8** %201, align 8
  br label %nk_fiber_create.exit2

nk_fiber_create.exit2:                            ; preds = %nk_fiber_create.exit1, %121, %122
  %202 = phi i32 [ 0, %122 ], [ -22, %121 ], [ -22, %nk_fiber_create.exit1 ]
  %203 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8
  %204 = call i32 @nk_fiber_run(%struct.nk_fiber* %203, i8 zeroext 1) #11
  %205 = call i8* @kmem_malloc(i64 152) #11
  %206 = icmp eq i8* %205, null
  br i1 %206, label %nk_fiber_create.exit, label %207

; <label>:207:                                    ; preds = %nk_fiber_create.exit2
  %208 = call i8* @memset(i8* nonnull %205, i8 signext 0, i64 152) #11
  %209 = getelementptr inbounds i8, i8* %205, i64 44
  %210 = bitcast i8* %209 to i32*
  store i32 0, i32* %210, align 4
  %211 = getelementptr inbounds i8, i8* %205, i64 24
  %212 = bitcast i8* %211 to i64*
  store i64 2097152, i64* %212, align 8
  %213 = call i8* @kmem_malloc(i64 2097152) #11
  %214 = getelementptr inbounds i8, i8* %205, i64 8
  %215 = bitcast i8* %214 to i8**
  store i8* %213, i8** %215, align 8
  %216 = icmp eq i8* %213, null
  br i1 %216, label %217, label %218

; <label>:217:                                    ; preds = %207
  call void @kmem_free(i8* nonnull %205) #11
  br label %nk_fiber_create.exit

; <label>:218:                                    ; preds = %207
  %219 = ptrtoint i8* %213 to i64
  %220 = getelementptr inbounds i8, i8* %205, i64 120
  %221 = bitcast i8* %220 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber3, void (i8*, i8**)** %221, align 8
  %222 = getelementptr inbounds i8, i8* %205, i64 128
  %223 = bitcast i8* %222 to i8**
  store i8* null, i8** %223, align 8
  %224 = getelementptr inbounds i8, i8* %205, i64 136
  %225 = bitcast i8* %224 to i8***
  store i8** null, i8*** %225, align 8
  %226 = load i64, i64* %212, align 8
  %227 = bitcast i8* %205 to i64*
  %228 = add i64 %219, -8
  %229 = add i64 %228, %226
  store i64 %229, i64* %227, align 8
  %230 = inttoptr i64 %229 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %230, align 8
  %231 = load i64, i64* %227, align 8
  %232 = add i64 %231, -8
  store i64 %232, i64* %227, align 8
  %233 = inttoptr i64 %232 to i64*
  store i64 0, i64* %233, align 8
  %234 = load i64, i64* %227, align 8
  %235 = add i64 %234, -8
  store i64 %235, i64* %227, align 8
  %236 = inttoptr i64 %235 to i64*
  store i64 0, i64* %236, align 8
  %237 = load i64, i64* %227, align 8
  %238 = add i64 %237, -8
  store i64 %238, i64* %227, align 8
  %239 = inttoptr i64 %238 to i64*
  store i64 0, i64* %239, align 8
  %240 = load i64, i64* %227, align 8
  %241 = add i64 %240, -8
  store i64 %241, i64* %227, align 8
  %242 = inttoptr i64 %241 to i64*
  store i64 0, i64* %242, align 8
  %243 = load i64, i64* %227, align 8
  %244 = add i64 %243, -8
  store i64 %244, i64* %227, align 8
  %245 = inttoptr i64 %244 to i64*
  store i64 0, i64* %245, align 8
  %246 = ptrtoint i8* %205 to i64
  %247 = load i64, i64* %227, align 8
  %248 = add i64 %247, -8
  store i64 %248, i64* %227, align 8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  %250 = load i64, i64* %227, align 8
  %251 = add i64 %250, -8
  store i64 %251, i64* %227, align 8
  %252 = inttoptr i64 %251 to i64*
  store i64 0, i64* %252, align 8
  %253 = load i64, i64* %227, align 8
  %254 = add i64 %253, -8
  store i64 %254, i64* %227, align 8
  %255 = inttoptr i64 %254 to i64*
  store i64 0, i64* %255, align 8
  %256 = load i64, i64* %227, align 8
  %257 = add i64 %256, -8
  store i64 %257, i64* %227, align 8
  %258 = inttoptr i64 %257 to i64*
  store i64 0, i64* %258, align 8
  %259 = load i64, i64* %227, align 8
  %260 = add i64 %259, -8
  store i64 %260, i64* %227, align 8
  %261 = inttoptr i64 %260 to i64*
  store i64 0, i64* %261, align 8
  %262 = load i64, i64* %227, align 8
  %263 = add i64 %262, -8
  store i64 %263, i64* %227, align 8
  %264 = inttoptr i64 %263 to i64*
  store i64 0, i64* %264, align 8
  %265 = load i64, i64* %227, align 8
  %266 = add i64 %265, -8
  store i64 %266, i64* %227, align 8
  %267 = inttoptr i64 %266 to i64*
  store i64 0, i64* %267, align 8
  %268 = load i64, i64* %227, align 8
  %269 = add i64 %268, -8
  store i64 %269, i64* %227, align 8
  %270 = inttoptr i64 %269 to i64*
  store i64 0, i64* %270, align 8
  %271 = load i64, i64* %227, align 8
  %272 = add i64 %271, -8
  store i64 %272, i64* %227, align 8
  %273 = inttoptr i64 %272 to i64*
  store i64 0, i64* %273, align 8
  %274 = load i64, i64* %227, align 8
  %275 = add i64 %274, -8
  store i64 %275, i64* %227, align 8
  %276 = inttoptr i64 %275 to i64*
  store i64 0, i64* %276, align 8
  %277 = bitcast %struct.nk_fiber** %5 to i8**
  store i8* %205, i8** %277, align 8
  %278 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %278, i64 0, i32 24
  %280 = bitcast %struct.nk_virtual_console** %279 to i64*
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i8, i8* %205, i64 48
  %283 = bitcast i8* %282 to i64*
  store i64 %281, i64* %283, align 8
  %284 = getelementptr inbounds i8, i8* %205, i64 104
  %285 = bitcast i8* %284 to i8**
  store i8* %284, i8** %285, align 8
  %286 = getelementptr inbounds i8, i8* %205, i64 112
  %287 = bitcast i8* %286 to i8**
  store i8* %284, i8** %287, align 8
  %288 = getelementptr inbounds i8, i8* %205, i64 96
  %289 = bitcast i8* %288 to i32*
  store i32 0, i32* %289, align 8
  %290 = getelementptr inbounds i8, i8* %205, i64 64
  %291 = bitcast i8* %290 to i8**
  store i8* %290, i8** %291, align 8
  %292 = getelementptr inbounds i8, i8* %205, i64 72
  %293 = bitcast i8* %292 to i8**
  store i8* %290, i8** %293, align 8
  %294 = getelementptr inbounds i8, i8* %205, i64 80
  %295 = bitcast i8* %294 to i8**
  store i8* %294, i8** %295, align 8
  %296 = getelementptr inbounds i8, i8* %205, i64 88
  %297 = bitcast i8* %296 to i8**
  store i8* %294, i8** %297, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %nk_fiber_create.exit2, %217, %218
  %298 = phi i32 [ 0, %218 ], [ -22, %217 ], [ -22, %nk_fiber_create.exit2 ]
  %299 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8
  %300 = call i32 @nk_fiber_run(%struct.nk_fiber* %299, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #11
  %6 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #11
  %8 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #11
  %10 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #11
  %12 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #11
  %14 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  %16 = bitcast %struct.nk_fiber** %3 to i8*
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %18 = call i64 @msr_read(i32 -1073741567) #11
  %19 = inttoptr i64 %18 to %struct.cpu*
  %20 = getelementptr inbounds %struct.cpu, %struct.cpu* %19, i64 0, i32 5
  %21 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %20, align 8
  %22 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %21, i64 0, i32 1
  %23 = load %struct.nk_thread*, %struct.nk_thread** %22, align 8
  %24 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %25 = icmp eq %struct.nk_thread* %23, %24
  br i1 %25, label %26, label %wrapper_nk_fiber_yield.exit

; <label>:26:                                     ; preds = %2
  %27 = call i64 @msr_read(i32 -1073741567) #11
  %28 = inttoptr i64 %27 to %struct.cpu*
  %29 = getelementptr inbounds %struct.cpu, %struct.cpu* %28, i64 0, i32 5
  %30 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %29, align 8
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %30, i64 0, i32 4
  %32 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8
  %34 = icmp eq %struct.list_head* %33, %31
  br i1 %34, label %47, label %35

; <label>:35:                                     ; preds = %26
  %36 = getelementptr %struct.list_head, %struct.list_head* %33, i64 -7, i32 1
  %37 = bitcast %struct.list_head** %36 to %struct.nk_fiber*
  %38 = getelementptr inbounds %struct.list_head*, %struct.list_head** %36, i64 13
  %39 = getelementptr inbounds %struct.list_head*, %struct.list_head** %36, i64 14
  %40 = load %struct.list_head*, %struct.list_head** %39, align 8
  %41 = load %struct.list_head*, %struct.list_head** %38, align 8
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %41, i64 0, i32 1
  store %struct.list_head* %40, %struct.list_head** %42, align 8
  %43 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i64 0, i32 0
  store %struct.list_head* %41, %struct.list_head** %43, align 8
  %44 = bitcast %struct.list_head** %38 to %struct.list_head***
  store %struct.list_head** %38, %struct.list_head*** %44, align 8
  %45 = bitcast %struct.list_head** %39 to %struct.list_head***
  store %struct.list_head** %38, %struct.list_head*** %45, align 8
  %46 = icmp eq %struct.list_head** %36, null
  br i1 %46, label %47, label %68

; <label>:47:                                     ; preds = %35, %26
  %48 = call i64 @msr_read(i32 -1073741567) #11
  %49 = inttoptr i64 %48 to %struct.cpu*
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 2
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8
  %54 = call i64 @msr_read(i32 -1073741567) #11
  %55 = inttoptr i64 %54 to %struct.cpu*
  %56 = getelementptr inbounds %struct.cpu, %struct.cpu* %55, i64 0, i32 5
  %57 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %56, align 8
  %58 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %57, i64 0, i32 3
  %59 = load %struct.nk_fiber*, %struct.nk_fiber** %58, align 8
  %60 = icmp eq %struct.nk_fiber* %53, %59
  br i1 %60, label %wrapper_nk_fiber_yield.exit, label %61

; <label>:61:                                     ; preds = %47
  %62 = call i64 @msr_read(i32 -1073741567) #11
  %63 = inttoptr i64 %62 to %struct.cpu*
  %64 = getelementptr inbounds %struct.cpu, %struct.cpu* %63, i64 0, i32 5
  %65 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %64, align 8
  %66 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %65, i64 0, i32 3
  %67 = load %struct.nk_fiber*, %struct.nk_fiber** %66, align 8
  br label %68

; <label>:68:                                     ; preds = %61, %35
  %69 = phi %struct.nk_fiber* [ %67, %61 ], [ %37, %35 ]
  %70 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %69) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %47, %68
  %71 = phi i32 [ 1, %2 ], [ 0, %47 ], [ 0, %68 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #10
  %72 = call i8* @kmem_malloc(i64 152) #11
  %73 = icmp eq i8* %72, null
  br i1 %73, label %nk_fiber_create.exit, label %74

; <label>:74:                                     ; preds = %wrapper_nk_fiber_yield.exit
  %75 = call i8* @memset(i8* nonnull %72, i8 signext 0, i64 152) #11
  %76 = getelementptr inbounds i8, i8* %72, i64 44
  %77 = bitcast i8* %76 to i32*
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds i8, i8* %72, i64 24
  %79 = bitcast i8* %78 to i64*
  store i64 2097152, i64* %79, align 8
  %80 = call i8* @kmem_malloc(i64 2097152) #11
  %81 = getelementptr inbounds i8, i8* %72, i64 8
  %82 = bitcast i8* %81 to i8**
  store i8* %80, i8** %82, align 8
  %83 = icmp eq i8* %80, null
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %74
  call void @kmem_free(i8* nonnull %72) #11
  br label %nk_fiber_create.exit

; <label>:85:                                     ; preds = %74
  %86 = ptrtoint i8* %80 to i64
  %87 = getelementptr inbounds i8, i8* %72, i64 120
  %88 = bitcast i8* %87 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber3, void (i8*, i8**)** %88, align 8
  %89 = getelementptr inbounds i8, i8* %72, i64 128
  %90 = bitcast i8* %89 to i8**
  store i8* null, i8** %90, align 8
  %91 = getelementptr inbounds i8, i8* %72, i64 136
  %92 = bitcast i8* %91 to i8***
  store i8** null, i8*** %92, align 8
  %93 = load i64, i64* %79, align 8
  %94 = bitcast i8* %72 to i64*
  %95 = add i64 %86, -8
  %96 = add i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = inttoptr i64 %96 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %97, align 8
  %98 = load i64, i64* %94, align 8
  %99 = add i64 %98, -8
  store i64 %99, i64* %94, align 8
  %100 = inttoptr i64 %99 to i64*
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %94, align 8
  %102 = add i64 %101, -8
  store i64 %102, i64* %94, align 8
  %103 = inttoptr i64 %102 to i64*
  store i64 0, i64* %103, align 8
  %104 = load i64, i64* %94, align 8
  %105 = add i64 %104, -8
  store i64 %105, i64* %94, align 8
  %106 = inttoptr i64 %105 to i64*
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %94, align 8
  %108 = add i64 %107, -8
  store i64 %108, i64* %94, align 8
  %109 = inttoptr i64 %108 to i64*
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %94, align 8
  %111 = add i64 %110, -8
  store i64 %111, i64* %94, align 8
  %112 = inttoptr i64 %111 to i64*
  store i64 0, i64* %112, align 8
  %113 = ptrtoint i8* %72 to i64
  %114 = load i64, i64* %94, align 8
  %115 = add i64 %114, -8
  store i64 %115, i64* %94, align 8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %94, align 8
  %118 = add i64 %117, -8
  store i64 %118, i64* %94, align 8
  %119 = inttoptr i64 %118 to i64*
  store i64 0, i64* %119, align 8
  %120 = load i64, i64* %94, align 8
  %121 = add i64 %120, -8
  store i64 %121, i64* %94, align 8
  %122 = inttoptr i64 %121 to i64*
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %94, align 8
  %124 = add i64 %123, -8
  store i64 %124, i64* %94, align 8
  %125 = inttoptr i64 %124 to i64*
  store i64 0, i64* %125, align 8
  %126 = load i64, i64* %94, align 8
  %127 = add i64 %126, -8
  store i64 %127, i64* %94, align 8
  %128 = inttoptr i64 %127 to i64*
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* %94, align 8
  %130 = add i64 %129, -8
  store i64 %130, i64* %94, align 8
  %131 = inttoptr i64 %130 to i64*
  store i64 0, i64* %131, align 8
  %132 = load i64, i64* %94, align 8
  %133 = add i64 %132, -8
  store i64 %133, i64* %94, align 8
  %134 = inttoptr i64 %133 to i64*
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %94, align 8
  %136 = add i64 %135, -8
  store i64 %136, i64* %94, align 8
  %137 = inttoptr i64 %136 to i64*
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %94, align 8
  %139 = add i64 %138, -8
  store i64 %139, i64* %94, align 8
  %140 = inttoptr i64 %139 to i64*
  store i64 0, i64* %140, align 8
  %141 = load i64, i64* %94, align 8
  %142 = add i64 %141, -8
  store i64 %142, i64* %94, align 8
  %143 = inttoptr i64 %142 to i64*
  store i64 0, i64* %143, align 8
  %144 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %72, i8** %144, align 8
  %145 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %146 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %145, i64 0, i32 24
  %147 = bitcast %struct.nk_virtual_console** %146 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %72, i64 48
  %150 = bitcast i8* %149 to i64*
  store i64 %148, i64* %150, align 8
  %151 = getelementptr inbounds i8, i8* %72, i64 104
  %152 = bitcast i8* %151 to i8**
  store i8* %151, i8** %152, align 8
  %153 = getelementptr inbounds i8, i8* %72, i64 112
  %154 = bitcast i8* %153 to i8**
  store i8* %151, i8** %154, align 8
  %155 = getelementptr inbounds i8, i8* %72, i64 96
  %156 = bitcast i8* %155 to i32*
  store i32 0, i32* %156, align 8
  %157 = getelementptr inbounds i8, i8* %72, i64 64
  %158 = bitcast i8* %157 to i8**
  store i8* %157, i8** %158, align 8
  %159 = getelementptr inbounds i8, i8* %72, i64 72
  %160 = bitcast i8* %159 to i8**
  store i8* %157, i8** %160, align 8
  %161 = getelementptr inbounds i8, i8* %72, i64 80
  %162 = bitcast i8* %161 to i8**
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds i8, i8* %72, i64 88
  %164 = bitcast i8* %163 to i8**
  store i8* %161, i8** %164, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %wrapper_nk_fiber_yield.exit, %84, %85
  %165 = phi i32 [ 0, %85 ], [ -22, %84 ], [ -22, %wrapper_nk_fiber_yield.exit ]
  %166 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %167 = call i32 @nk_fiber_run(%struct.nk_fiber* %166, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #11
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #11
  %13 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %14 = call i64 @msr_read(i32 -1073741567) #11
  %15 = inttoptr i64 %14 to %struct.cpu*
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 1
  %19 = load %struct.nk_thread*, %struct.nk_thread** %18, align 8
  %20 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %21 = icmp eq %struct.nk_thread* %19, %20
  br i1 %21, label %22, label %wrapper_nk_fiber_yield.exit

; <label>:22:                                     ; preds = %2
  %23 = call i64 @msr_read(i32 -1073741567) #11
  %24 = inttoptr i64 %23 to %struct.cpu*
  %25 = getelementptr inbounds %struct.cpu, %struct.cpu* %24, i64 0, i32 5
  %26 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %25, align 8
  %27 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %26, i64 0, i32 4
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 0
  %29 = load %struct.list_head*, %struct.list_head** %28, align 8
  %30 = icmp eq %struct.list_head* %29, %27
  br i1 %30, label %43, label %31

; <label>:31:                                     ; preds = %22
  %32 = getelementptr %struct.list_head, %struct.list_head* %29, i64 -7, i32 1
  %33 = bitcast %struct.list_head** %32 to %struct.nk_fiber*
  %34 = getelementptr inbounds %struct.list_head*, %struct.list_head** %32, i64 13
  %35 = getelementptr inbounds %struct.list_head*, %struct.list_head** %32, i64 14
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  %37 = load %struct.list_head*, %struct.list_head** %34, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i64 0, i32 1
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 0, i32 0
  store %struct.list_head* %37, %struct.list_head** %39, align 8
  %40 = bitcast %struct.list_head** %34 to %struct.list_head***
  store %struct.list_head** %34, %struct.list_head*** %40, align 8
  %41 = bitcast %struct.list_head** %35 to %struct.list_head***
  store %struct.list_head** %34, %struct.list_head*** %41, align 8
  %42 = icmp eq %struct.list_head** %32, null
  br i1 %42, label %43, label %64

; <label>:43:                                     ; preds = %31, %22
  %44 = call i64 @msr_read(i32 -1073741567) #11
  %45 = inttoptr i64 %44 to %struct.cpu*
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8
  %50 = call i64 @msr_read(i32 -1073741567) #11
  %51 = inttoptr i64 %50 to %struct.cpu*
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8
  %56 = icmp eq %struct.nk_fiber* %49, %55
  br i1 %56, label %wrapper_nk_fiber_yield.exit, label %57

; <label>:57:                                     ; preds = %43
  %58 = call i64 @msr_read(i32 -1073741567) #11
  %59 = inttoptr i64 %58 to %struct.cpu*
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8
  br label %64

; <label>:64:                                     ; preds = %57, %31
  %65 = phi %struct.nk_fiber* [ %63, %57 ], [ %33, %31 ]
  %66 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %65) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %43, %64
  %67 = phi i32 [ 1, %2 ], [ 0, %43 ], [ 0, %64 ]
  %68 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #11
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #11
  %70 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #11
  %71 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #10
  %72 = call i8* @kmem_malloc(i64 152) #11
  %73 = icmp eq i8* %72, null
  br i1 %73, label %nk_fiber_create.exit, label %74

; <label>:74:                                     ; preds = %wrapper_nk_fiber_yield.exit
  %75 = call i8* @memset(i8* nonnull %72, i8 signext 0, i64 152) #11
  %76 = getelementptr inbounds i8, i8* %72, i64 44
  %77 = bitcast i8* %76 to i32*
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds i8, i8* %72, i64 24
  %79 = bitcast i8* %78 to i64*
  store i64 2097152, i64* %79, align 8
  %80 = call i8* @kmem_malloc(i64 2097152) #11
  %81 = getelementptr inbounds i8, i8* %72, i64 8
  %82 = bitcast i8* %81 to i8**
  store i8* %80, i8** %82, align 8
  %83 = icmp eq i8* %80, null
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %74
  call void @kmem_free(i8* nonnull %72) #11
  br label %nk_fiber_create.exit

; <label>:85:                                     ; preds = %74
  %86 = ptrtoint i8* %80 to i64
  %87 = getelementptr inbounds i8, i8* %72, i64 120
  %88 = bitcast i8* %87 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber4, void (i8*, i8**)** %88, align 8
  %89 = getelementptr inbounds i8, i8* %72, i64 128
  %90 = bitcast i8* %89 to i8**
  store i8* null, i8** %90, align 8
  %91 = getelementptr inbounds i8, i8* %72, i64 136
  %92 = bitcast i8* %91 to i8***
  store i8** null, i8*** %92, align 8
  %93 = load i64, i64* %79, align 8
  %94 = bitcast i8* %72 to i64*
  %95 = add i64 %86, -8
  %96 = add i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = inttoptr i64 %96 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %97, align 8
  %98 = load i64, i64* %94, align 8
  %99 = add i64 %98, -8
  store i64 %99, i64* %94, align 8
  %100 = inttoptr i64 %99 to i64*
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %94, align 8
  %102 = add i64 %101, -8
  store i64 %102, i64* %94, align 8
  %103 = inttoptr i64 %102 to i64*
  store i64 0, i64* %103, align 8
  %104 = load i64, i64* %94, align 8
  %105 = add i64 %104, -8
  store i64 %105, i64* %94, align 8
  %106 = inttoptr i64 %105 to i64*
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %94, align 8
  %108 = add i64 %107, -8
  store i64 %108, i64* %94, align 8
  %109 = inttoptr i64 %108 to i64*
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %94, align 8
  %111 = add i64 %110, -8
  store i64 %111, i64* %94, align 8
  %112 = inttoptr i64 %111 to i64*
  store i64 0, i64* %112, align 8
  %113 = ptrtoint i8* %72 to i64
  %114 = load i64, i64* %94, align 8
  %115 = add i64 %114, -8
  store i64 %115, i64* %94, align 8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %94, align 8
  %118 = add i64 %117, -8
  store i64 %118, i64* %94, align 8
  %119 = inttoptr i64 %118 to i64*
  store i64 0, i64* %119, align 8
  %120 = load i64, i64* %94, align 8
  %121 = add i64 %120, -8
  store i64 %121, i64* %94, align 8
  %122 = inttoptr i64 %121 to i64*
  store i64 0, i64* %122, align 8
  %123 = load i64, i64* %94, align 8
  %124 = add i64 %123, -8
  store i64 %124, i64* %94, align 8
  %125 = inttoptr i64 %124 to i64*
  store i64 0, i64* %125, align 8
  %126 = load i64, i64* %94, align 8
  %127 = add i64 %126, -8
  store i64 %127, i64* %94, align 8
  %128 = inttoptr i64 %127 to i64*
  store i64 0, i64* %128, align 8
  %129 = load i64, i64* %94, align 8
  %130 = add i64 %129, -8
  store i64 %130, i64* %94, align 8
  %131 = inttoptr i64 %130 to i64*
  store i64 0, i64* %131, align 8
  %132 = load i64, i64* %94, align 8
  %133 = add i64 %132, -8
  store i64 %133, i64* %94, align 8
  %134 = inttoptr i64 %133 to i64*
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %94, align 8
  %136 = add i64 %135, -8
  store i64 %136, i64* %94, align 8
  %137 = inttoptr i64 %136 to i64*
  store i64 0, i64* %137, align 8
  %138 = load i64, i64* %94, align 8
  %139 = add i64 %138, -8
  store i64 %139, i64* %94, align 8
  %140 = inttoptr i64 %139 to i64*
  store i64 0, i64* %140, align 8
  %141 = load i64, i64* %94, align 8
  %142 = add i64 %141, -8
  store i64 %142, i64* %94, align 8
  %143 = inttoptr i64 %142 to i64*
  store i64 0, i64* %143, align 8
  %144 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %72, i8** %144, align 8
  %145 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %146 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %145, i64 0, i32 24
  %147 = bitcast %struct.nk_virtual_console** %146 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %72, i64 48
  %150 = bitcast i8* %149 to i64*
  store i64 %148, i64* %150, align 8
  %151 = getelementptr inbounds i8, i8* %72, i64 104
  %152 = bitcast i8* %151 to i8**
  store i8* %151, i8** %152, align 8
  %153 = getelementptr inbounds i8, i8* %72, i64 112
  %154 = bitcast i8* %153 to i8**
  store i8* %151, i8** %154, align 8
  %155 = getelementptr inbounds i8, i8* %72, i64 96
  %156 = bitcast i8* %155 to i32*
  store i32 0, i32* %156, align 8
  %157 = getelementptr inbounds i8, i8* %72, i64 64
  %158 = bitcast i8* %157 to i8**
  store i8* %157, i8** %158, align 8
  %159 = getelementptr inbounds i8, i8* %72, i64 72
  %160 = bitcast i8* %159 to i8**
  store i8* %157, i8** %160, align 8
  %161 = getelementptr inbounds i8, i8* %72, i64 80
  %162 = bitcast i8* %161 to i8**
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds i8, i8* %72, i64 88
  %164 = bitcast i8* %163 to i8**
  store i8* %161, i8** %164, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %wrapper_nk_fiber_yield.exit, %84, %85
  %165 = phi i32 [ 0, %85 ], [ -22, %84 ], [ -22, %wrapper_nk_fiber_yield.exit ]
  %166 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %167 = call i32 @nk_fiber_run(%struct.nk_fiber* %166, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #10
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #11
  %8 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %2
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber4, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %2, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %2 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #11
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #11
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #11
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #11
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #11
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #11
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #11
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %13 = call i64 @msr_read(i32 -1073741567) #11
  %14 = inttoptr i64 %13 to %struct.cpu*
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 1
  %18 = load %struct.nk_thread*, %struct.nk_thread** %17, align 8
  %19 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %20 = icmp eq %struct.nk_thread* %18, %19
  br i1 %20, label %21, label %wrapper_nk_fiber_yield.exit

; <label>:21:                                     ; preds = %2
  %22 = call i64 @msr_read(i32 -1073741567) #11
  %23 = inttoptr i64 %22 to %struct.cpu*
  %24 = getelementptr inbounds %struct.cpu, %struct.cpu* %23, i64 0, i32 5
  %25 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %24, align 8
  %26 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %25, i64 0, i32 4
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = icmp eq %struct.list_head* %28, %26
  br i1 %29, label %42, label %30

; <label>:30:                                     ; preds = %21
  %31 = getelementptr %struct.list_head, %struct.list_head* %28, i64 -7, i32 1
  %32 = bitcast %struct.list_head** %31 to %struct.nk_fiber*
  %33 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 13
  %34 = getelementptr inbounds %struct.list_head*, %struct.list_head** %31, i64 14
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = load %struct.list_head*, %struct.list_head** %33, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i64 0, i32 1
  store %struct.list_head* %35, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = bitcast %struct.list_head** %33 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %39, align 8
  %40 = bitcast %struct.list_head** %34 to %struct.list_head***
  store %struct.list_head** %33, %struct.list_head*** %40, align 8
  %41 = icmp eq %struct.list_head** %31, null
  br i1 %41, label %42, label %63

; <label>:42:                                     ; preds = %30, %21
  %43 = call i64 @msr_read(i32 -1073741567) #11
  %44 = inttoptr i64 %43 to %struct.cpu*
  %45 = getelementptr inbounds %struct.cpu, %struct.cpu* %44, i64 0, i32 5
  %46 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %45, align 8
  %47 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %46, i64 0, i32 2
  %48 = load %struct.nk_fiber*, %struct.nk_fiber** %47, align 8
  %49 = call i64 @msr_read(i32 -1073741567) #11
  %50 = inttoptr i64 %49 to %struct.cpu*
  %51 = getelementptr inbounds %struct.cpu, %struct.cpu* %50, i64 0, i32 5
  %52 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %51, align 8
  %53 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %52, i64 0, i32 3
  %54 = load %struct.nk_fiber*, %struct.nk_fiber** %53, align 8
  %55 = icmp eq %struct.nk_fiber* %48, %54
  br i1 %55, label %wrapper_nk_fiber_yield.exit, label %56

; <label>:56:                                     ; preds = %42
  %57 = call i64 @msr_read(i32 -1073741567) #11
  %58 = inttoptr i64 %57 to %struct.cpu*
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %30
  %64 = phi %struct.nk_fiber* [ %62, %56 ], [ %32, %30 ]
  %65 = call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %64) #11
  br label %wrapper_nk_fiber_yield.exit

wrapper_nk_fiber_yield.exit:                      ; preds = %2, %42, %63
  %66 = phi i32 [ 1, %2 ], [ 0, %42 ], [ 0, %63 ]
  %67 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #11
  %68 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #11
  %69 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #11
  ret void
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #11
  %6 = add nuw nsw i32 %4, 1
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %3

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ]
  ret i32 %9
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_benchmark1() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast %struct.nk_fiber** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %0
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @benchmark_timer1, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %0 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  %105 = call i8* @kmem_malloc(i64 152) #11
  %106 = icmp eq i8* %105, null
  br i1 %106, label %nk_fiber_create.exit1, label %107

; <label>:107:                                    ; preds = %nk_fiber_create.exit
  %108 = call i8* @memset(i8* nonnull %105, i8 signext 0, i64 152) #11
  %109 = getelementptr inbounds i8, i8* %105, i64 44
  %110 = bitcast i8* %109 to i32*
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds i8, i8* %105, i64 24
  %112 = bitcast i8* %111 to i64*
  store i64 2097152, i64* %112, align 8
  %113 = call i8* @kmem_malloc(i64 2097152) #11
  %114 = getelementptr inbounds i8, i8* %105, i64 8
  %115 = bitcast i8* %114 to i8**
  store i8* %113, i8** %115, align 8
  %116 = icmp eq i8* %113, null
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %107
  call void @kmem_free(i8* nonnull %105) #11
  br label %nk_fiber_create.exit1

; <label>:118:                                    ; preds = %107
  %119 = ptrtoint i8* %113 to i64
  %120 = getelementptr inbounds i8, i8* %105, i64 120
  %121 = bitcast i8* %120 to void (i8*, i8**)**
  store void (i8*, i8**)* @benchmark_timer2, void (i8*, i8**)** %121, align 8
  %122 = getelementptr inbounds i8, i8* %105, i64 128
  %123 = bitcast i8* %122 to i8**
  store i8* null, i8** %123, align 8
  %124 = getelementptr inbounds i8, i8* %105, i64 136
  %125 = bitcast i8* %124 to i8***
  store i8** null, i8*** %125, align 8
  %126 = load i64, i64* %112, align 8
  %127 = bitcast i8* %105 to i64*
  %128 = add i64 %119, -8
  %129 = add i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = inttoptr i64 %129 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %130, align 8
  %131 = load i64, i64* %127, align 8
  %132 = add i64 %131, -8
  store i64 %132, i64* %127, align 8
  %133 = inttoptr i64 %132 to i64*
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %127, align 8
  %135 = add i64 %134, -8
  store i64 %135, i64* %127, align 8
  %136 = inttoptr i64 %135 to i64*
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* %127, align 8
  %138 = add i64 %137, -8
  store i64 %138, i64* %127, align 8
  %139 = inttoptr i64 %138 to i64*
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %127, align 8
  %141 = add i64 %140, -8
  store i64 %141, i64* %127, align 8
  %142 = inttoptr i64 %141 to i64*
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %127, align 8
  %144 = add i64 %143, -8
  store i64 %144, i64* %127, align 8
  %145 = inttoptr i64 %144 to i64*
  store i64 0, i64* %145, align 8
  %146 = ptrtoint i8* %105 to i64
  %147 = load i64, i64* %127, align 8
  %148 = add i64 %147, -8
  store i64 %148, i64* %127, align 8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  %150 = load i64, i64* %127, align 8
  %151 = add i64 %150, -8
  store i64 %151, i64* %127, align 8
  %152 = inttoptr i64 %151 to i64*
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* %127, align 8
  %154 = add i64 %153, -8
  store i64 %154, i64* %127, align 8
  %155 = inttoptr i64 %154 to i64*
  store i64 0, i64* %155, align 8
  %156 = load i64, i64* %127, align 8
  %157 = add i64 %156, -8
  store i64 %157, i64* %127, align 8
  %158 = inttoptr i64 %157 to i64*
  store i64 0, i64* %158, align 8
  %159 = load i64, i64* %127, align 8
  %160 = add i64 %159, -8
  store i64 %160, i64* %127, align 8
  %161 = inttoptr i64 %160 to i64*
  store i64 0, i64* %161, align 8
  %162 = load i64, i64* %127, align 8
  %163 = add i64 %162, -8
  store i64 %163, i64* %127, align 8
  %164 = inttoptr i64 %163 to i64*
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* %127, align 8
  %166 = add i64 %165, -8
  store i64 %166, i64* %127, align 8
  %167 = inttoptr i64 %166 to i64*
  store i64 0, i64* %167, align 8
  %168 = load i64, i64* %127, align 8
  %169 = add i64 %168, -8
  store i64 %169, i64* %127, align 8
  %170 = inttoptr i64 %169 to i64*
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %127, align 8
  %172 = add i64 %171, -8
  store i64 %172, i64* %127, align 8
  %173 = inttoptr i64 %172 to i64*
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* %127, align 8
  %175 = add i64 %174, -8
  store i64 %175, i64* %127, align 8
  %176 = inttoptr i64 %175 to i64*
  store i64 0, i64* %176, align 8
  %177 = bitcast %struct.nk_fiber** %2 to i8**
  store i8* %105, i8** %177, align 8
  %178 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %179 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %178, i64 0, i32 24
  %180 = bitcast %struct.nk_virtual_console** %179 to i64*
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8, i8* %105, i64 48
  %183 = bitcast i8* %182 to i64*
  store i64 %181, i64* %183, align 8
  %184 = getelementptr inbounds i8, i8* %105, i64 104
  %185 = bitcast i8* %184 to i8**
  store i8* %184, i8** %185, align 8
  %186 = getelementptr inbounds i8, i8* %105, i64 112
  %187 = bitcast i8* %186 to i8**
  store i8* %184, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %105, i64 96
  %189 = bitcast i8* %188 to i32*
  store i32 0, i32* %189, align 8
  %190 = getelementptr inbounds i8, i8* %105, i64 64
  %191 = bitcast i8* %190 to i8**
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds i8, i8* %105, i64 72
  %193 = bitcast i8* %192 to i8**
  store i8* %190, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %105, i64 80
  %195 = bitcast i8* %194 to i8**
  store i8* %194, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %105, i64 88
  %197 = bitcast i8* %196 to i8**
  store i8* %194, i8** %197, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %117, %118
  %198 = phi i32 [ 0, %118 ], [ -22, %117 ], [ -22, %nk_fiber_create.exit ]
  %199 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8
  %200 = call i32 @nk_fiber_run(%struct.nk_fiber* %199, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast %struct.nk_fiber** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %0
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @print_even, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %0 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  %105 = call i8* @kmem_malloc(i64 152) #11
  %106 = icmp eq i8* %105, null
  br i1 %106, label %nk_fiber_create.exit1, label %107

; <label>:107:                                    ; preds = %nk_fiber_create.exit
  %108 = call i8* @memset(i8* nonnull %105, i8 signext 0, i64 152) #11
  %109 = getelementptr inbounds i8, i8* %105, i64 44
  %110 = bitcast i8* %109 to i32*
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds i8, i8* %105, i64 24
  %112 = bitcast i8* %111 to i64*
  store i64 2097152, i64* %112, align 8
  %113 = call i8* @kmem_malloc(i64 2097152) #11
  %114 = getelementptr inbounds i8, i8* %105, i64 8
  %115 = bitcast i8* %114 to i8**
  store i8* %113, i8** %115, align 8
  %116 = icmp eq i8* %113, null
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %107
  call void @kmem_free(i8* nonnull %105) #11
  br label %nk_fiber_create.exit1

; <label>:118:                                    ; preds = %107
  %119 = ptrtoint i8* %113 to i64
  %120 = getelementptr inbounds i8, i8* %105, i64 120
  %121 = bitcast i8* %120 to void (i8*, i8**)**
  store void (i8*, i8**)* @print_odd, void (i8*, i8**)** %121, align 8
  %122 = getelementptr inbounds i8, i8* %105, i64 128
  %123 = bitcast i8* %122 to i8**
  store i8* null, i8** %123, align 8
  %124 = getelementptr inbounds i8, i8* %105, i64 136
  %125 = bitcast i8* %124 to i8***
  store i8** null, i8*** %125, align 8
  %126 = load i64, i64* %112, align 8
  %127 = bitcast i8* %105 to i64*
  %128 = add i64 %119, -8
  %129 = add i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = inttoptr i64 %129 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %130, align 8
  %131 = load i64, i64* %127, align 8
  %132 = add i64 %131, -8
  store i64 %132, i64* %127, align 8
  %133 = inttoptr i64 %132 to i64*
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %127, align 8
  %135 = add i64 %134, -8
  store i64 %135, i64* %127, align 8
  %136 = inttoptr i64 %135 to i64*
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* %127, align 8
  %138 = add i64 %137, -8
  store i64 %138, i64* %127, align 8
  %139 = inttoptr i64 %138 to i64*
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %127, align 8
  %141 = add i64 %140, -8
  store i64 %141, i64* %127, align 8
  %142 = inttoptr i64 %141 to i64*
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %127, align 8
  %144 = add i64 %143, -8
  store i64 %144, i64* %127, align 8
  %145 = inttoptr i64 %144 to i64*
  store i64 0, i64* %145, align 8
  %146 = ptrtoint i8* %105 to i64
  %147 = load i64, i64* %127, align 8
  %148 = add i64 %147, -8
  store i64 %148, i64* %127, align 8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  %150 = load i64, i64* %127, align 8
  %151 = add i64 %150, -8
  store i64 %151, i64* %127, align 8
  %152 = inttoptr i64 %151 to i64*
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* %127, align 8
  %154 = add i64 %153, -8
  store i64 %154, i64* %127, align 8
  %155 = inttoptr i64 %154 to i64*
  store i64 0, i64* %155, align 8
  %156 = load i64, i64* %127, align 8
  %157 = add i64 %156, -8
  store i64 %157, i64* %127, align 8
  %158 = inttoptr i64 %157 to i64*
  store i64 0, i64* %158, align 8
  %159 = load i64, i64* %127, align 8
  %160 = add i64 %159, -8
  store i64 %160, i64* %127, align 8
  %161 = inttoptr i64 %160 to i64*
  store i64 0, i64* %161, align 8
  %162 = load i64, i64* %127, align 8
  %163 = add i64 %162, -8
  store i64 %163, i64* %127, align 8
  %164 = inttoptr i64 %163 to i64*
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* %127, align 8
  %166 = add i64 %165, -8
  store i64 %166, i64* %127, align 8
  %167 = inttoptr i64 %166 to i64*
  store i64 0, i64* %167, align 8
  %168 = load i64, i64* %127, align 8
  %169 = add i64 %168, -8
  store i64 %169, i64* %127, align 8
  %170 = inttoptr i64 %169 to i64*
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %127, align 8
  %172 = add i64 %171, -8
  store i64 %172, i64* %127, align 8
  %173 = inttoptr i64 %172 to i64*
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* %127, align 8
  %175 = add i64 %174, -8
  store i64 %175, i64* %127, align 8
  %176 = inttoptr i64 %175 to i64*
  store i64 0, i64* %176, align 8
  %177 = bitcast %struct.nk_fiber** %2 to i8**
  store i8* %105, i8** %177, align 8
  %178 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %179 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %178, i64 0, i32 24
  %180 = bitcast %struct.nk_virtual_console** %179 to i64*
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8, i8* %105, i64 48
  %183 = bitcast i8* %182 to i64*
  store i64 %181, i64* %183, align 8
  %184 = getelementptr inbounds i8, i8* %105, i64 104
  %185 = bitcast i8* %184 to i8**
  store i8* %184, i8** %185, align 8
  %186 = getelementptr inbounds i8, i8* %105, i64 112
  %187 = bitcast i8* %186 to i8**
  store i8* %184, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %105, i64 96
  %189 = bitcast i8* %188 to i32*
  store i32 0, i32* %189, align 8
  %190 = getelementptr inbounds i8, i8* %105, i64 64
  %191 = bitcast i8* %190 to i8**
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds i8, i8* %105, i64 72
  %193 = bitcast i8* %192 to i8**
  store i8* %190, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %105, i64 80
  %195 = bitcast i8* %194 to i8**
  store i8* %194, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %105, i64 88
  %197 = bitcast i8* %196 to i8**
  store i8* %194, i8** %197, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %117, %118
  %198 = phi i32 [ 0, %118 ], [ -22, %117 ], [ -22, %nk_fiber_create.exit ]
  %199 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8
  %200 = call i32 @nk_fiber_run(%struct.nk_fiber* %199, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_outer, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = bitcast %struct.nk_fiber** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10
  %6 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %9) #11
  %11 = call i8* @kmem_malloc(i64 152) #11
  %12 = icmp eq i8* %11, null
  br i1 %12, label %nk_fiber_create.exit1, label %13

; <label>:13:                                     ; preds = %0
  %14 = call i8* @memset(i8* nonnull %11, i8 signext 0, i64 152) #11
  %15 = getelementptr inbounds i8, i8* %11, i64 44
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i8, i8* %11, i64 24
  %18 = bitcast i8* %17 to i64*
  store i64 2097152, i64* %18, align 8
  %19 = call i8* @kmem_malloc(i64 2097152) #11
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = icmp eq i8* %19, null
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %13
  call void @kmem_free(i8* nonnull %11) #11
  br label %nk_fiber_create.exit1

; <label>:24:                                     ; preds = %13
  %25 = ptrtoint i8* %19 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 120
  %27 = bitcast i8* %26 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber1, void (i8*, i8**)** %27, align 8
  %28 = getelementptr inbounds i8, i8* %11, i64 128
  %29 = bitcast i8* %28 to i8**
  store i8* null, i8** %29, align 8
  %30 = getelementptr inbounds i8, i8* %11, i64 136
  %31 = bitcast i8* %30 to i8***
  store i8** null, i8*** %31, align 8
  %32 = load i64, i64* %18, align 8
  %33 = bitcast i8* %11 to i64*
  %34 = add i64 %25, -8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %36, align 8
  %37 = load i64, i64* %33, align 8
  %38 = add i64 %37, -8
  store i64 %38, i64* %33, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %33, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %33, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %33, align 8
  %44 = add i64 %43, -8
  store i64 %44, i64* %33, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %33, align 8
  %47 = add i64 %46, -8
  store i64 %47, i64* %33, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %33, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %33, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 0, i64* %51, align 8
  %52 = ptrtoint i8* %11 to i64
  %53 = load i64, i64* %33, align 8
  %54 = add i64 %53, -8
  store i64 %54, i64* %33, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %33, align 8
  %57 = add i64 %56, -8
  store i64 %57, i64* %33, align 8
  %58 = inttoptr i64 %57 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %33, align 8
  %60 = add i64 %59, -8
  store i64 %60, i64* %33, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %33, align 8
  %63 = add i64 %62, -8
  store i64 %63, i64* %33, align 8
  %64 = inttoptr i64 %63 to i64*
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %33, align 8
  %66 = add i64 %65, -8
  store i64 %66, i64* %33, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %33, align 8
  %69 = add i64 %68, -8
  store i64 %69, i64* %33, align 8
  %70 = inttoptr i64 %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %33, align 8
  %72 = add i64 %71, -8
  store i64 %72, i64* %33, align 8
  %73 = inttoptr i64 %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %33, align 8
  %75 = add i64 %74, -8
  store i64 %75, i64* %33, align 8
  %76 = inttoptr i64 %75 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %33, align 8
  %78 = add i64 %77, -8
  store i64 %78, i64* %33, align 8
  %79 = inttoptr i64 %78 to i64*
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* %33, align 8
  %81 = add i64 %80, -8
  store i64 %81, i64* %33, align 8
  %82 = inttoptr i64 %81 to i64*
  store i64 0, i64* %82, align 8
  %83 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %11, i8** %83, align 8
  %84 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %11, i64 48
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds i8, i8* %11, i64 104
  %91 = bitcast i8* %90 to i8**
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %11, i64 112
  %93 = bitcast i8* %92 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %11, i64 96
  %95 = bitcast i8* %94 to i32*
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds i8, i8* %11, i64 64
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %11, i64 72
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %11, i64 80
  %101 = bitcast i8* %100 to i8**
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %11, i64 88
  %103 = bitcast i8* %102 to i8**
  store i8* %100, i8** %103, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %0, %23, %24
  %104 = phi i32 [ 0, %24 ], [ -22, %23 ], [ -22, %0 ]
  %105 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %106 = call i32 @nk_fiber_run(%struct.nk_fiber* %105, i8 zeroext 1) #11
  %107 = call i8* @kmem_malloc(i64 152) #11
  %108 = icmp eq i8* %107, null
  br i1 %108, label %nk_fiber_create.exit2, label %109

; <label>:109:                                    ; preds = %nk_fiber_create.exit1
  %110 = call i8* @memset(i8* nonnull %107, i8 signext 0, i64 152) #11
  %111 = getelementptr inbounds i8, i8* %107, i64 44
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds i8, i8* %107, i64 24
  %114 = bitcast i8* %113 to i64*
  store i64 2097152, i64* %114, align 8
  %115 = call i8* @kmem_malloc(i64 2097152) #11
  %116 = getelementptr inbounds i8, i8* %107, i64 8
  %117 = bitcast i8* %116 to i8**
  store i8* %115, i8** %117, align 8
  %118 = icmp eq i8* %115, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %109
  call void @kmem_free(i8* nonnull %107) #11
  br label %nk_fiber_create.exit2

; <label>:120:                                    ; preds = %109
  %121 = ptrtoint i8* %115 to i64
  %122 = getelementptr inbounds i8, i8* %107, i64 120
  %123 = bitcast i8* %122 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber2, void (i8*, i8**)** %123, align 8
  %124 = getelementptr inbounds i8, i8* %107, i64 128
  %125 = bitcast i8* %124 to i8**
  store i8* null, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %107, i64 136
  %127 = bitcast i8* %126 to i8***
  store i8** null, i8*** %127, align 8
  %128 = load i64, i64* %114, align 8
  %129 = bitcast i8* %107 to i64*
  %130 = add i64 %121, -8
  %131 = add i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %132, align 8
  %133 = load i64, i64* %129, align 8
  %134 = add i64 %133, -8
  store i64 %134, i64* %129, align 8
  %135 = inttoptr i64 %134 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %129, align 8
  %137 = add i64 %136, -8
  store i64 %137, i64* %129, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %129, align 8
  %140 = add i64 %139, -8
  store i64 %140, i64* %129, align 8
  %141 = inttoptr i64 %140 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %129, align 8
  %143 = add i64 %142, -8
  store i64 %143, i64* %129, align 8
  %144 = inttoptr i64 %143 to i64*
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* %129, align 8
  %146 = add i64 %145, -8
  store i64 %146, i64* %129, align 8
  %147 = inttoptr i64 %146 to i64*
  store i64 0, i64* %147, align 8
  %148 = ptrtoint i8* %107 to i64
  %149 = load i64, i64* %129, align 8
  %150 = add i64 %149, -8
  store i64 %150, i64* %129, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %129, align 8
  %153 = add i64 %152, -8
  store i64 %153, i64* %129, align 8
  %154 = inttoptr i64 %153 to i64*
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %129, align 8
  %156 = add i64 %155, -8
  store i64 %156, i64* %129, align 8
  %157 = inttoptr i64 %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load i64, i64* %129, align 8
  %159 = add i64 %158, -8
  store i64 %159, i64* %129, align 8
  %160 = inttoptr i64 %159 to i64*
  store i64 0, i64* %160, align 8
  %161 = load i64, i64* %129, align 8
  %162 = add i64 %161, -8
  store i64 %162, i64* %129, align 8
  %163 = inttoptr i64 %162 to i64*
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %129, align 8
  %165 = add i64 %164, -8
  store i64 %165, i64* %129, align 8
  %166 = inttoptr i64 %165 to i64*
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %129, align 8
  %168 = add i64 %167, -8
  store i64 %168, i64* %129, align 8
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169, align 8
  %170 = load i64, i64* %129, align 8
  %171 = add i64 %170, -8
  store i64 %171, i64* %129, align 8
  %172 = inttoptr i64 %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %129, align 8
  %174 = add i64 %173, -8
  store i64 %174, i64* %129, align 8
  %175 = inttoptr i64 %174 to i64*
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %129, align 8
  %177 = add i64 %176, -8
  store i64 %177, i64* %129, align 8
  %178 = inttoptr i64 %177 to i64*
  store i64 0, i64* %178, align 8
  %179 = bitcast %struct.nk_fiber** %2 to i8**
  store i8* %107, i8** %179, align 8
  %180 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %181 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %180, i64 0, i32 24
  %182 = bitcast %struct.nk_virtual_console** %181 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8, i8* %107, i64 48
  %185 = bitcast i8* %184 to i64*
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds i8, i8* %107, i64 104
  %187 = bitcast i8* %186 to i8**
  store i8* %186, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %107, i64 112
  %189 = bitcast i8* %188 to i8**
  store i8* %186, i8** %189, align 8
  %190 = getelementptr inbounds i8, i8* %107, i64 96
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds i8, i8* %107, i64 64
  %193 = bitcast i8* %192 to i8**
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %107, i64 72
  %195 = bitcast i8* %194 to i8**
  store i8* %192, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %107, i64 80
  %197 = bitcast i8* %196 to i8**
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds i8, i8* %107, i64 88
  %199 = bitcast i8* %198 to i8**
  store i8* %196, i8** %199, align 8
  br label %nk_fiber_create.exit2

nk_fiber_create.exit2:                            ; preds = %nk_fiber_create.exit1, %119, %120
  %200 = phi i32 [ 0, %120 ], [ -22, %119 ], [ -22, %nk_fiber_create.exit1 ]
  %201 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8
  %202 = call i32 @nk_fiber_run(%struct.nk_fiber* %201, i8 zeroext 1) #11
  %203 = call i8* @kmem_malloc(i64 152) #11
  %204 = icmp eq i8* %203, null
  br i1 %204, label %nk_fiber_create.exit, label %205

; <label>:205:                                    ; preds = %nk_fiber_create.exit2
  %206 = call i8* @memset(i8* nonnull %203, i8 signext 0, i64 152) #11
  %207 = getelementptr inbounds i8, i8* %203, i64 44
  %208 = bitcast i8* %207 to i32*
  store i32 0, i32* %208, align 4
  %209 = getelementptr inbounds i8, i8* %203, i64 24
  %210 = bitcast i8* %209 to i64*
  store i64 2097152, i64* %210, align 8
  %211 = call i8* @kmem_malloc(i64 2097152) #11
  %212 = getelementptr inbounds i8, i8* %203, i64 8
  %213 = bitcast i8* %212 to i8**
  store i8* %211, i8** %213, align 8
  %214 = icmp eq i8* %211, null
  br i1 %214, label %215, label %216

; <label>:215:                                    ; preds = %205
  call void @kmem_free(i8* nonnull %203) #11
  br label %nk_fiber_create.exit

; <label>:216:                                    ; preds = %205
  %217 = ptrtoint i8* %211 to i64
  %218 = getelementptr inbounds i8, i8* %203, i64 120
  %219 = bitcast i8* %218 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber3, void (i8*, i8**)** %219, align 8
  %220 = getelementptr inbounds i8, i8* %203, i64 128
  %221 = bitcast i8* %220 to i8**
  store i8* null, i8** %221, align 8
  %222 = getelementptr inbounds i8, i8* %203, i64 136
  %223 = bitcast i8* %222 to i8***
  store i8** null, i8*** %223, align 8
  %224 = load i64, i64* %210, align 8
  %225 = bitcast i8* %203 to i64*
  %226 = add i64 %217, -8
  %227 = add i64 %226, %224
  store i64 %227, i64* %225, align 8
  %228 = inttoptr i64 %227 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %228, align 8
  %229 = load i64, i64* %225, align 8
  %230 = add i64 %229, -8
  store i64 %230, i64* %225, align 8
  %231 = inttoptr i64 %230 to i64*
  store i64 0, i64* %231, align 8
  %232 = load i64, i64* %225, align 8
  %233 = add i64 %232, -8
  store i64 %233, i64* %225, align 8
  %234 = inttoptr i64 %233 to i64*
  store i64 0, i64* %234, align 8
  %235 = load i64, i64* %225, align 8
  %236 = add i64 %235, -8
  store i64 %236, i64* %225, align 8
  %237 = inttoptr i64 %236 to i64*
  store i64 0, i64* %237, align 8
  %238 = load i64, i64* %225, align 8
  %239 = add i64 %238, -8
  store i64 %239, i64* %225, align 8
  %240 = inttoptr i64 %239 to i64*
  store i64 0, i64* %240, align 8
  %241 = load i64, i64* %225, align 8
  %242 = add i64 %241, -8
  store i64 %242, i64* %225, align 8
  %243 = inttoptr i64 %242 to i64*
  store i64 0, i64* %243, align 8
  %244 = ptrtoint i8* %203 to i64
  %245 = load i64, i64* %225, align 8
  %246 = add i64 %245, -8
  store i64 %246, i64* %225, align 8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  %248 = load i64, i64* %225, align 8
  %249 = add i64 %248, -8
  store i64 %249, i64* %225, align 8
  %250 = inttoptr i64 %249 to i64*
  store i64 0, i64* %250, align 8
  %251 = load i64, i64* %225, align 8
  %252 = add i64 %251, -8
  store i64 %252, i64* %225, align 8
  %253 = inttoptr i64 %252 to i64*
  store i64 0, i64* %253, align 8
  %254 = load i64, i64* %225, align 8
  %255 = add i64 %254, -8
  store i64 %255, i64* %225, align 8
  %256 = inttoptr i64 %255 to i64*
  store i64 0, i64* %256, align 8
  %257 = load i64, i64* %225, align 8
  %258 = add i64 %257, -8
  store i64 %258, i64* %225, align 8
  %259 = inttoptr i64 %258 to i64*
  store i64 0, i64* %259, align 8
  %260 = load i64, i64* %225, align 8
  %261 = add i64 %260, -8
  store i64 %261, i64* %225, align 8
  %262 = inttoptr i64 %261 to i64*
  store i64 0, i64* %262, align 8
  %263 = load i64, i64* %225, align 8
  %264 = add i64 %263, -8
  store i64 %264, i64* %225, align 8
  %265 = inttoptr i64 %264 to i64*
  store i64 0, i64* %265, align 8
  %266 = load i64, i64* %225, align 8
  %267 = add i64 %266, -8
  store i64 %267, i64* %225, align 8
  %268 = inttoptr i64 %267 to i64*
  store i64 0, i64* %268, align 8
  %269 = load i64, i64* %225, align 8
  %270 = add i64 %269, -8
  store i64 %270, i64* %225, align 8
  %271 = inttoptr i64 %270 to i64*
  store i64 0, i64* %271, align 8
  %272 = load i64, i64* %225, align 8
  %273 = add i64 %272, -8
  store i64 %273, i64* %225, align 8
  %274 = inttoptr i64 %273 to i64*
  store i64 0, i64* %274, align 8
  %275 = bitcast %struct.nk_fiber** %3 to i8**
  store i8* %203, i8** %275, align 8
  %276 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %277 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %276, i64 0, i32 24
  %278 = bitcast %struct.nk_virtual_console** %277 to i64*
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds i8, i8* %203, i64 48
  %281 = bitcast i8* %280 to i64*
  store i64 %279, i64* %281, align 8
  %282 = getelementptr inbounds i8, i8* %203, i64 104
  %283 = bitcast i8* %282 to i8**
  store i8* %282, i8** %283, align 8
  %284 = getelementptr inbounds i8, i8* %203, i64 112
  %285 = bitcast i8* %284 to i8**
  store i8* %282, i8** %285, align 8
  %286 = getelementptr inbounds i8, i8* %203, i64 96
  %287 = bitcast i8* %286 to i32*
  store i32 0, i32* %287, align 8
  %288 = getelementptr inbounds i8, i8* %203, i64 64
  %289 = bitcast i8* %288 to i8**
  store i8* %288, i8** %289, align 8
  %290 = getelementptr inbounds i8, i8* %203, i64 72
  %291 = bitcast i8* %290 to i8**
  store i8* %288, i8** %291, align 8
  %292 = getelementptr inbounds i8, i8* %203, i64 80
  %293 = bitcast i8* %292 to i8**
  store i8* %292, i8** %293, align 8
  %294 = getelementptr inbounds i8, i8* %203, i64 88
  %295 = bitcast i8* %294 to i8**
  store i8* %292, i8** %295, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %nk_fiber_create.exit2, %215, %216
  %296 = phi i32 [ 0, %216 ], [ -22, %215 ], [ -22, %nk_fiber_create.exit2 ]
  %297 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8
  %298 = call i32 @nk_fiber_run(%struct.nk_fiber* %297, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_outer_join, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_fork, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_fork_join, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_routine1, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %5) #11
  %7 = call i8* @kmem_malloc(i64 152) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %nk_fiber_create.exit, label %9

; <label>:9:                                      ; preds = %0
  %10 = call i8* @memset(i8* nonnull %7, i8 signext 0, i64 152) #11
  %11 = getelementptr inbounds i8, i8* %7, i64 44
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i8, i8* %7, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 2097152, i64* %14, align 8
  %15 = call i8* @kmem_malloc(i64 2097152) #11
  %16 = getelementptr inbounds i8, i8* %7, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %9
  call void @kmem_free(i8* nonnull %7) #11
  br label %nk_fiber_create.exit

; <label>:20:                                     ; preds = %9
  %21 = ptrtoint i8* %15 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 120
  %23 = bitcast i8* %22 to void (i8*, i8**)**
  store void (i8*, i8**)* @fiber_routine3, void (i8*, i8**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %7, i64 128
  %25 = bitcast i8* %24 to i8**
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 136
  %27 = bitcast i8* %26 to i8***
  store i8** null, i8*** %27, align 8
  %28 = load i64, i64* %14, align 8
  %29 = bitcast i8* %7 to i64*
  %30 = add i64 %21, -8
  %31 = add i64 %30, %28
  store i64 %31, i64* %29, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %32, align 8
  %33 = load i64, i64* %29, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %29, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %29, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %29, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %29, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %29, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %29, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %29, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %29, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %29, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = ptrtoint i8* %7 to i64
  %49 = load i64, i64* %29, align 8
  %50 = add i64 %49, -8
  store i64 %50, i64* %29, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, -8
  store i64 %53, i64* %29, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %29, align 8
  %56 = add i64 %55, -8
  store i64 %56, i64* %29, align 8
  %57 = inttoptr i64 %56 to i64*
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %29, align 8
  %59 = add i64 %58, -8
  store i64 %59, i64* %29, align 8
  %60 = inttoptr i64 %59 to i64*
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %29, align 8
  %62 = add i64 %61, -8
  store i64 %62, i64* %29, align 8
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, -8
  store i64 %65, i64* %29, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %29, align 8
  %68 = add i64 %67, -8
  store i64 %68, i64* %29, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %29, align 8
  %71 = add i64 %70, -8
  store i64 %71, i64* %29, align 8
  %72 = inttoptr i64 %71 to i64*
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %29, align 8
  %74 = add i64 %73, -8
  store i64 %74, i64* %29, align 8
  %75 = inttoptr i64 %74 to i64*
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* %29, align 8
  %77 = add i64 %76, -8
  store i64 %77, i64* %29, align 8
  %78 = inttoptr i64 %77 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %7, i8** %79, align 8
  %80 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %81 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %80, i64 0, i32 24
  %82 = bitcast %struct.nk_virtual_console** %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %7, i64 48
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds i8, i8* %7, i64 104
  %87 = bitcast i8* %86 to i8**
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %7, i64 112
  %89 = bitcast i8* %88 to i8**
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %7, i64 96
  %91 = bitcast i8* %90 to i32*
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds i8, i8* %7, i64 64
  %93 = bitcast i8* %92 to i8**
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 72
  %95 = bitcast i8* %94 to i8**
  store i8* %92, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %7, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %7, i64 88
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %19, %20
  %100 = phi i32 [ 0, %20 ], [ -22, %19 ], [ -22, %0 ]
  %101 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %102 = call i32 @nk_fiber_run(%struct.nk_fiber* %101, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast %struct.nk_fiber** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !5
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8
  %9 = call i8* @kmem_malloc(i64 152) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %nk_fiber_create.exit, label %11

; <label>:11:                                     ; preds = %0
  %12 = call i8* @memset(i8* nonnull %9, i8 signext 0, i64 152) #11
  %13 = getelementptr inbounds i8, i8* %9, i64 44
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i8, i8* %9, i64 24
  %16 = bitcast i8* %15 to i64*
  store i64 2097152, i64* %16, align 8
  %17 = call i8* @kmem_malloc(i64 2097152) #11
  %18 = getelementptr inbounds i8, i8* %9, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %11
  call void @kmem_free(i8* nonnull %9) #11
  br label %nk_fiber_create.exit

; <label>:22:                                     ; preds = %11
  %23 = ptrtoint i8* %17 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 120
  %25 = bitcast i8* %24 to void (i8*, i8**)**
  store void (i8*, i8**)* @first_timer, void (i8*, i8**)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %9, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8, i8* %9, i64 136
  %29 = bitcast i8* %28 to i8***
  store i8** null, i8*** %29, align 8
  %30 = load i64, i64* %16, align 8
  %31 = bitcast i8* %9 to i64*
  %32 = add i64 %23, -8
  %33 = add i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %34, align 8
  %35 = load i64, i64* %31, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %31, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %31, align 8
  %39 = add i64 %38, -8
  store i64 %39, i64* %31, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %31, align 8
  %42 = add i64 %41, -8
  store i64 %42, i64* %31, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %31, align 8
  %45 = add i64 %44, -8
  store i64 %45, i64* %31, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %31, align 8
  %48 = add i64 %47, -8
  store i64 %48, i64* %31, align 8
  %49 = inttoptr i64 %48 to i64*
  store i64 0, i64* %49, align 8
  %50 = ptrtoint i8* %9 to i64
  %51 = load i64, i64* %31, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %31, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %31, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %31, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %31, align 8
  %58 = add i64 %57, -8
  store i64 %58, i64* %31, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %31, align 8
  %61 = add i64 %60, -8
  store i64 %61, i64* %31, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %31, align 8
  %64 = add i64 %63, -8
  store i64 %64, i64* %31, align 8
  %65 = inttoptr i64 %64 to i64*
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* %31, align 8
  %67 = add i64 %66, -8
  store i64 %67, i64* %31, align 8
  %68 = inttoptr i64 %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %31, align 8
  %70 = add i64 %69, -8
  store i64 %70, i64* %31, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = load i64, i64* %31, align 8
  %73 = add i64 %72, -8
  store i64 %73, i64* %31, align 8
  %74 = inttoptr i64 %73 to i64*
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %31, align 8
  %76 = add i64 %75, -8
  store i64 %76, i64* %31, align 8
  %77 = inttoptr i64 %76 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i64, i64* %31, align 8
  %79 = add i64 %78, -8
  store i64 %79, i64* %31, align 8
  %80 = inttoptr i64 %79 to i64*
  store i64 0, i64* %80, align 8
  %81 = bitcast %struct.nk_fiber** %1 to i8**
  store i8* %9, i8** %81, align 8
  %82 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %83 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %82, i64 0, i32 24
  %84 = bitcast %struct.nk_virtual_console** %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %9, i64 48
  %87 = bitcast i8* %86 to i64*
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds i8, i8* %9, i64 104
  %89 = bitcast i8* %88 to i8**
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %9, i64 112
  %91 = bitcast i8* %90 to i8**
  store i8* %88, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %9, i64 96
  %93 = bitcast i8* %92 to i32*
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds i8, i8* %9, i64 64
  %95 = bitcast i8* %94 to i8**
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds i8, i8* %9, i64 72
  %97 = bitcast i8* %96 to i8**
  store i8* %94, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %9, i64 80
  %99 = bitcast i8* %98 to i8**
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %9, i64 88
  %101 = bitcast i8* %100 to i8**
  store i8* %98, i8** %101, align 8
  br label %nk_fiber_create.exit

nk_fiber_create.exit:                             ; preds = %0, %21, %22
  %102 = phi i32 [ 0, %22 ], [ -22, %21 ], [ -22, %0 ]
  %103 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %104 = call i32 @nk_fiber_run(%struct.nk_fiber* %103, i8 zeroext 1) #11
  %105 = call i8* @kmem_malloc(i64 152) #11
  %106 = icmp eq i8* %105, null
  br i1 %106, label %nk_fiber_create.exit1, label %107

; <label>:107:                                    ; preds = %nk_fiber_create.exit
  %108 = call i8* @memset(i8* nonnull %105, i8 signext 0, i64 152) #11
  %109 = getelementptr inbounds i8, i8* %105, i64 44
  %110 = bitcast i8* %109 to i32*
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds i8, i8* %105, i64 24
  %112 = bitcast i8* %111 to i64*
  store i64 2097152, i64* %112, align 8
  %113 = call i8* @kmem_malloc(i64 2097152) #11
  %114 = getelementptr inbounds i8, i8* %105, i64 8
  %115 = bitcast i8* %114 to i8**
  store i8* %113, i8** %115, align 8
  %116 = icmp eq i8* %113, null
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %107
  call void @kmem_free(i8* nonnull %105) #11
  br label %nk_fiber_create.exit1

; <label>:118:                                    ; preds = %107
  %119 = ptrtoint i8* %113 to i64
  %120 = getelementptr inbounds i8, i8* %105, i64 120
  %121 = bitcast i8* %120 to void (i8*, i8**)**
  store void (i8*, i8**)* @second_timer, void (i8*, i8**)** %121, align 8
  %122 = getelementptr inbounds i8, i8* %105, i64 128
  %123 = bitcast i8* %122 to i8**
  store i8* null, i8** %123, align 8
  %124 = getelementptr inbounds i8, i8* %105, i64 136
  %125 = bitcast i8* %124 to i8***
  store i8** null, i8*** %125, align 8
  %126 = load i64, i64* %112, align 8
  %127 = bitcast i8* %105 to i64*
  %128 = add i64 %119, -8
  %129 = add i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = inttoptr i64 %129 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %130, align 8
  %131 = load i64, i64* %127, align 8
  %132 = add i64 %131, -8
  store i64 %132, i64* %127, align 8
  %133 = inttoptr i64 %132 to i64*
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %127, align 8
  %135 = add i64 %134, -8
  store i64 %135, i64* %127, align 8
  %136 = inttoptr i64 %135 to i64*
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* %127, align 8
  %138 = add i64 %137, -8
  store i64 %138, i64* %127, align 8
  %139 = inttoptr i64 %138 to i64*
  store i64 0, i64* %139, align 8
  %140 = load i64, i64* %127, align 8
  %141 = add i64 %140, -8
  store i64 %141, i64* %127, align 8
  %142 = inttoptr i64 %141 to i64*
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %127, align 8
  %144 = add i64 %143, -8
  store i64 %144, i64* %127, align 8
  %145 = inttoptr i64 %144 to i64*
  store i64 0, i64* %145, align 8
  %146 = ptrtoint i8* %105 to i64
  %147 = load i64, i64* %127, align 8
  %148 = add i64 %147, -8
  store i64 %148, i64* %127, align 8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  %150 = load i64, i64* %127, align 8
  %151 = add i64 %150, -8
  store i64 %151, i64* %127, align 8
  %152 = inttoptr i64 %151 to i64*
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* %127, align 8
  %154 = add i64 %153, -8
  store i64 %154, i64* %127, align 8
  %155 = inttoptr i64 %154 to i64*
  store i64 0, i64* %155, align 8
  %156 = load i64, i64* %127, align 8
  %157 = add i64 %156, -8
  store i64 %157, i64* %127, align 8
  %158 = inttoptr i64 %157 to i64*
  store i64 0, i64* %158, align 8
  %159 = load i64, i64* %127, align 8
  %160 = add i64 %159, -8
  store i64 %160, i64* %127, align 8
  %161 = inttoptr i64 %160 to i64*
  store i64 0, i64* %161, align 8
  %162 = load i64, i64* %127, align 8
  %163 = add i64 %162, -8
  store i64 %163, i64* %127, align 8
  %164 = inttoptr i64 %163 to i64*
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* %127, align 8
  %166 = add i64 %165, -8
  store i64 %166, i64* %127, align 8
  %167 = inttoptr i64 %166 to i64*
  store i64 0, i64* %167, align 8
  %168 = load i64, i64* %127, align 8
  %169 = add i64 %168, -8
  store i64 %169, i64* %127, align 8
  %170 = inttoptr i64 %169 to i64*
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %127, align 8
  %172 = add i64 %171, -8
  store i64 %172, i64* %127, align 8
  %173 = inttoptr i64 %172 to i64*
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* %127, align 8
  %175 = add i64 %174, -8
  store i64 %175, i64* %127, align 8
  %176 = inttoptr i64 %175 to i64*
  store i64 0, i64* %176, align 8
  %177 = bitcast %struct.nk_fiber** %2 to i8**
  store i8* %105, i8** %177, align 8
  %178 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %179 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %178, i64 0, i32 24
  %180 = bitcast %struct.nk_virtual_console** %179 to i64*
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8, i8* %105, i64 48
  %183 = bitcast i8* %182 to i64*
  store i64 %181, i64* %183, align 8
  %184 = getelementptr inbounds i8, i8* %105, i64 104
  %185 = bitcast i8* %184 to i8**
  store i8* %184, i8** %185, align 8
  %186 = getelementptr inbounds i8, i8* %105, i64 112
  %187 = bitcast i8* %186 to i8**
  store i8* %184, i8** %187, align 8
  %188 = getelementptr inbounds i8, i8* %105, i64 96
  %189 = bitcast i8* %188 to i32*
  store i32 0, i32* %189, align 8
  %190 = getelementptr inbounds i8, i8* %105, i64 64
  %191 = bitcast i8* %190 to i8**
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds i8, i8* %105, i64 72
  %193 = bitcast i8* %192 to i8**
  store i8* %190, i8** %193, align 8
  %194 = getelementptr inbounds i8, i8* %105, i64 80
  %195 = bitcast i8* %194 to i8**
  store i8* %194, i8** %195, align 8
  %196 = getelementptr inbounds i8, i8* %105, i64 88
  %197 = bitcast i8* %196 to i8**
  store i8* %194, i8** %197, align 8
  br label %nk_fiber_create.exit1

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %117, %118
  %198 = phi i32 [ 0, %118 ], [ -22, %117 ], [ -22, %nk_fiber_create.exit ]
  %199 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8
  %200 = call i32 @nk_fiber_run(%struct.nk_fiber* %199, i8 zeroext 1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  ret i32 0
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  ret %struct.nk_fiber_percpu_state* %4
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8
  ret %struct.nk_fiber* %6
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8
  ret %struct.nk_fiber* %6
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8
  ret %struct.nk_thread* %6
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4
  ret %struct.list_head* %5
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, -8
  store i64 %5, i64* %3, align 8
  %6 = inttoptr i64 %5 to i64*
  store i64 %1, i64* %6, align 8
  ret void
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8
  %8 = icmp eq %struct.list_head* %7, %5
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %0
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1
  store %struct.list_head* %14, %struct.list_head** %16, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0
  store %struct.list_head* %15, %struct.list_head** %17, align 8
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***
  store %struct.list_head** %12, %struct.list_head*** %18, align 8
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***
  store %struct.list_head** %12, %struct.list_head*** %19, align 8
  br label %20

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ]
  ret %struct.nk_fiber* %21
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6
  store i32 4, i32* %3, align 4
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %66

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11

; <label>:11:                                     ; preds = %8, %63
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8
  %13 = icmp eq %struct.list_head* %12, %4
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1
  store %struct.list_head* %19, %struct.list_head** %22, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %23, align 8
  store %struct.list_head* %17, %struct.list_head** %20, align 8
  store %struct.list_head* %17, %struct.list_head** %18, align 8
  %24 = load i32, i32* %5, align 8
  %25 = add i32 %24, -1
  store i32 %25, i32* %5, align 8
  %26 = icmp eq %struct.nk_fiber* %16, null
  br i1 %26, label %63, label %27

; <label>:27:                                     ; preds = %11
  %28 = call i64 @msr_read(i32 -1073741567) #11
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11
  %30 = load i64, i64* %2, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = zext i32 %32 to i64
  %34 = urem i64 %30, %33
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !9
  %36 = shl nuw i64 %34, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8
  %44 = call i64 @msr_read(i32 -1073741567) #11
  %45 = inttoptr i64 %44 to %struct.cpu*
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8
  store %struct.list_head* %50, %struct.list_head** %51, align 8
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0
  store %struct.list_head* %48, %struct.list_head** %53, align 8
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1
  store %struct.list_head* %52, %struct.list_head** %54, align 8
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0
  store %struct.list_head* %50, %struct.list_head** %55, align 8
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16
  %58 = icmp eq %struct.nk_timer* %57, null
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #11
  br label %61

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8
  br label %63

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ]
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %11, label %66

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16
  store i8 1, i8* %67, align 8
  %68 = call i64 @msr_read(i32 -1073741567) #11
  %69 = inttoptr i64 %68 to %struct.cpu*
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8
  %75 = icmp eq %struct.list_head* %74, %72
  br i1 %75, label %88, label %76

; <label>:76:                                     ; preds = %66
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1
  store %struct.list_head* %81, %struct.list_head** %83, align 8
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0
  store %struct.list_head* %82, %struct.list_head** %84, align 8
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***
  store %struct.list_head** %79, %struct.list_head*** %85, align 8
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***
  store %struct.list_head** %79, %struct.list_head*** %86, align 8
  %87 = icmp eq %struct.list_head** %77, null
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #11
  %90 = inttoptr i64 %89 to %struct.cpu*
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8
  br label %95

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ]
  %97 = call i64 @msr_read(i32 -1073741567) #11
  %98 = inttoptr i64 %97 to %struct.cpu*
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8
  %102 = call i64 @msr_read(i32 -1073741567) #11
  %103 = inttoptr i64 %102 to %struct.cpu*
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1
  store %struct.list_head* %110, %struct.list_head** %113, align 8
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0
  store %struct.list_head* %112, %struct.list_head** %114, align 8
  store %struct.list_head* %108, %struct.list_head** %111, align 8
  store %struct.list_head* %108, %struct.list_head** %109, align 8
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1
  %116 = load i8*, i8** %115, align 8
  call void @kmem_free(i8* %116) #11
  %117 = bitcast %struct.nk_fiber* %0 to i8*
  call void @kmem_free(i8* %117) #11
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #11
  ret void
}

; Function Attrs: noredzone
declare dso_local void @nk_get_rand_bytes(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call i64 @msr_read(i32 -1073741567) #11
  %5 = inttoptr i64 %4 to %struct.cpu*
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %20, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !8
  %9 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #11
  %10 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = zext i32 %12 to i64
  %14 = urem i64 %10, %13
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !9
  %16 = shl nuw i64 %14, 32
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8
  br label %20

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8
  %26 = call i64 @msr_read(i32 -1073741567) #11
  %27 = inttoptr i64 %26 to %struct.cpu*
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8
  store %struct.list_head* %32, %struct.list_head** %33, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0
  store %struct.list_head* %30, %struct.list_head** %35, align 8
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1
  store %struct.list_head* %34, %struct.list_head** %36, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0
  store %struct.list_head* %32, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16
  %40 = icmp eq %struct.nk_timer* %39, null
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #11
  br label %43

; <label>:43:                                     ; preds = %20, %41
  ret i32 0
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 {
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15
  %7 = load i8**, i8*** %6, align 8
  tail call void %3(i8* %5, i8** %7) #11
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #12
  ret void
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1
  %3 = bitcast i8** %2 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0
  %8 = add i64 %4, -8
  %9 = add i64 %8, %6
  store i64 %9, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, -8
  store i64 %12, i64* %7, align 8
  %13 = inttoptr i64 %12 to i64*
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, -8
  store i64 %15, i64* %7, align 8
  %16 = inttoptr i64 %15 to i64*
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, -8
  store i64 %18, i64* %7, align 8
  %19 = inttoptr i64 %18 to i64*
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -8
  store i64 %21, i64* %7, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, -8
  store i64 %24, i64* %7, align 8
  %25 = inttoptr i64 %24 to i64*
  store i64 0, i64* %25, align 8
  %26 = ptrtoint %struct.nk_fiber* %0 to i64
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, -8
  store i64 %28, i64* %7, align 8
  %29 = inttoptr i64 %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -8
  store i64 %31, i64* %7, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -8
  store i64 %34, i64* %7, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, -8
  store i64 %37, i64* %7, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, -8
  store i64 %40, i64* %7, align 8
  %41 = inttoptr i64 %40 to i64*
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, -8
  store i64 %43, i64* %7, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, -8
  store i64 %46, i64* %7, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, -8
  store i64 %49, i64* %7, align 8
  %50 = inttoptr i64 %49 to i64*
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -8
  store i64 %52, i64* %7, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, -8
  store i64 %55, i64* %7, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 0, i64* %56, align 8
  ret void
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 {
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4
  br label %13

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #11
  %15 = inttoptr i64 %14 to %struct.cpu*
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8
  %20 = icmp eq %struct.nk_fiber* %7, %19
  br i1 %20, label %36, label %21

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %36, label %24

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #11
  %26 = inttoptr i64 %25 to %struct.cpu*
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  store %struct.list_head* %30, %struct.list_head** %31, align 8
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0
  store %struct.list_head* %29, %struct.list_head** %33, align 8
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1
  store %struct.list_head* %32, %struct.list_head** %34, align 8
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0
  store %struct.list_head* %30, %struct.list_head** %35, align 8
  br label %36

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = tail call i64 @msr_read(i32 -1073741567) #11
  %45 = inttoptr i64 %44 to %struct.cpu*
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*
  store i64 %43, i64* %51, align 8
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*
  store i64 %43, i64* %54, align 8
  br label %55

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #11
  %57 = inttoptr i64 %56 to %struct.cpu*
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8
  store i32 1, i32* %8, align 4
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6
  store i32 5, i32* %61, align 4
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #11
  ret i32 0
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 {
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8
  ret void
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #12
  ret void
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 {
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8
  %8 = icmp eq %struct.nk_fiber* %7, %0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !8
  %3 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #11
  %4 = load i64, i64* %1, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = urem i64 %4, %7
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !9
  %10 = shl nuw i64 %8, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8
  ret %struct.nk_thread* %17
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 {
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !10
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64
  br label %8

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4
  %15 = bitcast %struct.list_head* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  br label %17

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ]
  %19 = bitcast i8* %18 to %struct.list_head*
  %20 = bitcast i8* %18 to i8**
  %21 = load i8*, i8** %20, align 8
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1)
  %22 = icmp eq %struct.list_head* %14, %19
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104
  %25 = bitcast i8* %24 to %struct.nk_fiber*
  %26 = icmp eq %struct.nk_fiber* %25, %0
  br i1 %26, label %30, label %17

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp slt i64 %28, %7
  br i1 %29, label %8, label %38

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1
  store %struct.list_head* %33, %struct.list_head** %36, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0
  store %struct.list_head* %35, %struct.list_head** %37, align 8
  store %struct.list_head* %31, %struct.list_head** %34, align 8
  store %struct.list_head* %31, %struct.list_head** %32, align 8
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !srcloc !11
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #12
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null
  br i1 %6, label %7, label %109

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #11
  %9 = icmp eq i64 %8, 0
  %10 = tail call i64 @msr_read(i32 -1073741567) #11
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10
  %14 = inttoptr i64 %13 to i16*
  %15 = atomicrmw add i16* %14, i16 0 seq_cst
  %16 = zext i16 %15 to i32
  br label %17

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ]
  %19 = tail call i64 @msr_read(i32 -1073741567) #11
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10
  %23 = inttoptr i64 %22 to i16*
  %24 = atomicrmw add i16* %23, i16 1 seq_cst
  br label %25

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26

; <label>:26:                                     ; preds = %25
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %28 = tail call i32 @nk_vc_is_active() #11
  %29 = icmp eq i32 %28, 0
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %31 = tail call i64 @msr_read(i32 -1073741567) #11
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8
  %35 = inttoptr i64 %34 to i16*
  %36 = atomicrmw add i16* %35, i16 0 seq_cst
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %26, %33
  br label %39

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %43 = icmp ne %struct.nk_thread* %27, null
  br i1 %29, label %60, label %44

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5
  %47 = load i64, i64* %46, align 32
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18
  %49 = load i8, i8* %48, align 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0
  %53 = load i8, i8* %52, align 64
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52
  br label %56

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ]
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #11
  br label %76

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5
  %63 = load i64, i64* %62, align 32
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18
  %65 = load i8, i8* %64, align 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0
  %69 = load i8, i8* %68, align 64
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68
  br label %72

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ]
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #11
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #11
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %109, label %79

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10
  %81 = inttoptr i64 %80 to i16*
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst
  br label %109

; <label>:83:                                     ; preds = %25
  %84 = tail call i32 @nk_vc_is_active() #11
  %85 = icmp eq i32 %84, 0
  %86 = tail call i64 @msr_read(i32 -1073741567) #11
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8
  %90 = inttoptr i64 %89 to i16*
  %91 = atomicrmw add i16* %90, i16 0 seq_cst
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %83, %88
  br label %94

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %85, label %100, label %98

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #11
  br label %102

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #11
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #11
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10
  %107 = inttoptr i64 %106 to i16*
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst
  br label %109

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ]
  ret i32 %110
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !srcloc !12
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %106

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #11
  %6 = icmp eq i64 %5, 0
  %7 = tail call i64 @msr_read(i32 -1073741567) #11
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10
  %11 = inttoptr i64 %10 to i16*
  %12 = atomicrmw add i16* %11, i16 0 seq_cst
  %13 = zext i16 %12 to i32
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ]
  %16 = tail call i64 @msr_read(i32 -1073741567) #11
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10
  %20 = inttoptr i64 %19 to i16*
  %21 = atomicrmw add i16* %20, i16 1 seq_cst
  br label %22

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23

; <label>:23:                                     ; preds = %22
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %25 = tail call i32 @nk_vc_is_active() #11
  %26 = icmp eq i32 %25, 0
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %28 = tail call i64 @msr_read(i32 -1073741567) #11
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8
  %32 = inttoptr i64 %31 to i16*
  %33 = atomicrmw add i16* %32, i16 0 seq_cst
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %23, %30
  br label %36

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %40 = icmp ne %struct.nk_thread* %24, null
  br i1 %26, label %57, label %41

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5
  %44 = load i64, i64* %43, align 32
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18
  %46 = load i8, i8* %45, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0
  %50 = load i8, i8* %49, align 64
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49
  br label %53

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ]
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.58, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #11
  br label %73

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5
  %60 = load i64, i64* %59, align 32
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18
  %62 = load i8, i8* %61, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0
  %66 = load i8, i8* %65, align 64
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65
  br label %69

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ]
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.58, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #11
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %114, label %76

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10
  %78 = inttoptr i64 %77 to i16*
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst
  br label %114

; <label>:80:                                     ; preds = %22
  %81 = tail call i32 @nk_vc_is_active() #11
  %82 = icmp eq i32 %81, 0
  %83 = tail call i64 @msr_read(i32 -1073741567) #11
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %90, label %85

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8
  %87 = inttoptr i64 %86 to i16*
  %88 = atomicrmw add i16* %87, i16 0 seq_cst
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %80, %85
  br label %91

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %82, label %97, label %95

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.59, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #11
  br label %99

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.59, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #11
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %114, label %102

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10
  %104 = inttoptr i64 %103 to i16*
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst
  br label %114

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #11
  %109 = bitcast i8* %2 to i32*
  tail call void @spinlock_init(i32* %109) #11
  %110 = getelementptr inbounds i8, i8* %2, i64 32
  %111 = bitcast i8* %110 to i8**
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds i8, i8* %2, i64 40
  %113 = bitcast i8* %112 to i8**
  store i8* %110, i8** %113, align 8
  br label %115

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #11
  br label %115

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ]
  ret %struct.nk_fiber_percpu_state* %116
}

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_is_active() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_log(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @printk(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc_specific(i64, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i8 signext, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @spinlock_init(i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init() local_unnamed_addr #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8
  %2 = zext i32 %1 to i64
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8
  %5 = tail call i64 @msr_read(i32 -1073741567) #11
  %6 = icmp eq i64 %5, 0
  %7 = tail call i64 @msr_read(i32 -1073741567) #11
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10
  %11 = inttoptr i64 %10 to i16*
  %12 = atomicrmw add i16* %11, i16 0 seq_cst
  %13 = zext i16 %12 to i32
  br label %14

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ]
  %16 = tail call i64 @msr_read(i32 -1073741567) #11
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10
  %20 = inttoptr i64 %19 to i16*
  %21 = atomicrmw add i16* %20, i16 1 seq_cst
  br label %22

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23

; <label>:23:                                     ; preds = %22
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %25 = tail call i32 @nk_vc_is_active() #11
  %26 = icmp eq i32 %25, 0
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %28 = tail call i64 @msr_read(i32 -1073741567) #11
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8
  %32 = inttoptr i64 %31 to i16*
  %33 = atomicrmw add i16* %32, i16 0 seq_cst
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %23, %30
  br label %36

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %40 = icmp ne %struct.nk_thread* %24, null
  br i1 %26, label %57, label %41

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5
  %44 = load i64, i64* %43, align 32
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18
  %46 = load i8, i8* %45, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0
  %50 = load i8, i8* %49, align 64
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49
  br label %53

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ]
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.60, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #11
  br label %73

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5
  %60 = load i64, i64* %59, align 32
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18
  %62 = load i8, i8* %61, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0
  %66 = load i8, i8* %65, align 64
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65
  br label %69

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ]
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.60, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #11
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %106, label %76

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10
  %78 = inttoptr i64 %77 to i16*
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst
  br label %106

; <label>:80:                                     ; preds = %22
  %81 = tail call i32 @nk_vc_is_active() #11
  %82 = icmp eq i32 %81, 0
  %83 = tail call i64 @msr_read(i32 -1073741567) #11
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %90, label %85

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8
  %87 = inttoptr i64 %86 to i16*
  %88 = atomicrmw add i16* %87, i16 0 seq_cst
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %80, %85
  br label %91

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %82, label %97, label %95

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.61, i64 0, i64 0), i8* %92, i8* %94) #11
  br label %99

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.61, i64 0, i64 0), i8* %92, i8* %94) #11
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %106, label %102

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10
  %104 = inttoptr i64 %103 to i16*
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst
  br label %106

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #12
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null
  br i1 %109, label %110, label %212

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #11
  %112 = icmp eq i64 %111, 0
  %113 = tail call i64 @msr_read(i32 -1073741567) #11
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %120, label %115

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10
  %117 = inttoptr i64 %116 to i16*
  %118 = atomicrmw add i16* %117, i16 0 seq_cst
  %119 = zext i16 %118 to i32
  br label %120

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ]
  %122 = tail call i64 @msr_read(i32 -1073741567) #11
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %128, label %124

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10
  %126 = inttoptr i64 %125 to i16*
  %127 = atomicrmw add i16* %126, i16 1 seq_cst
  br label %128

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129

; <label>:129:                                    ; preds = %128
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %131 = tail call i32 @nk_vc_is_active() #11
  %132 = icmp eq i32 %131, 0
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %134 = tail call i64 @msr_read(i32 -1073741567) #11
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %141, label %136

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8
  %138 = inttoptr i64 %137 to i16*
  %139 = atomicrmw add i16* %138, i16 0 seq_cst
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %129, %136
  br label %142

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %146 = icmp ne %struct.nk_thread* %130, null
  br i1 %132, label %163, label %147

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5
  %150 = load i64, i64* %149, align 32
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18
  %152 = load i8, i8* %151, align 8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %159

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0
  %156 = load i8, i8* %155, align 64
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155
  br label %159

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ]
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #11
  br label %179

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5
  %166 = load i64, i64* %165, align 32
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18
  %168 = load i8, i8* %167, align 8
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %175

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0
  %172 = load i8, i8* %171, align 64
  %173 = icmp eq i8 %172, 0
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171
  br label %175

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ]
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #11
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #11
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %212, label %182

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10
  %184 = inttoptr i64 %183 to i16*
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst
  br label %212

; <label>:186:                                    ; preds = %128
  %187 = tail call i32 @nk_vc_is_active() #11
  %188 = icmp eq i32 %187, 0
  %189 = tail call i64 @msr_read(i32 -1073741567) #11
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %196, label %191

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8
  %193 = inttoptr i64 %192 to i16*
  %194 = atomicrmw add i16* %193, i16 0 seq_cst
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %196, label %197

; <label>:196:                                    ; preds = %186, %191
  br label %197

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %188, label %203, label %201

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #11
  br label %205

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #11
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #11
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %212, label %208

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10
  %210 = inttoptr i64 %209 to i16*
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst
  br label %212

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ]
  ret i32 %213
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %6 = bitcast %struct.nk_thread* %5 to i8*
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.62, i64 0, i64 0)) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %111, label %9

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #11
  %11 = icmp eq i64 %10, 0
  %12 = tail call i64 @msr_read(i32 -1073741567) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10
  %16 = inttoptr i64 %15 to i16*
  %17 = atomicrmw add i16* %16, i16 0 seq_cst
  %18 = zext i16 %17 to i32
  br label %19

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ]
  %21 = tail call i64 @msr_read(i32 -1073741567) #11
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10
  %25 = inttoptr i64 %24 to i16*
  %26 = atomicrmw add i16* %25, i16 1 seq_cst
  br label %27

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28

; <label>:28:                                     ; preds = %27
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %30 = tail call i32 @nk_vc_is_active() #11
  %31 = icmp eq i32 %30, 0
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %33 = tail call i64 @msr_read(i32 -1073741567) #11
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8
  %37 = inttoptr i64 %36 to i16*
  %38 = atomicrmw add i16* %37, i16 0 seq_cst
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %28, %35
  br label %41

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %45 = icmp ne %struct.nk_thread* %29, null
  br i1 %31, label %62, label %46

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5
  %49 = load i64, i64* %48, align 32
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18
  %51 = load i8, i8* %50, align 8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0
  %55 = load i8, i8* %54, align 64
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54
  br label %58

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ]
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.63, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #11
  br label %78

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5
  %65 = load i64, i64* %64, align 32
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18
  %67 = load i8, i8* %66, align 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0
  %71 = load i8, i8* %70, align 64
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70
  br label %74

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ]
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.63, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #11
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #11
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %449, label %81

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10
  %83 = inttoptr i64 %82 to i16*
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst
  br label %449

; <label>:85:                                     ; preds = %27
  %86 = tail call i32 @nk_vc_is_active() #11
  %87 = icmp eq i32 %86, 0
  %88 = tail call i64 @msr_read(i32 -1073741567) #11
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8
  %92 = inttoptr i64 %91 to i16*
  %93 = atomicrmw add i16* %92, i16 0 seq_cst
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %85, %90
  br label %96

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %87, label %102, label %100

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.64, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #11
  br label %104

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.64, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #11
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %449, label %107

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10
  %109 = inttoptr i64 %108 to i16*
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst
  br label %449

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false)
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0
  store i64 100000000, i64* %113, align 8
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #11
  %115 = icmp eq i32 %114, 0
  %116 = call i64 @msr_read(i32 -1073741567) #11
  br i1 %115, label %219, label %117

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0
  %119 = call i64 @msr_read(i32 -1073741567) #11
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %126, label %121

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10
  %123 = inttoptr i64 %122 to i16*
  %124 = atomicrmw add i16* %123, i16 0 seq_cst
  %125 = zext i16 %124 to i32
  br label %126

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ]
  %128 = call i64 @msr_read(i32 -1073741567) #11
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %134, label %130

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10
  %132 = inttoptr i64 %131 to i16*
  %133 = atomicrmw add i16* %132, i16 1 seq_cst
  br label %134

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135

; <label>:135:                                    ; preds = %134
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %137 = call i32 @nk_vc_is_active() #11
  %138 = icmp eq i32 %137, 0
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %140 = call i64 @msr_read(i32 -1073741567) #11
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %147, label %142

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8
  %144 = inttoptr i64 %143 to i16*
  %145 = atomicrmw add i16* %144, i16 0 seq_cst
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %135, %142
  br label %148

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %152 = icmp ne %struct.nk_thread* %136, null
  br i1 %138, label %169, label %153

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5
  %156 = load i64, i64* %155, align 32
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18
  %158 = load i8, i8* %157, align 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0
  %162 = load i8, i8* %161, align 64
  %163 = icmp eq i8 %162, 0
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161
  br label %165

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ]
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.65, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #11
  br label %185

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5
  %172 = load i64, i64* %171, align 32
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18
  %174 = load i8, i8* %173, align 8
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %181

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0
  %178 = load i8, i8* %177, align 64
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177
  br label %181

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ]
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.65, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #11
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %218, label %188

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10
  %190 = inttoptr i64 %189 to i16*
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst
  br label %218

; <label>:192:                                    ; preds = %134
  %193 = call i32 @nk_vc_is_active() #11
  %194 = icmp eq i32 %193, 0
  %195 = call i64 @msr_read(i32 -1073741567) #11
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %202, label %197

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8
  %199 = inttoptr i64 %198 to i16*
  %200 = atomicrmw add i16* %199, i16 0 seq_cst
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %192, %197
  br label %203

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %194, label %209, label %207

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.66, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #11
  br label %211

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.66, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #11
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %218, label %214

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10
  %216 = inttoptr i64 %215 to i16*
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst
  br label %218

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.67, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 526) #13
  unreachable

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null
  br i1 %223, label %224, label %326

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #11
  %226 = icmp eq i64 %225, 0
  %227 = call i64 @msr_read(i32 -1073741567) #11
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %234, label %229

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10
  %231 = inttoptr i64 %230 to i16*
  %232 = atomicrmw add i16* %231, i16 0 seq_cst
  %233 = zext i16 %232 to i32
  br label %234

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ]
  %236 = call i64 @msr_read(i32 -1073741567) #11
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %242, label %238

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10
  %240 = inttoptr i64 %239 to i16*
  %241 = atomicrmw add i16* %240, i16 1 seq_cst
  br label %242

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243

; <label>:243:                                    ; preds = %242
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %245 = call i32 @nk_vc_is_active() #11
  %246 = icmp eq i32 %245, 0
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %248 = call i64 @msr_read(i32 -1073741567) #11
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %255, label %250

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8
  %252 = inttoptr i64 %251 to i16*
  %253 = atomicrmw add i16* %252, i16 0 seq_cst
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %255, label %256

; <label>:255:                                    ; preds = %243, %250
  br label %256

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %260 = icmp ne %struct.nk_thread* %244, null
  br i1 %246, label %277, label %261

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5
  %264 = load i64, i64* %263, align 32
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18
  %266 = load i8, i8* %265, align 8
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %273

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0
  %270 = load i8, i8* %269, align 64
  %271 = icmp eq i8 %270, 0
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269
  br label %273

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ]
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.68, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #11
  br label %293

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5
  %280 = load i64, i64* %279, align 32
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18
  %282 = load i8, i8* %281, align 8
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %289

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0
  %286 = load i8, i8* %285, align 64
  %287 = icmp eq i8 %286, 0
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285
  br label %289

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ]
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.68, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #11
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #11
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %326, label %296

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10
  %298 = inttoptr i64 %297 to i16*
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst
  br label %326

; <label>:300:                                    ; preds = %242
  %301 = call i32 @nk_vc_is_active() #11
  %302 = icmp eq i32 %301, 0
  %303 = call i64 @msr_read(i32 -1073741567) #11
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %310, label %305

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8
  %307 = inttoptr i64 %306 to i16*
  %308 = atomicrmw add i16* %307, i16 0 seq_cst
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %300, %305
  br label %311

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %302, label %317, label %315

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.69, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #11
  br label %319

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.69, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #11
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #11
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %326, label %322

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10
  %324 = inttoptr i64 %323 to i16*
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst
  br label %326

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8
  %329 = bitcast %struct.nk_fiber** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #10
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #12
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %434

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #11
  %334 = icmp eq i64 %333, 0
  %335 = call i64 @msr_read(i32 -1073741567) #11
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %342, label %337

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10
  %339 = inttoptr i64 %338 to i16*
  %340 = atomicrmw add i16* %339, i16 0 seq_cst
  %341 = zext i16 %340 to i32
  br label %342

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ]
  %344 = call i64 @msr_read(i32 -1073741567) #11
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %350, label %346

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10
  %348 = inttoptr i64 %347 to i16*
  %349 = atomicrmw add i16* %348, i16 1 seq_cst
  br label %350

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351

; <label>:351:                                    ; preds = %350
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %353 = call i32 @nk_vc_is_active() #11
  %354 = icmp eq i32 %353, 0
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %356 = call i64 @msr_read(i32 -1073741567) #11
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %363, label %358

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8
  %360 = inttoptr i64 %359 to i16*
  %361 = atomicrmw add i16* %360, i16 0 seq_cst
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %363, label %364

; <label>:363:                                    ; preds = %351, %358
  br label %364

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %368 = icmp ne %struct.nk_thread* %352, null
  br i1 %354, label %385, label %369

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5
  %372 = load i64, i64* %371, align 32
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18
  %374 = load i8, i8* %373, align 8
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %381

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0
  %378 = load i8, i8* %377, align 64
  %379 = icmp eq i8 %378, 0
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377
  br label %381

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ]
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.72, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #11
  br label %401

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5
  %388 = load i64, i64* %387, align 32
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18
  %390 = load i8, i8* %389, align 8
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %397

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0
  %394 = load i8, i8* %393, align 64
  %395 = icmp eq i8 %394, 0
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393
  br label %397

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ]
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.72, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #11
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #11
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %434, label %404

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10
  %406 = inttoptr i64 %405 to i16*
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst
  br label %434

; <label>:408:                                    ; preds = %350
  %409 = call i32 @nk_vc_is_active() #11
  %410 = icmp eq i32 %409, 0
  %411 = call i64 @msr_read(i32 -1073741567) #11
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %418, label %413

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8
  %415 = inttoptr i64 %414 to i16*
  %416 = atomicrmw add i16* %415, i16 0 seq_cst
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %418, label %419

; <label>:418:                                    ; preds = %408, %413
  br label %419

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %410, label %425, label %423

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.73, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #11
  br label %427

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.73, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #11
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #11
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %434, label %430

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10
  %432 = inttoptr i64 %431 to i16*
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst
  br label %434

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2
  %438 = bitcast %struct.nk_fiber** %437 to i64*
  store i64 %436, i64* %438, align 8
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3
  %440 = bitcast %struct.nk_fiber** %439 to i64*
  store i64 %436, i64* %440, align 8
  %441 = inttoptr i64 %436 to %struct.nk_fiber*
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8
  store i32 1, i32* %442, align 8
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14
  %446 = load i8*, i8** %445, align 8
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15
  %448 = load i8**, i8*** %447, align 8
  call void %444(i8* %446, i8** %448) #11
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #10
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_name(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints*) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @panic(i8*, ...) local_unnamed_addr #6

; Function Attrs: noinline noredzone noreturn nounwind
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 {
  br label %3

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #11
  %5 = inttoptr i64 %4 to %struct.cpu*
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %11 = icmp eq %struct.nk_thread* %9, %10
  br i1 %11, label %12, label %nk_fiber_yield.exit

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #11
  %14 = inttoptr i64 %13 to %struct.cpu*
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  %20 = icmp eq %struct.list_head* %19, %17
  br i1 %20, label %33, label %21

; <label>:21:                                     ; preds = %12
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1
  store %struct.list_head* %26, %struct.list_head** %28, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0
  store %struct.list_head* %27, %struct.list_head** %29, align 8
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***
  store %struct.list_head** %24, %struct.list_head*** %30, align 8
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***
  store %struct.list_head** %24, %struct.list_head*** %31, align 8
  %32 = icmp eq %struct.list_head** %22, null
  br i1 %32, label %33, label %54

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #11
  %35 = inttoptr i64 %34 to %struct.cpu*
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8
  %40 = tail call i64 @msr_read(i32 -1073741567) #11
  %41 = inttoptr i64 %40 to %struct.cpu*
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8
  %46 = icmp eq %struct.nk_fiber* %39, %45
  br i1 %46, label %nk_fiber_yield.exit, label %47

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #11
  %49 = inttoptr i64 %48 to %struct.cpu*
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8
  br label %54

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ]
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #11
  br label %nk_fiber_yield.exit

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ]
  %58 = tail call i64 @msr_read(i32 -1073741567) #11
  %59 = inttoptr i64 %58 to %struct.cpu*
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8
  %65 = icmp eq %struct.list_head* %64, %62
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8
  %69 = icmp eq %struct.list_head* %68, %62
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #11
  br label %70
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 {
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 2097152, i64 %3
  %8 = tail call i8* @kmem_malloc(i64 152) #11
  %9 = icmp eq i8* %8, null
  br i1 %9, label %104, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #11
  %12 = getelementptr inbounds i8, i8* %8, i64 44
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i8, i8* %8, i64 24
  %15 = bitcast i8* %14 to i64*
  store i64 %7, i64* %15, align 8
  %16 = tail call i8* @kmem_malloc(i64 %7) #11
  %17 = getelementptr inbounds i8, i8* %8, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = icmp eq i8* %16, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #11
  br label %104

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64
  %23 = getelementptr inbounds i8, i8* %8, i64 120
  %24 = bitcast i8* %23 to void (i8*, i8**)**
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8
  %25 = getelementptr inbounds i8, i8* %8, i64 128
  %26 = bitcast i8* %25 to i8**
  store i8* %1, i8** %26, align 8
  %27 = getelementptr inbounds i8, i8* %8, i64 136
  %28 = bitcast i8* %27 to i8***
  store i8** %2, i8*** %28, align 8
  %29 = load i64, i64* %15, align 8
  %30 = bitcast i8* %8 to i64*
  %31 = add i64 %22, -8
  %32 = add i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = inttoptr i64 %32 to i64*
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8
  %34 = load i64, i64* %30, align 8
  %35 = add i64 %34, -8
  store i64 %35, i64* %30, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %30, align 8
  %38 = add i64 %37, -8
  store i64 %38, i64* %30, align 8
  %39 = inttoptr i64 %38 to i64*
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %30, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %30, align 8
  %42 = inttoptr i64 %41 to i64*
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %30, align 8
  %44 = add i64 %43, -8
  store i64 %44, i64* %30, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %30, align 8
  %47 = add i64 %46, -8
  store i64 %47, i64* %30, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 0, i64* %48, align 8
  %49 = ptrtoint i8* %8 to i64
  %50 = load i64, i64* %30, align 8
  %51 = add i64 %50, -8
  store i64 %51, i64* %30, align 8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %30, align 8
  %54 = add i64 %53, -8
  store i64 %54, i64* %30, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %30, align 8
  %57 = add i64 %56, -8
  store i64 %57, i64* %30, align 8
  %58 = inttoptr i64 %57 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %30, align 8
  %60 = add i64 %59, -8
  store i64 %60, i64* %30, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %30, align 8
  %63 = add i64 %62, -8
  store i64 %63, i64* %30, align 8
  %64 = inttoptr i64 %63 to i64*
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %30, align 8
  %66 = add i64 %65, -8
  store i64 %66, i64* %30, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %30, align 8
  %69 = add i64 %68, -8
  store i64 %69, i64* %30, align 8
  %70 = inttoptr i64 %69 to i64*
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %30, align 8
  %72 = add i64 %71, -8
  store i64 %72, i64* %30, align 8
  %73 = inttoptr i64 %72 to i64*
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %30, align 8
  %75 = add i64 %74, -8
  store i64 %75, i64* %30, align 8
  %76 = inttoptr i64 %75 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %30, align 8
  %78 = add i64 %77, -8
  store i64 %78, i64* %30, align 8
  %79 = inttoptr i64 %78 to i64*
  store i64 0, i64* %79, align 8
  %80 = icmp eq %struct.nk_fiber** %4, null
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**
  store i8* %8, i8** %82, align 8
  br label %83

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %8, i64 48
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds i8, i8* %8, i64 104
  %91 = bitcast i8* %90 to i8**
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds i8, i8* %8, i64 112
  %93 = bitcast i8* %92 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %8, i64 96
  %95 = bitcast i8* %94 to i32*
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds i8, i8* %8, i64 64
  %97 = bitcast i8* %96 to i8**
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds i8, i8* %8, i64 72
  %99 = bitcast i8* %98 to i8**
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds i8, i8* %8, i64 80
  %101 = bitcast i8* %100 to i8**
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds i8, i8* %8, i64 88
  %103 = bitcast i8* %102 to i8**
  store i8* %100, i8** %103, align 8
  br label %104

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ]
  ret i32 %105
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11
  %2 = inttoptr i64 %1 to %struct.cpu*
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %8 = icmp eq %struct.nk_thread* %6, %7
  br i1 %8, label %9, label %54

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #11
  %11 = inttoptr i64 %10 to %struct.cpu*
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8
  %17 = icmp eq %struct.list_head* %16, %14
  br i1 %17, label %30, label %18

; <label>:18:                                     ; preds = %9
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1
  store %struct.list_head* %23, %struct.list_head** %25, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0
  store %struct.list_head* %24, %struct.list_head** %26, align 8
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***
  store %struct.list_head** %21, %struct.list_head*** %27, align 8
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***
  store %struct.list_head** %21, %struct.list_head*** %28, align 8
  %29 = icmp eq %struct.list_head** %19, null
  br i1 %29, label %30, label %51

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #11
  %32 = inttoptr i64 %31 to %struct.cpu*
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8
  %37 = tail call i64 @msr_read(i32 -1073741567) #11
  %38 = inttoptr i64 %37 to %struct.cpu*
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8
  %43 = icmp eq %struct.nk_fiber* %36, %42
  br i1 %43, label %54, label %44

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #11
  %46 = inttoptr i64 %45 to %struct.cpu*
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8
  br label %51

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ]
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #12
  br label %54

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = tail call i64 @msr_read(i32 -1073741567) #11
  %5 = icmp eq i64 %4, 0
  %6 = tail call i64 @msr_read(i32 -1073741567) #11
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10
  %10 = inttoptr i64 %9 to i16*
  %11 = atomicrmw add i16* %10, i16 0 seq_cst
  %12 = zext i16 %11 to i32
  br label %13

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ]
  %15 = tail call i64 @msr_read(i32 -1073741567) #11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10
  %19 = inttoptr i64 %18 to i16*
  %20 = atomicrmw add i16* %19, i16 1 seq_cst
  br label %21

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22

; <label>:22:                                     ; preds = %21
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %24 = tail call i32 @nk_vc_is_active() #11
  %25 = icmp eq i32 %24, 0
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %27 = tail call i64 @msr_read(i32 -1073741567) #11
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8
  %31 = inttoptr i64 %30 to i16*
  %32 = atomicrmw add i16* %31, i16 0 seq_cst
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %22, %29
  br label %35

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %39 = icmp ne %struct.nk_thread* %23, null
  br i1 %25, label %58, label %40

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5
  %43 = load i64, i64* %42, align 32
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18
  %45 = load i8, i8* %44, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0
  %49 = load i8, i8* %48, align 64
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48
  br label %52

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ]
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.74, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #11
  br label %76

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5
  %61 = load i64, i64* %60, align 32
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18
  %63 = load i8, i8* %62, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0
  %67 = load i8, i8* %66, align 64
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66
  br label %70

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ]
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.74, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #11
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #11
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %111, label %79

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10
  %81 = inttoptr i64 %80 to i16*
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst
  br label %111

; <label>:83:                                     ; preds = %21
  %84 = tail call i32 @nk_vc_is_active() #11
  %85 = icmp eq i32 %84, 0
  %86 = tail call i64 @msr_read(i32 -1073741567) #11
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8
  %90 = inttoptr i64 %89 to i16*
  %91 = atomicrmw add i16* %90, i16 0 seq_cst
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %83, %88
  br label %94

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6
  %99 = load i32, i32* %98, align 8
  br i1 %85, label %102, label %100

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.75, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11
  br label %104

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.75, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %111, label %107

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10
  %109 = inttoptr i64 %108 to i16*
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst
  br label %111

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #10
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !srcloc !13
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #11
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %321, label %116

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #11
  %118 = icmp eq i64 %117, 0
  %119 = call i64 @msr_read(i32 -1073741567) #11
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %126, label %121

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10
  %123 = inttoptr i64 %122 to i16*
  %124 = atomicrmw add i16* %123, i16 0 seq_cst
  %125 = zext i16 %124 to i32
  br label %126

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ]
  %128 = call i64 @msr_read(i32 -1073741567) #11
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %134, label %130

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10
  %132 = inttoptr i64 %131 to i16*
  %133 = atomicrmw add i16* %132, i16 1 seq_cst
  br label %134

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135

; <label>:135:                                    ; preds = %134
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %137 = call i32 @nk_vc_is_active() #11
  %138 = icmp eq i32 %137, 0
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %140 = call i64 @msr_read(i32 -1073741567) #11
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %147, label %142

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8
  %144 = inttoptr i64 %143 to i16*
  %145 = atomicrmw add i16* %144, i16 0 seq_cst
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %142, %135
  br label %148

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %152 = icmp ne %struct.nk_thread* %136, null
  br i1 %138, label %169, label %153

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5
  %156 = load i64, i64* %155, align 32
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18
  %158 = load i8, i8* %157, align 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0
  %162 = load i8, i8* %161, align 64
  %163 = icmp eq i8 %162, 0
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161
  br label %165

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ]
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.76, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #11
  br label %185

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5
  %172 = load i64, i64* %171, align 32
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18
  %174 = load i8, i8* %173, align 8
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %181

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0
  %178 = load i8, i8* %177, align 64
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177
  br label %181

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ]
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.76, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #11
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %218, label %188

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10
  %190 = inttoptr i64 %189 to i16*
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst
  br label %218

; <label>:192:                                    ; preds = %134
  %193 = call i32 @nk_vc_is_active() #11
  %194 = icmp eq i32 %193, 0
  %195 = call i64 @msr_read(i32 -1073741567) #11
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %202, label %197

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8
  %199 = inttoptr i64 %198 to i16*
  %200 = atomicrmw add i16* %199, i16 0 seq_cst
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %197, %192
  br label %203

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %194, label %209, label %207

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.77, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #11
  br label %211

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.77, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #11
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %218, label %214

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10
  %216 = inttoptr i64 %215 to i16*
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst
  br label %218

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10
  %219 = call i64 @msr_read(i32 -1073741567) #11
  %220 = icmp eq i64 %219, 0
  %221 = call i64 @msr_read(i32 -1073741567) #11
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %228, label %223

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10
  %225 = inttoptr i64 %224 to i16*
  %226 = atomicrmw add i16* %225, i16 0 seq_cst
  %227 = zext i16 %226 to i32
  br label %228

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ]
  %230 = call i64 @msr_read(i32 -1073741567) #11
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10
  %234 = inttoptr i64 %233 to i16*
  %235 = atomicrmw add i16* %234, i16 1 seq_cst
  br label %236

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237

; <label>:237:                                    ; preds = %236
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %239 = call i32 @nk_vc_is_active() #11
  %240 = icmp eq i32 %239, 0
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10
  %242 = call i64 @msr_read(i32 -1073741567) #11
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %249, label %244

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8
  %246 = inttoptr i64 %245 to i16*
  %247 = atomicrmw add i16* %246, i16 0 seq_cst
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %250

; <label>:249:                                    ; preds = %237, %244
  br label %250

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  %254 = icmp ne %struct.nk_thread* %238, null
  br i1 %240, label %271, label %255

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5
  %258 = load i64, i64* %257, align 32
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18
  %260 = load i8, i8* %259, align 8
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %267

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0
  %264 = load i8, i8* %263, align 64
  %265 = icmp eq i8 %264, 0
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263
  br label %267

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ]
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.78, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #11
  br label %287

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5
  %274 = load i64, i64* %273, align 32
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18
  %276 = load i8, i8* %275, align 8
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %283

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0
  %280 = load i8, i8* %279, align 64
  %281 = icmp eq i8 %280, 0
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279
  br label %283

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ]
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.78, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #11
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #11
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %320, label %290

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10
  %292 = inttoptr i64 %291 to i16*
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst
  br label %320

; <label>:294:                                    ; preds = %236
  %295 = call i32 @nk_vc_is_active() #11
  %296 = icmp eq i32 %295, 0
  %297 = call i64 @msr_read(i32 -1073741567) #11
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %304, label %299

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8
  %301 = inttoptr i64 %300 to i16*
  %302 = atomicrmw add i16* %301, i16 0 seq_cst
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %294, %299
  br label %305

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0)
  br i1 %296, label %311, label %309

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.79, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #11
  br label %313

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.79, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #11
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #11
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %320, label %316

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10
  %318 = inttoptr i64 %317 to i16*
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst
  br label %320

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.80, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 576) #13
  unreachable

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10
  ret void
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 {
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #12
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #12
  ret i32 0
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #11
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %9 = icmp eq %struct.nk_thread* %7, %8
  br i1 %9, label %10, label %nk_fiber_yield.exit

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #11
  %12 = inttoptr i64 %11 to %struct.cpu*
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = icmp eq %struct.list_head* %17, %15
  br i1 %18, label %31, label %19

; <label>:19:                                     ; preds = %10
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1
  store %struct.list_head* %24, %struct.list_head** %26, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0
  store %struct.list_head* %25, %struct.list_head** %27, align 8
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***
  store %struct.list_head** %22, %struct.list_head*** %28, align 8
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***
  store %struct.list_head** %22, %struct.list_head*** %29, align 8
  %30 = icmp eq %struct.list_head** %20, null
  br i1 %30, label %31, label %52

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #11
  %33 = inttoptr i64 %32 to %struct.cpu*
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8
  %38 = tail call i64 @msr_read(i32 -1073741567) #11
  %39 = inttoptr i64 %38 to %struct.cpu*
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8
  %44 = icmp eq %struct.nk_fiber* %37, %43
  br i1 %44, label %nk_fiber_yield.exit, label %45

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #11
  %47 = inttoptr i64 %46 to %struct.cpu*
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8
  br label %52

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ]
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #11
  br label %nk_fiber_yield.exit

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ]
  ret i32 %55
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 {
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !srcloc !10
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %30

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64
  br label %8

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4
  %15 = bitcast %struct.list_head* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  br label %17

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ]
  %19 = bitcast i8* %18 to %struct.list_head*
  %20 = bitcast i8* %18 to i8**
  %21 = load i8*, i8** %20, align 8
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #10
  %22 = icmp eq %struct.list_head* %14, %19
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104
  %25 = bitcast i8* %24 to %struct.nk_fiber*
  %26 = icmp eq %struct.nk_fiber* %25, %0
  br i1 %26, label %75, label %17

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp slt i64 %28, %7
  br i1 %29, label %8, label %30

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #11
  %32 = inttoptr i64 %31 to %struct.cpu*
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8
  %38 = icmp eq %struct.list_head* %37, %35
  br i1 %38, label %51, label %39

; <label>:39:                                     ; preds = %30
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1
  store %struct.list_head* %44, %struct.list_head** %46, align 8
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0
  store %struct.list_head* %45, %struct.list_head** %47, align 8
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***
  store %struct.list_head** %42, %struct.list_head*** %48, align 8
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***
  store %struct.list_head** %42, %struct.list_head*** %49, align 8
  %50 = icmp eq %struct.list_head** %40, null
  br i1 %50, label %51, label %72

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #11
  %53 = inttoptr i64 %52 to %struct.cpu*
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8
  %58 = tail call i64 @msr_read(i32 -1073741567) #11
  %59 = inttoptr i64 %58 to %struct.cpu*
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8
  %64 = icmp eq %struct.nk_fiber* %57, %63
  br i1 %64, label %84, label %65

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #11
  %67 = inttoptr i64 %66 to %struct.cpu*
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8
  br label %72

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ]
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #12
  br label %84

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1
  store %struct.list_head* %78, %struct.list_head** %81, align 8
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0
  store %struct.list_head* %80, %struct.list_head** %82, align 8
  store %struct.list_head* %76, %struct.list_head** %79, align 8
  store %struct.list_head* %76, %struct.list_head** %77, align 8
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #12
  br label %84

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ]
  ret i32 %85
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 %0(i8* %1) #11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %60, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #11
  %7 = inttoptr i64 %6 to %struct.cpu*
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %13 = icmp eq %struct.nk_thread* %11, %12
  br i1 %13, label %14, label %nk_fiber_yield.exit

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #11
  %16 = inttoptr i64 %15 to %struct.cpu*
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  %22 = icmp eq %struct.list_head* %21, %19
  br i1 %22, label %35, label %23

; <label>:23:                                     ; preds = %14
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1
  store %struct.list_head* %28, %struct.list_head** %30, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0
  store %struct.list_head* %29, %struct.list_head** %31, align 8
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***
  store %struct.list_head** %26, %struct.list_head*** %32, align 8
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***
  store %struct.list_head** %26, %struct.list_head*** %33, align 8
  %34 = icmp eq %struct.list_head** %24, null
  br i1 %34, label %35, label %56

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #11
  %37 = inttoptr i64 %36 to %struct.cpu*
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8
  %42 = tail call i64 @msr_read(i32 -1073741567) #11
  %43 = inttoptr i64 %42 to %struct.cpu*
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8
  %48 = icmp eq %struct.nk_fiber* %41, %47
  br i1 %48, label %nk_fiber_yield.exit, label %49

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #11
  %51 = inttoptr i64 %50 to %struct.cpu*
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8
  br label %56

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ]
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #11
  br label %nk_fiber_yield.exit

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ]
  br label %60

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ]
  ret i32 %61
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 %1(i8* %2) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #12
  br label %8

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11
  %3 = inttoptr i64 %2 to %struct.cpu*
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !14
  %9 = tail call i8* @llvm.frameaddress(i32 0)
  %10 = tail call i8* @llvm.frameaddress(i32 1)
  %11 = tail call i8* @llvm.frameaddress(i32 2)
  %12 = getelementptr i8, i8* %9, i64 8
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ugt i8* %11, %14
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr i8, i8* %14, i64 %17
  %19 = icmp ult i8* %11, %18
  %20 = and i1 %15, %19
  %21 = select i1 %20, i8* %11, i8* %10
  %22 = getelementptr i8, i8* %9, i64 80
  %23 = getelementptr i8, i8* %21, i64 8
  %24 = ptrtoint i8* %23 to i64
  %25 = ptrtoint i8* %12 to i64
  %26 = sub i64 %24, %25
  %27 = ptrtoint i8* %10 to i64
  %28 = bitcast i8* %22 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, %25
  %31 = bitcast %struct.nk_fiber** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #10
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #12
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, -8
  store i64 %36, i64* %34, align 8
  %37 = inttoptr i64 %36 to i64*
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr i8, i8* %40, i64 %17
  %42 = sub i64 -16, %26
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #11
  %45 = getelementptr i8, i8* %43, i64 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 64
  %53 = inttoptr i64 %52 to i8**
  %54 = add i64 %30, %51
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %53, align 8
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 8, %25
  %60 = add i64 %59, %27
  %61 = add i64 %60, %58
  %62 = inttoptr i64 %61 to i8**
  %63 = getelementptr i8*, i8** %62, i64 -1
  %64 = bitcast i8** %63 to <2 x i8*>*
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 112
  %69 = inttoptr i64 %68 to i64*
  store i64 0, i64* %69, align 8
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  %71 = call i64 @msr_read(i32 -1073741567) #11
  %72 = inttoptr i64 %71 to %struct.cpu*
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8
  %77 = call i64 @msr_read(i32 -1073741567) #11
  %78 = inttoptr i64 %77 to %struct.cpu*
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8
  store %struct.list_head* %83, %struct.list_head** %84, align 8
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0
  store %struct.list_head* %81, %struct.list_head** %86, align 8
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1
  store %struct.list_head* %85, %struct.list_head** %87, align 8
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0
  store %struct.list_head* %83, %struct.list_head** %88, align 8
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16
  %91 = icmp eq %struct.nk_timer* %90, null
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #11
  br label %94

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #10
  ret %struct.nk_fiber* %95
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 {
  %2 = icmp eq %struct.nk_fiber* %0, null
  br i1 %2, label %75, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #11
  %5 = inttoptr i64 %4 to %struct.cpu*
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8
  store %struct.list_head* %11, %struct.list_head** %12, align 8
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0
  store %struct.list_head* %10, %struct.list_head** %14, align 8
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1
  store %struct.list_head* %13, %struct.list_head** %15, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0
  store %struct.list_head* %11, %struct.list_head** %16, align 8
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6
  store i32 3, i32* %20, align 4
  %21 = tail call i64 @msr_read(i32 -1073741567) #11
  %22 = inttoptr i64 %21 to %struct.cpu*
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !srcloc !6
  %28 = icmp eq %struct.nk_thread* %26, %27
  br i1 %28, label %29, label %nk_fiber_yield.exit

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #11
  %31 = inttoptr i64 %30 to %struct.cpu*
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  %37 = icmp eq %struct.list_head* %36, %34
  br i1 %37, label %50, label %38

; <label>:38:                                     ; preds = %29
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1
  store %struct.list_head* %43, %struct.list_head** %45, align 8
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0
  store %struct.list_head* %44, %struct.list_head** %46, align 8
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***
  store %struct.list_head** %41, %struct.list_head*** %47, align 8
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***
  store %struct.list_head** %41, %struct.list_head*** %48, align 8
  %49 = icmp eq %struct.list_head** %39, null
  br i1 %49, label %50, label %71

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #11
  %52 = inttoptr i64 %51 to %struct.cpu*
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8
  %57 = tail call i64 @msr_read(i32 -1073741567) #11
  %58 = inttoptr i64 %57 to %struct.cpu*
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8
  %63 = icmp eq %struct.nk_fiber* %56, %62
  br i1 %63, label %nk_fiber_yield.exit, label %64

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #11
  %66 = inttoptr i64 %65 to %struct.cpu*
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8
  br label %71

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ]
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #11
  br label %nk_fiber_yield.exit

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ]
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ]
  ret i32 %76
}

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblemem_or_argmemonly nounwind }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin noredzone nounwind }
attributes #12 = { nobuiltin noredzone }
attributes #13 = { nobuiltin noredzone noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"Code Model", i32 4}
!5 = !{i32 -2147273830}
!6 = !{i32 -2147260788}
!7 = !{i32 98728}
!8 = !{i32 -2147185108}
!9 = !{i32 -2147182107}
!10 = !{i32 -2147179106}
!11 = !{i32 -2147162343}
!12 = !{i32 -2147173852}
!13 = !{i32 -2147099476}
!14 = !{i32 23632}
