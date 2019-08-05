; ModuleID = 'src/test/fibers_link.bc'
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

@vc = dso_local local_unnamed_addr global %struct.nk_virtual_console* null, align 8, !dbg !0
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl10 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl11 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl3 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl4 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl5 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl6 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl7 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl8 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl9 to i8*)], section "llvm.metadata"
@_nk_cmd_fibers_impl = internal global %struct.shell_cmd_impl* @fibers_impl, section ".shell_cmds", align 8, !dbg !130
@_nk_cmd_fibers_impl10 = internal global %struct.shell_cmd_impl* @fibers_impl10, section ".shell_cmds", align 8, !dbg !159
@_nk_cmd_fibers_impl11 = internal global %struct.shell_cmd_impl* @fibers_impl11, section ".shell_cmds", align 8, !dbg !161
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !143
@_nk_cmd_fibers_impl3 = internal global %struct.shell_cmd_impl* @fibers_impl3, section ".shell_cmds", align 8, !dbg !145
@_nk_cmd_fibers_impl4 = internal global %struct.shell_cmd_impl* @fibers_impl4, section ".shell_cmds", align 8, !dbg !147
@_nk_cmd_fibers_impl5 = internal global %struct.shell_cmd_impl* @fibers_impl5, section ".shell_cmds", align 8, !dbg !149
@_nk_cmd_fibers_impl6 = internal global %struct.shell_cmd_impl* @fibers_impl6, section ".shell_cmds", align 8, !dbg !151
@_nk_cmd_fibers_impl7 = internal global %struct.shell_cmd_impl* @fibers_impl7, section ".shell_cmds", align 8, !dbg !153
@_nk_cmd_fibers_impl8 = internal global %struct.shell_cmd_impl* @fibers_impl8, section ".shell_cmds", align 8, !dbg !155
@_nk_cmd_fibers_impl9 = internal global %struct.shell_cmd_impl* @fibers_impl9, section ".shell_cmds", align 8, !dbg !157
@fibers_impl9 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers9 }, align 8, !dbg !179
@.str.52 = private unnamed_addr constant [11 x i8] c"fibertest9\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"test_fiber_routine_2() : virtual console %p\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"fiber_routine3() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"fiber_routine3() : fiber is finished, a = %d\0A\00", align 1
@fibers_impl8 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers8 }, align 8, !dbg !177
@.str.51 = private unnamed_addr constant [11 x i8] c"fibertest8\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"test_fiber_routine() : virtual console %p\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"fiber_routine1() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"fiber_routine1() : fiber is finished, a = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"fiber_routine2() : Fiber created\0A\00", align 1
@fibers_impl7 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers7 }, align 8, !dbg !175
@.str.50 = private unnamed_addr constant [11 x i8] c"fibertest7\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"test_fiber_fork_join() : virtual console %p\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"fiber_fork_join() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"fiber %p is finished, a = %d\0A\00", align 1
@fibers_impl6 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers6 }, align 8, !dbg !173
@.str.49 = private unnamed_addr constant [11 x i8] c"fibertest6\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"test_fiber_fork() : virtual console %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"fiber_fork() : This is the %dth iteration of fiber %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"fiber 4 is finished, a = %d\0A\00", align 1
@fibers_impl5 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers5 }, align 8, !dbg !171
@.str.48 = private unnamed_addr constant [11 x i8] c"fibertest5\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"test_fiber_join() : virtual console %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Fiber outer a = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Fiber outer is finished, a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Fiber inner a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Fiber inner is finished, a = %d\0A\00", align 1
@fibers_impl4 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers4 }, align 8, !dbg !169
@.str.47 = private unnamed_addr constant [11 x i8] c"fibertest4\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"test_yield_to() : virtual console %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Fiber_second() : a = %d and yielding to fiber_third = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Fiber 2 is finished, a = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"fiber_third() : a = %d and yielding to fiber_fourth = %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"fiber 3 is finished, a = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Fiber_first() : a = %d and yielding to fiber_second = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Fiber 1 is finished, a = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"fiber_fourth() : a = %d and yielding to fiber_first = %p\0A\00", align 1
@fibers_impl3 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers3 }, align 8, !dbg !167
@.str.46 = private unnamed_addr constant [11 x i8] c"fibertest3\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fiber odd, counter = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Fiber odd is finished\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Fiber even, counter = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Fiber even is finished\0A\00", align 1
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !165
@.str.45 = private unnamed_addr constant [11 x i8] c"fibertest2\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"test_nested_fibers() : virtual console %p\0A\00", align 1
@fibers_impl11 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers11 }, align 8, !dbg !183
@.str.54 = private unnamed_addr constant [12 x i8] c"fiberbench1\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Benchmark Timer2 is finished\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Delta (%d itr. to %d itr.) : %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Benchmark Timer1 is finished\0A\00", align 1
@fibers_impl10 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers10 }, align 8, !dbg !181
@.str.53 = private unnamed_addr constant [11 x i8] c"fibertime1\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Second Timer is finished, a = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"First Timer is finished, a = %d, cycle count = %d, cycles per iteration = %d\0A\00", align 1
@fibers_impl = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers }, align 8, !dbg !163
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
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !557 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i8* %1, metadata !560, metadata !DIExpression()), !dbg !562
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !563
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !563
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !570, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !570
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !581
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !582
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !582
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !583
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !584
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !568, metadata !DIExpression(DW_OP_deref)) #9, !dbg !585
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !587
  ret i32 0, !dbg !588
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !589 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !591, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i8** undef, metadata !592, metadata !DIExpression()), !dbg !598
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !599
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !600
  call void @llvm.dbg.value(metadata i32 0, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 0, metadata !593, metadata !DIExpression()), !dbg !601
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !602
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !594, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !595, metadata !DIExpression()), !dbg !604
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !605
  call void @llvm.dbg.value(metadata i32 1, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 1, metadata !593, metadata !DIExpression()), !dbg !601
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !602
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !594, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !595, metadata !DIExpression()), !dbg !604
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !605
  call void @llvm.dbg.value(metadata i32 2, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 2, metadata !593, metadata !DIExpression()), !dbg !601
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !602
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !594, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !595, metadata !DIExpression()), !dbg !604
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !605
  call void @llvm.dbg.value(metadata i32 3, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 3, metadata !593, metadata !DIExpression()), !dbg !601
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !602
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !594, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !595, metadata !DIExpression()), !dbg !604
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !605
  call void @llvm.dbg.value(metadata i32 4, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 4, metadata !593, metadata !DIExpression()), !dbg !601
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !602
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !594, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !595, metadata !DIExpression()), !dbg !604
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !605
  call void @llvm.dbg.value(metadata i32 5, metadata !593, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 5, metadata !593, metadata !DIExpression()), !dbg !601
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !606
  ret void, !dbg !607
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !608 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !610, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8* %1, metadata !611, metadata !DIExpression()), !dbg !613
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !614
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !614
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !619, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !621
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !622
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !622
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !623
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !624
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !617, metadata !DIExpression(DW_OP_deref)) #9, !dbg !625
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !626
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !627
  ret i32 0, !dbg !628
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !629 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !631, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i8** undef, metadata !632, metadata !DIExpression()), !dbg !641
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !642
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !643
  call void @llvm.dbg.value(metadata i32 0, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 0, metadata !633, metadata !DIExpression()), !dbg !644
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !634, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !647
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !648
  br i1 %6, label %11, label %7, !dbg !649

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 %8, metadata !633, metadata !DIExpression()), !dbg !644
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !650
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !637, metadata !DIExpression(DW_OP_deref)), !dbg !651
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #10, !dbg !652
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !653
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !654
  call void @llvm.dbg.value(metadata i32 1, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 1, metadata !633, metadata !DIExpression()), !dbg !644
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !634, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !647
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !648
  br i1 %14, label %18, label %7, !dbg !649

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !633, metadata !DIExpression()), !dbg !644
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #10, !dbg !655
  ret void, !dbg !656

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !654
  call void @llvm.dbg.value(metadata i32 2, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 2, metadata !633, metadata !DIExpression()), !dbg !644
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !634, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !647
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !648
  br i1 %21, label %22, label %7, !dbg !649

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !654
  call void @llvm.dbg.value(metadata i32 3, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 3, metadata !633, metadata !DIExpression()), !dbg !644
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !634, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !647
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !648
  br i1 %25, label %26, label %7, !dbg !649

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !654
  call void @llvm.dbg.value(metadata i32 4, metadata !633, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i32 4, metadata !633, metadata !DIExpression()), !dbg !644
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !634, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !635, metadata !DIExpression()), !dbg !647
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !648
  br i1 %29, label %30, label %7, !dbg !649

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !654
  call void @llvm.dbg.value(metadata i32 5, metadata !633, metadata !DIExpression()), !dbg !644
  br label %15, !dbg !655
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !657 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !659, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i8** undef, metadata !660, metadata !DIExpression()), !dbg !662
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !663
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !664
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !665
  ret void, !dbg !666
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !667 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %1, metadata !670, metadata !DIExpression()), !dbg !672
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !673
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !678, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !678
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !680
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !681
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !681
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !682
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !683
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !676, metadata !DIExpression(DW_OP_deref)) #9, !dbg !684
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !685
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !686
  ret i32 0, !dbg !687
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !688 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !690, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8** undef, metadata !691, metadata !DIExpression()), !dbg !696
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !697
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !698
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !699
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !700
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !693, metadata !DIExpression()), !dbg !701
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !702
  br i1 %5, label %8, label %6, !dbg !704

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #10, !dbg !705
  br label %8, !dbg !707

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !694, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !699
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i32 1, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 1, metadata !692, metadata !DIExpression()), !dbg !699
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i32 2, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 2, metadata !692, metadata !DIExpression()), !dbg !699
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i32 3, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 3, metadata !692, metadata !DIExpression()), !dbg !699
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i32 4, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 4, metadata !692, metadata !DIExpression()), !dbg !699
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i32 5, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 5, metadata !692, metadata !DIExpression()), !dbg !699
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #10, !dbg !711
  ret void, !dbg !712
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !713 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !715, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i8* %1, metadata !716, metadata !DIExpression()), !dbg !718
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !719
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !719
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !724, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !724
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !726
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !727
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !727
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !728
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !729
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !722, metadata !DIExpression(DW_OP_deref)) #9, !dbg !730
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !732
  ret i32 0, !dbg !733
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !734 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !736, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** undef, metadata !737, metadata !DIExpression()), !dbg !741
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !742
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()), !dbg !744
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !745
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()), !dbg !744
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 1, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 1, metadata !738, metadata !DIExpression()), !dbg !744
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 2, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 2, metadata !738, metadata !DIExpression()), !dbg !744
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 3, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 3, metadata !738, metadata !DIExpression()), !dbg !744
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 4, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 4, metadata !738, metadata !DIExpression()), !dbg !744
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #10, !dbg !747
  call void @llvm.dbg.value(metadata i32 5, metadata !738, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i32 5, metadata !738, metadata !DIExpression()), !dbg !744
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !749
  ret void, !dbg !750
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !751 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !753, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i8* %1, metadata !754, metadata !DIExpression()), !dbg !756
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !757
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !762, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !762
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !764
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !765
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !765
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !766
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !767
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !760, metadata !DIExpression(DW_OP_deref)) #9, !dbg !768
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !769
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !770
  ret i32 0, !dbg !771
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !772 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8** undef, metadata !775, metadata !DIExpression()), !dbg !780
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !781
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !782
  call void @llvm.dbg.value(metadata i32 0, metadata !776, metadata !DIExpression()), !dbg !783
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !776, metadata !DIExpression()), !dbg !783
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !785
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !777, metadata !DIExpression(DW_OP_deref)), !dbg !786
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !787
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !788
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !777, metadata !DIExpression()), !dbg !786
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #10, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !790
  call void @llvm.dbg.value(metadata i32 1, metadata !776, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 1, metadata !776, metadata !DIExpression()), !dbg !783
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !785
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !777, metadata !DIExpression(DW_OP_deref)), !dbg !786
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !787
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !788
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !777, metadata !DIExpression()), !dbg !786
  %13 = call i32 @nk_fiber_join(%struct.nk_fiber* %12) #10, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !790
  call void @llvm.dbg.value(metadata i32 2, metadata !776, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 2, metadata !776, metadata !DIExpression()), !dbg !783
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !784
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !785
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !777, metadata !DIExpression(DW_OP_deref)), !dbg !786
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !787
  %16 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !788
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !777, metadata !DIExpression()), !dbg !786
  %17 = call i32 @nk_fiber_join(%struct.nk_fiber* %16) #10, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !790
  call void @llvm.dbg.value(metadata i32 3, metadata !776, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 3, metadata !776, metadata !DIExpression()), !dbg !783
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !791
  ret void, !dbg !792
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !793 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8** undef, metadata !796, metadata !DIExpression()), !dbg !799
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !800
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !801
  call void @llvm.dbg.value(metadata i32 0, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 0, metadata !797, metadata !DIExpression()), !dbg !802
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 1, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 1, metadata !797, metadata !DIExpression()), !dbg !802
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 2, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 2, metadata !797, metadata !DIExpression()), !dbg !802
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 3, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 3, metadata !797, metadata !DIExpression()), !dbg !802
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 4, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 4, metadata !797, metadata !DIExpression()), !dbg !802
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 5, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 5, metadata !797, metadata !DIExpression()), !dbg !802
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 6, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 6, metadata !797, metadata !DIExpression()), !dbg !802
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 7, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 7, metadata !797, metadata !DIExpression()), !dbg !802
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 8, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 8, metadata !797, metadata !DIExpression()), !dbg !802
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 9, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 9, metadata !797, metadata !DIExpression()), !dbg !802
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !803
  call void @llvm.dbg.value(metadata i32 10, metadata !797, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 10, metadata !797, metadata !DIExpression()), !dbg !802
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !805
  ret void, !dbg !806
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !809, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i8* %1, metadata !810, metadata !DIExpression()), !dbg !812
  %3 = tail call i32 @test_yield_to() #11, !dbg !813
  ret i32 0, !dbg !814
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !815 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !821
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !822
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !823
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !824
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !825, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !578, metadata !DIExpression()) #9, !dbg !825
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !577, metadata !DIExpression()) #9, !dbg !827
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !828
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !828
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !829
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !830
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !820, metadata !DIExpression(DW_OP_deref)), !dbg !831
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !832
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !817, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #10, !dbg !834
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !819, metadata !DIExpression(DW_OP_deref)), !dbg !835
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #10, !dbg !836
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !837
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #10, !dbg !838
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !839
  %18 = load i64, i64* %17, align 8, !dbg !839
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !837
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !840
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !817, metadata !DIExpression()), !dbg !833
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !841
  %21 = bitcast i8** %20 to i64*, !dbg !842
  store i64 %18, i64* %21, align 8, !dbg !842
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !843
  %23 = load i64, i64* %22, align 8, !dbg !843
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !819, metadata !DIExpression(DW_OP_deref)), !dbg !835
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !844
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !818, metadata !DIExpression()), !dbg !837
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !845
  %26 = bitcast i8** %25 to i64*, !dbg !846
  store i64 %23, i64* %26, align 8, !dbg !846
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !847
  %28 = load i64, i64* %27, align 8, !dbg !847
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !820, metadata !DIExpression(DW_OP_deref)), !dbg !831
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !848
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !819, metadata !DIExpression()), !dbg !835
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !849
  %31 = bitcast i8** %30 to i64*, !dbg !850
  store i64 %28, i64* %31, align 8, !dbg !850
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !851
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !817, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !852
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !820, metadata !DIExpression()), !dbg !831
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !853
  %35 = bitcast i8** %34 to i64*, !dbg !854
  store i64 %32, i64* %35, align 8, !dbg !854
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !820, metadata !DIExpression()), !dbg !831
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #10, !dbg !855
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !856
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !817, metadata !DIExpression()), !dbg !833
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #10, !dbg !857
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !819, metadata !DIExpression()), !dbg !835
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #10, !dbg !859
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !860
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !818, metadata !DIExpression()), !dbg !837
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #10, !dbg !861
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !862
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !862
  ret i32 0, !dbg !863
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !864 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8** undef, metadata !867, metadata !DIExpression()), !dbg !871
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !872
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !873
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !874
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !875
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !869, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !874
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !877
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 1, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 1, metadata !868, metadata !DIExpression()), !dbg !874
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !877
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 2, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 2, metadata !868, metadata !DIExpression()), !dbg !874
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !877
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 3, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 3, metadata !868, metadata !DIExpression()), !dbg !874
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !877
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 4, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 4, metadata !868, metadata !DIExpression()), !dbg !874
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !877
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !879
  call void @llvm.dbg.value(metadata i32 5, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 5, metadata !868, metadata !DIExpression()), !dbg !874
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !884, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8** undef, metadata !885, metadata !DIExpression()), !dbg !889
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !890
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !891
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !892
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !893
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !887, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 0, metadata !886, metadata !DIExpression()), !dbg !892
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !895
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !897
  call void @llvm.dbg.value(metadata i32 1, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 1, metadata !886, metadata !DIExpression()), !dbg !892
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !895
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !897
  call void @llvm.dbg.value(metadata i32 2, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 2, metadata !886, metadata !DIExpression()), !dbg !892
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !895
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !897
  call void @llvm.dbg.value(metadata i32 3, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 3, metadata !886, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !895
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !897
  call void @llvm.dbg.value(metadata i32 4, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 4, metadata !886, metadata !DIExpression()), !dbg !892
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !895
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !897
  call void @llvm.dbg.value(metadata i32 5, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 5, metadata !886, metadata !DIExpression()), !dbg !892
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !898
  ret void, !dbg !899
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i8** undef, metadata !903, metadata !DIExpression()), !dbg !907
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !908
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !909
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()), !dbg !910
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !911
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !904, metadata !DIExpression()), !dbg !910
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !913
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 1, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 1, metadata !904, metadata !DIExpression()), !dbg !910
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !913
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 2, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 2, metadata !904, metadata !DIExpression()), !dbg !910
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !913
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 3, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 3, metadata !904, metadata !DIExpression()), !dbg !910
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !913
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 4, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 4, metadata !904, metadata !DIExpression()), !dbg !910
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !913
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 5, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 5, metadata !904, metadata !DIExpression()), !dbg !910
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !920, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8** undef, metadata !921, metadata !DIExpression()), !dbg !925
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !926
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !927
  call void @llvm.dbg.value(metadata i32 0, metadata !922, metadata !DIExpression()), !dbg !928
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !929
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !923, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 0, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 0, metadata !922, metadata !DIExpression()), !dbg !928
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !931
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 1, metadata !922, metadata !DIExpression()), !dbg !928
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !931
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 2, metadata !922, metadata !DIExpression()), !dbg !928
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !931
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 3, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 3, metadata !922, metadata !DIExpression()), !dbg !928
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !931
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 4, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 4, metadata !922, metadata !DIExpression()), !dbg !928
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !931
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 5, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 5, metadata !922, metadata !DIExpression()), !dbg !928
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !934
  ret void, !dbg !935
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !936 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !938, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8* %1, metadata !939, metadata !DIExpression()), !dbg !941
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !942
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !948
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !949, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !578, metadata !DIExpression()) #9, !dbg !949
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !577, metadata !DIExpression()) #9, !dbg !951
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !952
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !952
  %10 = load i64, i64* %9, align 8, !dbg !952
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !953
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !945, metadata !DIExpression(DW_OP_deref)) #9, !dbg !954
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !955
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !946, metadata !DIExpression(DW_OP_deref)) #9, !dbg !956
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !957
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !958
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !958
  ret i32 0, !dbg !959
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !960 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !962, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8** undef, metadata !963, metadata !DIExpression()), !dbg !967
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !968
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !969
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !970
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 1, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 1, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !964, metadata !DIExpression()), !dbg !970
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 3, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 3, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 4, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 4, metadata !964, metadata !DIExpression()), !dbg !970
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 5, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 5, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 6, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 6, metadata !964, metadata !DIExpression()), !dbg !970
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 7, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 7, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 8, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 8, metadata !964, metadata !DIExpression()), !dbg !970
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #10, !dbg !971
  call void @llvm.dbg.value(metadata i32 9, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 9, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 10, metadata !964, metadata !DIExpression()), !dbg !970
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !976
  ret void, !dbg !977
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !978 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !980, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8** undef, metadata !981, metadata !DIExpression()), !dbg !985
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !986
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !987
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 1, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 1, metadata !982, metadata !DIExpression()), !dbg !988
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 2, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 2, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 3, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 3, metadata !982, metadata !DIExpression()), !dbg !988
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 4, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 4, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 5, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 5, metadata !982, metadata !DIExpression()), !dbg !988
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 6, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 6, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 7, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 7, metadata !982, metadata !DIExpression()), !dbg !988
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 8, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 8, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 9, metadata !982, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 9, metadata !982, metadata !DIExpression()), !dbg !988
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #10, !dbg !989
  call void @llvm.dbg.value(metadata i32 10, metadata !982, metadata !DIExpression()), !dbg !988
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !994
  ret void, !dbg !995
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !996 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8* %1, metadata !999, metadata !DIExpression()), !dbg !1001
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1002
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1007, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !1007
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !1009
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1010
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1010
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1011
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1005, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1013
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1015
  ret i32 0, !dbg !1016
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1017 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1019, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8** undef, metadata !1020, metadata !DIExpression()), !dbg !1025
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1026
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()), !dbg !1028
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()), !dbg !1028
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1022, metadata !DIExpression(DW_OP_deref)), !dbg !1031
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1033
  call void @llvm.dbg.value(metadata i32 1, metadata !1021, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 1, metadata !1021, metadata !DIExpression()), !dbg !1028
  %8 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1022, metadata !DIExpression(DW_OP_deref)), !dbg !1031
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1033
  call void @llvm.dbg.value(metadata i32 2, metadata !1021, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 2, metadata !1021, metadata !DIExpression()), !dbg !1028
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1022, metadata !DIExpression(DW_OP_deref)), !dbg !1031
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1033
  call void @llvm.dbg.value(metadata i32 3, metadata !1021, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i32 3, metadata !1021, metadata !DIExpression()), !dbg !1028
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1036 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1038, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i8** undef, metadata !1039, metadata !DIExpression()), !dbg !1042
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1043
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1044
  call void @llvm.dbg.value(metadata i32 0, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1040, metadata !DIExpression()), !dbg !1045
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 1, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 1, metadata !1040, metadata !DIExpression()), !dbg !1045
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 2, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 2, metadata !1040, metadata !DIExpression()), !dbg !1045
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 3, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 3, metadata !1040, metadata !DIExpression()), !dbg !1045
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 4, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 4, metadata !1040, metadata !DIExpression()), !dbg !1045
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 5, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 5, metadata !1040, metadata !DIExpression()), !dbg !1045
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 6, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 6, metadata !1040, metadata !DIExpression()), !dbg !1045
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 7, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 7, metadata !1040, metadata !DIExpression()), !dbg !1045
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 8, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 8, metadata !1040, metadata !DIExpression()), !dbg !1045
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 9, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 9, metadata !1040, metadata !DIExpression()), !dbg !1045
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i32 10, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 10, metadata !1040, metadata !DIExpression()), !dbg !1045
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !1048
  ret void, !dbg !1049
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers11(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1050 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %1, metadata !1053, metadata !DIExpression()), !dbg !1055
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1056
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1062
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1063, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !578, metadata !DIExpression()) #9, !dbg !1063
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !577, metadata !DIExpression()) #9, !dbg !1065
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1066
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1066
  %10 = load i64, i64* %9, align 8, !dbg !1066
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1067
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1059, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1068
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1069
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1060, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1070
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1071
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1072
  ret i32 0, !dbg !1073
}

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1074 {
  %3 = alloca [2000 x i64], align 16
  call void @llvm.dbg.value(metadata i8* undef, metadata !1076, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8** undef, metadata !1077, metadata !DIExpression()), !dbg !1086
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1087
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1088
  call void @llvm.dbg.value(metadata i32 0, metadata !1078, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !1079, metadata !DIExpression()), !dbg !1090
  %5 = bitcast [2000 x i64]* %3 to i8*, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 16000, i8* nonnull %5) #9, !dbg !1091
  call void @llvm.dbg.declare(metadata [2000 x i64]* %3, metadata !1080, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 0, metadata !1078, metadata !DIExpression()), !dbg !1089
  br label %6, !dbg !1093

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %16, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1078, metadata !DIExpression()), !dbg !1089
  tail call void @nk_simple_timing_loop(i64 100) #10, !dbg !1094
  %8 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1096, !srcloc !1105
  %9 = extractvalue { i32, i32 } %8, 0, !dbg !1096
  %10 = extractvalue { i32, i32 } %8, 1, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %9, metadata !1102, metadata !DIExpression()) #9, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %10, metadata !1103, metadata !DIExpression()) #9, !dbg !1107
  %11 = zext i32 %9 to i64, !dbg !1108
  %12 = zext i32 %10 to i64, !dbg !1109
  %13 = shl nuw i64 %12, 32, !dbg !1110
  %14 = or i64 %13, %11, !dbg !1111
  %15 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %7, !dbg !1112
  store i64 %14, i64* %15, align 8, !dbg !1113
  %16 = add nuw nsw i64 %7, 1, !dbg !1114
  call void @llvm.dbg.value(metadata i32 undef, metadata !1078, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1089
  %17 = icmp eq i64 %16, 2000, !dbg !1115
  br i1 %17, label %18, label %6, !dbg !1093, !llvm.loop !1116

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds [2000 x i64], [2000 x i64]* %3, i64 0, i64 0
  %20 = load i64, i64* %19, align 16, !dbg !1118
  br label %21, !dbg !1121

; <label>:21:                                     ; preds = %21, %18
  %22 = phi i64 [ %20, %18 ], [ %27, %21 ], !dbg !1118
  %23 = phi i64 [ 1, %18 ], [ %31, %21 ]
  %24 = phi i32 [ 1, %18 ], [ %32, %21 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1084, metadata !DIExpression()), !dbg !1122
  %25 = add nsw i32 %24, -1, !dbg !1121
  %26 = getelementptr [2000 x i64], [2000 x i64]* %3, i64 0, i64 %23, !dbg !1123
  %27 = load i64, i64* %26, align 8, !dbg !1123
  %28 = sub i64 %27, %22, !dbg !1124
  %29 = trunc i64 %23 to i32, !dbg !1125
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i32 %25, i32 %29, i64 %28) #10, !dbg !1125
  %31 = add nuw nsw i64 %23, 1, !dbg !1126
  %32 = add nuw nsw i32 %24, 1, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %32, metadata !1084, metadata !DIExpression()), !dbg !1122
  %33 = icmp eq i64 %31, 2000, !dbg !1127
  br i1 %33, label %34, label %21, !dbg !1128, !llvm.loop !1129

; <label>:34:                                     ; preds = %21
  %35 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 16000, i8* nonnull %5) #9, !dbg !1132
  ret void, !dbg !1132
}

; Function Attrs: noredzone nounwind
define dso_local void @benchmark_timer2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1133 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8** undef, metadata !1136, metadata !DIExpression()), !dbg !1139
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1140
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i32 0, metadata !1137, metadata !DIExpression()), !dbg !1142
  br label %4, !dbg !1143

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1137, metadata !DIExpression()), !dbg !1142
  tail call void @nk_simple_timing_loop(i64 100) #10, !dbg !1144
  %6 = add nuw nsw i32 %5, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %6, metadata !1137, metadata !DIExpression()), !dbg !1142
  %7 = icmp eq i32 %6, 2000, !dbg !1147
  br i1 %7, label %8, label %4, !dbg !1143, !llvm.loop !1148

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: noredzone
declare dso_local void @nk_simple_timing_loop(i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1152 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i8* %1, metadata !1155, metadata !DIExpression()), !dbg !1157
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1158
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1164
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1164
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1165, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !578, metadata !DIExpression()) #9, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !577, metadata !DIExpression()) #9, !dbg !1167
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1168
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1168
  %10 = load i64, i64* %9, align 8, !dbg !1168
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1161, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1170
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1162, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1172
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1173
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1174
  ret i32 0, !dbg !1175
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1176 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1178, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8** undef, metadata !1179, metadata !DIExpression()), !dbg !1184
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1185
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1186
  call void @llvm.dbg.value(metadata i32 0, metadata !1180, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 0, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1189
  br label %4, !dbg !1190

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %6, metadata !1180, metadata !DIExpression()), !dbg !1187
  %7 = icmp eq i32 %6, 2, !dbg !1191
  br i1 %7, label %8, label %16, !dbg !1194

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1195, !srcloc !1105
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !1195
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %10, metadata !1102, metadata !DIExpression()) #9, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %11, metadata !1103, metadata !DIExpression()) #9, !dbg !1199
  %12 = zext i32 %10 to i64, !dbg !1200
  %13 = zext i32 %11 to i64, !dbg !1201
  %14 = shl nuw i64 %13, 32, !dbg !1202
  %15 = or i64 %14, %12, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %15, metadata !1181, metadata !DIExpression()), !dbg !1188
  br label %16, !dbg !1204

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !1205
  %18 = add nuw nsw i32 %6, 1, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %18, metadata !1180, metadata !DIExpression()), !dbg !1187
  %19 = icmp eq i32 %18, 100000, !dbg !1207
  br i1 %19, label %20, label %4, !dbg !1190, !llvm.loop !1208

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 100000, metadata !1180, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %17, metadata !1181, metadata !DIExpression()), !dbg !1188
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1210, !srcloc !1105
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !1210
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %22, metadata !1102, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %23, metadata !1103, metadata !DIExpression()) #9, !dbg !1213
  %24 = zext i32 %22 to i64, !dbg !1214
  %25 = zext i32 %23 to i64, !dbg !1215
  %26 = shl nuw i64 %25, 32, !dbg !1216
  %27 = or i64 %26, %24, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %27, metadata !1182, metadata !DIExpression()), !dbg !1189
  %28 = sub i64 %27, %17, !dbg !1218
  %29 = udiv i64 %28, 100000, !dbg !1219
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %28, i64 %29) #10, !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1222 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1224, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8** undef, metadata !1225, metadata !DIExpression()), !dbg !1228
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1229
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 0, metadata !1226, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 undef, metadata !1226, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 100000, metadata !1226, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 100000, metadata !1226, metadata !DIExpression()), !dbg !1231
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #10, !dbg !1232
  ret void, !dbg !1233
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1234 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1236, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %1, metadata !1237, metadata !DIExpression()), !dbg !1239
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1240
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1247
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1248
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1249, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !578, metadata !DIExpression()) #9, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !577, metadata !DIExpression()) #9, !dbg !1251
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1252
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !1252
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !1253
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1243, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1255
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1244, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1257
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1258
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !1245, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1259
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #10, !dbg !1260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1261
  ret i32 0, !dbg !1262
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1263 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1265, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8** undef, metadata !1266, metadata !DIExpression()), !dbg !1270
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1271
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1272
  call void @llvm.dbg.value(metadata i32 0, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 0, metadata !1267, metadata !DIExpression()), !dbg !1273
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #10, !dbg !1274
  %6 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1276
  call void @llvm.dbg.value(metadata i32 1, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 1, metadata !1267, metadata !DIExpression()), !dbg !1273
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #10, !dbg !1274
  %8 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1276
  call void @llvm.dbg.value(metadata i32 2, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 2, metadata !1267, metadata !DIExpression()), !dbg !1273
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #10, !dbg !1274
  %10 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1276
  call void @llvm.dbg.value(metadata i32 3, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 3, metadata !1267, metadata !DIExpression()), !dbg !1273
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #10, !dbg !1274
  %12 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1276
  call void @llvm.dbg.value(metadata i32 4, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 4, metadata !1267, metadata !DIExpression()), !dbg !1273
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #10, !dbg !1274
  %14 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1276
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 5, metadata !1267, metadata !DIExpression()), !dbg !1273
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !1277
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1278
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1268, metadata !DIExpression(DW_OP_deref)), !dbg !1279
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1280
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1281
  ret void, !dbg !1281
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1282 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8** undef, metadata !1285, metadata !DIExpression()), !dbg !1289
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1290
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1291
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 0, metadata !1286, metadata !DIExpression()), !dbg !1292
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 1, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 1, metadata !1286, metadata !DIExpression()), !dbg !1292
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 2, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 2, metadata !1286, metadata !DIExpression()), !dbg !1292
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 3, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 3, metadata !1286, metadata !DIExpression()), !dbg !1292
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 4, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 4, metadata !1286, metadata !DIExpression()), !dbg !1292
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 5, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 5, metadata !1286, metadata !DIExpression()), !dbg !1292
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 6, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 6, metadata !1286, metadata !DIExpression()), !dbg !1292
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 7, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 7, metadata !1286, metadata !DIExpression()), !dbg !1292
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 8, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 8, metadata !1286, metadata !DIExpression()), !dbg !1292
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 9, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 9, metadata !1286, metadata !DIExpression()), !dbg !1292
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #10, !dbg !1293
  call void @llvm.dbg.value(metadata i32 10, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i32 10, metadata !1286, metadata !DIExpression()), !dbg !1292
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #10, !dbg !1295
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1287, metadata !DIExpression(DW_OP_deref)), !dbg !1297
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1299
  ret void, !dbg !1299
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1300 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1302, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8** undef, metadata !1303, metadata !DIExpression()), !dbg !1307
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1308
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()), !dbg !1310
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #10, !dbg !1311
  call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1310
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #10, !dbg !1311
  call void @llvm.dbg.value(metadata i32 2, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 2, metadata !1304, metadata !DIExpression()), !dbg !1310
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #10, !dbg !1313
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1305, metadata !DIExpression(DW_OP_deref)), !dbg !1315
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1316
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1317
  ret void, !dbg !1317
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1318 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1320, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8** undef, metadata !1321, metadata !DIExpression()), !dbg !1324
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1325
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1326
  call void @llvm.dbg.value(metadata i32 0, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 0, metadata !1322, metadata !DIExpression()), !dbg !1327
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !1327
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 2, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 2, metadata !1322, metadata !DIExpression()), !dbg !1327
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 3, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 3, metadata !1322, metadata !DIExpression()), !dbg !1327
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 4, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 4, metadata !1322, metadata !DIExpression()), !dbg !1327
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 5, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 5, metadata !1322, metadata !DIExpression()), !dbg !1327
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 6, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 6, metadata !1322, metadata !DIExpression()), !dbg !1327
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 7, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 7, metadata !1322, metadata !DIExpression()), !dbg !1327
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 8, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 8, metadata !1322, metadata !DIExpression()), !dbg !1327
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 9, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 9, metadata !1322, metadata !DIExpression()), !dbg !1327
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i32 10, metadata !1322, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 10, metadata !1322, metadata !DIExpression()), !dbg !1327
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #10, !dbg !1330
  ret void, !dbg !1331
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !1332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1336, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 0, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 0, metadata !1337, metadata !DIExpression()), !dbg !1341
  %2 = icmp sgt i32 %0, 0, !dbg !1342
  br i1 %2, label %3, label %8, !dbg !1345

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1337, metadata !DIExpression()), !dbg !1341
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #10, !dbg !1346
  %6 = add nuw nsw i32 %4, 1, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %4, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %6, metadata !1337, metadata !DIExpression()), !dbg !1341
  %7 = icmp eq i32 %6, %0, !dbg !1342
  br i1 %7, label %8, label %3, !dbg !1345, !llvm.loop !1349

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !1351
  call void @llvm.dbg.value(metadata i32 %9, metadata !1338, metadata !DIExpression()), !dbg !1340
  ret i32 %9, !dbg !1352
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_benchmark1() local_unnamed_addr #0 !dbg !1057 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1353
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1354
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1354
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1355, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !1355
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !1357
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1358
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1358
  %8 = load i64, i64* %7, align 8, !dbg !1358
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1359
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1059, metadata !DIExpression(DW_OP_deref)), !dbg !1360
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1060, metadata !DIExpression(DW_OP_deref)), !dbg !1362
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @benchmark_timer2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1364
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1364
  ret i32 0, !dbg !1365
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !943 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1366
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1367
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1368, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !1370
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1371
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1371
  %8 = load i64, i64* %7, align 8, !dbg !1371
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1372
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1374
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !1375
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1377
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1377
  ret i32 0, !dbg !1378
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !1003 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1379
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1379
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1380, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1382
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1383
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1383
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1384
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1005, metadata !DIExpression(DW_OP_deref)), !dbg !1386
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1388
  ret i32 0, !dbg !1389
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !1241 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1390
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1391
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1392
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1393, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !578, metadata !DIExpression()) #9, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !577, metadata !DIExpression()) #9, !dbg !1395
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1396
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !1396
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !1397
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %9) #10, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1243, metadata !DIExpression(DW_OP_deref)), !dbg !1399
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1400
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1244, metadata !DIExpression(DW_OP_deref)), !dbg !1401
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1245, metadata !DIExpression(DW_OP_deref)), !dbg !1403
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1405
  ret i32 0, !dbg !1406
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !758 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1407
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1408, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1410
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1411
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1411
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1412
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !760, metadata !DIExpression(DW_OP_deref)), !dbg !1414
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1416
  ret i32 0, !dbg !1417
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !720 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1418
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1418
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1419, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1419
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1421
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1422
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1422
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1423
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1424
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !722, metadata !DIExpression(DW_OP_deref)), !dbg !1425
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1426
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1427
  ret i32 0, !dbg !1428
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !674 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1429
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1429
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1430, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1432
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1433
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1433
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1434
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !676, metadata !DIExpression(DW_OP_deref)), !dbg !1436
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1438
  ret i32 0, !dbg !1439
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !615 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1440
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1440
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1441, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1441
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1443
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1444
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1444
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1445
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1446
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !1447
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1448
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1449
  ret i32 0, !dbg !1450
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !564 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1451
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1451
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1452, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !578, metadata !DIExpression()) #9, !dbg !1452
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !577, metadata !DIExpression()) #9, !dbg !1454
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1455
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1455
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1456
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !568, metadata !DIExpression(DW_OP_deref)), !dbg !1458
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1460
  ret i32 0, !dbg !1461
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !1159 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1462
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1463
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1463
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1464, !srcloc !580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !578, metadata !DIExpression()) #9, !dbg !1464
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !577, metadata !DIExpression()) #9, !dbg !1466
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1467
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1467
  %8 = load i64, i64* %7, align 8, !dbg !1467
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1161, metadata !DIExpression(DW_OP_deref)), !dbg !1469
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1470
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1162, metadata !DIExpression(DW_OP_deref)), !dbg !1471
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1473
  ret i32 0, !dbg !1474
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1475 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1481
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1487
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1488
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1488
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1489
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1490 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1493
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1496
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1497
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1497
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1498
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1498
  ret %struct.nk_fiber* %6, !dbg !1499
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1500 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1501
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1504
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1505
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1505
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1506
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1506
  ret %struct.nk_fiber* %6, !dbg !1507
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1508 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1511
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1514
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1515
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1515
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1516
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1516
  ret %struct.nk_thread* %6, !dbg !1517
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1518 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1521
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1524
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1525
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1525
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1526
  ret %struct.list_head* %5, !dbg !1527
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !1528 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %1, metadata !1533, metadata !DIExpression()), !dbg !1535
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1536
  %4 = load i64, i64* %3, align 8, !dbg !1537
  %5 = add i64 %4, -8, !dbg !1537
  store i64 %5, i64* %3, align 8, !dbg !1537
  %6 = inttoptr i64 %5 to i64*, !dbg !1538
  store i64 %1, i64* %6, align 8, !dbg !1539
  ret void, !dbg !1540
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1541 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1555
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1559
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1560
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1560
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1543, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1564, metadata !DIExpression()), !dbg !1569
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1571
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1571
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1572
  br i1 %8, label %20, label %9, !dbg !1573

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1545, metadata !DIExpression()), !dbg !1574
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1574
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1574
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1545, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1544, metadata !DIExpression()), !dbg !1563
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1575
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1576, metadata !DIExpression()), !dbg !1581
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1583
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1583
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1584
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1585, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1590, metadata !DIExpression()), !dbg !1593
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1594
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1595
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1596
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1598, metadata !DIExpression()), !dbg !1601
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1603
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1603
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1604
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1604
  br label %20, !dbg !1605

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1606
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1544, metadata !DIExpression()), !dbg !1563
  ret %struct.nk_fiber* %21, !dbg !1607
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1608 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1612, metadata !DIExpression()), !dbg !1623
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1624
  store i32 4, i32* %3, align 4, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1613, metadata !DIExpression()), !dbg !1626
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1627
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1615, metadata !DIExpression()), !dbg !1628
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1629
  %6 = load i32, i32* %5, align 8, !dbg !1629
  %7 = icmp sgt i32 %6, 0, !dbg !1630
  br i1 %7, label %8, label %66, !dbg !1631

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1631

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1616, metadata !DIExpression()), !dbg !1632
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1633
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1633
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1632
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1632
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1616, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1614, metadata !DIExpression()), !dbg !1634
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1635
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1576, metadata !DIExpression()), !dbg !1636
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1638
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1638
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1639
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1585, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1590, metadata !DIExpression()), !dbg !1642
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1643
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1644
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1645
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1646
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1598, metadata !DIExpression()), !dbg !1647
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1649
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1650
  %24 = load i32, i32* %5, align 8, !dbg !1651
  %25 = add i32 %24, -1, !dbg !1651
  store i32 %25, i32* %5, align 8, !dbg !1651
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1652
  br i1 %26, label %63, label %27, !dbg !1654

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1655, metadata !DIExpression()) #9, !dbg !1663
  call void @llvm.dbg.value(metadata i8 1, metadata !1660, metadata !DIExpression()) #9, !dbg !1666
  %28 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %28, metadata !1661, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1671
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1672, !srcloc !1692
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1679, metadata !DIExpression()) #9, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1678, metadata !DIExpression()) #9, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1677, metadata !DIExpression()) #9, !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1695
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #10, !dbg !1700
  %30 = load i64, i64* %2, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %30, metadata !1698, metadata !DIExpression()) #9, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1703
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1704
  %32 = load i32, i32* %31, align 8, !dbg !1704
  %33 = zext i32 %32 to i64, !dbg !1705
  %34 = urem i64 %30, %33, !dbg !1706
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1707, !srcloc !1708
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1687, metadata !DIExpression()) #9, !dbg !1707
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1685, metadata !DIExpression()) #9, !dbg !1709
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1684, metadata !DIExpression()) #9, !dbg !1710
  %36 = shl nuw i64 %34, 32, !dbg !1711
  %37 = ashr exact i64 %36, 32, !dbg !1711
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1711
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1661, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1671
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1712
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1712
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1712
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1661, metadata !DIExpression()) #9, !dbg !1671
  %44 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1713
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1717
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1718
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1718
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1719
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1662, metadata !DIExpression()) #9, !dbg !1720
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1721
  store i32 1, i32* %49, align 4, !dbg !1722
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1724, metadata !DIExpression()) #9, !dbg !1728
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1727, metadata !DIExpression()) #9, !dbg !1730
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1731
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1731
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1732, metadata !DIExpression()) #9, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1737, metadata !DIExpression()) #9, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1738, metadata !DIExpression()) #9, !dbg !1742
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1743
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1744
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1745
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1746
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1747
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1748
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1749
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1750
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1750
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1752
  br i1 %58, label %61, label %59, !dbg !1753

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #10, !dbg !1754
  br label %61, !dbg !1756

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1629
  br label %63, !dbg !1629

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1629
  %65 = icmp sgt i32 %64, 0, !dbg !1630
  br i1 %65, label %11, label %66, !dbg !1631, !llvm.loop !1757

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1759
  store i8 1, i8* %67, align 8, !dbg !1760
  %68 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1761
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1766
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1767
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1767
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1543, metadata !DIExpression()) #9, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1564, metadata !DIExpression()) #9, !dbg !1771
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1773
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1773
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1774
  br i1 %75, label %88, label %76, !dbg !1775

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1545, metadata !DIExpression()) #9, !dbg !1776
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1776
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1545, metadata !DIExpression()) #9, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1544, metadata !DIExpression()) #9, !dbg !1770
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1576, metadata !DIExpression()) #9, !dbg !1778
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1780
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1780
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1585, metadata !DIExpression()) #9, !dbg !1782
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1590, metadata !DIExpression()) #9, !dbg !1784
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1785
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1786
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1787
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1598, metadata !DIExpression()) #9, !dbg !1789
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1791
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1791
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1792
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1792
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1544, metadata !DIExpression()) #9, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1613, metadata !DIExpression()), !dbg !1626
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1793
  br i1 %87, label %88, label %95, !dbg !1795

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1796
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1801
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1802
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1802
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1803
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1613, metadata !DIExpression()), !dbg !1626
  br label %95, !dbg !1804

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1613, metadata !DIExpression()), !dbg !1626
  %97 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1806
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1809
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1810
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1810
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1811
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1812
  %102 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1813
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1816
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1817
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1817
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1818
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1818
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1576, metadata !DIExpression()), !dbg !1820
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1822
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1822
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1823
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1585, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1590, metadata !DIExpression()), !dbg !1826
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1827
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1828
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1829
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1598, metadata !DIExpression()), !dbg !1831
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1833
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1834
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1835
  %116 = load i8*, i8** %115, align 8, !dbg !1835
  call void @kmem_free(i8* %116) #10, !dbg !1835
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1836
  call void @kmem_free(i8* %117) #10, !dbg !1836
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #10, !dbg !1837
  ret void, !dbg !1838
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
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1656 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1655, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %1, metadata !1660, metadata !DIExpression()), !dbg !1840
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1841
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1845
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1661, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1846
  %6 = icmp eq i8 %1, 0, !dbg !1847
  br i1 %6, label %20, label %7, !dbg !1848

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1849, !srcloc !1692
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1679, metadata !DIExpression()) #9, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1678, metadata !DIExpression()) #9, !dbg !1852
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1677, metadata !DIExpression()) #9, !dbg !1853
  %9 = bitcast i64* %3 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1854
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #10, !dbg !1856
  %10 = load i64, i64* %3, align 8, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %10, metadata !1698, metadata !DIExpression()) #9, !dbg !1858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1859
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1860
  %12 = load i32, i32* %11, align 8, !dbg !1860
  %13 = zext i32 %12 to i64, !dbg !1861
  %14 = urem i64 %10, %13, !dbg !1862
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1863, !srcloc !1708
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1687, metadata !DIExpression()) #9, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1685, metadata !DIExpression()) #9, !dbg !1864
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1684, metadata !DIExpression()) #9, !dbg !1865
  %16 = shl nuw i64 %14, 32, !dbg !1866
  %17 = ashr exact i64 %16, 32, !dbg !1866
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1866
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1866
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1661, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1846
  br label %20, !dbg !1867

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1868
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1868
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1868
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1868
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1661, metadata !DIExpression()), !dbg !1846
  %26 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1869
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1873
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1874
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1874
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1875
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1662, metadata !DIExpression()), !dbg !1876
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1877
  store i32 1, i32* %31, align 4, !dbg !1878
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1724, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1727, metadata !DIExpression()), !dbg !1882
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1883
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1883
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1732, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1737, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1738, metadata !DIExpression()), !dbg !1887
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1888
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1889
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1890
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1891
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1892
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1893
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1894
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1895
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1895
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1896
  br i1 %40, label %43, label %41, !dbg !1897

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #10, !dbg !1898
  br label %43, !dbg !1899

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1900
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1901 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1903, metadata !DIExpression()), !dbg !1904
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1905
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1905
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1906
  %5 = load i8*, i8** %4, align 8, !dbg !1906
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1907
  %7 = load i8**, i8*** %6, align 8, !dbg !1907
  tail call void %3(i8* %5, i8** %7) #10, !dbg !1908
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #11, !dbg !1909
  ret void, !dbg !1910
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1911 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1913, metadata !DIExpression()), !dbg !1914
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1915
  %3 = bitcast i8** %2 to i64*, !dbg !1915
  %4 = load i64, i64* %3, align 8, !dbg !1915
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1916
  %6 = load i64, i64* %5, align 8, !dbg !1916
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1533, metadata !DIExpression()), !dbg !1920
  %8 = add i64 %4, -8, !dbg !1921
  %9 = add i64 %8, %6, !dbg !1922
  store i64 %9, i64* %7, align 8, !dbg !1922
  %10 = inttoptr i64 %9 to i64*, !dbg !1923
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1924
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1927
  %11 = load i64, i64* %7, align 8, !dbg !1928
  %12 = add i64 %11, -8, !dbg !1928
  store i64 %12, i64* %7, align 8, !dbg !1928
  %13 = inttoptr i64 %12 to i64*, !dbg !1929
  store i64 0, i64* %13, align 8, !dbg !1930
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1933
  %14 = load i64, i64* %7, align 8, !dbg !1934
  %15 = add i64 %14, -8, !dbg !1934
  store i64 %15, i64* %7, align 8, !dbg !1934
  %16 = inttoptr i64 %15 to i64*, !dbg !1935
  store i64 0, i64* %16, align 8, !dbg !1936
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1939
  %17 = load i64, i64* %7, align 8, !dbg !1940
  %18 = add i64 %17, -8, !dbg !1940
  store i64 %18, i64* %7, align 8, !dbg !1940
  %19 = inttoptr i64 %18 to i64*, !dbg !1941
  store i64 0, i64* %19, align 8, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1945
  %20 = load i64, i64* %7, align 8, !dbg !1946
  %21 = add i64 %20, -8, !dbg !1946
  store i64 %21, i64* %7, align 8, !dbg !1946
  %22 = inttoptr i64 %21 to i64*, !dbg !1947
  store i64 0, i64* %22, align 8, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1951
  %23 = load i64, i64* %7, align 8, !dbg !1952
  %24 = add i64 %23, -8, !dbg !1952
  store i64 %24, i64* %7, align 8, !dbg !1952
  %25 = inttoptr i64 %24 to i64*, !dbg !1953
  store i64 0, i64* %25, align 8, !dbg !1954
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1955
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %26, metadata !1533, metadata !DIExpression()), !dbg !1958
  %27 = load i64, i64* %7, align 8, !dbg !1959
  %28 = add i64 %27, -8, !dbg !1959
  store i64 %28, i64* %7, align 8, !dbg !1959
  %29 = inttoptr i64 %28 to i64*, !dbg !1960
  store i64 %26, i64* %29, align 8, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1964
  %30 = load i64, i64* %7, align 8, !dbg !1965
  %31 = add i64 %30, -8, !dbg !1965
  store i64 %31, i64* %7, align 8, !dbg !1965
  %32 = inttoptr i64 %31 to i64*, !dbg !1966
  store i64 0, i64* %32, align 8, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1970
  %33 = load i64, i64* %7, align 8, !dbg !1971
  %34 = add i64 %33, -8, !dbg !1971
  store i64 %34, i64* %7, align 8, !dbg !1971
  %35 = inttoptr i64 %34 to i64*, !dbg !1972
  store i64 0, i64* %35, align 8, !dbg !1973
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1976
  %36 = load i64, i64* %7, align 8, !dbg !1977
  %37 = add i64 %36, -8, !dbg !1977
  store i64 %37, i64* %7, align 8, !dbg !1977
  %38 = inttoptr i64 %37 to i64*, !dbg !1978
  store i64 0, i64* %38, align 8, !dbg !1979
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1982
  %39 = load i64, i64* %7, align 8, !dbg !1983
  %40 = add i64 %39, -8, !dbg !1983
  store i64 %40, i64* %7, align 8, !dbg !1983
  %41 = inttoptr i64 %40 to i64*, !dbg !1984
  store i64 0, i64* %41, align 8, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1988
  %42 = load i64, i64* %7, align 8, !dbg !1989
  %43 = add i64 %42, -8, !dbg !1989
  store i64 %43, i64* %7, align 8, !dbg !1989
  %44 = inttoptr i64 %43 to i64*, !dbg !1990
  store i64 0, i64* %44, align 8, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !1994
  %45 = load i64, i64* %7, align 8, !dbg !1995
  %46 = add i64 %45, -8, !dbg !1995
  store i64 %46, i64* %7, align 8, !dbg !1995
  %47 = inttoptr i64 %46 to i64*, !dbg !1996
  store i64 0, i64* %47, align 8, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !2000
  %48 = load i64, i64* %7, align 8, !dbg !2001
  %49 = add i64 %48, -8, !dbg !2001
  store i64 %49, i64* %7, align 8, !dbg !2001
  %50 = inttoptr i64 %49 to i64*, !dbg !2002
  store i64 0, i64* %50, align 8, !dbg !2003
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !2006
  %51 = load i64, i64* %7, align 8, !dbg !2007
  %52 = add i64 %51, -8, !dbg !2007
  store i64 %52, i64* %7, align 8, !dbg !2007
  %53 = inttoptr i64 %52 to i64*, !dbg !2008
  store i64 0, i64* %53, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1532, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !2012
  %54 = load i64, i64* %7, align 8, !dbg !2013
  %55 = add i64 %54, -8, !dbg !2013
  store i64 %55, i64* %7, align 8, !dbg !2013
  %56 = inttoptr i64 %55 to i64*, !dbg !2014
  store i64 0, i64* %56, align 8, !dbg !2015
  ret void, !dbg !2016
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2017 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2021, metadata !DIExpression()), !dbg !2026
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2027
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2031
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2032
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2032
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2033
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2033
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2022, metadata !DIExpression()), !dbg !2034
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2035
  %9 = load i32, i32* %8, align 4, !dbg !2035
  %10 = add i32 %9, -3, !dbg !2037
  %11 = icmp ult i32 %10, 2, !dbg !2037
  br i1 %11, label %13, label %12, !dbg !2037

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2038
  br label %13, !dbg !2040

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2041
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2045
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2046
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2046
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2047
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2047
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2048
  br i1 %20, label %36, label %21, !dbg !2049

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2050
  %23 = icmp eq i32 %22, 3, !dbg !2051
  br i1 %23, label %36, label %24, !dbg !2052

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2053
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2057
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2058
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2058
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2059
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2023, metadata !DIExpression()), !dbg !2060
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2061
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1724, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1727, metadata !DIExpression()), !dbg !2064
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2065
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2065
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1732, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1737, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1738, metadata !DIExpression()), !dbg !2069
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2070
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2071
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2072
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2073
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2074
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2075
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2076
  br label %36, !dbg !2077

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2078
  %38 = load i32, i32* %37, align 8, !dbg !2078
  %39 = icmp eq i32 %38, 0, !dbg !2080
  br i1 %39, label %40, label %55, !dbg !2081

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2082
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2082
  %43 = load i64, i64* %42, align 8, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2084, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2090
  %44 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2092
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2096
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2097
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2097
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2098
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2098
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2089, metadata !DIExpression()) #9, !dbg !2099
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2100
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2101
  store i64 %43, i64* %51, align 8, !dbg !2101
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2102, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2108, metadata !DIExpression()) #9, !dbg !2102
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2107, metadata !DIExpression()) #9, !dbg !2111
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2112
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2113
  store i64 %43, i64* %54, align 8, !dbg !2113
  br label %55, !dbg !2114

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2115
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2118
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2119
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2119
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2120
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2121
  store i32 1, i32* %8, align 4, !dbg !2122
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2123
  store i32 5, i32* %61, align 4, !dbg !2124
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #10, !dbg !2125
  ret i32 0, !dbg !2126
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2085 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2084, metadata !DIExpression()), !dbg !2127
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2128
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2132
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2133
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2133
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2134
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2134
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2089, metadata !DIExpression()), !dbg !2135
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2136
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2137
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2138, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2108, metadata !DIExpression()) #9, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2107, metadata !DIExpression()) #9, !dbg !2140
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2141
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2142
  ret void, !dbg !2143
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2144 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2149
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2153
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2154
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2154
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2155
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2155
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2148, metadata !DIExpression()), !dbg !2156
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #11, !dbg !2157
  ret void, !dbg !2158
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2159 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2163, metadata !DIExpression()), !dbg !2166
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2167
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2171
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2172
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2172
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2173
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2164, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2165, metadata !DIExpression()), !dbg !2175
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2176
  %9 = zext i1 %8 to i8, !dbg !2178
  call void @llvm.dbg.value(metadata i8 %9, metadata !2165, metadata !DIExpression()), !dbg !2175
  ret i8 %9, !dbg !2179
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1681 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2180, !srcloc !1692
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1679, metadata !DIExpression()) #9, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1678, metadata !DIExpression()) #9, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1677, metadata !DIExpression()) #9, !dbg !2183
  %3 = bitcast i64* %1 to i8*, !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2184
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #10, !dbg !2186
  %4 = load i64, i64* %1, align 8, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %4, metadata !1698, metadata !DIExpression()) #9, !dbg !2188
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2189
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2190
  %6 = load i32, i32* %5, align 8, !dbg !2190
  %7 = zext i32 %6 to i64, !dbg !2191
  %8 = urem i64 %4, %7, !dbg !2192
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2193, !srcloc !1708
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1687, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1685, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1684, metadata !DIExpression()), !dbg !2195
  %10 = shl nuw i64 %8, 32, !dbg !2196
  %11 = ashr exact i64 %10, 32, !dbg !2196
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2196
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2196
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2197
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2197
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2198
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2198
  ret %struct.nk_thread* %17, !dbg !2199
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2202, metadata !DIExpression()), !dbg !2221
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2222, !srcloc !2223
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2206, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2204, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2203, metadata !DIExpression()), !dbg !2225
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2226
  %4 = load i32, i32* %3, align 8, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %4, metadata !2208, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2228
  %5 = icmp sgt i32 %4, 0, !dbg !2229
  br i1 %5, label %6, label %38, !dbg !2230

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2231
  br label %8, !dbg !2231

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2211, metadata !DIExpression()), !dbg !2228
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2231
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2231
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2232
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2232
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2209, metadata !DIExpression()), !dbg !2234
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2235
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata i8** %15, metadata !2210, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2236
  %16 = load i8*, i8** %15, align 8, !dbg !2237
  br label %17, !dbg !2238

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2237
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2239
  %20 = bitcast i8* %18 to i8**, !dbg !2239
  %21 = load i8*, i8** %20, align 8, !dbg !2239
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2239
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2239
  br i1 %22, label %27, label %23, !dbg !2238

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2237
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2210, metadata !DIExpression()), !dbg !2236
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2240
  br i1 %26, label %30, label %17, !dbg !2243, !llvm.loop !2244

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i32 undef, metadata !2211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2228
  %29 = icmp slt i64 %28, %7, !dbg !2229
  br i1 %29, label %8, label %38, !dbg !2230, !llvm.loop !2247

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1576, metadata !DIExpression()), !dbg !2251
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2253
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2253
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2254
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1585, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1590, metadata !DIExpression()), !dbg !2257
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2258
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2259
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2260
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1598, metadata !DIExpression()), !dbg !2262
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2264
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2265
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2266
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2267 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2296, !srcloc !2297
  call void @llvm.dbg.value(metadata i32 %1, metadata !2272, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2270, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2299
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2300
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2274, metadata !DIExpression()), !dbg !2303
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2304
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2305
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2306
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2307
  br i1 %6, label %7, label %109, !dbg !2308

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2309
  %9 = icmp eq i64 %8, 0, !dbg !2315
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %10, metadata !2320, metadata !DIExpression()) #9, !dbg !2322
  %11 = icmp eq i64 %10, 0, !dbg !2323
  br i1 %11, label %17, label %12, !dbg !2325

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2326
  %14 = inttoptr i64 %13 to i16*, !dbg !2328
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2329
  %16 = zext i16 %15 to i32, !dbg !2329
  br label %17, !dbg !2330

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2331
  %19 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %19, metadata !2336, metadata !DIExpression()) #9, !dbg !2338
  %20 = icmp eq i64 %19, 0, !dbg !2339
  br i1 %20, label %25, label %21, !dbg !2341

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2342
  %23 = inttoptr i64 %22 to i16*, !dbg !2344
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2345
  br label %25, !dbg !2346

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2347

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2275, metadata !DIExpression()), !dbg !2348
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2349, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2108, metadata !DIExpression()) #9, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2107, metadata !DIExpression()) #9, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2281, metadata !DIExpression()), !dbg !2348
  %28 = tail call i32 @nk_vc_is_active() #10, !dbg !2352
  %29 = icmp eq i32 %28, 0, !dbg !2352
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2353
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %31, metadata !2360, metadata !DIExpression()) #9, !dbg !2364
  %32 = icmp eq i64 %31, 0, !dbg !2365
  br i1 %32, label %38, label %33, !dbg !2367

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2368
  %35 = inttoptr i64 %34 to i16*, !dbg !2370
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2371
  %37 = icmp eq i16 %36, 0, !dbg !2372
  br i1 %37, label %38, label %39, !dbg !2353

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2353

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2353
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2353
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2353
  br i1 %29, label %60, label %44, !dbg !2373

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2374

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2374
  %47 = load i64, i64* %46, align 32, !dbg !2374
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2374
  %49 = load i8, i8* %48, align 8, !dbg !2374
  %50 = icmp eq i8 %49, 0, !dbg !2374
  br i1 %50, label %51, label %56, !dbg !2374

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2374
  %53 = load i8, i8* %52, align 64, !dbg !2374
  %54 = icmp eq i8 %53, 0, !dbg !2374
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52, !dbg !2374
  br label %56, !dbg !2374

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ], !dbg !2374
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #10, !dbg !2374
  br label %76, !dbg !2374

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2375

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2375
  %63 = load i64, i64* %62, align 32, !dbg !2375
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2375
  %65 = load i8, i8* %64, align 8, !dbg !2375
  %66 = icmp eq i8 %65, 0, !dbg !2375
  br i1 %66, label %67, label %72, !dbg !2375

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2375
  %69 = load i8, i8* %68, align 64, !dbg !2375
  %70 = icmp eq i8 %69, 0, !dbg !2375
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68, !dbg !2375
  br label %72, !dbg !2375

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ], !dbg !2375
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #10, !dbg !2375
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %77, metadata !2380, metadata !DIExpression()) #9, !dbg !2382
  %78 = icmp eq i64 %77, 0, !dbg !2383
  br i1 %78, label %109, label %79, !dbg !2385

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2386
  %81 = inttoptr i64 %80 to i16*, !dbg !2388
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2389
  br label %109, !dbg !2390

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2294, metadata !DIExpression()), !dbg !2391
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !2392
  %85 = icmp eq i32 %84, 0, !dbg !2392
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %86, metadata !2360, metadata !DIExpression()) #9, !dbg !2399
  %87 = icmp eq i64 %86, 0, !dbg !2400
  br i1 %87, label %93, label %88, !dbg !2401

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2402
  %90 = inttoptr i64 %89 to i16*, !dbg !2403
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2404
  %92 = icmp eq i16 %91, 0, !dbg !2405
  br i1 %92, label %93, label %94, !dbg !2406

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2406

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2406
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2406
  br i1 %85, label %100, label %98, !dbg !2407

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #10, !dbg !2408
  br label %102, !dbg !2408

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 444) #10, !dbg !2410
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %103, metadata !2380, metadata !DIExpression()) #9, !dbg !2415
  %104 = icmp eq i64 %103, 0, !dbg !2416
  br i1 %104, label %109, label %105, !dbg !2417

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2418
  %107 = inttoptr i64 %106 to i16*, !dbg !2419
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2420
  br label %109, !dbg !2421

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2422
  ret i32 %110, !dbg !2423
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2424 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2456, !srcloc !2457
  call void @llvm.dbg.value(metadata i32 %1, metadata !2433, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2458
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #10, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()), !dbg !2459
  %3 = icmp eq i8* %2, null, !dbg !2460
  br i1 %3, label %4, label %106, !dbg !2461

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2462
  %6 = icmp eq i64 %5, 0, !dbg !2464
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %7, metadata !2320, metadata !DIExpression()) #9, !dbg !2468
  %8 = icmp eq i64 %7, 0, !dbg !2469
  br i1 %8, label %14, label %9, !dbg !2470

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2471
  %11 = inttoptr i64 %10 to i16*, !dbg !2472
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2473
  %13 = zext i16 %12 to i32, !dbg !2473
  br label %14, !dbg !2474

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2475
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %16, metadata !2336, metadata !DIExpression()) #9, !dbg !2479
  %17 = icmp eq i64 %16, 0, !dbg !2480
  br i1 %17, label %22, label %18, !dbg !2481

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2482
  %20 = inttoptr i64 %19 to i16*, !dbg !2483
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2484
  br label %22, !dbg !2485

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2486

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2435, metadata !DIExpression()), !dbg !2487
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2488, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2108, metadata !DIExpression()) #9, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2107, metadata !DIExpression()) #9, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2441, metadata !DIExpression()), !dbg !2487
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2491
  %26 = icmp eq i32 %25, 0, !dbg !2491
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2492
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %28, metadata !2360, metadata !DIExpression()) #9, !dbg !2497
  %29 = icmp eq i64 %28, 0, !dbg !2498
  br i1 %29, label %35, label %30, !dbg !2499

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2500
  %32 = inttoptr i64 %31 to i16*, !dbg !2501
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2502
  %34 = icmp eq i16 %33, 0, !dbg !2503
  br i1 %34, label %35, label %36, !dbg !2492

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2492

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2492
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2492
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2492
  br i1 %26, label %57, label %41, !dbg !2504

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2505

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2505
  %44 = load i64, i64* %43, align 32, !dbg !2505
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2505
  %46 = load i8, i8* %45, align 8, !dbg !2505
  %47 = icmp eq i8 %46, 0, !dbg !2505
  br i1 %47, label %48, label %53, !dbg !2505

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2505
  %50 = load i8, i8* %49, align 64, !dbg !2505
  %51 = icmp eq i8 %50, 0, !dbg !2505
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2505
  br label %53, !dbg !2505

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2505
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.58, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #10, !dbg !2505
  br label %73, !dbg !2505

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2506

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2506
  %60 = load i64, i64* %59, align 32, !dbg !2506
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2506
  %62 = load i8, i8* %61, align 8, !dbg !2506
  %63 = icmp eq i8 %62, 0, !dbg !2506
  br i1 %63, label %64, label %69, !dbg !2506

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2506
  %66 = load i8, i8* %65, align 64, !dbg !2506
  %67 = icmp eq i8 %66, 0, !dbg !2506
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2506
  br label %69, !dbg !2506

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2506
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.58, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #10, !dbg !2506
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %74, metadata !2380, metadata !DIExpression()) #9, !dbg !2510
  %75 = icmp eq i64 %74, 0, !dbg !2511
  br i1 %75, label %114, label %76, !dbg !2512

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2513
  %78 = inttoptr i64 %77 to i16*, !dbg !2514
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2515
  br label %114, !dbg !2516

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2454, metadata !DIExpression()), !dbg !2517
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2518
  %82 = icmp eq i32 %81, 0, !dbg !2518
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %83, metadata !2360, metadata !DIExpression()) #9, !dbg !2525
  %84 = icmp eq i64 %83, 0, !dbg !2526
  br i1 %84, label %90, label %85, !dbg !2527

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2528
  %87 = inttoptr i64 %86 to i16*, !dbg !2529
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2530
  %89 = icmp eq i16 %88, 0, !dbg !2531
  br i1 %89, label %90, label %91, !dbg !2532

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2532

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2532
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2532
  br i1 %82, label %97, label %95, !dbg !2533

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.59, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #10, !dbg !2534
  br label %99, !dbg !2534

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.59, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 415) #10, !dbg !2536
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %100, metadata !2380, metadata !DIExpression()) #9, !dbg !2541
  %101 = icmp eq i64 %100, 0, !dbg !2542
  br i1 %101, label %114, label %102, !dbg !2543

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2544
  %104 = inttoptr i64 %103 to i16*, !dbg !2545
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2546
  br label %114, !dbg !2547

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2428, metadata !DIExpression()), !dbg !2549
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #10, !dbg !2550
  %109 = bitcast i8* %2 to i32*, !dbg !2551
  tail call void @spinlock_init(i32* %109) #10, !dbg !2552
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %110, metadata !1598, metadata !DIExpression()), !dbg !2554
  %111 = bitcast i8* %110 to i8**, !dbg !2556
  store i8* %110, i8** %111, align 8, !dbg !2556
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2557
  %113 = bitcast i8* %112 to i8**, !dbg !2558
  store i8* %110, i8** %113, align 8, !dbg !2558
  br label %115, !dbg !2559

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #10, !dbg !2560
  br label %115, !dbg !2561

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2562
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2563
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2564 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2607
  %2 = zext i32 %1 to i64, !dbg !2608
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2608
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2566, metadata !DIExpression()), !dbg !2609
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2610
  %6 = icmp eq i64 %5, 0, !dbg !2612
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %7, metadata !2320, metadata !DIExpression()) #9, !dbg !2616
  %8 = icmp eq i64 %7, 0, !dbg !2617
  br i1 %8, label %14, label %9, !dbg !2618

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2619
  %11 = inttoptr i64 %10 to i16*, !dbg !2620
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2621
  %13 = zext i16 %12 to i32, !dbg !2621
  br label %14, !dbg !2622

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2623
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %16, metadata !2336, metadata !DIExpression()) #9, !dbg !2627
  %17 = icmp eq i64 %16, 0, !dbg !2628
  br i1 %17, label %22, label %18, !dbg !2629

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2630
  %20 = inttoptr i64 %19 to i16*, !dbg !2631
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2632
  br label %22, !dbg !2633

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2634

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2567, metadata !DIExpression()), !dbg !2635
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2636, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2108, metadata !DIExpression()) #9, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2107, metadata !DIExpression()) #9, !dbg !2638
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2571, metadata !DIExpression()), !dbg !2635
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2639
  %26 = icmp eq i32 %25, 0, !dbg !2639
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2640
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %28, metadata !2360, metadata !DIExpression()) #9, !dbg !2645
  %29 = icmp eq i64 %28, 0, !dbg !2646
  br i1 %29, label %35, label %30, !dbg !2647

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2648
  %32 = inttoptr i64 %31 to i16*, !dbg !2649
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2650
  %34 = icmp eq i16 %33, 0, !dbg !2651
  br i1 %34, label %35, label %36, !dbg !2640

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2640

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2640
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2640
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2640
  br i1 %26, label %57, label %41, !dbg !2652

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2653

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2653
  %44 = load i64, i64* %43, align 32, !dbg !2653
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2653
  %46 = load i8, i8* %45, align 8, !dbg !2653
  %47 = icmp eq i8 %46, 0, !dbg !2653
  br i1 %47, label %48, label %53, !dbg !2653

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2653
  %50 = load i8, i8* %49, align 64, !dbg !2653
  %51 = icmp eq i8 %50, 0, !dbg !2653
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2653
  br label %53, !dbg !2653

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2653
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.60, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #10, !dbg !2653
  br label %73, !dbg !2653

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2654

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2654
  %60 = load i64, i64* %59, align 32, !dbg !2654
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2654
  %62 = load i8, i8* %61, align 8, !dbg !2654
  %63 = icmp eq i8 %62, 0, !dbg !2654
  br i1 %63, label %64, label %69, !dbg !2654

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2654
  %66 = load i8, i8* %65, align 64, !dbg !2654
  %67 = icmp eq i8 %66, 0, !dbg !2654
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2654
  br label %69, !dbg !2654

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2654
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.60, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #10, !dbg !2654
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %74, metadata !2380, metadata !DIExpression()) #9, !dbg !2658
  %75 = icmp eq i64 %74, 0, !dbg !2659
  br i1 %75, label %106, label %76, !dbg !2660

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2661
  %78 = inttoptr i64 %77 to i16*, !dbg !2662
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2663
  br label %106, !dbg !2664

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2584, metadata !DIExpression()), !dbg !2665
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2666
  %82 = icmp eq i32 %81, 0, !dbg !2666
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %83, metadata !2360, metadata !DIExpression()) #9, !dbg !2673
  %84 = icmp eq i64 %83, 0, !dbg !2674
  br i1 %84, label %90, label %85, !dbg !2675

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2676
  %87 = inttoptr i64 %86 to i16*, !dbg !2677
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2678
  %89 = icmp eq i16 %88, 0, !dbg !2679
  br i1 %89, label %90, label %91, !dbg !2680

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2680

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2680
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2680
  br i1 %82, label %97, label %95, !dbg !2681

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.61, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2682
  br label %99, !dbg !2682

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.61, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2684
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %100, metadata !2380, metadata !DIExpression()) #9, !dbg !2689
  %101 = icmp eq i64 %100, 0, !dbg !2690
  br i1 %101, label %106, label %102, !dbg !2691

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2692
  %104 = inttoptr i64 %103 to i16*, !dbg !2693
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2694
  br label %106, !dbg !2695

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2696
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2697
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2698
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2699
  br i1 %109, label %110, label %212, !dbg !2700

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2701
  %112 = icmp eq i64 %111, 0, !dbg !2703
  %113 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %113, metadata !2320, metadata !DIExpression()) #9, !dbg !2707
  %114 = icmp eq i64 %113, 0, !dbg !2708
  br i1 %114, label %120, label %115, !dbg !2709

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2710
  %117 = inttoptr i64 %116 to i16*, !dbg !2711
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2712
  %119 = zext i16 %118 to i32, !dbg !2712
  br label %120, !dbg !2713

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2714
  %122 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %122, metadata !2336, metadata !DIExpression()) #9, !dbg !2718
  %123 = icmp eq i64 %122, 0, !dbg !2719
  br i1 %123, label %128, label %124, !dbg !2720

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2721
  %126 = inttoptr i64 %125 to i16*, !dbg !2722
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2723
  br label %128, !dbg !2724

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2725

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2586, metadata !DIExpression()), !dbg !2726
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2727, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2108, metadata !DIExpression()) #9, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2107, metadata !DIExpression()) #9, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2592, metadata !DIExpression()), !dbg !2726
  %131 = tail call i32 @nk_vc_is_active() #10, !dbg !2730
  %132 = icmp eq i32 %131, 0, !dbg !2730
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2731
  %134 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %134, metadata !2360, metadata !DIExpression()) #9, !dbg !2736
  %135 = icmp eq i64 %134, 0, !dbg !2737
  br i1 %135, label %141, label %136, !dbg !2738

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2739
  %138 = inttoptr i64 %137 to i16*, !dbg !2740
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2741
  %140 = icmp eq i16 %139, 0, !dbg !2742
  br i1 %140, label %141, label %142, !dbg !2731

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2731

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2731
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2731
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2731
  br i1 %132, label %163, label %147, !dbg !2743

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2744

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2744
  %150 = load i64, i64* %149, align 32, !dbg !2744
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2744
  %152 = load i8, i8* %151, align 8, !dbg !2744
  %153 = icmp eq i8 %152, 0, !dbg !2744
  br i1 %153, label %154, label %159, !dbg !2744

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2744
  %156 = load i8, i8* %155, align 64, !dbg !2744
  %157 = icmp eq i8 %156, 0, !dbg !2744
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155, !dbg !2744
  br label %159, !dbg !2744

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ], !dbg !2744
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #10, !dbg !2744
  br label %179, !dbg !2744

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2745

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2745
  %166 = load i64, i64* %165, align 32, !dbg !2745
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2745
  %168 = load i8, i8* %167, align 8, !dbg !2745
  %169 = icmp eq i8 %168, 0, !dbg !2745
  br i1 %169, label %170, label %175, !dbg !2745

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2745
  %172 = load i8, i8* %171, align 64, !dbg !2745
  %173 = icmp eq i8 %172, 0, !dbg !2745
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171, !dbg !2745
  br label %175, !dbg !2745

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ], !dbg !2745
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #10, !dbg !2745
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %180, metadata !2380, metadata !DIExpression()) #9, !dbg !2749
  %181 = icmp eq i64 %180, 0, !dbg !2750
  br i1 %181, label %212, label %182, !dbg !2751

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2752
  %184 = inttoptr i64 %183 to i16*, !dbg !2753
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2754
  br label %212, !dbg !2755

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2605, metadata !DIExpression()), !dbg !2756
  %187 = tail call i32 @nk_vc_is_active() #10, !dbg !2757
  %188 = icmp eq i32 %187, 0, !dbg !2757
  %189 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %189, metadata !2360, metadata !DIExpression()) #9, !dbg !2764
  %190 = icmp eq i64 %189, 0, !dbg !2765
  br i1 %190, label %196, label %191, !dbg !2766

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2767
  %193 = inttoptr i64 %192 to i16*, !dbg !2768
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2769
  %195 = icmp eq i16 %194, 0, !dbg !2770
  br i1 %195, label %196, label %197, !dbg !2771

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2771

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2771
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2771
  br i1 %188, label %203, label %201, !dbg !2772

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #10, !dbg !2773
  br label %205, !dbg !2773

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.57, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 464) #10, !dbg !2775
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %206, metadata !2380, metadata !DIExpression()) #9, !dbg !2780
  %207 = icmp eq i64 %206, 0, !dbg !2781
  br i1 %207, label %212, label %208, !dbg !2782

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2783
  %210 = inttoptr i64 %209 to i16*, !dbg !2784
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2785
  br label %212, !dbg !2786

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2787
  ret i32 %213, !dbg !2788
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2789 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2791, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8** undef, metadata !2792, metadata !DIExpression()), !dbg !2906
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2907, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2108, metadata !DIExpression()) #9, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2107, metadata !DIExpression()) #9, !dbg !2909
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2910
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.62, i64 0, i64 0)) #10, !dbg !2911
  %8 = icmp eq i32 %7, 0, !dbg !2911
  br i1 %8, label %111, label %9, !dbg !2912

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2913
  %11 = icmp eq i64 %10, 0, !dbg !2915
  %12 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %12, metadata !2320, metadata !DIExpression()) #9, !dbg !2919
  %13 = icmp eq i64 %12, 0, !dbg !2920
  br i1 %13, label %19, label %14, !dbg !2921

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2922
  %16 = inttoptr i64 %15 to i16*, !dbg !2923
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2924
  %18 = zext i16 %17 to i32, !dbg !2924
  br label %19, !dbg !2925

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2926
  %21 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %21, metadata !2336, metadata !DIExpression()) #9, !dbg !2930
  %22 = icmp eq i64 %21, 0, !dbg !2931
  br i1 %22, label %27, label %23, !dbg !2932

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2933
  %25 = inttoptr i64 %24 to i16*, !dbg !2934
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2935
  br label %27, !dbg !2936

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2937

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2793, metadata !DIExpression()), !dbg !2938
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2939, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2108, metadata !DIExpression()) #9, !dbg !2939
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2107, metadata !DIExpression()) #9, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2799, metadata !DIExpression()), !dbg !2938
  %30 = tail call i32 @nk_vc_is_active() #10, !dbg !2942
  %31 = icmp eq i32 %30, 0, !dbg !2942
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2943
  %33 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %33, metadata !2360, metadata !DIExpression()) #9, !dbg !2948
  %34 = icmp eq i64 %33, 0, !dbg !2949
  br i1 %34, label %40, label %35, !dbg !2950

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2951
  %37 = inttoptr i64 %36 to i16*, !dbg !2952
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2953
  %39 = icmp eq i16 %38, 0, !dbg !2954
  br i1 %39, label %40, label %41, !dbg !2943

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2943

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2943
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2943
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2943
  br i1 %31, label %62, label %46, !dbg !2955

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2956

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2956
  %49 = load i64, i64* %48, align 32, !dbg !2956
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2956
  %51 = load i8, i8* %50, align 8, !dbg !2956
  %52 = icmp eq i8 %51, 0, !dbg !2956
  br i1 %52, label %53, label %58, !dbg !2956

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2956
  %55 = load i8, i8* %54, align 64, !dbg !2956
  %56 = icmp eq i8 %55, 0, !dbg !2956
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54, !dbg !2956
  br label %58, !dbg !2956

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ], !dbg !2956
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.63, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #10, !dbg !2956
  br label %78, !dbg !2956

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2957

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2957
  %65 = load i64, i64* %64, align 32, !dbg !2957
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2957
  %67 = load i8, i8* %66, align 8, !dbg !2957
  %68 = icmp eq i8 %67, 0, !dbg !2957
  br i1 %68, label %69, label %74, !dbg !2957

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2957
  %71 = load i8, i8* %70, align 64, !dbg !2957
  %72 = icmp eq i8 %71, 0, !dbg !2957
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70, !dbg !2957
  br label %74, !dbg !2957

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ], !dbg !2957
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.63, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #10, !dbg !2957
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %79, metadata !2380, metadata !DIExpression()) #9, !dbg !2961
  %80 = icmp eq i64 %79, 0, !dbg !2962
  br i1 %80, label %449, label %81, !dbg !2963

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2964
  %83 = inttoptr i64 %82 to i16*, !dbg !2965
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2966
  br label %449, !dbg !2967

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2812, metadata !DIExpression()), !dbg !2968
  %86 = tail call i32 @nk_vc_is_active() #10, !dbg !2969
  %87 = icmp eq i32 %86, 0, !dbg !2969
  %88 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %88, metadata !2360, metadata !DIExpression()) #9, !dbg !2976
  %89 = icmp eq i64 %88, 0, !dbg !2977
  br i1 %89, label %95, label %90, !dbg !2978

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2979
  %92 = inttoptr i64 %91 to i16*, !dbg !2980
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2981
  %94 = icmp eq i16 %93, 0, !dbg !2982
  br i1 %94, label %95, label %96, !dbg !2983

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2983

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2983
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2983
  br i1 %87, label %102, label %100, !dbg !2984

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.64, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #10, !dbg !2985
  br label %104, !dbg !2985

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.64, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 515) #10, !dbg !2987
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %105, metadata !2380, metadata !DIExpression()) #9, !dbg !2992
  %106 = icmp eq i64 %105, 0, !dbg !2993
  br i1 %106, label %449, label %107, !dbg !2994

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2995
  %109 = inttoptr i64 %108 to i16*, !dbg !2996
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2997
  br label %449, !dbg !2998

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2999
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #9, !dbg !2999
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !3000
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !3000
  store i64 100000000, i64* %113, align 8, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2814, metadata !DIExpression(DW_OP_deref)), !dbg !3000
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #10, !dbg !3001
  %115 = icmp eq i32 %114, 0, !dbg !3001
  %116 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3002
  br i1 %115, label %219, label %117, !dbg !3003

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3004
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %119, metadata !2320, metadata !DIExpression()) #9, !dbg !3008
  %120 = icmp eq i64 %119, 0, !dbg !3009
  br i1 %120, label %126, label %121, !dbg !3010

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3011
  %123 = inttoptr i64 %122 to i16*, !dbg !3012
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3013
  %125 = zext i16 %124 to i32, !dbg !3013
  br label %126, !dbg !3014

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3015
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %128, metadata !2336, metadata !DIExpression()) #9, !dbg !3019
  %129 = icmp eq i64 %128, 0, !dbg !3020
  br i1 %129, label %134, label %130, !dbg !3021

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3022
  %132 = inttoptr i64 %131 to i16*, !dbg !3023
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3024
  br label %134, !dbg !3025

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3026

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2840, metadata !DIExpression()), !dbg !3027
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3028, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2108, metadata !DIExpression()) #9, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2107, metadata !DIExpression()) #9, !dbg !3030
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2846, metadata !DIExpression()), !dbg !3027
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3031
  %138 = icmp eq i32 %137, 0, !dbg !3031
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3032
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %140, metadata !2360, metadata !DIExpression()) #9, !dbg !3037
  %141 = icmp eq i64 %140, 0, !dbg !3038
  br i1 %141, label %147, label %142, !dbg !3039

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3040
  %144 = inttoptr i64 %143 to i16*, !dbg !3041
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3042
  %146 = icmp eq i16 %145, 0, !dbg !3043
  br i1 %146, label %147, label %148, !dbg !3032

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3032

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3032
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3032
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3032
  br i1 %138, label %169, label %153, !dbg !3044

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3045

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3045
  %156 = load i64, i64* %155, align 32, !dbg !3045
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3045
  %158 = load i8, i8* %157, align 8, !dbg !3045
  %159 = icmp eq i8 %158, 0, !dbg !3045
  br i1 %159, label %160, label %165, !dbg !3045

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3045
  %162 = load i8, i8* %161, align 64, !dbg !3045
  %163 = icmp eq i8 %162, 0, !dbg !3045
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3045
  br label %165, !dbg !3045

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3045
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.65, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #10, !dbg !3045
  br label %185, !dbg !3045

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3046

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3046
  %172 = load i64, i64* %171, align 32, !dbg !3046
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3046
  %174 = load i8, i8* %173, align 8, !dbg !3046
  %175 = icmp eq i8 %174, 0, !dbg !3046
  br i1 %175, label %176, label %181, !dbg !3046

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3046
  %178 = load i8, i8* %177, align 64, !dbg !3046
  %179 = icmp eq i8 %178, 0, !dbg !3046
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3046
  br label %181, !dbg !3046

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3046
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.65, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #10, !dbg !3046
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %186, metadata !2380, metadata !DIExpression()) #9, !dbg !3050
  %187 = icmp eq i64 %186, 0, !dbg !3051
  br i1 %187, label %218, label %188, !dbg !3052

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3053
  %190 = inttoptr i64 %189 to i16*, !dbg !3054
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3055
  br label %218, !dbg !3056

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2859, metadata !DIExpression()), !dbg !3057
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3058
  %194 = icmp eq i32 %193, 0, !dbg !3058
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %195, metadata !2360, metadata !DIExpression()) #9, !dbg !3065
  %196 = icmp eq i64 %195, 0, !dbg !3066
  br i1 %196, label %202, label %197, !dbg !3067

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3068
  %199 = inttoptr i64 %198 to i16*, !dbg !3069
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3070
  %201 = icmp eq i16 %200, 0, !dbg !3071
  br i1 %201, label %202, label %203, !dbg !3072

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3072

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3072
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3072
  br i1 %194, label %209, label %207, !dbg !3073

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.66, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #10, !dbg !3074
  br label %211, !dbg !3074

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.66, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 525) #10, !dbg !3076
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %212, metadata !2380, metadata !DIExpression()) #9, !dbg !3081
  %213 = icmp eq i64 %212, 0, !dbg !3082
  br i1 %213, label %218, label %214, !dbg !3083

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3084
  %216 = inttoptr i64 %215 to i16*, !dbg !3085
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3086
  br label %218, !dbg !3087

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.67, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 526) #12, !dbg !3088
  unreachable, !dbg !3088

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3089
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3092
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2861, metadata !DIExpression()), !dbg !3093
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3094
  br i1 %223, label %224, label %326, !dbg !3095

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3096
  %226 = icmp eq i64 %225, 0, !dbg !3098
  %227 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %227, metadata !2320, metadata !DIExpression()) #9, !dbg !3102
  %228 = icmp eq i64 %227, 0, !dbg !3103
  br i1 %228, label %234, label %229, !dbg !3104

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3105
  %231 = inttoptr i64 %230 to i16*, !dbg !3106
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3107
  %233 = zext i16 %232 to i32, !dbg !3107
  br label %234, !dbg !3108

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3109
  %236 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %236, metadata !2336, metadata !DIExpression()) #9, !dbg !3113
  %237 = icmp eq i64 %236, 0, !dbg !3114
  br i1 %237, label %242, label %238, !dbg !3115

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3116
  %240 = inttoptr i64 %239 to i16*, !dbg !3117
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3118
  br label %242, !dbg !3119

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3120

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2862, metadata !DIExpression()), !dbg !3121
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3122, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2108, metadata !DIExpression()) #9, !dbg !3122
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2107, metadata !DIExpression()) #9, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2868, metadata !DIExpression()), !dbg !3121
  %245 = call i32 @nk_vc_is_active() #10, !dbg !3125
  %246 = icmp eq i32 %245, 0, !dbg !3125
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3126
  %248 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %248, metadata !2360, metadata !DIExpression()) #9, !dbg !3131
  %249 = icmp eq i64 %248, 0, !dbg !3132
  br i1 %249, label %255, label %250, !dbg !3133

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3134
  %252 = inttoptr i64 %251 to i16*, !dbg !3135
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3136
  %254 = icmp eq i16 %253, 0, !dbg !3137
  br i1 %254, label %255, label %256, !dbg !3126

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3126

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3126
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3126
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3126
  br i1 %246, label %277, label %261, !dbg !3138

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3139

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3139
  %264 = load i64, i64* %263, align 32, !dbg !3139
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3139
  %266 = load i8, i8* %265, align 8, !dbg !3139
  %267 = icmp eq i8 %266, 0, !dbg !3139
  br i1 %267, label %268, label %273, !dbg !3139

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3139
  %270 = load i8, i8* %269, align 64, !dbg !3139
  %271 = icmp eq i8 %270, 0, !dbg !3139
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269, !dbg !3139
  br label %273, !dbg !3139

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ], !dbg !3139
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.68, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #10, !dbg !3139
  br label %293, !dbg !3139

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3140

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3140
  %280 = load i64, i64* %279, align 32, !dbg !3140
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3140
  %282 = load i8, i8* %281, align 8, !dbg !3140
  %283 = icmp eq i8 %282, 0, !dbg !3140
  br i1 %283, label %284, label %289, !dbg !3140

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3140
  %286 = load i8, i8* %285, align 64, !dbg !3140
  %287 = icmp eq i8 %286, 0, !dbg !3140
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285, !dbg !3140
  br label %289, !dbg !3140

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ], !dbg !3140
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.68, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #10, !dbg !3140
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %294, metadata !2380, metadata !DIExpression()) #9, !dbg !3144
  %295 = icmp eq i64 %294, 0, !dbg !3145
  br i1 %295, label %326, label %296, !dbg !3146

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3147
  %298 = inttoptr i64 %297 to i16*, !dbg !3148
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3149
  br label %326, !dbg !3150

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2881, metadata !DIExpression()), !dbg !3151
  %301 = call i32 @nk_vc_is_active() #10, !dbg !3152
  %302 = icmp eq i32 %301, 0, !dbg !3152
  %303 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %303, metadata !2360, metadata !DIExpression()) #9, !dbg !3159
  %304 = icmp eq i64 %303, 0, !dbg !3160
  br i1 %304, label %310, label %305, !dbg !3161

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3162
  %307 = inttoptr i64 %306 to i16*, !dbg !3163
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3164
  %309 = icmp eq i16 %308, 0, !dbg !3165
  br i1 %309, label %310, label %311, !dbg !3166

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3166

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3166
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3166
  br i1 %302, label %317, label %315, !dbg !3167

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.69, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #10, !dbg !3168
  br label %319, !dbg !3168

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.69, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 536) #10, !dbg !3170
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %320, metadata !2380, metadata !DIExpression()) #9, !dbg !3175
  %321 = icmp eq i64 %320, 0, !dbg !3176
  br i1 %321, label %326, label %322, !dbg !3177

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3178
  %324 = inttoptr i64 %323 to i16*, !dbg !3179
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3180
  br label %326, !dbg !3181

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3182, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2108, metadata !DIExpression()) #9, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2107, metadata !DIExpression()) #9, !dbg !3184
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3185
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3186
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3187
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2883, metadata !DIExpression(DW_OP_deref)), !dbg !3188
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #11, !dbg !3189
  %331 = icmp slt i32 %330, 0, !dbg !3190
  br i1 %331, label %332, label %434, !dbg !3191

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3192
  %334 = icmp eq i64 %333, 0, !dbg !3194
  %335 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %335, metadata !2320, metadata !DIExpression()) #9, !dbg !3198
  %336 = icmp eq i64 %335, 0, !dbg !3199
  br i1 %336, label %342, label %337, !dbg !3200

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3201
  %339 = inttoptr i64 %338 to i16*, !dbg !3202
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3203
  %341 = zext i16 %340 to i32, !dbg !3203
  br label %342, !dbg !3204

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3205
  %344 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %344, metadata !2336, metadata !DIExpression()) #9, !dbg !3209
  %345 = icmp eq i64 %344, 0, !dbg !3210
  br i1 %345, label %350, label %346, !dbg !3211

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3212
  %348 = inttoptr i64 %347 to i16*, !dbg !3213
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3214
  br label %350, !dbg !3215

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3216

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2884, metadata !DIExpression()), !dbg !3217
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3218, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2108, metadata !DIExpression()) #9, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2107, metadata !DIExpression()) #9, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2890, metadata !DIExpression()), !dbg !3217
  %353 = call i32 @nk_vc_is_active() #10, !dbg !3221
  %354 = icmp eq i32 %353, 0, !dbg !3221
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3222
  %356 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %356, metadata !2360, metadata !DIExpression()) #9, !dbg !3227
  %357 = icmp eq i64 %356, 0, !dbg !3228
  br i1 %357, label %363, label %358, !dbg !3229

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3230
  %360 = inttoptr i64 %359 to i16*, !dbg !3231
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3232
  %362 = icmp eq i16 %361, 0, !dbg !3233
  br i1 %362, label %363, label %364, !dbg !3222

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3222

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3222
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3222
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3222
  br i1 %354, label %385, label %369, !dbg !3234

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3235

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3235
  %372 = load i64, i64* %371, align 32, !dbg !3235
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3235
  %374 = load i8, i8* %373, align 8, !dbg !3235
  %375 = icmp eq i8 %374, 0, !dbg !3235
  br i1 %375, label %376, label %381, !dbg !3235

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3235
  %378 = load i8, i8* %377, align 64, !dbg !3235
  %379 = icmp eq i8 %378, 0, !dbg !3235
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377, !dbg !3235
  br label %381, !dbg !3235

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ], !dbg !3235
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.72, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #10, !dbg !3235
  br label %401, !dbg !3235

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3236

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3236
  %388 = load i64, i64* %387, align 32, !dbg !3236
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3236
  %390 = load i8, i8* %389, align 8, !dbg !3236
  %391 = icmp eq i8 %390, 0, !dbg !3236
  br i1 %391, label %392, label %397, !dbg !3236

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3236
  %394 = load i8, i8* %393, align 64, !dbg !3236
  %395 = icmp eq i8 %394, 0, !dbg !3236
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393, !dbg !3236
  br label %397, !dbg !3236

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ], !dbg !3236
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.72, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #10, !dbg !3236
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %402, metadata !2380, metadata !DIExpression()) #9, !dbg !3240
  %403 = icmp eq i64 %402, 0, !dbg !3241
  br i1 %403, label %434, label %404, !dbg !3242

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3243
  %406 = inttoptr i64 %405 to i16*, !dbg !3244
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3245
  br label %434, !dbg !3246

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2903, metadata !DIExpression()), !dbg !3247
  %409 = call i32 @nk_vc_is_active() #10, !dbg !3248
  %410 = icmp eq i32 %409, 0, !dbg !3248
  %411 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %411, metadata !2360, metadata !DIExpression()) #9, !dbg !3255
  %412 = icmp eq i64 %411, 0, !dbg !3256
  br i1 %412, label %418, label %413, !dbg !3257

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3258
  %415 = inttoptr i64 %414 to i16*, !dbg !3259
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3260
  %417 = icmp eq i16 %416, 0, !dbg !3261
  br i1 %417, label %418, label %419, !dbg !3262

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3262

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3262
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3262
  br i1 %410, label %425, label %423, !dbg !3263

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.73, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #10, !dbg !3264
  br label %427, !dbg !3264

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.73, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 543) #10, !dbg !3266
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %428, metadata !2380, metadata !DIExpression()) #9, !dbg !3271
  %429 = icmp eq i64 %428, 0, !dbg !3272
  br i1 %429, label %434, label %430, !dbg !3273

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3274
  %432 = inttoptr i64 %431 to i16*, !dbg !3275
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3276
  br label %434, !dbg !3277

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3278
  %436 = load i64, i64* %435, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2883, metadata !DIExpression(DW_OP_deref)), !dbg !3188
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3279
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3280
  store i64 %436, i64* %438, align 8, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2883, metadata !DIExpression(DW_OP_deref)), !dbg !3188
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3281
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3282
  store i64 %436, i64* %440, align 8, !dbg !3282
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3283
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2883, metadata !DIExpression()), !dbg !3188
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3284
  store i32 1, i32* %442, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2883, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1903, metadata !DIExpression()) #9, !dbg !3286
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3288
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3288
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3289
  %446 = load i8*, i8** %445, align 8, !dbg !3289
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3290
  %448 = load i8**, i8*** %447, align 8, !dbg !3290
  call void %444(i8* %446, i8** %448) #10, !dbg !3291
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #10, !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #9, !dbg !3293
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3293
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_name(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints*) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @panic(i8*, ...) local_unnamed_addr #6

; Function Attrs: noredzone noreturn nounwind
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8** %1, metadata !3297, metadata !DIExpression()), !dbg !3299
  br label %3, !dbg !3300

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #11, !dbg !3301
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3303
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !3308
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !3309
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !3309
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !3310
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !3311, metadata !DIExpression()), !dbg !3315
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !3317
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !3314, metadata !DIExpression()), !dbg !3318
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !3319
  br i1 %12, label %13, label %17, !dbg !3320

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !3321
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !3321
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !3322
  br i1 %16, label %18, label %17, !dbg !3323

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !3301, !llvm.loop !3324

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #10, !dbg !3326
  br label %17, !dbg !3328
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3329 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3334, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* %1, metadata !3335, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8** %2, metadata !3336, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !3337, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3338, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !3339, metadata !DIExpression()), !dbg !3350
  %6 = icmp eq i64 %3, 0, !dbg !3351
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %7, metadata !3340, metadata !DIExpression()), !dbg !3352
  %8 = tail call i8* @kmem_malloc(i64 152) #10, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %8, metadata !3341, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %8, metadata !3339, metadata !DIExpression()), !dbg !3350
  %9 = icmp eq i8* %8, null, !dbg !3354
  br i1 %9, label %104, label %10, !dbg !3356

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #10, !dbg !3357
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3358
  %13 = bitcast i8* %12 to i32*, !dbg !3358
  store i32 0, i32* %13, align 4, !dbg !3359
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3360
  %15 = bitcast i8* %14 to i64*, !dbg !3360
  store i64 %7, i64* %15, align 8, !dbg !3361
  %16 = tail call i8* @kmem_malloc(i64 %7) #10, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %16, metadata !3343, metadata !DIExpression()), !dbg !3362
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3363
  %18 = bitcast i8* %17 to i8**, !dbg !3363
  store i8* %16, i8** %18, align 8, !dbg !3364
  %19 = icmp eq i8* %16, null, !dbg !3365
  br i1 %19, label %20, label %21, !dbg !3367

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #10, !dbg !3368
  br label %104, !dbg !3370

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3367
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3371
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3371
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3372
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3373
  %26 = bitcast i8* %25 to i8**, !dbg !3373
  store i8* %1, i8** %26, align 8, !dbg !3374
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3375
  %28 = bitcast i8* %27 to i8***, !dbg !3375
  store i8** %2, i8*** %28, align 8, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %8, metadata !1913, metadata !DIExpression()), !dbg !3377
  %29 = load i64, i64* %15, align 8, !dbg !3379
  %30 = bitcast i8* %8 to i64*, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1533, metadata !DIExpression()), !dbg !3383
  %31 = add i64 %22, -8, !dbg !3384
  %32 = add i64 %31, %29, !dbg !3385
  store i64 %32, i64* %30, align 8, !dbg !3385
  %33 = inttoptr i64 %32 to i64*, !dbg !3386
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3390
  %34 = load i64, i64* %30, align 8, !dbg !3391
  %35 = add i64 %34, -8, !dbg !3391
  store i64 %35, i64* %30, align 8, !dbg !3391
  %36 = inttoptr i64 %35 to i64*, !dbg !3392
  store i64 0, i64* %36, align 8, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3396
  %37 = load i64, i64* %30, align 8, !dbg !3397
  %38 = add i64 %37, -8, !dbg !3397
  store i64 %38, i64* %30, align 8, !dbg !3397
  %39 = inttoptr i64 %38 to i64*, !dbg !3398
  store i64 0, i64* %39, align 8, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3402
  %40 = load i64, i64* %30, align 8, !dbg !3403
  %41 = add i64 %40, -8, !dbg !3403
  store i64 %41, i64* %30, align 8, !dbg !3403
  %42 = inttoptr i64 %41 to i64*, !dbg !3404
  store i64 0, i64* %42, align 8, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3408
  %43 = load i64, i64* %30, align 8, !dbg !3409
  %44 = add i64 %43, -8, !dbg !3409
  store i64 %44, i64* %30, align 8, !dbg !3409
  %45 = inttoptr i64 %44 to i64*, !dbg !3410
  store i64 0, i64* %45, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %8, metadata !1532, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3414
  %46 = load i64, i64* %30, align 8, !dbg !3415
  %47 = add i64 %46, -8, !dbg !3415
  store i64 %47, i64* %30, align 8, !dbg !3415
  %48 = inttoptr i64 %47 to i64*, !dbg !3416
  store i64 0, i64* %48, align 8, !dbg !3417
  %49 = ptrtoint i8* %8 to i64, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %49, metadata !1533, metadata !DIExpression()), !dbg !3421
  %50 = load i64, i64* %30, align 8, !dbg !3422
  %51 = add i64 %50, -8, !dbg !3422
  store i64 %51, i64* %30, align 8, !dbg !3422
  %52 = inttoptr i64 %51 to i64*, !dbg !3423
  store i64 %49, i64* %52, align 8, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3427
  %53 = load i64, i64* %30, align 8, !dbg !3428
  %54 = add i64 %53, -8, !dbg !3428
  store i64 %54, i64* %30, align 8, !dbg !3428
  %55 = inttoptr i64 %54 to i64*, !dbg !3429
  store i64 0, i64* %55, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3433
  %56 = load i64, i64* %30, align 8, !dbg !3434
  %57 = add i64 %56, -8, !dbg !3434
  store i64 %57, i64* %30, align 8, !dbg !3434
  %58 = inttoptr i64 %57 to i64*, !dbg !3435
  store i64 0, i64* %58, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3439
  %59 = load i64, i64* %30, align 8, !dbg !3440
  %60 = add i64 %59, -8, !dbg !3440
  store i64 %60, i64* %30, align 8, !dbg !3440
  %61 = inttoptr i64 %60 to i64*, !dbg !3441
  store i64 0, i64* %61, align 8, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3445
  %62 = load i64, i64* %30, align 8, !dbg !3446
  %63 = add i64 %62, -8, !dbg !3446
  store i64 %63, i64* %30, align 8, !dbg !3446
  %64 = inttoptr i64 %63 to i64*, !dbg !3447
  store i64 0, i64* %64, align 8, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3451
  %65 = load i64, i64* %30, align 8, !dbg !3452
  %66 = add i64 %65, -8, !dbg !3452
  store i64 %66, i64* %30, align 8, !dbg !3452
  %67 = inttoptr i64 %66 to i64*, !dbg !3453
  store i64 0, i64* %67, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3457
  %68 = load i64, i64* %30, align 8, !dbg !3458
  %69 = add i64 %68, -8, !dbg !3458
  store i64 %69, i64* %30, align 8, !dbg !3458
  %70 = inttoptr i64 %69 to i64*, !dbg !3459
  store i64 0, i64* %70, align 8, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3463
  %71 = load i64, i64* %30, align 8, !dbg !3464
  %72 = add i64 %71, -8, !dbg !3464
  store i64 %72, i64* %30, align 8, !dbg !3464
  %73 = inttoptr i64 %72 to i64*, !dbg !3465
  store i64 0, i64* %73, align 8, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3469
  %74 = load i64, i64* %30, align 8, !dbg !3470
  %75 = add i64 %74, -8, !dbg !3470
  store i64 %75, i64* %30, align 8, !dbg !3470
  %76 = inttoptr i64 %75 to i64*, !dbg !3471
  store i64 0, i64* %76, align 8, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 0, metadata !1533, metadata !DIExpression()), !dbg !3475
  %77 = load i64, i64* %30, align 8, !dbg !3476
  %78 = add i64 %77, -8, !dbg !3476
  store i64 %78, i64* %30, align 8, !dbg !3476
  %79 = inttoptr i64 %78 to i64*, !dbg !3477
  store i64 0, i64* %79, align 8, !dbg !3478
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3479
  br i1 %80, label %83, label %81, !dbg !3481

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3482
  store i8* %8, i8** %82, align 8, !dbg !3482
  br label %83, !dbg !3484

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3485, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2108, metadata !DIExpression()) #9, !dbg !3485
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2107, metadata !DIExpression()) #9, !dbg !3487
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3488
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3488
  %87 = load i64, i64* %86, align 8, !dbg !3488
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3489
  %89 = bitcast i8* %88 to i64*, !dbg !3490
  store i64 %87, i64* %89, align 8, !dbg !3490
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %90, metadata !1598, metadata !DIExpression()), !dbg !3492
  %91 = bitcast i8* %90 to i8**, !dbg !3494
  store i8* %90, i8** %91, align 8, !dbg !3494
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3495
  %93 = bitcast i8* %92 to i8**, !dbg !3496
  store i8* %90, i8** %93, align 8, !dbg !3496
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3497
  %95 = bitcast i8* %94 to i32*, !dbg !3497
  store i32 0, i32* %95, align 8, !dbg !3498
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %96, metadata !1598, metadata !DIExpression()), !dbg !3500
  %97 = bitcast i8* %96 to i8**, !dbg !3502
  store i8* %96, i8** %97, align 8, !dbg !3502
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3503
  %99 = bitcast i8* %98 to i8**, !dbg !3504
  store i8* %96, i8** %99, align 8, !dbg !3504
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %100, metadata !1598, metadata !DIExpression()), !dbg !3506
  %101 = bitcast i8* %100 to i8**, !dbg !3508
  store i8* %100, i8** %101, align 8, !dbg !3508
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3509
  %103 = bitcast i8* %102 to i8**, !dbg !3510
  store i8* %100, i8** %103, align 8, !dbg !3510
  br label %104, !dbg !3511

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3512
  ret i32 %105, !dbg !3513
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !3514 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3517
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3522
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3523
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3523
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3524
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3524
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3525, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2108, metadata !DIExpression()) #9, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2107, metadata !DIExpression()) #9, !dbg !3527
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3528
  br i1 %8, label %9, label %54, !dbg !3529

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3530
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3535
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3536
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3536
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1543, metadata !DIExpression()) #9, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1564, metadata !DIExpression()) #9, !dbg !3540
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3542
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3542
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3543
  br i1 %17, label %30, label %18, !dbg !3544

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1545, metadata !DIExpression()) #9, !dbg !3545
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3545
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1545, metadata !DIExpression()) #9, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1544, metadata !DIExpression()) #9, !dbg !3539
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1576, metadata !DIExpression()) #9, !dbg !3547
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3549
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3549
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1585, metadata !DIExpression()) #9, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1590, metadata !DIExpression()) #9, !dbg !3553
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3554
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3555
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3556
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3557
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1598, metadata !DIExpression()) #9, !dbg !3558
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3560
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3560
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3561
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1544, metadata !DIExpression()) #9, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3516, metadata !DIExpression()), !dbg !3562
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3563
  br i1 %29, label %30, label %51, !dbg !3565

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3566
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3572
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3573
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3573
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3574
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3574
  %37 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3575
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3579
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3580
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3580
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3581
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3581
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3582
  br i1 %43, label %54, label %44, !dbg !3583

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3584
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3589
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3590
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3590
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3591
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3591
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3516, metadata !DIExpression()), !dbg !3562
  br label %51, !dbg !3592

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3593
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3516, metadata !DIExpression()), !dbg !3562
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #11, !dbg !3594
  br label %54, !dbg !3595

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3593
  ret i32 %55, !dbg !3596
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3597 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3640
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3642
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3599, metadata !DIExpression()), !dbg !3643
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3644
  %5 = icmp eq i64 %4, 0, !dbg !3646
  %6 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %6, metadata !2320, metadata !DIExpression()) #9, !dbg !3650
  %7 = icmp eq i64 %6, 0, !dbg !3651
  br i1 %7, label %13, label %8, !dbg !3652

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3653
  %10 = inttoptr i64 %9 to i16*, !dbg !3654
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3655
  %12 = zext i16 %11 to i32, !dbg !3655
  br label %13, !dbg !3656

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3657
  %15 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %15, metadata !2336, metadata !DIExpression()) #9, !dbg !3661
  %16 = icmp eq i64 %15, 0, !dbg !3662
  br i1 %16, label %21, label %17, !dbg !3663

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3664
  %19 = inttoptr i64 %18 to i16*, !dbg !3665
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3666
  br label %21, !dbg !3667

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3668

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3600, metadata !DIExpression()), !dbg !3669
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3670, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2108, metadata !DIExpression()) #9, !dbg !3670
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2107, metadata !DIExpression()) #9, !dbg !3672
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3604, metadata !DIExpression()), !dbg !3669
  %24 = tail call i32 @nk_vc_is_active() #10, !dbg !3673
  %25 = icmp eq i32 %24, 0, !dbg !3673
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3674
  %27 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %27, metadata !2360, metadata !DIExpression()) #9, !dbg !3679
  %28 = icmp eq i64 %27, 0, !dbg !3680
  br i1 %28, label %34, label %29, !dbg !3681

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3682
  %31 = inttoptr i64 %30 to i16*, !dbg !3683
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3684
  %33 = icmp eq i16 %32, 0, !dbg !3685
  br i1 %33, label %34, label %35, !dbg !3674

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3674

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3674
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3674
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3674
  br i1 %25, label %58, label %40, !dbg !3686

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3687

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3687
  %43 = load i64, i64* %42, align 32, !dbg !3687
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3687
  %45 = load i8, i8* %44, align 8, !dbg !3687
  %46 = icmp eq i8 %45, 0, !dbg !3687
  br i1 %46, label %47, label %52, !dbg !3687

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3687
  %49 = load i8, i8* %48, align 64, !dbg !3687
  %50 = icmp eq i8 %49, 0, !dbg !3687
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48, !dbg !3687
  br label %52, !dbg !3687

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ], !dbg !3687
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3687
  %56 = load i32, i32* %55, align 8, !dbg !3687
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.74, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #10, !dbg !3687
  br label %76, !dbg !3687

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3688

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3688
  %61 = load i64, i64* %60, align 32, !dbg !3688
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3688
  %63 = load i8, i8* %62, align 8, !dbg !3688
  %64 = icmp eq i8 %63, 0, !dbg !3688
  br i1 %64, label %65, label %70, !dbg !3688

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3688
  %67 = load i8, i8* %66, align 64, !dbg !3688
  %68 = icmp eq i8 %67, 0, !dbg !3688
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66, !dbg !3688
  br label %70, !dbg !3688

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ], !dbg !3688
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3688
  %74 = load i32, i32* %73, align 8, !dbg !3688
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.74, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #10, !dbg !3688
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %77, metadata !2380, metadata !DIExpression()) #9, !dbg !3692
  %78 = icmp eq i64 %77, 0, !dbg !3693
  br i1 %78, label %111, label %79, !dbg !3694

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3695
  %81 = inttoptr i64 %80 to i16*, !dbg !3696
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3697
  br label %111, !dbg !3698

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3617, metadata !DIExpression()), !dbg !3699
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !3700
  %85 = icmp eq i32 %84, 0, !dbg !3700
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %86, metadata !2360, metadata !DIExpression()) #9, !dbg !3707
  %87 = icmp eq i64 %86, 0, !dbg !3708
  br i1 %87, label %93, label %88, !dbg !3709

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3710
  %90 = inttoptr i64 %89 to i16*, !dbg !3711
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3712
  %92 = icmp eq i16 %91, 0, !dbg !3713
  br i1 %92, label %93, label %94, !dbg !3714

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3714

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3714
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3714
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3714
  %99 = load i32, i32* %98, align 8, !dbg !3714
  br i1 %85, label %102, label %100, !dbg !3715

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.75, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3716
  br label %104, !dbg !3716

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.75, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3718
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %105, metadata !2380, metadata !DIExpression()) #9, !dbg !3723
  %106 = icmp eq i64 %105, 0, !dbg !3724
  br i1 %106, label %111, label %107, !dbg !3725

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3726
  %109 = inttoptr i64 %108 to i16*, !dbg !3727
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3728
  br label %111, !dbg !3729

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3730
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3730
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3761, !srcloc !3762
  call void @llvm.dbg.value(metadata i32 %113, metadata !3738, metadata !DIExpression()) #9, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %113, metadata !3735, metadata !DIExpression()) #9, !dbg !3763
  call void @llvm.dbg.value(metadata i8** %1, metadata !3733, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3764
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #10, !dbg !3765
  %115 = icmp eq i32 %114, 0, !dbg !3765
  br i1 %115, label %321, label %116, !dbg !3766

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3767
  %118 = icmp eq i64 %117, 0, !dbg !3769
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %119, metadata !2320, metadata !DIExpression()) #9, !dbg !3773
  %120 = icmp eq i64 %119, 0, !dbg !3774
  br i1 %120, label %126, label %121, !dbg !3775

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3776
  %123 = inttoptr i64 %122 to i16*, !dbg !3777
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3778
  %125 = zext i16 %124 to i32, !dbg !3778
  br label %126, !dbg !3779

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3780
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3781
  call void @llvm.dbg.value(metadata i64 %128, metadata !2336, metadata !DIExpression()) #9, !dbg !3784
  %129 = icmp eq i64 %128, 0, !dbg !3785
  br i1 %129, label %134, label %130, !dbg !3786

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3787
  %132 = inttoptr i64 %131 to i16*, !dbg !3788
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3789
  br label %134, !dbg !3790

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3791

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3740, metadata !DIExpression()) #9, !dbg !3792
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3793, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2108, metadata !DIExpression()) #9, !dbg !3793
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2107, metadata !DIExpression()) #9, !dbg !3795
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3745, metadata !DIExpression()) #9, !dbg !3792
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3796
  %138 = icmp eq i32 %137, 0, !dbg !3796
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3797
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %140, metadata !2360, metadata !DIExpression()) #9, !dbg !3802
  %141 = icmp eq i64 %140, 0, !dbg !3803
  br i1 %141, label %147, label %142, !dbg !3804

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3805
  %144 = inttoptr i64 %143 to i16*, !dbg !3806
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3807
  %146 = icmp eq i16 %145, 0, !dbg !3808
  br i1 %146, label %147, label %148, !dbg !3797

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3797

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3797
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3797
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3797
  br i1 %138, label %169, label %153, !dbg !3809

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3810

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3810
  %156 = load i64, i64* %155, align 32, !dbg !3810
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3810
  %158 = load i8, i8* %157, align 8, !dbg !3810
  %159 = icmp eq i8 %158, 0, !dbg !3810
  br i1 %159, label %160, label %165, !dbg !3810

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3810
  %162 = load i8, i8* %161, align 64, !dbg !3810
  %163 = icmp eq i8 %162, 0, !dbg !3810
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3810
  br label %165, !dbg !3810

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3810
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.76, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #10, !dbg !3810
  br label %185, !dbg !3810

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3811

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3811
  %172 = load i64, i64* %171, align 32, !dbg !3811
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3811
  %174 = load i8, i8* %173, align 8, !dbg !3811
  %175 = icmp eq i8 %174, 0, !dbg !3811
  br i1 %175, label %176, label %181, !dbg !3811

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3811
  %178 = load i8, i8* %177, align 64, !dbg !3811
  %179 = icmp eq i8 %178, 0, !dbg !3811
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3811
  br label %181, !dbg !3811

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3811
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.76, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #10, !dbg !3811
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %186, metadata !2380, metadata !DIExpression()) #9, !dbg !3815
  %187 = icmp eq i64 %186, 0, !dbg !3816
  br i1 %187, label %218, label %188, !dbg !3817

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3818
  %190 = inttoptr i64 %189 to i16*, !dbg !3819
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3820
  br label %218, !dbg !3821

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3758, metadata !DIExpression()) #9, !dbg !3822
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3823
  %194 = icmp eq i32 %193, 0, !dbg !3823
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %195, metadata !2360, metadata !DIExpression()) #9, !dbg !3830
  %196 = icmp eq i64 %195, 0, !dbg !3831
  br i1 %196, label %202, label %197, !dbg !3832

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3833
  %199 = inttoptr i64 %198 to i16*, !dbg !3834
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3835
  %201 = icmp eq i16 %200, 0, !dbg !3836
  br i1 %201, label %202, label %203, !dbg !3837

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3837

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3837
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3837
  br i1 %194, label %209, label %207, !dbg !3838

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.77, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #10, !dbg !3839
  br label %211, !dbg !3839

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.77, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 563) #10, !dbg !3841
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %212, metadata !2380, metadata !DIExpression()) #9, !dbg !3846
  %213 = icmp eq i64 %212, 0, !dbg !3847
  br i1 %213, label %218, label %214, !dbg !3848

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3849
  %216 = inttoptr i64 %215 to i16*, !dbg !3850
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3851
  br label %218, !dbg !3852

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3853
  %219 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3854
  %220 = icmp eq i64 %219, 0, !dbg !3856
  %221 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %221, metadata !2320, metadata !DIExpression()) #9, !dbg !3860
  %222 = icmp eq i64 %221, 0, !dbg !3861
  br i1 %222, label %228, label %223, !dbg !3862

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3863
  %225 = inttoptr i64 %224 to i16*, !dbg !3864
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3865
  %227 = zext i16 %226 to i32, !dbg !3865
  br label %228, !dbg !3866

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3867
  %230 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %230, metadata !2336, metadata !DIExpression()) #9, !dbg !3871
  %231 = icmp eq i64 %230, 0, !dbg !3872
  br i1 %231, label %236, label %232, !dbg !3873

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3874
  %234 = inttoptr i64 %233 to i16*, !dbg !3875
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3876
  br label %236, !dbg !3877

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3878

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3619, metadata !DIExpression()), !dbg !3879
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3880, !srcloc !2110
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2108, metadata !DIExpression()) #9, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2107, metadata !DIExpression()) #9, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3625, metadata !DIExpression()), !dbg !3879
  %239 = call i32 @nk_vc_is_active() #10, !dbg !3883
  %240 = icmp eq i32 %239, 0, !dbg !3883
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3884
  %242 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %242, metadata !2360, metadata !DIExpression()) #9, !dbg !3889
  %243 = icmp eq i64 %242, 0, !dbg !3890
  br i1 %243, label %249, label %244, !dbg !3891

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3892
  %246 = inttoptr i64 %245 to i16*, !dbg !3893
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3894
  %248 = icmp eq i16 %247, 0, !dbg !3895
  br i1 %248, label %249, label %250, !dbg !3884

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3884

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3884
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3884
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3884
  br i1 %240, label %271, label %255, !dbg !3896

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3897

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3897
  %258 = load i64, i64* %257, align 32, !dbg !3897
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3897
  %260 = load i8, i8* %259, align 8, !dbg !3897
  %261 = icmp eq i8 %260, 0, !dbg !3897
  br i1 %261, label %262, label %267, !dbg !3897

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3897
  %264 = load i8, i8* %263, align 64, !dbg !3897
  %265 = icmp eq i8 %264, 0, !dbg !3897
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263, !dbg !3897
  br label %267, !dbg !3897

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ], !dbg !3897
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.78, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #10, !dbg !3897
  br label %287, !dbg !3897

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3898

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3898
  %274 = load i64, i64* %273, align 32, !dbg !3898
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3898
  %276 = load i8, i8* %275, align 8, !dbg !3898
  %277 = icmp eq i8 %276, 0, !dbg !3898
  br i1 %277, label %278, label %283, !dbg !3898

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3898
  %280 = load i8, i8* %279, align 64, !dbg !3898
  %281 = icmp eq i8 %280, 0, !dbg !3898
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279, !dbg !3898
  br label %283, !dbg !3898

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ], !dbg !3898
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.78, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #10, !dbg !3898
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %288, metadata !2380, metadata !DIExpression()) #9, !dbg !3902
  %289 = icmp eq i64 %288, 0, !dbg !3903
  br i1 %289, label %320, label %290, !dbg !3904

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3905
  %292 = inttoptr i64 %291 to i16*, !dbg !3906
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3907
  br label %320, !dbg !3908

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3638, metadata !DIExpression()), !dbg !3909
  %295 = call i32 @nk_vc_is_active() #10, !dbg !3910
  %296 = icmp eq i32 %295, 0, !dbg !3910
  %297 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %297, metadata !2360, metadata !DIExpression()) #9, !dbg !3917
  %298 = icmp eq i64 %297, 0, !dbg !3918
  br i1 %298, label %304, label %299, !dbg !3919

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3920
  %301 = inttoptr i64 %300 to i16*, !dbg !3921
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3922
  %303 = icmp eq i16 %302, 0, !dbg !3923
  br i1 %303, label %304, label %305, !dbg !3924

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3924

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3924
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3924
  br i1 %296, label %311, label %309, !dbg !3925

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.79, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #10, !dbg !3926
  br label %313, !dbg !3926

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.79, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 575) #10, !dbg !3928
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3930
  call void @llvm.dbg.value(metadata i64 %314, metadata !2380, metadata !DIExpression()) #9, !dbg !3933
  %315 = icmp eq i64 %314, 0, !dbg !3934
  br i1 %315, label %320, label %316, !dbg !3935

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3936
  %318 = inttoptr i64 %317 to i16*, !dbg !3937
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3938
  br label %320, !dbg !3939

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.80, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i32 576) #12, !dbg !3940
  unreachable, !dbg !3940

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3853
  ret void, !dbg !3941
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3942 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3946, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8* %1, metadata !3947, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8** %2, metadata !3948, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %3, metadata !3949, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i8 %4, metadata !3950, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3951, metadata !DIExpression()), !dbg !3957
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #11, !dbg !3958
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3959
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #11, !dbg !3960
  ret i32 0, !dbg !3961
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3962 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.85, i64 0, i64 0)) #10, !dbg !3963
  %2 = tail call i32 @nk_fiber_yield() #11, !dbg !3964
  ret i32 %2, !dbg !3965
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3966 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3968, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2202, metadata !DIExpression()) #9, !dbg !3973
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !3975, !srcloc !2223
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2206, metadata !DIExpression()) #9, !dbg !3975
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2204, metadata !DIExpression()) #9, !dbg !3976
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2203, metadata !DIExpression()) #9, !dbg !3977
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3978
  %4 = load i32, i32* %3, align 8, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %4, metadata !2208, metadata !DIExpression()) #9, !dbg !3979
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()) #9, !dbg !3980
  %5 = icmp sgt i32 %4, 0, !dbg !3981
  br i1 %5, label %6, label %30, !dbg !3982

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3983
  br label %8, !dbg !3983

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2211, metadata !DIExpression()) #9, !dbg !3980
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3983
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3983
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3984
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3984
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3985
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2209, metadata !DIExpression()) #9, !dbg !3986
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3987
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2213, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3987
  call void @llvm.dbg.value(metadata i8** %15, metadata !2210, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !3988
  %16 = load i8*, i8** %15, align 8, !dbg !3989
  br label %17, !dbg !3990

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3989
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3991
  %20 = bitcast i8* %18 to i8**, !dbg !3991
  %21 = load i8*, i8** %20, align 8, !dbg !3991
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #9, !dbg !3991
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3991
  br i1 %22, label %27, label %23, !dbg !3990

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3989
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3989
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2210, metadata !DIExpression()) #9, !dbg !3988
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3992
  br i1 %26, label %75, label %17, !dbg !3993, !llvm.loop !2244

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3994
  call void @llvm.dbg.value(metadata i32 undef, metadata !2211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !3980
  %29 = icmp slt i64 %28, %7, !dbg !3981
  br i1 %29, label %8, label %30, !dbg !3982, !llvm.loop !2247

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3995
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4000
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4001
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4001
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1543, metadata !DIExpression()) #9, !dbg !4003
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !4004
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1564, metadata !DIExpression()) #9, !dbg !4005
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4007
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4007
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4008
  br i1 %38, label %51, label %39, !dbg !4009

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1545, metadata !DIExpression()) #9, !dbg !4010
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4010
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1545, metadata !DIExpression()) #9, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1544, metadata !DIExpression()) #9, !dbg !4004
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4011
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1576, metadata !DIExpression()) #9, !dbg !4012
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4014
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4014
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1585, metadata !DIExpression()) #9, !dbg !4016
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1590, metadata !DIExpression()) #9, !dbg !4018
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4019
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4020
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4021
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4022
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1598, metadata !DIExpression()) #9, !dbg !4023
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4025
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4025
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4026
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4026
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1544, metadata !DIExpression()) #9, !dbg !4004
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3969, metadata !DIExpression()), !dbg !4027
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4028
  br i1 %50, label %51, label %72, !dbg !4030

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4031
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4037
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4038
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4038
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4039
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4039
  %58 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4040
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4044
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4045
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4045
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4046
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4046
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4047
  br i1 %64, label %84, label %65, !dbg !4048

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4049
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4054
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4055
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4055
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4056
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3969, metadata !DIExpression()), !dbg !4027
  br label %72, !dbg !4057

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4058
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3969, metadata !DIExpression()), !dbg !4027
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #11, !dbg !4059
  br label %84, !dbg !4060

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4061
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1576, metadata !DIExpression()) #9, !dbg !4062
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4064
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4064
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4065
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1585, metadata !DIExpression()) #9, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1590, metadata !DIExpression()) #9, !dbg !4068
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4069
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4070
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4071
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4072
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1598, metadata !DIExpression()) #9, !dbg !4073
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4075
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4076
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4077
  br label %84, !dbg !4078

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4079
  ret i32 %85, !dbg !4080
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4081 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i8* %1, metadata !4089, metadata !DIExpression()), !dbg !4091
  %3 = tail call zeroext i8 %0(i8* %1) #10, !dbg !4092
  %4 = icmp eq i8 %3, 0, !dbg !4092
  br i1 %4, label %7, label %5, !dbg !4094

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #11, !dbg !4095
  br label %7, !dbg !4097

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !4098
  ret i32 %8, !dbg !4099
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4100 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4105, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8* %2, metadata !4106, metadata !DIExpression()), !dbg !4109
  %4 = tail call zeroext i8 %1(i8* %2) #10, !dbg !4110
  %5 = icmp eq i8 %4, 0, !dbg !4110
  br i1 %5, label %8, label %6, !dbg !4112

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4113
  br label %8, !dbg !4115

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4116
  ret i32 %9, !dbg !4117
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4118 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4137
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4141
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4142
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4142
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4143
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4143
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4120, metadata !DIExpression()), !dbg !4144
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4145, !srcloc !4146
  call void @llvm.dbg.value(metadata i64 %8, metadata !4127, metadata !DIExpression()), !dbg !4147
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4148
  call void @llvm.dbg.value(metadata i8* %9, metadata !4128, metadata !DIExpression()), !dbg !4149
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4150
  call void @llvm.dbg.value(metadata i8* %10, metadata !4129, metadata !DIExpression()), !dbg !4151
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4152
  call void @llvm.dbg.value(metadata i8* %11, metadata !4130, metadata !DIExpression()), !dbg !4153
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %12, metadata !4131, metadata !DIExpression()), !dbg !4155
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4156
  %14 = load i8*, i8** %13, align 8, !dbg !4156
  %15 = icmp ugt i8* %11, %14, !dbg !4158
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4159
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4160
  %19 = icmp ult i8* %11, %18, !dbg !4161
  %20 = and i1 %15, %19, !dbg !4162
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %21, metadata !4130, metadata !DIExpression()), !dbg !4153
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %22, metadata !4132, metadata !DIExpression()), !dbg !4164
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4165
  %24 = ptrtoint i8* %23 to i64, !dbg !4166
  %25 = ptrtoint i8* %12 to i64, !dbg !4166
  %26 = sub i64 %24, %25, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %26, metadata !4121, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4167
  %27 = ptrtoint i8* %10 to i64, !dbg !4168
  call void @llvm.dbg.value(metadata i64 undef, metadata !4123, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i64 72, metadata !4124, metadata !DIExpression()), !dbg !4170
  %28 = bitcast i8* %22 to i64*, !dbg !4171
  %29 = load i64, i64* %28, align 8, !dbg !4171
  %30 = sub i64 %29, %25, !dbg !4172
  call void @llvm.dbg.value(metadata i64 %30, metadata !4125, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %17, metadata !4122, metadata !DIExpression()), !dbg !4174
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4175
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4133, metadata !DIExpression(DW_OP_deref)), !dbg !4176
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #11, !dbg !4177
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4133, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !1532, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !1533, metadata !DIExpression()), !dbg !4181
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4182
  %35 = load i64, i64* %34, align 8, !dbg !4183
  %36 = add i64 %35, -8, !dbg !4183
  store i64 %36, i64* %34, align 8, !dbg !4183
  %37 = inttoptr i64 %36 to i64*, !dbg !4184
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4185
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4186
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4133, metadata !DIExpression()), !dbg !4176
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4187
  %40 = load i8*, i8** %39, align 8, !dbg !4187
  call void @llvm.dbg.value(metadata i8* %40, metadata !4126, metadata !DIExpression()), !dbg !4188
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4189
  %42 = sub i64 -16, %26, !dbg !4190
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4190
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #10, !dbg !4191
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4192
  %46 = ptrtoint i8* %45 to i64, !dbg !4193
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4194
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4133, metadata !DIExpression()), !dbg !4176
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4195
  store i64 %46, i64* %48, align 8, !dbg !4196
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4197
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4133, metadata !DIExpression()), !dbg !4176
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4198
  %51 = load i64, i64* %50, align 8, !dbg !4198
  %52 = add i64 %51, 64, !dbg !4199
  %53 = inttoptr i64 %52 to i8**, !dbg !4200
  call void @llvm.dbg.value(metadata i8** %53, metadata !4134, metadata !DIExpression()), !dbg !4201
  %54 = add i64 %30, %51, !dbg !4202
  %55 = inttoptr i64 %54 to i8*, !dbg !4203
  store i8* %55, i8** %53, align 8, !dbg !4204
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4205
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4133, metadata !DIExpression()), !dbg !4176
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4206
  %58 = load i64, i64* %57, align 8, !dbg !4206
  %59 = sub i64 8, %25, !dbg !4168
  %60 = add i64 %59, %27, !dbg !4207
  %61 = add i64 %60, %58, !dbg !4208
  %62 = inttoptr i64 %61 to i8**, !dbg !4209
  call void @llvm.dbg.value(metadata i8** %62, metadata !4135, metadata !DIExpression()), !dbg !4210
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4211
  call void @llvm.dbg.value(metadata i8** %63, metadata !4136, metadata !DIExpression()), !dbg !4212
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4213
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4213
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4214
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4133, metadata !DIExpression()), !dbg !4176
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4215
  %67 = load i64, i64* %66, align 8, !dbg !4215
  %68 = add i64 %67, 112, !dbg !4216
  %69 = inttoptr i64 %68 to i64*, !dbg !4217
  store i64 0, i64* %69, align 8, !dbg !4218
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4133, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1655, metadata !DIExpression()) #9, !dbg !4220
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()) #9, !dbg !4222
  %71 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4223
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4227
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1661, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !4228
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4229
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4229
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4229
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4229
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1661, metadata !DIExpression()) #9, !dbg !4228
  %77 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4230
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4234
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4235
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4235
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4236
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1662, metadata !DIExpression()) #9, !dbg !4237
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4238
  store i32 1, i32* %82, align 4, !dbg !4239
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1724, metadata !DIExpression()) #9, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1727, metadata !DIExpression()) #9, !dbg !4243
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4244
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4244
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1732, metadata !DIExpression()) #9, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1737, metadata !DIExpression()) #9, !dbg !4247
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1738, metadata !DIExpression()) #9, !dbg !4248
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4249
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4250
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4251
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4252
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4253
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4254
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4255
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4256
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4256
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4257
  br i1 %91, label %94, label %92, !dbg !4258

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #10, !dbg !4259
  br label %94, !dbg !4260

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4261
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4133, metadata !DIExpression()), !dbg !4176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4262
  ret %struct.nk_fiber* %95, !dbg !4263
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4264 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4266, metadata !DIExpression()), !dbg !4269
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4270
  br i1 %2, label %22, label %3, !dbg !4272

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4273
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4277
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4278
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4278
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4279
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4279
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4267, metadata !DIExpression()), !dbg !4280
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4281
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4268, metadata !DIExpression()), !dbg !4282
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4283
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1724, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1727, metadata !DIExpression()), !dbg !4286
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4287
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1732, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1737, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1738, metadata !DIExpression()), !dbg !4291
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4292
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4293
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4294
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4295
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4296
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4297
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4298
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4299
  %18 = load i32, i32* %17, align 8, !dbg !4300
  %19 = add i32 %18, 1, !dbg !4300
  store i32 %19, i32* %17, align 8, !dbg !4300
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4301
  store i32 3, i32* %20, align 4, !dbg !4302
  %21 = tail call i32 @nk_fiber_yield() #11, !dbg !4303
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !4304
  ret i32 %23, !dbg !4305
}

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inaccessiblemem_or_argmemonly nounwind }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone }
attributes #12 = { nobuiltin noredzone noreturn nounwind }

!llvm.dbg.cu = !{!2, !185}
!llvm.ident = !{!552, !552}
!llvm.module.flags = !{!553, !554, !555, !556}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vc", scope: !2, file: !3, line: 43, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !129, nameTableKind: None)
!3 = !DIFile(filename: "src/test/fibers.c", directory: "/home/sgi9754/nautilus-cs446")
!4 = !{!5, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 58, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/nautilus/fiber.h", directory: "/home/sgi9754/nautilus-cs446")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "INIT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "READY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "YIELD", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "WAIT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "EXIT", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "RUN", value: 5, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 166, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "include/nautilus/thread.h", directory: "/home/sgi9754/nautilus-cs446")
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "NK_THR_INIT", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "NK_THR_RUNNING", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "NK_THR_WAITING", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "NK_THR_SUSPENDED", value: 3, isUnsigned: true)
!22 = !DIEnumerator(name: "NK_THR_EXITED", value: 4, isUnsigned: true)
!23 = !{!24, !29, !72, !86}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !27)
!27 = !{!28, !32, !34, !37, !39, !40, !44, !46, !49, !51, !58, !59, !60, !61, !67, !68, !69}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !26, file: !6, line: 71, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 50, baseType: !31)
!30 = !DIFile(filename: "include/nautilus/naut_types.h", directory: "/home/sgi9754/nautilus-cs446")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !26, file: !6, line: 72, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !26, file: !6, line: 73, baseType: !35, size: 16, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !30, line: 58, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !26, file: !6, line: 75, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_stack_size_t", file: !6, line: 43, baseType: !29)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !26, file: !6, line: 76, baseType: !31, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !26, file: !6, line: 78, baseType: !41, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !42, line: 39, baseType: !43)
!42 = !DIFile(filename: "include/nautilus/spinlock.h", directory: "/home/sgi9754/nautilus-cs446")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 54, baseType: !7)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !26, file: !6, line: 79, baseType: !45, size: 32, offset: 352)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_status", file: !6, line: 66, baseType: !5)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !26, file: !6, line: 82, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_virtual_console", file: !6, line: 82, flags: DIFlagFwdDecl)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !26, file: !6, line: 83, baseType: !50, size: 32, offset: 448)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !26, file: !6, line: 91, baseType: !52, size: 128, offset: 512)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 64, size: 128, elements: !54)
!53 = !DIFile(filename: "include/nautilus/list.h", directory: "/home/sgi9754/nautilus-cs446")
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !53, line: 65, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !53, line: 65, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !26, file: !6, line: 92, baseType: !52, size: 128, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !26, file: !6, line: 93, baseType: !50, size: 32, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !26, file: !6, line: 97, baseType: !52, size: 128, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !26, file: !6, line: 99, baseType: !62, size: 64, offset: 960)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_fun_t", file: !6, line: 56, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !33, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !26, file: !6, line: 100, baseType: !33, size: 64, offset: 1024)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !26, file: !6, line: 101, baseType: !66, size: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !26, file: !6, line: 103, baseType: !70, size: 8, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 61, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_t", file: !16, line: 233, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_thread", file: !16, line: 178, size: 51200, elements: !75)
!75 = !{!76, !77, !78, !79, !82, !83, !84, !85, !87, !88, !89, !90, !94, !95, !98, !100, !101, !102, !103, !104, !105, !106, !107, !109, !113, !114, !119, !125}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !74, file: !16, line: 179, baseType: !29, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !74, file: !16, line: 180, baseType: !33, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !74, file: !16, line: 181, baseType: !35, size: 16, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cache_part_state", scope: !74, file: !16, line: 183, baseType: !80, size: 16, offset: 144)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_cache_part_thread_state_t", file: !81, line: 32, baseType: !35)
!81 = !DIFile(filename: "include/nautilus/cachepart.h", directory: "/home/sgi9754/nautilus-cs446")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !74, file: !16, line: 185, baseType: !38, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !74, file: !16, line: 186, baseType: !31, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !74, file: !16, line: 188, baseType: !50, size: 32, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !16, line: 191, baseType: !86, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !74, file: !16, line: 192, baseType: !52, size: 128, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !74, file: !16, line: 193, baseType: !52, size: 128, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !74, file: !16, line: 194, baseType: !31, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !74, file: !16, line: 196, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !16, line: 175, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue", file: !16, line: 175, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !74, file: !16, line: 198, baseType: !50, size: 32, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !74, file: !16, line: 201, baseType: !96, size: 64, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_timer", file: !16, line: 201, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !74, file: !16, line: 204, baseType: !99, size: 32, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_status_t", file: !16, line: 172, baseType: !15)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bound_cpu", scope: !74, file: !16, line: 206, baseType: !50, size: 32, offset: 992)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "placement_cpu", scope: !74, file: !16, line: 207, baseType: !50, size: 32, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "current_cpu", scope: !74, file: !16, line: 208, baseType: !50, size: 32, offset: 1056)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !74, file: !16, line: 210, baseType: !70, size: 8, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "output_loc", scope: !74, file: !16, line: 212, baseType: !66, size: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !74, file: !16, line: 213, baseType: !33, size: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !74, file: !16, line: 214, baseType: !33, size: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !74, file: !16, line: 215, baseType: !108, size: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_fun_t", file: !16, line: 61, baseType: !63)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !74, file: !16, line: 217, baseType: !110, size: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_thread_state", file: !112, line: 99, flags: DIFlagFwdDecl)
!112 = !DIFile(filename: "include/nautilus/scheduler.h", directory: "/home/sgi9754/nautilus-cs446")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !74, file: !16, line: 219, baseType: !47, size: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !16, line: 225, baseType: !115, size: 256, offset: 1536)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !117)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!117 = !{!118}
!118 = !DISubrange(count: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !74, file: !16, line: 227, baseType: !120, size: 16384, offset: 1792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16384, elements: !123)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state", scope: !74, file: !16, line: 229, baseType: !126, size: 32768, align: 512, offset: 18432)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32768, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 4096)
!129 = !{!130, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !0, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl", scope: !2, file: !3, line: 703, type: !132, isLocal: true, isDefinition: true, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shell_cmd_impl", file: !134, line: 43, size: 192, elements: !135)
!134 = !DIFile(filename: "include/nautilus/shell.h", directory: "/home/sgi9754/nautilus-cs446")
!135 = !{!136, !138, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !133, file: !134, line: 44, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "help_str", scope: !133, file: !134, line: 45, baseType: !137, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !133, file: !134, line: 46, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!50, !137, !33}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 704, type: !132, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl3", scope: !2, file: !3, line: 705, type: !132, isLocal: true, isDefinition: true, align: 64)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl4", scope: !2, file: !3, line: 706, type: !132, isLocal: true, isDefinition: true, align: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl5", scope: !2, file: !3, line: 707, type: !132, isLocal: true, isDefinition: true, align: 64)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl6", scope: !2, file: !3, line: 708, type: !132, isLocal: true, isDefinition: true, align: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl7", scope: !2, file: !3, line: 709, type: !132, isLocal: true, isDefinition: true, align: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl8", scope: !2, file: !3, line: 710, type: !132, isLocal: true, isDefinition: true, align: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl9", scope: !2, file: !3, line: 711, type: !132, isLocal: true, isDefinition: true, align: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl10", scope: !2, file: !3, line: 712, type: !132, isLocal: true, isDefinition: true, align: 64)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl11", scope: !2, file: !3, line: 713, type: !132, isLocal: true, isDefinition: true, align: 64)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "fibers_impl", scope: !2, file: !3, line: 633, type: !133, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 639, type: !133, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "fibers_impl3", scope: !2, file: !3, line: 645, type: !133, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "fibers_impl4", scope: !2, file: !3, line: 651, type: !133, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "fibers_impl5", scope: !2, file: !3, line: 657, type: !133, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "fibers_impl6", scope: !2, file: !3, line: 663, type: !133, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "fibers_impl7", scope: !2, file: !3, line: 669, type: !133, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "fibers_impl8", scope: !2, file: !3, line: 675, type: !133, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "fibers_impl9", scope: !2, file: !3, line: 681, type: !133, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "fibers_impl10", scope: !2, file: !3, line: 687, type: !133, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "fibers_impl11", scope: !2, file: !3, line: 694, type: !133, isLocal: true, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !298, nameTableKind: None)
!186 = !DIFile(filename: "src/nautilus/fiber.c", directory: "/home/sgi9754/nautilus-cs446")
!187 = !{!188, !15, !5, !267, !274, !281, !287, !293}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !190, file: !189, line: 40, baseType: !7, size: 32, elements: !263)
!189 = !DIFile(filename: "include/nautilus/timer.h", directory: "/home/sgi9754/nautilus-cs446")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_timer", file: !189, line: 38, size: 960, elements: !191)
!191 = !{!192, !193, !195, !196, !197, !255, !256, !260, !261, !262}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !189, line: 39, baseType: !115, size: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !190, file: !189, line: 42, baseType: !194, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !189, line: 43, baseType: !29, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !190, file: !189, line: 44, baseType: !29, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !190, file: !189, line: 45, baseType: !198, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !189, line: 33, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue", file: !201, line: 85, size: 197248, elements: !202)
!201 = !DIFile(filename: "include/nautilus/waitqueue.h", directory: "/home/sgi9754/nautilus-cs446")
!202 = !{!203, !204, !205, !211, !212, !213}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 86, baseType: !115, size: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !200, file: !201, line: 87, baseType: !41, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !201, line: 88, baseType: !206, size: 128, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 64, size: 128, elements: !207)
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !53, line: 65, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !53, line: 65, baseType: !209, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !200, file: !201, line: 89, baseType: !29, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !200, file: !201, line: 90, baseType: !206, size: 128, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !200, file: !201, line: 91, baseType: !214, size: 196608, offset: 640)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 196608, elements: !253)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue_entry", file: !201, line: 70, size: 192, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !201, line: 71, baseType: !206, size: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !215, file: !201, line: 72, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_thread", file: !16, line: 178, size: 51200, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !236, !237, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !220, file: !16, line: 179, baseType: !29, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !220, file: !16, line: 180, baseType: !33, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !220, file: !16, line: 181, baseType: !35, size: 16, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cache_part_state", scope: !220, file: !16, line: 183, baseType: !80, size: 16, offset: 144)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !220, file: !16, line: 185, baseType: !38, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !220, file: !16, line: 186, baseType: !31, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !220, file: !16, line: 188, baseType: !50, size: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !16, line: 191, baseType: !219, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !220, file: !16, line: 192, baseType: !206, size: 128, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !220, file: !16, line: 193, baseType: !206, size: 128, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !220, file: !16, line: 194, baseType: !31, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !220, file: !16, line: 196, baseType: !234, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !16, line: 175, baseType: !200)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !220, file: !16, line: 198, baseType: !50, size: 32, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !220, file: !16, line: 201, baseType: !238, size: 64, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !220, file: !16, line: 204, baseType: !99, size: 32, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bound_cpu", scope: !220, file: !16, line: 206, baseType: !50, size: 32, offset: 992)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "placement_cpu", scope: !220, file: !16, line: 207, baseType: !50, size: 32, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "current_cpu", scope: !220, file: !16, line: 208, baseType: !50, size: 32, offset: 1056)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !220, file: !16, line: 210, baseType: !70, size: 8, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "output_loc", scope: !220, file: !16, line: 212, baseType: !66, size: 64, offset: 1152)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !220, file: !16, line: 213, baseType: !33, size: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !220, file: !16, line: 214, baseType: !33, size: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !220, file: !16, line: 215, baseType: !108, size: 64, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !220, file: !16, line: 217, baseType: !110, size: 64, offset: 1408)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !220, file: !16, line: 219, baseType: !47, size: 64, offset: 1472)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !16, line: 225, baseType: !115, size: 256, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !220, file: !16, line: 227, baseType: !120, size: 16384, offset: 1792)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state", scope: !220, file: !16, line: 229, baseType: !126, size: 32768, align: 512, offset: 18432)
!253 = !{!254}
!254 = !DISubrange(count: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !190, file: !189, line: 46, baseType: !43, size: 32, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !190, file: !189, line: 47, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !33}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !190, file: !189, line: 48, baseType: !33, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !189, line: 49, baseType: !206, size: 128, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "active_node", scope: !190, file: !189, line: 50, baseType: !206, size: 128, offset: 832)
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "NK_TIMER_INACTIVE", value: 0, isUnsigned: true)
!265 = !DIEnumerator(name: "NK_TIMER_ACTIVE", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "NK_TIMER_SIGNALLED", value: 2, isUnsigned: true)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 225, baseType: !7, size: 32, elements: !269)
!268 = !DIFile(filename: "include/dev/apic.h", directory: "/home/sgi9754/nautilus-cs446")
!269 = !{!270, !271, !272, !273}
!270 = !DIEnumerator(name: "APIC_INVALID", value: 0, isUnsigned: true)
!271 = !DIEnumerator(name: "APIC_DISABLED", value: 1, isUnsigned: true)
!272 = !DIEnumerator(name: "APIC_XAPIC", value: 2, isUnsigned: true)
!273 = !DIEnumerator(name: "APIC_X2APIC", value: 3, isUnsigned: true)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 41, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "include/nautilus/irq.h", directory: "/home/sgi9754/nautilus-cs446")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "INT_TRIG_BUS", value: 0, isUnsigned: true)
!278 = !DIEnumerator(name: "INT_TRIG_EDGE", value: 1, isUnsigned: true)
!279 = !DIEnumerator(name: "INT_TRIG_RSVD", value: 2, isUnsigned: true)
!280 = !DIEnumerator(name: "INT_TRIG_LEVEL", value: 3, isUnsigned: true)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 40, baseType: !7, size: 32, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIEnumerator(name: "INT_POL_BUS", value: 0, isUnsigned: true)
!284 = !DIEnumerator(name: "INT_POL_ACTHI", value: 1, isUnsigned: true)
!285 = !DIEnumerator(name: "INT_POL_RSVD", value: 2, isUnsigned: true)
!286 = !DIEnumerator(name: "INT_POL_ACTLO", value: 3, isUnsigned: true)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 39, baseType: !7, size: 32, elements: !288)
!288 = !{!289, !290, !291, !292}
!289 = !DIEnumerator(name: "INT_TYPE_INT", value: 0, isUnsigned: true)
!290 = !DIEnumerator(name: "INT_TYPE_NMI", value: 1, isUnsigned: true)
!291 = !DIEnumerator(name: "INT_TYPE_SMI", value: 2, isUnsigned: true)
!292 = !DIEnumerator(name: "INT_TYPE_EXT", value: 3, isUnsigned: true)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 66, baseType: !7, size: 32, elements: !294)
!294 = !{!295, !296, !297}
!295 = !DIEnumerator(name: "APERIODIC", value: 0, isUnsigned: true)
!296 = !DIEnumerator(name: "SPORADIC", value: 1, isUnsigned: true)
!297 = !DIEnumerator(name: "PERIODIC", value: 2, isUnsigned: true)
!298 = !{!299, !300, !137, !321, !29, !322, !349, !33, !66, !328, !50, !537, !338, !551, !343, !219}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !302, file: !6, line: 71, baseType: !29, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !302, file: !6, line: 72, baseType: !33, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !302, file: !6, line: 73, baseType: !35, size: 16, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !302, file: !6, line: 75, baseType: !38, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !302, file: !6, line: 76, baseType: !31, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !302, file: !6, line: 78, baseType: !41, size: 32, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !302, file: !6, line: 79, baseType: !45, size: 32, offset: 352)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !302, file: !6, line: 82, baseType: !47, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !302, file: !6, line: 83, baseType: !50, size: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !302, file: !6, line: 91, baseType: !206, size: 128, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !302, file: !6, line: 92, baseType: !206, size: 128, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !302, file: !6, line: 93, baseType: !50, size: 32, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !302, file: !6, line: 97, baseType: !206, size: 128, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !302, file: !6, line: 99, baseType: !62, size: 64, offset: 960)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !302, file: !6, line: 100, baseType: !33, size: 64, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !302, file: !6, line: 101, baseType: !66, size: 64, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !302, file: !6, line: 103, baseType: !70, size: 8, offset: 1152)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 45, baseType: !31)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_info", file: !324, line: 183, size: 59840, elements: !325)
!324 = !DIFile(filename: "include/nautilus/nautilus.h", directory: "/home/sgi9754/nautilus-cs446")
!325 = !{!326, !443, !479, !480, !481, !482, !498, !509, !510, !511, !514, !517, !520, !532, !542, !545, !548}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !323, file: !324, line: 185, baseType: !327, size: 16384)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 16384, elements: !123)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu", file: !330, line: 74, size: 1600, elements: !331)
!330 = !DIFile(filename: "include/nautilus/smp.h", directory: "/home/sgi9754/nautilus-cs446")
!331 = !{!332, !333, !334, !335, !336, !337, !348, !350, !351, !352, !353, !354, !355, !357, !379, !380, !381, !384, !392, !405, !406, !413, !420, !429, !434}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cur_thread", scope: !329, file: !330, line: 75, baseType: !219, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_nesting_level", scope: !329, file: !330, line: 78, baseType: !35, size: 16, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_disable_level", scope: !329, file: !330, line: 81, baseType: !35, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !329, file: !330, line: 85, baseType: !29, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "exception_count", scope: !329, file: !330, line: 86, baseType: !29, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_state", scope: !329, file: !330, line: 88, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber_percpu_state", file: !186, line: 60, size: 384, elements: !340)
!340 = !{!341, !342, !345, !346, !347}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !186, line: 61, baseType: !41, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "fiber_thread", scope: !339, file: !186, line: 62, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_t", file: !16, line: 233, baseType: !220)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "curr_fiber", scope: !339, file: !186, line: 63, baseType: !300, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "idle_fiber", scope: !339, file: !186, line: 64, baseType: !300, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_sched_queue", scope: !339, file: !186, line: 65, baseType: !206, size: 128, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !329, file: !330, line: 89, baseType: !349, size: 32, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_id_t", file: !330, line: 58, baseType: !43)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_id", scope: !329, file: !330, line: 90, baseType: !43, size: 32, offset: 352)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !329, file: !330, line: 91, baseType: !70, size: 8, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_bsp", scope: !329, file: !330, line: 92, baseType: !70, size: 8, offset: 392)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sig", scope: !329, file: !330, line: 93, baseType: !43, size: 32, offset: 416)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "feat_flags", scope: !329, file: !330, line: 94, baseType: !43, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "booted", scope: !329, file: !330, line: 96, baseType: !356, size: 8, offset: 480)
!356 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "apic", scope: !329, file: !330, line: 98, baseType: !358, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic_dev", file: !268, line: 227, size: 768, elements: !360)
!360 = !{!361, !363, !365, !366, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !359, file: !268, line: 228, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "apic_mode_t", file: !268, line: 225, baseType: !267)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !359, file: !268, line: 229, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong_t", file: !30, line: 43, baseType: !31)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !359, file: !268, line: 230, baseType: !70, size: 8, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !359, file: !268, line: 231, baseType: !367, size: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_t", file: !30, line: 37, baseType: !7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "spur_int_cnt", scope: !359, file: !268, line: 232, baseType: !29, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "err_int_cnt", scope: !359, file: !268, line: 233, baseType: !29, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bus_freq_hz", scope: !359, file: !268, line: 234, baseType: !29, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ps_per_tick", scope: !359, file: !268, line: 235, baseType: !29, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_us", scope: !359, file: !268, line: 236, baseType: !29, size: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_tick", scope: !359, file: !268, line: 237, baseType: !29, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !359, file: !268, line: 238, baseType: !70, size: 8, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "current_ticks", scope: !359, file: !268, line: 239, baseType: !43, size: 32, offset: 608)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_count", scope: !359, file: !268, line: 240, baseType: !29, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "in_timer_interrupt", scope: !359, file: !268, line: 241, baseType: !50, size: 32, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "in_kick_interrupt", scope: !359, file: !268, line: 242, baseType: !50, size: 32, offset: 736)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !329, file: !330, line: 100, baseType: !322, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !329, file: !330, line: 102, baseType: !41, size: 32, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !329, file: !330, line: 104, baseType: !382, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_percpu_state", file: !330, line: 104, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_q", scope: !329, file: !330, line: 106, baseType: !385, size: 64, offset: 768)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_t", file: !387, line: 42, baseType: !388)
!387 = !DIFile(filename: "include/nautilus/queue.h", directory: "/home/sgi9754/nautilus-cs446")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue", file: !387, line: 33, size: 192, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !388, file: !387, line: 34, baseType: !206, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !387, line: 35, baseType: !41, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_nowait_info", scope: !329, file: !330, line: 107, baseType: !393, size: 320, offset: 832)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_xcall", file: !330, line: 61, size: 320, elements: !394)
!394 = !{!395, !400, !401, !403, !404}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_node", scope: !393, file: !330, line: 62, baseType: !396, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_entry_t", file: !387, line: 43, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue_entry", file: !387, line: 38, size: 128, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !397, file: !387, line: 39, baseType: !206, size: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !393, file: !330, line: 63, baseType: !33, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !393, file: !330, line: 64, baseType: !402, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_xcall_func_t", file: !330, line: 57, baseType: !257)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_done", scope: !393, file: !330, line: 65, baseType: !70, size: 8, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "has_waiter", scope: !393, file: !330, line: 66, baseType: !70, size: 8, offset: 264)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_khz", scope: !329, file: !330, line: 109, baseType: !364, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !329, file: !330, line: 112, baseType: !407, size: 64, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_topo_params", file: !409, line: 94, size: 64, elements: !410)
!409 = !DIFile(filename: "include/nautilus/numa.h", directory: "/home/sgi9754/nautilus-cs446")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "smt_bits", scope: !408, file: !409, line: 95, baseType: !43, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "core_bits", scope: !408, file: !409, line: 96, baseType: !43, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !329, file: !330, line: 113, baseType: !414, size: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_cpu_coords", file: !409, line: 99, size: 96, elements: !416)
!416 = !{!417, !418, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "smt_id", scope: !415, file: !409, line: 100, baseType: !43, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !415, file: !409, line: 101, baseType: !43, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_id", scope: !415, file: !409, line: 102, baseType: !43, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !329, file: !330, line: 114, baseType: !421, size: 64, offset: 1344)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numa_domain", file: !409, line: 34, size: 448, elements: !423)
!423 = !{!424, !425, !426, !427, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !422, file: !409, line: 35, baseType: !43, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "addr_space_size", scope: !422, file: !409, line: 36, baseType: !29, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !422, file: !409, line: 37, baseType: !43, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "regions", scope: !422, file: !409, line: 39, baseType: !206, size: 128, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "adj_list", scope: !422, file: !409, line: 42, baseType: !206, size: 128, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "kmem", scope: !329, file: !330, line: 116, baseType: !430, size: 128, offset: 1408)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_data", file: !431, line: 84, size: 128, elements: !432)
!431 = !DIFile(filename: "include/nautilus/mm.h", directory: "/home/sgi9754/nautilus-cs446")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ordered_regions", scope: !430, file: !431, line: 85, baseType: !206, size: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !329, file: !330, line: 119, baseType: !435, size: 64, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_rand_info", file: !437, line: 33, size: 256, elements: !438)
!437 = !DIFile(filename: "include/nautilus/random.h", directory: "/home/sgi9754/nautilus-cs446")
!438 = !{!439, !440, !441, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !437, line: 34, baseType: !41, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !436, file: !437, line: 35, baseType: !29, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !436, file: !437, line: 36, baseType: !29, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !436, file: !437, line: 37, baseType: !29, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ioapics", scope: !323, file: !324, line: 186, baseType: !444, size: 1024, offset: 16384)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1024, elements: !477)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic", file: !447, line: 113, size: 320, elements: !448)
!447 = !DIFile(filename: "include/dev/ioapic.h", directory: "/home/sgi9754/nautilus-cs446")
!448 = !{!449, !450, !451, !452, !454, !455, !476}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !446, file: !447, line: 114, baseType: !70, size: 8)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !446, file: !447, line: 115, baseType: !70, size: 8, offset: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "usable", scope: !446, file: !447, line: 116, baseType: !70, size: 8, offset: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !446, file: !447, line: 117, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !30, line: 64, baseType: !364)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !446, file: !447, line: 119, baseType: !70, size: 8, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !446, file: !447, line: 120, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iored_entry", file: !447, line: 101, size: 192, elements: !458)
!458 = !{!459, !460, !475}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !457, file: !447, line: 103, baseType: !70, size: 8)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "boot_info", scope: !457, file: !447, line: 106, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_entry", file: !275, line: 43, size: 256, elements: !463)
!463 = !{!464, !466, !468, !470, !471, !472, !473, !474}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "trig_mode", scope: !462, file: !275, line: 44, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_trig_t", file: !275, line: 41, baseType: !274)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !462, file: !275, line: 45, baseType: !467, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_pol_t", file: !275, line: 40, baseType: !281)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !275, line: 46, baseType: !469, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type_t", file: !275, line: 39, baseType: !287)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_id", scope: !462, file: !275, line: 47, baseType: !70, size: 8, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_irq", scope: !462, file: !275, line: 48, baseType: !70, size: 8, offset: 104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_intin", scope: !462, file: !275, line: 49, baseType: !70, size: 8, offset: 112)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_id", scope: !462, file: !275, line: 50, baseType: !70, size: 8, offset: 120)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "elm", scope: !462, file: !275, line: 52, baseType: !206, size: 128, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "actual_irq", scope: !457, file: !447, line: 109, baseType: !70, size: 8, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "first_hrt_entry", scope: !446, file: !447, line: 122, baseType: !7, size: 32, offset: 256)
!477 = !{!478}
!478 = !DISubrange(count: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "num_cpus", scope: !323, file: !324, line: 188, baseType: !43, size: 32, offset: 17408)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioapics", scope: !323, file: !324, line: 189, baseType: !43, size: 32, offset: 17440)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !324, line: 191, baseType: !29, size: 64, offset: 17472)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "core_barrier", scope: !323, file: !324, line: 194, baseType: !483, size: 64, offset: 17536)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_barrier_t", file: !485, line: 34, baseType: !486)
!485 = !DIFile(filename: "include/nautilus/barrier.h", directory: "/home/sgi9754/nautilus-cs446")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_barrier", file: !485, line: 36, size: 1024, align: 512, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !496}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !485, line: 37, baseType: !41, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !486, file: !485, line: 39, baseType: !7, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !486, file: !485, line: 40, baseType: !7, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !486, file: !485, line: 42, baseType: !70, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !486, file: !485, line: 44, baseType: !493, size: 416, offset: 104)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 416, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 52)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !486, file: !485, line: 47, baseType: !497, size: 32, offset: 520)
!497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !323, file: !324, line: 196, baseType: !499, size: 448, offset: 17600)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_mem_info", file: !500, line: 83, size: 448, elements: !501)
!500 = !DIFile(filename: "include/nautilus/paging.h", directory: "/home/sgi9754/nautilus-cs446")
!501 = !{!502, !504, !505, !506, !507, !508}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "page_map", scope: !499, file: !500, line: 84, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pm_start", scope: !499, file: !500, line: 85, baseType: !453, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pm_end", scope: !499, file: !500, line: 86, baseType: !453, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "phys_mem_avail", scope: !499, file: !500, line: 87, baseType: !364, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "npages", scope: !499, file: !500, line: 88, baseType: !364, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mem_zone_list", scope: !499, file: !500, line: 90, baseType: !206, size: 128, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_id", scope: !323, file: !324, line: 198, baseType: !43, size: 32, offset: 18048)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pic_mode_enabled", scope: !323, file: !324, line: 200, baseType: !70, size: 8, offset: 18080)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !323, file: !324, line: 202, baseType: !512, size: 64, offset: 18112)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_info", file: !324, line: 202, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hpet", scope: !323, file: !324, line: 203, baseType: !515, size: 64, offset: 18176)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "hpet_dev", file: !324, line: 178, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mb_info", scope: !323, file: !324, line: 205, baseType: !518, size: 64, offset: 18240)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "multiboot_info", file: !324, line: 205, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "int_info", scope: !323, file: !324, line: 207, baseType: !521, size: 33024, offset: 18304)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_info", file: !324, line: 171, size: 33024, elements: !522)
!522 = !{!523, !524, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "int_list", scope: !521, file: !324, line: 172, baseType: !206, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !521, file: !324, line: 173, baseType: !206, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "irq_map", scope: !521, file: !324, line: 175, baseType: !526, size: 32768, offset: 256)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 32768, elements: !123)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_mapping", file: !324, line: 164, size: 128, elements: !528)
!528 = !{!529, !530, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !527, file: !324, line: 165, baseType: !445, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !527, file: !324, line: 166, baseType: !70, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "assigned", scope: !527, file: !324, line: 167, baseType: !70, size: 8, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "locality_info", scope: !323, file: !324, line: 209, baseType: !533, size: 8320, offset: 51328)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_locality_info", file: !409, line: 75, size: 8320, elements: !534)
!534 = !{!535, !536, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "num_domains", scope: !533, file: !409, line: 76, baseType: !43, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "numa_matrix", scope: !533, file: !409, line: 77, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !533, file: !409, line: 79, baseType: !539, size: 8192, offset: 128)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 8192, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pmc_info", scope: !323, file: !324, line: 211, baseType: !543, size: 64, offset: 59648)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "pmc_info", file: !324, line: 180, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "linker_info", scope: !323, file: !324, line: 213, baseType: !546, size: 64, offset: 59712)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_link_info", file: !324, line: 181, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prog_info", scope: !323, file: !324, line: 215, baseType: !549, size: 64, offset: 59776)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_prog_info", file: !324, line: 182, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!552 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!553 = !{i32 2, !"Dwarf Version", i32 4}
!554 = !{i32 2, !"Debug Info Version", i32 3}
!555 = !{i32 1, !"wchar_size", i32 4}
!556 = !{i32 1, !"Code Model", i32 4}
!557 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 609, type: !141, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!558 = !{!559, !560}
!559 = !DILocalVariable(name: "buf", arg: 1, scope: !557, file: !3, line: 609, type: !137)
!560 = !DILocalVariable(name: "priv", arg: 2, scope: !557, file: !3, line: 609, type: !33)
!561 = !DILocation(line: 609, column: 24, scope: !557)
!562 = !DILocation(line: 609, column: 36, scope: !557)
!563 = !DILocation(line: 527, column: 3, scope: !564, inlinedAt: !569)
!564 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 525, type: !565, scopeLine: 526, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!50}
!567 = !{!568}
!568 = !DILocalVariable(name: "f_orig", scope: !564, file: !3, line: 527, type: !24)
!569 = distinct !DILocation(line: 611, column: 3, scope: !557)
!570 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !579)
!571 = distinct !DILexicalBlock(scope: !572, file: !16, line: 258, column: 26)
!572 = distinct !DILexicalBlock(scope: !573, file: !16, line: 258, column: 26)
!573 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !574, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!72}
!576 = !{!577, !578}
!577 = !DILocalVariable(name: "__r", scope: !572, file: !16, line: 258, type: !86)
!578 = !DILocalVariable(name: "__r", scope: !571, file: !16, line: 258, type: !86)
!579 = distinct !DILocation(line: 528, column: 8, scope: !564, inlinedAt: !569)
!580 = !{i32 -2147273830}
!581 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !579)
!582 = !DILocation(line: 528, column: 26, scope: !564, inlinedAt: !569)
!583 = !DILocation(line: 528, column: 6, scope: !564, inlinedAt: !569)
!584 = !DILocation(line: 529, column: 3, scope: !564, inlinedAt: !569)
!585 = !DILocation(line: 527, column: 15, scope: !564, inlinedAt: !569)
!586 = !DILocation(line: 530, column: 3, scope: !564, inlinedAt: !569)
!587 = !DILocation(line: 532, column: 1, scope: !564, inlinedAt: !569)
!588 = !DILocation(line: 612, column: 3, scope: !557)
!589 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!590 = !{!591, !592, !593, !594, !595}
!591 = !DILocalVariable(name: "i", arg: 1, scope: !589, file: !3, line: 310, type: !33)
!592 = !DILocalVariable(name: "o", arg: 2, scope: !589, file: !3, line: 310, type: !66)
!593 = !DILocalVariable(name: "a", scope: !589, file: !3, line: 313, type: !50)
!594 = !DILocalVariable(name: "f_new", scope: !589, file: !3, line: 314, type: !24)
!595 = !DILocalVariable(name: "curr", scope: !596, file: !3, line: 318, type: !24)
!596 = distinct !DILexicalBlock(scope: !589, file: !3, line: 315, column: 15)
!597 = !DILocation(line: 310, column: 27, scope: !589)
!598 = !DILocation(line: 310, column: 37, scope: !589)
!599 = !DILocation(line: 312, column: 19, scope: !589)
!600 = !DILocation(line: 312, column: 3, scope: !589)
!601 = !DILocation(line: 313, column: 7, scope: !589)
!602 = !DILocation(line: 316, column: 13, scope: !596)
!603 = !DILocation(line: 314, column: 15, scope: !589)
!604 = !DILocation(line: 318, column: 17, scope: !596)
!605 = !DILocation(line: 319, column: 5, scope: !596)
!606 = !DILocation(line: 322, column: 3, scope: !589)
!607 = !DILocation(line: 323, column: 1, scope: !589)
!608 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 602, type: !141, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !609)
!609 = !{!610, !611}
!610 = !DILocalVariable(name: "buf", arg: 1, scope: !608, file: !3, line: 602, type: !137)
!611 = !DILocalVariable(name: "priv", arg: 2, scope: !608, file: !3, line: 602, type: !33)
!612 = !DILocation(line: 602, column: 24, scope: !608)
!613 = !DILocation(line: 602, column: 36, scope: !608)
!614 = !DILocation(line: 518, column: 3, scope: !615, inlinedAt: !618)
!615 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 516, type: !565, scopeLine: 517, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!616 = !{!617}
!617 = !DILocalVariable(name: "f_orig", scope: !615, file: !3, line: 518, type: !24)
!618 = distinct !DILocation(line: 604, column: 3, scope: !608)
!619 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !620)
!620 = distinct !DILocation(line: 519, column: 8, scope: !615, inlinedAt: !618)
!621 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !620)
!622 = !DILocation(line: 519, column: 26, scope: !615, inlinedAt: !618)
!623 = !DILocation(line: 519, column: 6, scope: !615, inlinedAt: !618)
!624 = !DILocation(line: 520, column: 3, scope: !615, inlinedAt: !618)
!625 = !DILocation(line: 518, column: 15, scope: !615, inlinedAt: !618)
!626 = !DILocation(line: 521, column: 3, scope: !615, inlinedAt: !618)
!627 = !DILocation(line: 523, column: 1, scope: !615, inlinedAt: !618)
!628 = !DILocation(line: 605, column: 3, scope: !608)
!629 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!630 = !{!631, !632, !633, !634, !635, !637}
!631 = !DILocalVariable(name: "i", arg: 1, scope: !629, file: !3, line: 290, type: !33)
!632 = !DILocalVariable(name: "o", arg: 2, scope: !629, file: !3, line: 290, type: !66)
!633 = !DILocalVariable(name: "a", scope: !629, file: !3, line: 293, type: !50)
!634 = !DILocalVariable(name: "f_new", scope: !629, file: !3, line: 294, type: !24)
!635 = !DILocalVariable(name: "curr", scope: !636, file: !3, line: 298, type: !24)
!636 = distinct !DILexicalBlock(scope: !629, file: !3, line: 295, column: 15)
!637 = !DILocalVariable(name: "new", scope: !638, file: !3, line: 300, type: !24)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 299, column: 14)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 299, column: 8)
!640 = !DILocation(line: 290, column: 27, scope: !629)
!641 = !DILocation(line: 290, column: 37, scope: !629)
!642 = !DILocation(line: 292, column: 19, scope: !629)
!643 = !DILocation(line: 292, column: 3, scope: !629)
!644 = !DILocation(line: 293, column: 7, scope: !629)
!645 = !DILocation(line: 296, column: 13, scope: !636)
!646 = !DILocation(line: 294, column: 15, scope: !629)
!647 = !DILocation(line: 298, column: 17, scope: !636)
!648 = !DILocation(line: 299, column: 8, scope: !639)
!649 = !DILocation(line: 299, column: 8, scope: !636)
!650 = !DILocation(line: 300, column: 7, scope: !638)
!651 = !DILocation(line: 300, column: 19, scope: !638)
!652 = !DILocation(line: 301, column: 7, scope: !638)
!653 = !DILocation(line: 303, column: 5, scope: !639)
!654 = !DILocation(line: 304, column: 5, scope: !636)
!655 = !DILocation(line: 307, column: 3, scope: !629)
!656 = !DILocation(line: 308, column: 1, scope: !629)
!657 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!658 = !{!659, !660}
!659 = !DILocalVariable(name: "i", arg: 1, scope: !657, file: !3, line: 282, type: !33)
!660 = !DILocalVariable(name: "o", arg: 2, scope: !657, file: !3, line: 282, type: !66)
!661 = !DILocation(line: 282, column: 27, scope: !657)
!662 = !DILocation(line: 282, column: 37, scope: !657)
!663 = !DILocation(line: 284, column: 19, scope: !657)
!664 = !DILocation(line: 284, column: 3, scope: !657)
!665 = !DILocation(line: 286, column: 3, scope: !657)
!666 = !DILocation(line: 287, column: 1, scope: !657)
!667 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 595, type: !141, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!668 = !{!669, !670}
!669 = !DILocalVariable(name: "buf", arg: 1, scope: !667, file: !3, line: 595, type: !137)
!670 = !DILocalVariable(name: "priv", arg: 2, scope: !667, file: !3, line: 595, type: !33)
!671 = !DILocation(line: 595, column: 24, scope: !667)
!672 = !DILocation(line: 595, column: 36, scope: !667)
!673 = !DILocation(line: 509, column: 3, scope: !674, inlinedAt: !677)
!674 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 507, type: !565, scopeLine: 508, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!676}
!676 = !DILocalVariable(name: "f_orig", scope: !674, file: !3, line: 509, type: !24)
!677 = distinct !DILocation(line: 597, column: 3, scope: !667)
!678 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !679)
!679 = distinct !DILocation(line: 510, column: 8, scope: !674, inlinedAt: !677)
!680 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !679)
!681 = !DILocation(line: 510, column: 26, scope: !674, inlinedAt: !677)
!682 = !DILocation(line: 510, column: 6, scope: !674, inlinedAt: !677)
!683 = !DILocation(line: 511, column: 3, scope: !674, inlinedAt: !677)
!684 = !DILocation(line: 509, column: 15, scope: !674, inlinedAt: !677)
!685 = !DILocation(line: 512, column: 3, scope: !674, inlinedAt: !677)
!686 = !DILocation(line: 514, column: 1, scope: !674, inlinedAt: !677)
!687 = !DILocation(line: 598, column: 3, scope: !667)
!688 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!689 = !{!690, !691, !692, !693, !694}
!690 = !DILocalVariable(name: "i", arg: 1, scope: !688, file: !3, line: 263, type: !33)
!691 = !DILocalVariable(name: "o", arg: 2, scope: !688, file: !3, line: 263, type: !66)
!692 = !DILocalVariable(name: "a", scope: !688, file: !3, line: 266, type: !50)
!693 = !DILocalVariable(name: "f_new", scope: !688, file: !3, line: 267, type: !24)
!694 = !DILocalVariable(name: "f_curr", scope: !688, file: !3, line: 274, type: !24)
!695 = !DILocation(line: 263, column: 28, scope: !688)
!696 = !DILocation(line: 263, column: 38, scope: !688)
!697 = !DILocation(line: 265, column: 19, scope: !688)
!698 = !DILocation(line: 265, column: 3, scope: !688)
!699 = !DILocation(line: 266, column: 7, scope: !688)
!700 = !DILocation(line: 268, column: 11, scope: !688)
!701 = !DILocation(line: 267, column: 15, scope: !688)
!702 = !DILocation(line: 269, column: 6, scope: !703)
!703 = distinct !DILexicalBlock(scope: !688, file: !3, line: 269, column: 6)
!704 = !DILocation(line: 269, column: 6, scope: !688)
!705 = !DILocation(line: 270, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 269, column: 12)
!707 = !DILocation(line: 271, column: 3, scope: !706)
!708 = !DILocation(line: 274, column: 15, scope: !688)
!709 = !DILocation(line: 276, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !688, file: !3, line: 275, column: 15)
!711 = !DILocation(line: 279, column: 3, scope: !688)
!712 = !DILocation(line: 280, column: 1, scope: !688)
!713 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 588, type: !141, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!714 = !{!715, !716}
!715 = !DILocalVariable(name: "buf", arg: 1, scope: !713, file: !3, line: 588, type: !137)
!716 = !DILocalVariable(name: "priv", arg: 2, scope: !713, file: !3, line: 588, type: !33)
!717 = !DILocation(line: 588, column: 24, scope: !713)
!718 = !DILocation(line: 588, column: 36, scope: !713)
!719 = !DILocation(line: 500, column: 3, scope: !720, inlinedAt: !723)
!720 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 498, type: !565, scopeLine: 499, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!721 = !{!722}
!722 = !DILocalVariable(name: "f_orig", scope: !720, file: !3, line: 500, type: !24)
!723 = distinct !DILocation(line: 590, column: 3, scope: !713)
!724 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !725)
!725 = distinct !DILocation(line: 501, column: 8, scope: !720, inlinedAt: !723)
!726 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !725)
!727 = !DILocation(line: 501, column: 26, scope: !720, inlinedAt: !723)
!728 = !DILocation(line: 501, column: 6, scope: !720, inlinedAt: !723)
!729 = !DILocation(line: 502, column: 3, scope: !720, inlinedAt: !723)
!730 = !DILocation(line: 500, column: 15, scope: !720, inlinedAt: !723)
!731 = !DILocation(line: 503, column: 3, scope: !720, inlinedAt: !723)
!732 = !DILocation(line: 505, column: 1, scope: !720, inlinedAt: !723)
!733 = !DILocation(line: 591, column: 3, scope: !713)
!734 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!735 = !{!736, !737, !738, !739}
!736 = !DILocalVariable(name: "i", arg: 1, scope: !734, file: !3, line: 249, type: !33)
!737 = !DILocalVariable(name: "o", arg: 2, scope: !734, file: !3, line: 249, type: !66)
!738 = !DILocalVariable(name: "a", scope: !734, file: !3, line: 252, type: !50)
!739 = !DILocalVariable(name: "f_new", scope: !734, file: !3, line: 253, type: !24)
!740 = !DILocation(line: 249, column: 23, scope: !734)
!741 = !DILocation(line: 249, column: 33, scope: !734)
!742 = !DILocation(line: 251, column: 19, scope: !734)
!743 = !DILocation(line: 251, column: 3, scope: !734)
!744 = !DILocation(line: 252, column: 7, scope: !734)
!745 = !DILocation(line: 254, column: 11, scope: !734)
!746 = !DILocation(line: 253, column: 15, scope: !734)
!747 = !DILocation(line: 257, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !734, file: !3, line: 255, column: 15)
!749 = !DILocation(line: 260, column: 3, scope: !734)
!750 = !DILocation(line: 261, column: 1, scope: !734)
!751 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 581, type: !141, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !752)
!752 = !{!753, !754}
!753 = !DILocalVariable(name: "buf", arg: 1, scope: !751, file: !3, line: 581, type: !137)
!754 = !DILocalVariable(name: "priv", arg: 2, scope: !751, file: !3, line: 581, type: !33)
!755 = !DILocation(line: 581, column: 24, scope: !751)
!756 = !DILocation(line: 581, column: 36, scope: !751)
!757 = !DILocation(line: 491, column: 3, scope: !758, inlinedAt: !761)
!758 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 489, type: !565, scopeLine: 490, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!759 = !{!760}
!760 = !DILocalVariable(name: "f_outer_join", scope: !758, file: !3, line: 491, type: !24)
!761 = distinct !DILocation(line: 583, column: 3, scope: !751)
!762 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !763)
!763 = distinct !DILocation(line: 492, column: 8, scope: !758, inlinedAt: !761)
!764 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !763)
!765 = !DILocation(line: 492, column: 26, scope: !758, inlinedAt: !761)
!766 = !DILocation(line: 492, column: 6, scope: !758, inlinedAt: !761)
!767 = !DILocation(line: 493, column: 3, scope: !758, inlinedAt: !761)
!768 = !DILocation(line: 491, column: 15, scope: !758, inlinedAt: !761)
!769 = !DILocation(line: 494, column: 3, scope: !758, inlinedAt: !761)
!770 = !DILocation(line: 496, column: 1, scope: !758, inlinedAt: !761)
!771 = !DILocation(line: 584, column: 3, scope: !751)
!772 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!773 = !{!774, !775, !776, !777}
!774 = !DILocalVariable(name: "i", arg: 1, scope: !772, file: !3, line: 103, type: !33)
!775 = !DILocalVariable(name: "o", arg: 2, scope: !772, file: !3, line: 103, type: !66)
!776 = !DILocalVariable(name: "a", scope: !772, file: !3, line: 106, type: !50)
!777 = !DILocalVariable(name: "f_inner_join", scope: !778, file: !3, line: 109, type: !24)
!778 = distinct !DILexicalBlock(scope: !772, file: !3, line: 107, column: 15)
!779 = !DILocation(line: 103, column: 29, scope: !772)
!780 = !DILocation(line: 103, column: 39, scope: !772)
!781 = !DILocation(line: 105, column: 19, scope: !772)
!782 = !DILocation(line: 105, column: 3, scope: !772)
!783 = !DILocation(line: 106, column: 7, scope: !772)
!784 = !DILocation(line: 108, column: 5, scope: !778)
!785 = !DILocation(line: 109, column: 5, scope: !778)
!786 = !DILocation(line: 109, column: 17, scope: !778)
!787 = !DILocation(line: 110, column: 5, scope: !778)
!788 = !DILocation(line: 111, column: 19, scope: !778)
!789 = !DILocation(line: 111, column: 5, scope: !778)
!790 = !DILocation(line: 113, column: 3, scope: !772)
!791 = !DILocation(line: 114, column: 3, scope: !772)
!792 = !DILocation(line: 115, column: 1, scope: !772)
!793 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!794 = !{!795, !796, !797}
!795 = !DILocalVariable(name: "i", arg: 1, scope: !793, file: !3, line: 92, type: !33)
!796 = !DILocalVariable(name: "o", arg: 2, scope: !793, file: !3, line: 92, type: !66)
!797 = !DILocalVariable(name: "a", scope: !793, file: !3, line: 95, type: !50)
!798 = !DILocation(line: 92, column: 29, scope: !793)
!799 = !DILocation(line: 92, column: 39, scope: !793)
!800 = !DILocation(line: 94, column: 19, scope: !793)
!801 = !DILocation(line: 94, column: 3, scope: !793)
!802 = !DILocation(line: 95, column: 7, scope: !793)
!803 = !DILocation(line: 97, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !793, file: !3, line: 96, column: 16)
!805 = !DILocation(line: 100, column: 3, scope: !793)
!806 = !DILocation(line: 101, column: 1, scope: !793)
!807 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 573, type: !141, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !808)
!808 = !{!809, !810}
!809 = !DILocalVariable(name: "buf", arg: 1, scope: !807, file: !3, line: 573, type: !137)
!810 = !DILocalVariable(name: "priv", arg: 2, scope: !807, file: !3, line: 573, type: !33)
!811 = !DILocation(line: 573, column: 24, scope: !807)
!812 = !DILocation(line: 573, column: 36, scope: !807)
!813 = !DILocation(line: 575, column: 3, scope: !807)
!814 = !DILocation(line: 577, column: 3, scope: !807)
!815 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 465, type: !565, scopeLine: 466, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!816 = !{!817, !818, !819, !820}
!817 = !DILocalVariable(name: "f_first", scope: !815, file: !3, line: 467, type: !24)
!818 = !DILocalVariable(name: "f_second", scope: !815, file: !3, line: 468, type: !24)
!819 = !DILocalVariable(name: "f_third", scope: !815, file: !3, line: 469, type: !24)
!820 = !DILocalVariable(name: "f_fourth", scope: !815, file: !3, line: 470, type: !24)
!821 = !DILocation(line: 467, column: 3, scope: !815)
!822 = !DILocation(line: 468, column: 3, scope: !815)
!823 = !DILocation(line: 469, column: 3, scope: !815)
!824 = !DILocation(line: 470, column: 3, scope: !815)
!825 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !826)
!826 = distinct !DILocation(line: 471, column: 8, scope: !815)
!827 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !826)
!828 = !DILocation(line: 471, column: 26, scope: !815)
!829 = !DILocation(line: 471, column: 6, scope: !815)
!830 = !DILocation(line: 472, column: 3, scope: !815)
!831 = !DILocation(line: 470, column: 15, scope: !815)
!832 = !DILocation(line: 473, column: 3, scope: !815)
!833 = !DILocation(line: 467, column: 15, scope: !815)
!834 = !DILocation(line: 474, column: 3, scope: !815)
!835 = !DILocation(line: 469, column: 15, scope: !815)
!836 = !DILocation(line: 475, column: 3, scope: !815)
!837 = !DILocation(line: 468, column: 15, scope: !815)
!838 = !DILocation(line: 476, column: 3, scope: !815)
!839 = !DILocation(line: 478, column: 20, scope: !815)
!840 = !DILocation(line: 478, column: 3, scope: !815)
!841 = !DILocation(line: 478, column: 12, scope: !815)
!842 = !DILocation(line: 478, column: 18, scope: !815)
!843 = !DILocation(line: 479, column: 21, scope: !815)
!844 = !DILocation(line: 479, column: 3, scope: !815)
!845 = !DILocation(line: 479, column: 13, scope: !815)
!846 = !DILocation(line: 479, column: 19, scope: !815)
!847 = !DILocation(line: 480, column: 20, scope: !815)
!848 = !DILocation(line: 480, column: 3, scope: !815)
!849 = !DILocation(line: 480, column: 12, scope: !815)
!850 = !DILocation(line: 480, column: 18, scope: !815)
!851 = !DILocation(line: 481, column: 21, scope: !815)
!852 = !DILocation(line: 481, column: 3, scope: !815)
!853 = !DILocation(line: 481, column: 13, scope: !815)
!854 = !DILocation(line: 481, column: 19, scope: !815)
!855 = !DILocation(line: 482, column: 3, scope: !815)
!856 = !DILocation(line: 483, column: 16, scope: !815)
!857 = !DILocation(line: 483, column: 3, scope: !815)
!858 = !DILocation(line: 484, column: 16, scope: !815)
!859 = !DILocation(line: 484, column: 3, scope: !815)
!860 = !DILocation(line: 485, column: 16, scope: !815)
!861 = !DILocation(line: 485, column: 3, scope: !815)
!862 = !DILocation(line: 487, column: 1, scope: !815)
!863 = !DILocation(line: 486, column: 3, scope: !815)
!864 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!865 = !{!866, !867, !868, !869}
!866 = !DILocalVariable(name: "i", arg: 1, scope: !864, file: !3, line: 236, type: !33)
!867 = !DILocalVariable(name: "o", arg: 2, scope: !864, file: !3, line: 236, type: !66)
!868 = !DILocalVariable(name: "a", scope: !864, file: !3, line: 239, type: !50)
!869 = !DILocalVariable(name: "f_to", scope: !864, file: !3, line: 241, type: !24)
!870 = !DILocation(line: 236, column: 25, scope: !864)
!871 = !DILocation(line: 236, column: 35, scope: !864)
!872 = !DILocation(line: 238, column: 19, scope: !864)
!873 = !DILocation(line: 238, column: 3, scope: !864)
!874 = !DILocation(line: 239, column: 7, scope: !864)
!875 = !DILocation(line: 241, column: 22, scope: !864)
!876 = !DILocation(line: 241, column: 15, scope: !864)
!877 = !DILocation(line: 243, column: 5, scope: !878)
!878 = distinct !DILexicalBlock(scope: !864, file: !3, line: 242, column: 15)
!879 = !DILocation(line: 244, column: 5, scope: !878)
!880 = !DILocation(line: 246, column: 3, scope: !864)
!881 = !DILocation(line: 247, column: 1, scope: !864)
!882 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!883 = !{!884, !885, !886, !887}
!884 = !DILocalVariable(name: "i", arg: 1, scope: !882, file: !3, line: 198, type: !33)
!885 = !DILocalVariable(name: "o", arg: 2, scope: !882, file: !3, line: 198, type: !66)
!886 = !DILocalVariable(name: "a", scope: !882, file: !3, line: 201, type: !50)
!887 = !DILocalVariable(name: "f_to", scope: !882, file: !3, line: 202, type: !24)
!888 = !DILocation(line: 198, column: 24, scope: !882)
!889 = !DILocation(line: 198, column: 34, scope: !882)
!890 = !DILocation(line: 200, column: 19, scope: !882)
!891 = !DILocation(line: 200, column: 3, scope: !882)
!892 = !DILocation(line: 201, column: 7, scope: !882)
!893 = !DILocation(line: 202, column: 22, scope: !882)
!894 = !DILocation(line: 202, column: 15, scope: !882)
!895 = !DILocation(line: 204, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !882, file: !3, line: 203, column: 15)
!897 = !DILocation(line: 205, column: 5, scope: !896)
!898 = !DILocation(line: 207, column: 3, scope: !882)
!899 = !DILocation(line: 208, column: 1, scope: !882)
!900 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DILocalVariable(name: "i", arg: 1, scope: !900, file: !3, line: 223, type: !33)
!903 = !DILocalVariable(name: "o", arg: 2, scope: !900, file: !3, line: 223, type: !66)
!904 = !DILocalVariable(name: "a", scope: !900, file: !3, line: 226, type: !50)
!905 = !DILocalVariable(name: "f_to", scope: !900, file: !3, line: 228, type: !24)
!906 = !DILocation(line: 223, column: 24, scope: !900)
!907 = !DILocation(line: 223, column: 34, scope: !900)
!908 = !DILocation(line: 225, column: 19, scope: !900)
!909 = !DILocation(line: 225, column: 3, scope: !900)
!910 = !DILocation(line: 226, column: 7, scope: !900)
!911 = !DILocation(line: 228, column: 22, scope: !900)
!912 = !DILocation(line: 228, column: 15, scope: !900)
!913 = !DILocation(line: 230, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !900, file: !3, line: 229, column: 15)
!915 = !DILocation(line: 231, column: 5, scope: !914)
!916 = !DILocation(line: 233, column: 3, scope: !900)
!917 = !DILocation(line: 234, column: 1, scope: !900)
!918 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!919 = !{!920, !921, !922, !923}
!920 = !DILocalVariable(name: "i", arg: 1, scope: !918, file: !3, line: 211, type: !33)
!921 = !DILocalVariable(name: "o", arg: 2, scope: !918, file: !3, line: 211, type: !66)
!922 = !DILocalVariable(name: "a", scope: !918, file: !3, line: 214, type: !50)
!923 = !DILocalVariable(name: "f_to", scope: !918, file: !3, line: 215, type: !24)
!924 = !DILocation(line: 211, column: 25, scope: !918)
!925 = !DILocation(line: 211, column: 35, scope: !918)
!926 = !DILocation(line: 213, column: 19, scope: !918)
!927 = !DILocation(line: 213, column: 3, scope: !918)
!928 = !DILocation(line: 214, column: 7, scope: !918)
!929 = !DILocation(line: 215, column: 22, scope: !918)
!930 = !DILocation(line: 215, column: 15, scope: !918)
!931 = !DILocation(line: 217, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !918, file: !3, line: 216, column: 15)
!933 = !DILocation(line: 218, column: 5, scope: !932)
!934 = !DILocation(line: 220, column: 3, scope: !918)
!935 = !DILocation(line: 221, column: 1, scope: !918)
!936 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 565, type: !141, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "buf", arg: 1, scope: !936, file: !3, line: 565, type: !137)
!939 = !DILocalVariable(name: "priv", arg: 2, scope: !936, file: !3, line: 565, type: !33)
!940 = !DILocation(line: 565, column: 24, scope: !936)
!941 = !DILocation(line: 565, column: 36, scope: !936)
!942 = !DILocation(line: 434, column: 3, scope: !943, inlinedAt: !947)
!943 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 433, type: !565, scopeLine: 433, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!944 = !{!945, !946}
!945 = !DILocalVariable(name: "even", scope: !943, file: !3, line: 434, type: !24)
!946 = !DILocalVariable(name: "odd", scope: !943, file: !3, line: 435, type: !24)
!947 = distinct !DILocation(line: 567, column: 3, scope: !936)
!948 = !DILocation(line: 435, column: 3, scope: !943, inlinedAt: !947)
!949 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !950)
!950 = distinct !DILocation(line: 436, column: 8, scope: !943, inlinedAt: !947)
!951 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !950)
!952 = !DILocation(line: 436, column: 26, scope: !943, inlinedAt: !947)
!953 = !DILocation(line: 436, column: 6, scope: !943, inlinedAt: !947)
!954 = !DILocation(line: 434, column: 15, scope: !943, inlinedAt: !947)
!955 = !DILocation(line: 437, column: 3, scope: !943, inlinedAt: !947)
!956 = !DILocation(line: 435, column: 15, scope: !943, inlinedAt: !947)
!957 = !DILocation(line: 438, column: 3, scope: !943, inlinedAt: !947)
!958 = !DILocation(line: 441, column: 1, scope: !943, inlinedAt: !947)
!959 = !DILocation(line: 569, column: 3, scope: !936)
!960 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "i", arg: 1, scope: !960, file: !3, line: 172, type: !33)
!963 = !DILocalVariable(name: "o", arg: 2, scope: !960, file: !3, line: 172, type: !66)
!964 = !DILocalVariable(name: "i", scope: !965, file: !3, line: 174, type: !50)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 174, column: 3)
!966 = !DILocation(line: 172, column: 23, scope: !960)
!967 = !DILocation(line: 172, column: 33, scope: !960)
!968 = !DILocation(line: 173, column: 19, scope: !960)
!969 = !DILocation(line: 173, column: 3, scope: !960)
!970 = !DILocation(line: 174, column: 12, scope: !965)
!971 = !DILocation(line: 176, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 175, column: 22)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 175, column: 9)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 174, column: 31)
!975 = distinct !DILexicalBlock(scope: !965, file: !3, line: 174, column: 3)
!976 = !DILocation(line: 180, column: 3, scope: !960)
!977 = !DILocation(line: 182, column: 3, scope: !960)
!978 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!979 = !{!980, !981, !982}
!980 = !DILocalVariable(name: "i", arg: 1, scope: !978, file: !3, line: 185, type: !33)
!981 = !DILocalVariable(name: "o", arg: 2, scope: !978, file: !3, line: 185, type: !66)
!982 = !DILocalVariable(name: "i", scope: !983, file: !3, line: 187, type: !50)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 187, column: 3)
!984 = !DILocation(line: 185, column: 22, scope: !978)
!985 = !DILocation(line: 185, column: 32, scope: !978)
!986 = !DILocation(line: 186, column: 19, scope: !978)
!987 = !DILocation(line: 186, column: 3, scope: !978)
!988 = !DILocation(line: 187, column: 12, scope: !983)
!989 = !DILocation(line: 189, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 188, column: 22)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 188, column: 9)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 187, column: 31)
!993 = distinct !DILexicalBlock(scope: !983, file: !3, line: 187, column: 3)
!994 = !DILocation(line: 193, column: 3, scope: !978)
!995 = !DILocation(line: 195, column: 3, scope: !978)
!996 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 557, type: !141, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!997 = !{!998, !999}
!998 = !DILocalVariable(name: "buf", arg: 1, scope: !996, file: !3, line: 557, type: !137)
!999 = !DILocalVariable(name: "priv", arg: 2, scope: !996, file: !3, line: 557, type: !33)
!1000 = !DILocation(line: 557, column: 24, scope: !996)
!1001 = !DILocation(line: 557, column: 36, scope: !996)
!1002 = !DILocation(line: 445, column: 3, scope: !1003, inlinedAt: !1006)
!1003 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 443, type: !565, scopeLine: 444, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1004 = !{!1005}
!1005 = !DILocalVariable(name: "f_outer", scope: !1003, file: !3, line: 445, type: !24)
!1006 = distinct !DILocation(line: 559, column: 3, scope: !996)
!1007 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 446, column: 8, scope: !1003, inlinedAt: !1006)
!1009 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1008)
!1010 = !DILocation(line: 446, column: 26, scope: !1003, inlinedAt: !1006)
!1011 = !DILocation(line: 446, column: 6, scope: !1003, inlinedAt: !1006)
!1012 = !DILocation(line: 447, column: 3, scope: !1003, inlinedAt: !1006)
!1013 = !DILocation(line: 445, column: 15, scope: !1003, inlinedAt: !1006)
!1014 = !DILocation(line: 448, column: 3, scope: !1003, inlinedAt: !1006)
!1015 = !DILocation(line: 450, column: 1, scope: !1003, inlinedAt: !1006)
!1016 = !DILocation(line: 561, column: 3, scope: !996)
!1017 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1018)
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = !DILocalVariable(name: "i", arg: 1, scope: !1017, file: !3, line: 79, type: !33)
!1020 = !DILocalVariable(name: "o", arg: 2, scope: !1017, file: !3, line: 79, type: !66)
!1021 = !DILocalVariable(name: "a", scope: !1017, file: !3, line: 82, type: !50)
!1022 = !DILocalVariable(name: "f_inner", scope: !1023, file: !3, line: 85, type: !24)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 83, column: 15)
!1024 = !DILocation(line: 79, column: 24, scope: !1017)
!1025 = !DILocation(line: 79, column: 34, scope: !1017)
!1026 = !DILocation(line: 81, column: 19, scope: !1017)
!1027 = !DILocation(line: 81, column: 3, scope: !1017)
!1028 = !DILocation(line: 82, column: 7, scope: !1017)
!1029 = !DILocation(line: 84, column: 5, scope: !1023)
!1030 = !DILocation(line: 85, column: 5, scope: !1023)
!1031 = !DILocation(line: 85, column: 17, scope: !1023)
!1032 = !DILocation(line: 86, column: 5, scope: !1023)
!1033 = !DILocation(line: 88, column: 3, scope: !1017)
!1034 = !DILocation(line: 89, column: 3, scope: !1017)
!1035 = !DILocation(line: 90, column: 1, scope: !1017)
!1036 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DILocalVariable(name: "i", arg: 1, scope: !1036, file: !3, line: 68, type: !33)
!1039 = !DILocalVariable(name: "o", arg: 2, scope: !1036, file: !3, line: 68, type: !66)
!1040 = !DILocalVariable(name: "a", scope: !1036, file: !3, line: 71, type: !50)
!1041 = !DILocation(line: 68, column: 24, scope: !1036)
!1042 = !DILocation(line: 68, column: 34, scope: !1036)
!1043 = !DILocation(line: 70, column: 19, scope: !1036)
!1044 = !DILocation(line: 70, column: 3, scope: !1036)
!1045 = !DILocation(line: 71, column: 7, scope: !1036)
!1046 = !DILocation(line: 73, column: 5, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 72, column: 16)
!1048 = !DILocation(line: 76, column: 3, scope: !1036)
!1049 = !DILocation(line: 77, column: 1, scope: !1036)
!1050 = distinct !DISubprogram(name: "handle_fibers11", scope: !3, file: !3, line: 624, type: !141, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1051)
!1051 = !{!1052, !1053}
!1052 = !DILocalVariable(name: "buf", arg: 1, scope: !1050, file: !3, line: 624, type: !137)
!1053 = !DILocalVariable(name: "priv", arg: 2, scope: !1050, file: !3, line: 624, type: !33)
!1054 = !DILocation(line: 624, column: 25, scope: !1050)
!1055 = !DILocation(line: 624, column: 37, scope: !1050)
!1056 = !DILocation(line: 422, column: 3, scope: !1057, inlinedAt: !1061)
!1057 = distinct !DISubprogram(name: "test_fiber_benchmark1", scope: !3, file: !3, line: 421, type: !565, scopeLine: 421, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060}
!1059 = !DILocalVariable(name: "first", scope: !1057, file: !3, line: 422, type: !24)
!1060 = !DILocalVariable(name: "second", scope: !1057, file: !3, line: 423, type: !24)
!1061 = distinct !DILocation(line: 626, column: 3, scope: !1050)
!1062 = !DILocation(line: 423, column: 3, scope: !1057, inlinedAt: !1061)
!1063 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 424, column: 8, scope: !1057, inlinedAt: !1061)
!1065 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1064)
!1066 = !DILocation(line: 424, column: 26, scope: !1057, inlinedAt: !1061)
!1067 = !DILocation(line: 424, column: 6, scope: !1057, inlinedAt: !1061)
!1068 = !DILocation(line: 422, column: 15, scope: !1057, inlinedAt: !1061)
!1069 = !DILocation(line: 426, column: 3, scope: !1057, inlinedAt: !1061)
!1070 = !DILocation(line: 423, column: 15, scope: !1057, inlinedAt: !1061)
!1071 = !DILocation(line: 427, column: 3, scope: !1057, inlinedAt: !1061)
!1072 = !DILocation(line: 430, column: 1, scope: !1057, inlinedAt: !1061)
!1073 = !DILocation(line: 627, column: 3, scope: !1050)
!1074 = distinct !DISubprogram(name: "benchmark_timer1", scope: !3, file: !3, line: 381, type: !64, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1084}
!1076 = !DILocalVariable(name: "i", arg: 1, scope: !1074, file: !3, line: 381, type: !33)
!1077 = !DILocalVariable(name: "o", arg: 2, scope: !1074, file: !3, line: 381, type: !66)
!1078 = !DILocalVariable(name: "a", scope: !1074, file: !3, line: 385, type: !50)
!1079 = !DILocalVariable(name: "start", scope: !1074, file: !3, line: 386, type: !29)
!1080 = !DILocalVariable(name: "times", scope: !1074, file: !3, line: 387, type: !1081)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128000, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 2000)
!1084 = !DILocalVariable(name: "j", scope: !1074, file: !3, line: 396, type: !50)
!1085 = !DILocation(line: 381, column: 29, scope: !1074)
!1086 = !DILocation(line: 381, column: 39, scope: !1074)
!1087 = !DILocation(line: 383, column: 19, scope: !1074)
!1088 = !DILocation(line: 383, column: 3, scope: !1074)
!1089 = !DILocation(line: 385, column: 7, scope: !1074)
!1090 = !DILocation(line: 386, column: 12, scope: !1074)
!1091 = !DILocation(line: 387, column: 3, scope: !1074)
!1092 = !DILocation(line: 387, column: 12, scope: !1074)
!1093 = !DILocation(line: 389, column: 3, scope: !1074)
!1094 = !DILocation(line: 390, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 389, column: 21)
!1096 = !DILocation(line: 268, column: 5, scope: !1097, inlinedAt: !1104)
!1097 = distinct !DISubprogram(name: "rdtsc", scope: !1098, file: !1098, line: 265, type: !1099, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1098 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!29}
!1101 = !{!1102, !1103}
!1102 = !DILocalVariable(name: "lo", scope: !1097, file: !1098, line: 267, type: !43)
!1103 = !DILocalVariable(name: "hi", scope: !1097, file: !1098, line: 267, type: !43)
!1104 = distinct !DILocation(line: 391, column: 16, scope: !1095)
!1105 = !{i32 98728}
!1106 = !DILocation(line: 267, column: 14, scope: !1097, inlinedAt: !1104)
!1107 = !DILocation(line: 267, column: 18, scope: !1097, inlinedAt: !1104)
!1108 = !DILocation(line: 269, column: 12, scope: !1097, inlinedAt: !1104)
!1109 = !DILocation(line: 269, column: 18, scope: !1097, inlinedAt: !1104)
!1110 = !DILocation(line: 269, column: 33, scope: !1097, inlinedAt: !1104)
!1111 = !DILocation(line: 269, column: 15, scope: !1097, inlinedAt: !1104)
!1112 = !DILocation(line: 391, column: 5, scope: !1095)
!1113 = !DILocation(line: 391, column: 14, scope: !1095)
!1114 = !DILocation(line: 393, column: 6, scope: !1095)
!1115 = !DILocation(line: 389, column: 12, scope: !1074)
!1116 = distinct !{!1116, !1093, !1117}
!1117 = !DILocation(line: 394, column: 3, scope: !1074)
!1118 = !DILocation(line: 398, column: 77, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 397, column: 3)
!1120 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 397, column: 3)
!1121 = !DILocation(line: 398, column: 57, scope: !1119)
!1122 = !DILocation(line: 396, column: 7, scope: !1074)
!1123 = !DILocation(line: 398, column: 66, scope: !1119)
!1124 = !DILocation(line: 398, column: 75, scope: !1119)
!1125 = !DILocation(line: 398, column: 5, scope: !1119)
!1126 = !DILocation(line: 397, column: 28, scope: !1119)
!1127 = !DILocation(line: 397, column: 17, scope: !1119)
!1128 = !DILocation(line: 397, column: 3, scope: !1120)
!1129 = distinct !{!1129, !1128, !1130}
!1130 = !DILocation(line: 398, column: 90, scope: !1120)
!1131 = !DILocation(line: 400, column: 3, scope: !1074)
!1132 = !DILocation(line: 401, column: 1, scope: !1074)
!1133 = distinct !DISubprogram(name: "benchmark_timer2", scope: !3, file: !3, line: 403, type: !64, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "i", arg: 1, scope: !1133, file: !3, line: 403, type: !33)
!1136 = !DILocalVariable(name: "o", arg: 2, scope: !1133, file: !3, line: 403, type: !66)
!1137 = !DILocalVariable(name: "a", scope: !1133, file: !3, line: 407, type: !50)
!1138 = !DILocation(line: 403, column: 29, scope: !1133)
!1139 = !DILocation(line: 403, column: 39, scope: !1133)
!1140 = !DILocation(line: 405, column: 19, scope: !1133)
!1141 = !DILocation(line: 405, column: 3, scope: !1133)
!1142 = !DILocation(line: 407, column: 7, scope: !1133)
!1143 = !DILocation(line: 409, column: 3, scope: !1133)
!1144 = !DILocation(line: 410, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 409, column: 21)
!1146 = !DILocation(line: 412, column: 6, scope: !1145)
!1147 = !DILocation(line: 409, column: 12, scope: !1133)
!1148 = distinct !{!1148, !1143, !1149}
!1149 = !DILocation(line: 413, column: 3, scope: !1133)
!1150 = !DILocation(line: 415, column: 3, scope: !1133)
!1151 = !DILocation(line: 416, column: 1, scope: !1133)
!1152 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 616, type: !141, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1153)
!1153 = !{!1154, !1155}
!1154 = !DILocalVariable(name: "buf", arg: 1, scope: !1152, file: !3, line: 616, type: !137)
!1155 = !DILocalVariable(name: "priv", arg: 2, scope: !1152, file: !3, line: 616, type: !33)
!1156 = !DILocation(line: 616, column: 25, scope: !1152)
!1157 = !DILocation(line: 616, column: 37, scope: !1152)
!1158 = !DILocation(line: 535, column: 3, scope: !1159, inlinedAt: !1163)
!1159 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 534, type: !565, scopeLine: 534, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162}
!1161 = !DILocalVariable(name: "first", scope: !1159, file: !3, line: 535, type: !24)
!1162 = !DILocalVariable(name: "second", scope: !1159, file: !3, line: 536, type: !24)
!1163 = distinct !DILocation(line: 618, column: 3, scope: !1152)
!1164 = !DILocation(line: 536, column: 3, scope: !1159, inlinedAt: !1163)
!1165 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 537, column: 8, scope: !1159, inlinedAt: !1163)
!1167 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1166)
!1168 = !DILocation(line: 537, column: 26, scope: !1159, inlinedAt: !1163)
!1169 = !DILocation(line: 537, column: 6, scope: !1159, inlinedAt: !1163)
!1170 = !DILocation(line: 535, column: 15, scope: !1159, inlinedAt: !1163)
!1171 = !DILocation(line: 539, column: 3, scope: !1159, inlinedAt: !1163)
!1172 = !DILocation(line: 536, column: 15, scope: !1159, inlinedAt: !1163)
!1173 = !DILocation(line: 540, column: 3, scope: !1159, inlinedAt: !1163)
!1174 = !DILocation(line: 543, column: 1, scope: !1159, inlinedAt: !1163)
!1175 = !DILocation(line: 619, column: 3, scope: !1152)
!1176 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182}
!1178 = !DILocalVariable(name: "i", arg: 1, scope: !1176, file: !3, line: 326, type: !33)
!1179 = !DILocalVariable(name: "o", arg: 2, scope: !1176, file: !3, line: 326, type: !66)
!1180 = !DILocalVariable(name: "a", scope: !1176, file: !3, line: 329, type: !50)
!1181 = !DILocalVariable(name: "start", scope: !1176, file: !3, line: 330, type: !29)
!1182 = !DILocalVariable(name: "end", scope: !1176, file: !3, line: 331, type: !29)
!1183 = !DILocation(line: 326, column: 24, scope: !1176)
!1184 = !DILocation(line: 326, column: 34, scope: !1176)
!1185 = !DILocation(line: 328, column: 19, scope: !1176)
!1186 = !DILocation(line: 328, column: 3, scope: !1176)
!1187 = !DILocation(line: 329, column: 7, scope: !1176)
!1188 = !DILocation(line: 330, column: 12, scope: !1176)
!1189 = !DILocation(line: 331, column: 12, scope: !1176)
!1190 = !DILocation(line: 332, column: 3, scope: !1176)
!1191 = !DILocation(line: 333, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 333, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 332, column: 15)
!1194 = !DILocation(line: 333, column: 9, scope: !1193)
!1195 = !DILocation(line: 268, column: 5, scope: !1097, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 334, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 333, column: 17)
!1198 = !DILocation(line: 267, column: 14, scope: !1097, inlinedAt: !1196)
!1199 = !DILocation(line: 267, column: 18, scope: !1097, inlinedAt: !1196)
!1200 = !DILocation(line: 269, column: 12, scope: !1097, inlinedAt: !1196)
!1201 = !DILocation(line: 269, column: 18, scope: !1097, inlinedAt: !1196)
!1202 = !DILocation(line: 269, column: 33, scope: !1097, inlinedAt: !1196)
!1203 = !DILocation(line: 269, column: 15, scope: !1097, inlinedAt: !1196)
!1204 = !DILocation(line: 335, column: 5, scope: !1197)
!1205 = !DILocation(line: 0, scope: !1176)
!1206 = !DILocation(line: 337, column: 6, scope: !1193)
!1207 = !DILocation(line: 332, column: 11, scope: !1176)
!1208 = distinct !{!1208, !1190, !1209}
!1209 = !DILocation(line: 338, column: 3, scope: !1176)
!1210 = !DILocation(line: 268, column: 5, scope: !1097, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 339, column: 9, scope: !1176)
!1212 = !DILocation(line: 267, column: 14, scope: !1097, inlinedAt: !1211)
!1213 = !DILocation(line: 267, column: 18, scope: !1097, inlinedAt: !1211)
!1214 = !DILocation(line: 269, column: 12, scope: !1097, inlinedAt: !1211)
!1215 = !DILocation(line: 269, column: 18, scope: !1097, inlinedAt: !1211)
!1216 = !DILocation(line: 269, column: 33, scope: !1097, inlinedAt: !1211)
!1217 = !DILocation(line: 269, column: 15, scope: !1097, inlinedAt: !1211)
!1218 = !DILocation(line: 340, column: 104, scope: !1176)
!1219 = !DILocation(line: 340, column: 123, scope: !1176)
!1220 = !DILocation(line: 340, column: 3, scope: !1176)
!1221 = !DILocation(line: 341, column: 1, scope: !1176)
!1222 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DILocalVariable(name: "i", arg: 1, scope: !1222, file: !3, line: 343, type: !33)
!1225 = !DILocalVariable(name: "o", arg: 2, scope: !1222, file: !3, line: 343, type: !66)
!1226 = !DILocalVariable(name: "a", scope: !1222, file: !3, line: 346, type: !50)
!1227 = !DILocation(line: 343, column: 25, scope: !1222)
!1228 = !DILocation(line: 343, column: 35, scope: !1222)
!1229 = !DILocation(line: 345, column: 19, scope: !1222)
!1230 = !DILocation(line: 345, column: 3, scope: !1222)
!1231 = !DILocation(line: 346, column: 7, scope: !1222)
!1232 = !DILocation(line: 351, column: 3, scope: !1222)
!1233 = !DILocation(line: 352, column: 1, scope: !1222)
!1234 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 549, type: !141, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1235 = !{!1236, !1237}
!1236 = !DILocalVariable(name: "buf", arg: 1, scope: !1234, file: !3, line: 549, type: !137)
!1237 = !DILocalVariable(name: "priv", arg: 2, scope: !1234, file: !3, line: 549, type: !33)
!1238 = !DILocation(line: 549, column: 23, scope: !1234)
!1239 = !DILocation(line: 549, column: 35, scope: !1234)
!1240 = !DILocation(line: 454, column: 3, scope: !1241, inlinedAt: !1246)
!1241 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 452, type: !565, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DILocalVariable(name: "f1", scope: !1241, file: !3, line: 454, type: !24)
!1244 = !DILocalVariable(name: "f2", scope: !1241, file: !3, line: 455, type: !24)
!1245 = !DILocalVariable(name: "f3", scope: !1241, file: !3, line: 456, type: !24)
!1246 = distinct !DILocation(line: 551, column: 3, scope: !1234)
!1247 = !DILocation(line: 455, column: 3, scope: !1241, inlinedAt: !1246)
!1248 = !DILocation(line: 456, column: 3, scope: !1241, inlinedAt: !1246)
!1249 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 457, column: 8, scope: !1241, inlinedAt: !1246)
!1251 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1250)
!1252 = !DILocation(line: 457, column: 26, scope: !1241, inlinedAt: !1246)
!1253 = !DILocation(line: 457, column: 6, scope: !1241, inlinedAt: !1246)
!1254 = !DILocation(line: 458, column: 3, scope: !1241, inlinedAt: !1246)
!1255 = !DILocation(line: 454, column: 15, scope: !1241, inlinedAt: !1246)
!1256 = !DILocation(line: 459, column: 3, scope: !1241, inlinedAt: !1246)
!1257 = !DILocation(line: 455, column: 15, scope: !1241, inlinedAt: !1246)
!1258 = !DILocation(line: 460, column: 3, scope: !1241, inlinedAt: !1246)
!1259 = !DILocation(line: 456, column: 15, scope: !1241, inlinedAt: !1246)
!1260 = !DILocation(line: 461, column: 3, scope: !1241, inlinedAt: !1246)
!1261 = !DILocation(line: 463, column: 1, scope: !1241, inlinedAt: !1246)
!1262 = !DILocation(line: 553, column: 3, scope: !1234)
!1263 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "i", arg: 1, scope: !1263, file: !3, line: 144, type: !33)
!1266 = !DILocalVariable(name: "o", arg: 2, scope: !1263, file: !3, line: 144, type: !66)
!1267 = !DILocalVariable(name: "a", scope: !1263, file: !3, line: 147, type: !50)
!1268 = !DILocalVariable(name: "f3", scope: !1263, file: !3, line: 154, type: !24)
!1269 = !DILocation(line: 144, column: 19, scope: !1263)
!1270 = !DILocation(line: 144, column: 29, scope: !1263)
!1271 = !DILocation(line: 146, column: 19, scope: !1263)
!1272 = !DILocation(line: 146, column: 3, scope: !1263)
!1273 = !DILocation(line: 147, column: 7, scope: !1263)
!1274 = !DILocation(line: 149, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 148, column: 15)
!1276 = !DILocation(line: 150, column: 5, scope: !1275)
!1277 = !DILocation(line: 153, column: 3, scope: !1263)
!1278 = !DILocation(line: 154, column: 3, scope: !1263)
!1279 = !DILocation(line: 154, column: 15, scope: !1263)
!1280 = !DILocation(line: 155, column: 3, scope: !1263)
!1281 = !DILocation(line: 156, column: 1, scope: !1263)
!1282 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1283)
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DILocalVariable(name: "i", arg: 1, scope: !1282, file: !3, line: 159, type: !33)
!1285 = !DILocalVariable(name: "o", arg: 2, scope: !1282, file: !3, line: 159, type: !66)
!1286 = !DILocalVariable(name: "a", scope: !1282, file: !3, line: 162, type: !50)
!1287 = !DILocalVariable(name: "f4", scope: !1282, file: !3, line: 168, type: !24)
!1288 = !DILocation(line: 159, column: 19, scope: !1282)
!1289 = !DILocation(line: 159, column: 29, scope: !1282)
!1290 = !DILocation(line: 161, column: 19, scope: !1282)
!1291 = !DILocation(line: 161, column: 3, scope: !1282)
!1292 = !DILocation(line: 162, column: 7, scope: !1282)
!1293 = !DILocation(line: 164, column: 5, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 163, column: 16)
!1295 = !DILocation(line: 167, column: 3, scope: !1282)
!1296 = !DILocation(line: 168, column: 3, scope: !1282)
!1297 = !DILocation(line: 168, column: 15, scope: !1282)
!1298 = !DILocation(line: 169, column: 3, scope: !1282)
!1299 = !DILocation(line: 170, column: 1, scope: !1282)
!1300 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DILocalVariable(name: "i", arg: 1, scope: !1300, file: !3, line: 131, type: !33)
!1303 = !DILocalVariable(name: "o", arg: 2, scope: !1300, file: !3, line: 131, type: !66)
!1304 = !DILocalVariable(name: "a", scope: !1300, file: !3, line: 134, type: !50)
!1305 = !DILocalVariable(name: "f4", scope: !1300, file: !3, line: 140, type: !24)
!1306 = !DILocation(line: 131, column: 19, scope: !1300)
!1307 = !DILocation(line: 131, column: 29, scope: !1300)
!1308 = !DILocation(line: 133, column: 19, scope: !1300)
!1309 = !DILocation(line: 133, column: 3, scope: !1300)
!1310 = !DILocation(line: 134, column: 7, scope: !1300)
!1311 = !DILocation(line: 136, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 135, column: 15)
!1313 = !DILocation(line: 139, column: 3, scope: !1300)
!1314 = !DILocation(line: 140, column: 3, scope: !1300)
!1315 = !DILocation(line: 140, column: 15, scope: !1300)
!1316 = !DILocation(line: 141, column: 3, scope: !1300)
!1317 = !DILocation(line: 142, column: 1, scope: !1300)
!1318 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DILocalVariable(name: "i", arg: 1, scope: !1318, file: !3, line: 119, type: !33)
!1321 = !DILocalVariable(name: "o", arg: 2, scope: !1318, file: !3, line: 119, type: !66)
!1322 = !DILocalVariable(name: "a", scope: !1318, file: !3, line: 122, type: !50)
!1323 = !DILocation(line: 119, column: 19, scope: !1318)
!1324 = !DILocation(line: 119, column: 29, scope: !1318)
!1325 = !DILocation(line: 121, column: 19, scope: !1318)
!1326 = !DILocation(line: 121, column: 3, scope: !1318)
!1327 = !DILocation(line: 122, column: 7, scope: !1318)
!1328 = !DILocation(line: 124, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 123, column: 16)
!1330 = !DILocation(line: 127, column: 3, scope: !1318)
!1331 = !DILocation(line: 128, column: 1, scope: !1318)
!1332 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !1333, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!50, !50}
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "a", arg: 1, scope: !1332, file: !3, line: 45, type: !50)
!1337 = !DILocalVariable(name: "i", scope: !1332, file: !3, line: 47, type: !50)
!1338 = !DILocalVariable(name: "b", scope: !1332, file: !3, line: 47, type: !50)
!1339 = !DILocation(line: 45, column: 18, scope: !1332)
!1340 = !DILocation(line: 47, column: 10, scope: !1332)
!1341 = !DILocation(line: 47, column: 7, scope: !1332)
!1342 = !DILocation(line: 49, column: 16, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 49, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 49, column: 3)
!1345 = !DILocation(line: 49, column: 3, scope: !1344)
!1346 = !DILocation(line: 51, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 50, column: 3)
!1348 = !DILocation(line: 49, column: 22, scope: !1343)
!1349 = distinct !{!1349, !1345, !1350}
!1350 = !DILocation(line: 53, column: 3, scope: !1344)
!1351 = !DILocation(line: 0, scope: !1332)
!1352 = !DILocation(line: 55, column: 3, scope: !1332)
!1353 = !DILocation(line: 422, column: 3, scope: !1057)
!1354 = !DILocation(line: 423, column: 3, scope: !1057)
!1355 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 424, column: 8, scope: !1057)
!1357 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1356)
!1358 = !DILocation(line: 424, column: 26, scope: !1057)
!1359 = !DILocation(line: 424, column: 6, scope: !1057)
!1360 = !DILocation(line: 422, column: 15, scope: !1057)
!1361 = !DILocation(line: 426, column: 3, scope: !1057)
!1362 = !DILocation(line: 423, column: 15, scope: !1057)
!1363 = !DILocation(line: 427, column: 3, scope: !1057)
!1364 = !DILocation(line: 430, column: 1, scope: !1057)
!1365 = !DILocation(line: 429, column: 3, scope: !1057)
!1366 = !DILocation(line: 434, column: 3, scope: !943)
!1367 = !DILocation(line: 435, column: 3, scope: !943)
!1368 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 436, column: 8, scope: !943)
!1370 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1369)
!1371 = !DILocation(line: 436, column: 26, scope: !943)
!1372 = !DILocation(line: 436, column: 6, scope: !943)
!1373 = !DILocation(line: 434, column: 15, scope: !943)
!1374 = !DILocation(line: 437, column: 3, scope: !943)
!1375 = !DILocation(line: 435, column: 15, scope: !943)
!1376 = !DILocation(line: 438, column: 3, scope: !943)
!1377 = !DILocation(line: 441, column: 1, scope: !943)
!1378 = !DILocation(line: 440, column: 3, scope: !943)
!1379 = !DILocation(line: 445, column: 3, scope: !1003)
!1380 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 446, column: 8, scope: !1003)
!1382 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1381)
!1383 = !DILocation(line: 446, column: 26, scope: !1003)
!1384 = !DILocation(line: 446, column: 6, scope: !1003)
!1385 = !DILocation(line: 447, column: 3, scope: !1003)
!1386 = !DILocation(line: 445, column: 15, scope: !1003)
!1387 = !DILocation(line: 448, column: 3, scope: !1003)
!1388 = !DILocation(line: 450, column: 1, scope: !1003)
!1389 = !DILocation(line: 449, column: 3, scope: !1003)
!1390 = !DILocation(line: 454, column: 3, scope: !1241)
!1391 = !DILocation(line: 455, column: 3, scope: !1241)
!1392 = !DILocation(line: 456, column: 3, scope: !1241)
!1393 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 457, column: 8, scope: !1241)
!1395 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1394)
!1396 = !DILocation(line: 457, column: 26, scope: !1241)
!1397 = !DILocation(line: 457, column: 6, scope: !1241)
!1398 = !DILocation(line: 458, column: 3, scope: !1241)
!1399 = !DILocation(line: 454, column: 15, scope: !1241)
!1400 = !DILocation(line: 459, column: 3, scope: !1241)
!1401 = !DILocation(line: 455, column: 15, scope: !1241)
!1402 = !DILocation(line: 460, column: 3, scope: !1241)
!1403 = !DILocation(line: 456, column: 15, scope: !1241)
!1404 = !DILocation(line: 461, column: 3, scope: !1241)
!1405 = !DILocation(line: 463, column: 1, scope: !1241)
!1406 = !DILocation(line: 462, column: 3, scope: !1241)
!1407 = !DILocation(line: 491, column: 3, scope: !758)
!1408 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 492, column: 8, scope: !758)
!1410 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1409)
!1411 = !DILocation(line: 492, column: 26, scope: !758)
!1412 = !DILocation(line: 492, column: 6, scope: !758)
!1413 = !DILocation(line: 493, column: 3, scope: !758)
!1414 = !DILocation(line: 491, column: 15, scope: !758)
!1415 = !DILocation(line: 494, column: 3, scope: !758)
!1416 = !DILocation(line: 496, column: 1, scope: !758)
!1417 = !DILocation(line: 495, column: 3, scope: !758)
!1418 = !DILocation(line: 500, column: 3, scope: !720)
!1419 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 501, column: 8, scope: !720)
!1421 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1420)
!1422 = !DILocation(line: 501, column: 26, scope: !720)
!1423 = !DILocation(line: 501, column: 6, scope: !720)
!1424 = !DILocation(line: 502, column: 3, scope: !720)
!1425 = !DILocation(line: 500, column: 15, scope: !720)
!1426 = !DILocation(line: 503, column: 3, scope: !720)
!1427 = !DILocation(line: 505, column: 1, scope: !720)
!1428 = !DILocation(line: 504, column: 3, scope: !720)
!1429 = !DILocation(line: 509, column: 3, scope: !674)
!1430 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 510, column: 8, scope: !674)
!1432 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1431)
!1433 = !DILocation(line: 510, column: 26, scope: !674)
!1434 = !DILocation(line: 510, column: 6, scope: !674)
!1435 = !DILocation(line: 511, column: 3, scope: !674)
!1436 = !DILocation(line: 509, column: 15, scope: !674)
!1437 = !DILocation(line: 512, column: 3, scope: !674)
!1438 = !DILocation(line: 514, column: 1, scope: !674)
!1439 = !DILocation(line: 513, column: 3, scope: !674)
!1440 = !DILocation(line: 518, column: 3, scope: !615)
!1441 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 519, column: 8, scope: !615)
!1443 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1442)
!1444 = !DILocation(line: 519, column: 26, scope: !615)
!1445 = !DILocation(line: 519, column: 6, scope: !615)
!1446 = !DILocation(line: 520, column: 3, scope: !615)
!1447 = !DILocation(line: 518, column: 15, scope: !615)
!1448 = !DILocation(line: 521, column: 3, scope: !615)
!1449 = !DILocation(line: 523, column: 1, scope: !615)
!1450 = !DILocation(line: 522, column: 3, scope: !615)
!1451 = !DILocation(line: 527, column: 3, scope: !564)
!1452 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 528, column: 8, scope: !564)
!1454 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1453)
!1455 = !DILocation(line: 528, column: 26, scope: !564)
!1456 = !DILocation(line: 528, column: 6, scope: !564)
!1457 = !DILocation(line: 529, column: 3, scope: !564)
!1458 = !DILocation(line: 527, column: 15, scope: !564)
!1459 = !DILocation(line: 530, column: 3, scope: !564)
!1460 = !DILocation(line: 532, column: 1, scope: !564)
!1461 = !DILocation(line: 531, column: 3, scope: !564)
!1462 = !DILocation(line: 535, column: 3, scope: !1159)
!1463 = !DILocation(line: 536, column: 3, scope: !1159)
!1464 = !DILocation(line: 258, column: 26, scope: !571, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 537, column: 8, scope: !1159)
!1466 = !DILocation(line: 258, column: 26, scope: !572, inlinedAt: !1465)
!1467 = !DILocation(line: 537, column: 26, scope: !1159)
!1468 = !DILocation(line: 537, column: 6, scope: !1159)
!1469 = !DILocation(line: 535, column: 15, scope: !1159)
!1470 = !DILocation(line: 539, column: 3, scope: !1159)
!1471 = !DILocation(line: 536, column: 15, scope: !1159)
!1472 = !DILocation(line: 540, column: 3, scope: !1159)
!1473 = !DILocation(line: 543, column: 1, scope: !1159)
!1474 = !DILocation(line: 542, column: 3, scope: !1159)
!1475 = distinct !DISubprogram(name: "_get_fiber_state", scope: !186, file: !186, line: 76, type: !1476, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !186, line: 66, baseType: !339)
!1480 = !{}
!1481 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1486)
!1482 = distinct !DISubprogram(name: "get_cpu", scope: !1483, file: !1483, line: 127, type: !1484, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1483 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!328}
!1486 = distinct !DILocation(line: 78, column: 10, scope: !1475)
!1487 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1486)
!1488 = !DILocation(line: 78, column: 21, scope: !1475)
!1489 = !DILocation(line: 78, column: 3, scope: !1475)
!1490 = distinct !DISubprogram(name: "nk_fiber_current", scope: !186, file: !186, line: 83, type: !1491, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!300}
!1493 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 85, column: 10, scope: !1490)
!1496 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1494)
!1497 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1495)
!1498 = !DILocation(line: 85, column: 30, scope: !1490)
!1499 = !DILocation(line: 85, column: 3, scope: !1490)
!1500 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !186, file: !186, line: 90, type: !1491, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1501 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 92, column: 10, scope: !1500)
!1504 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1502)
!1505 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1503)
!1506 = !DILocation(line: 92, column: 30, scope: !1500)
!1507 = !DILocation(line: 92, column: 3, scope: !1500)
!1508 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !186, file: !186, line: 96, type: !1509, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!343}
!1511 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 98, column: 10, scope: !1508)
!1514 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1512)
!1515 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1513)
!1516 = !DILocation(line: 98, column: 30, scope: !1508)
!1517 = !DILocation(line: 98, column: 3, scope: !1508)
!1518 = distinct !DISubprogram(name: "_get_sched_head", scope: !186, file: !186, line: 103, type: !1519, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!209}
!1521 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 105, column: 12, scope: !1518)
!1524 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1522)
!1525 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1523)
!1526 = !DILocation(line: 105, column: 32, scope: !1518)
!1527 = !DILocation(line: 105, column: 3, scope: !1518)
!1528 = distinct !DISubprogram(name: "_fiber_push", scope: !186, file: !186, line: 113, type: !1529, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !300, !29}
!1531 = !{!1532, !1533}
!1532 = !DILocalVariable(name: "f", arg: 1, scope: !1528, file: !186, line: 113, type: !300)
!1533 = !DILocalVariable(name: "x", arg: 2, scope: !1528, file: !186, line: 113, type: !29)
!1534 = !DILocation(line: 113, column: 31, scope: !1528)
!1535 = !DILocation(line: 113, column: 43, scope: !1528)
!1536 = !DILocation(line: 115, column: 8, scope: !1528)
!1537 = !DILocation(line: 115, column: 12, scope: !1528)
!1538 = !DILocation(line: 116, column: 6, scope: !1528)
!1539 = !DILocation(line: 116, column: 26, scope: !1528)
!1540 = !DILocation(line: 117, column: 1, scope: !1528)
!1541 = distinct !DISubprogram(name: "_rr_policy", scope: !186, file: !186, line: 119, type: !1491, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545, !1549}
!1543 = !DILocalVariable(name: "fiber_sched_queue", scope: !1541, file: !186, line: 122, type: !209)
!1544 = !DILocalVariable(name: "fiber_to_schedule", scope: !1541, file: !186, line: 125, type: !300)
!1545 = !DILocalVariable(name: "first", scope: !1546, file: !186, line: 128, type: !300)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !186, line: 128, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !186, line: 126, column: 40)
!1548 = distinct !DILexicalBlock(scope: !1541, file: !186, line: 126, column: 7)
!1549 = !DILocalVariable(name: "__mptr", scope: !1550, file: !186, line: 128, type: !1553)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !186, line: 128, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !186, line: 128, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !186, line: 128, column: 25)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!1555 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 122, column: 41, scope: !1541)
!1559 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1556)
!1560 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1557)
!1561 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !1558)
!1562 = !DILocation(line: 122, column: 21, scope: !1541)
!1563 = !DILocation(line: 125, column: 15, scope: !1541)
!1564 = !DILocalVariable(name: "head", arg: 1, scope: !1565, file: !53, line: 184, type: !1553)
!1565 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1566, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!50, !1553}
!1568 = !{!1564}
!1569 = !DILocation(line: 184, column: 54, scope: !1565, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 126, column: 9, scope: !1548)
!1571 = !DILocation(line: 186, column: 15, scope: !1565, inlinedAt: !1570)
!1572 = !DILocation(line: 186, column: 20, scope: !1565, inlinedAt: !1570)
!1573 = !DILocation(line: 126, column: 7, scope: !1541)
!1574 = !DILocation(line: 128, column: 25, scope: !1546)
!1575 = !DILocation(line: 131, column: 40, scope: !1547)
!1576 = !DILocalVariable(name: "entry", arg: 1, scope: !1577, file: !53, line: 151, type: !209)
!1577 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !1578, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !209}
!1580 = !{!1576}
!1581 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 131, column: 5, scope: !1547)
!1583 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !1582)
!1584 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !1582)
!1585 = !DILocalVariable(name: "prev", arg: 1, scope: !1586, file: !53, line: 128, type: !209)
!1586 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1587, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !209, !209}
!1589 = !{!1585, !1590}
!1590 = !DILocalVariable(name: "next", arg: 2, scope: !1586, file: !53, line: 128, type: !209)
!1591 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !1582)
!1593 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !1592)
!1594 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !1592)
!1595 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !1592)
!1596 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !1592)
!1597 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !1592)
!1598 = !DILocalVariable(name: "list", arg: 1, scope: !1599, file: !53, line: 73, type: !209)
!1599 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !1578, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1600)
!1600 = !{!1598}
!1601 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !1582)
!1603 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !1602)
!1604 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !1602)
!1605 = !DILocation(line: 132, column: 3, scope: !1547)
!1606 = !DILocation(line: 0, scope: !1541)
!1607 = !DILocation(line: 139, column: 3, scope: !1541)
!1608 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !186, file: !186, line: 144, type: !1609, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !300}
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1619}
!1612 = !DILocalVariable(name: "f", arg: 1, scope: !1608, file: !186, line: 144, type: !300)
!1613 = !DILocalVariable(name: "next", scope: !1608, file: !186, line: 149, type: !300)
!1614 = !DILocalVariable(name: "temp", scope: !1608, file: !186, line: 155, type: !300)
!1615 = !DILocalVariable(name: "waitq", scope: !1608, file: !186, line: 156, type: !209)
!1616 = !DILocalVariable(name: "first", scope: !1617, file: !186, line: 163, type: !300)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !186, line: 163, column: 12)
!1618 = distinct !DILexicalBlock(scope: !1608, file: !186, line: 160, column: 25)
!1619 = !DILocalVariable(name: "__mptr", scope: !1620, file: !186, line: 163, type: !1553)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !186, line: 163, column: 12)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !186, line: 163, column: 12)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !186, line: 163, column: 12)
!1623 = !DILocation(line: 144, column: 33, scope: !1608)
!1624 = !DILocation(line: 147, column: 6, scope: !1608)
!1625 = !DILocation(line: 147, column: 15, scope: !1608)
!1626 = !DILocation(line: 149, column: 15, scope: !1608)
!1627 = !DILocation(line: 156, column: 34, scope: !1608)
!1628 = !DILocation(line: 156, column: 21, scope: !1608)
!1629 = !DILocation(line: 160, column: 12, scope: !1608)
!1630 = !DILocation(line: 160, column: 21, scope: !1608)
!1631 = !DILocation(line: 160, column: 3, scope: !1608)
!1632 = !DILocation(line: 163, column: 12, scope: !1617)
!1633 = !DILocation(line: 163, column: 12, scope: !1622)
!1634 = !DILocation(line: 155, column: 15, scope: !1608)
!1635 = !DILocation(line: 164, column: 27, scope: !1618)
!1636 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 164, column: 5, scope: !1618)
!1638 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !1637)
!1639 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !1637)
!1640 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !1637)
!1642 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !1641)
!1643 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !1641)
!1644 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !1641)
!1645 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !1641)
!1646 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !1641)
!1647 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !1637)
!1649 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !1648)
!1650 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !1648)
!1651 = !DILocation(line: 165, column: 16, scope: !1618)
!1652 = !DILocation(line: 168, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1618, file: !186, line: 168, column: 9)
!1654 = !DILocation(line: 168, column: 9, scope: !1618)
!1655 = !DILocalVariable(name: "f", arg: 1, scope: !1656, file: !186, line: 663, type: !300)
!1656 = distinct !DISubprogram(name: "nk_fiber_run", scope: !186, file: !186, line: 663, type: !1657, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!50, !300, !70}
!1659 = !{!1655, !1660, !1661, !1662}
!1660 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1656, file: !186, line: 663, type: !70)
!1661 = !DILocalVariable(name: "curr_thread", scope: !1656, file: !186, line: 666, type: !343)
!1662 = !DILocalVariable(name: "fiber_sched_queue", scope: !1656, file: !186, line: 674, type: !209)
!1663 = !DILocation(line: 663, column: 30, scope: !1656, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 171, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1653, file: !186, line: 168, column: 14)
!1666 = !DILocation(line: 663, column: 41, scope: !1656, inlinedAt: !1664)
!1667 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 666, column: 30, scope: !1656, inlinedAt: !1664)
!1671 = !DILocation(line: 666, column: 16, scope: !1656, inlinedAt: !1664)
!1672 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !1680)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !186, line: 366, column: 29)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !186, line: 366, column: 29)
!1675 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !186, file: !186, line: 363, type: !565, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DILocalVariable(name: "sys", scope: !1675, file: !186, line: 366, type: !322)
!1678 = !DILocalVariable(name: "__r", scope: !1674, file: !186, line: 366, type: !322)
!1679 = !DILocalVariable(name: "__r", scope: !1673, file: !186, line: 366, type: !322)
!1680 = distinct !DILocation(line: 373, column: 20, scope: !1681, inlinedAt: !1689)
!1681 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !186, file: !186, line: 370, type: !1509, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1682)
!1682 = !{!1683, !1684, !1685, !1687}
!1683 = !DILocalVariable(name: "random_cpu", scope: !1681, file: !186, line: 373, type: !50)
!1684 = !DILocalVariable(name: "sys", scope: !1681, file: !186, line: 374, type: !322)
!1685 = !DILocalVariable(name: "__r", scope: !1686, file: !186, line: 374, type: !322)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !186, line: 374, column: 27)
!1687 = !DILocalVariable(name: "__r", scope: !1688, file: !186, line: 374, type: !322)
!1688 = distinct !DILexicalBlock(scope: !1686, file: !186, line: 374, column: 27)
!1689 = distinct !DILocation(line: 670, column: 19, scope: !1690, inlinedAt: !1664)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !186, line: 669, column: 23)
!1691 = distinct !DILexicalBlock(scope: !1656, file: !186, line: 669, column: 7)
!1692 = !{i32 -2147185108}
!1693 = !DILocation(line: 366, column: 29, scope: !1674, inlinedAt: !1680)
!1694 = !DILocation(line: 366, column: 23, scope: !1675, inlinedAt: !1680)
!1695 = !DILocation(line: 358, column: 5, scope: !1696, inlinedAt: !1699)
!1696 = distinct !DISubprogram(name: "_get_random", scope: !186, file: !186, line: 356, type: !1099, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1697)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "t", scope: !1696, file: !186, line: 358, type: !29)
!1699 = distinct !DILocation(line: 367, column: 18, scope: !1675, inlinedAt: !1680)
!1700 = !DILocation(line: 359, column: 5, scope: !1696, inlinedAt: !1699)
!1701 = !DILocation(line: 360, column: 12, scope: !1696, inlinedAt: !1699)
!1702 = !DILocation(line: 358, column: 14, scope: !1696, inlinedAt: !1699)
!1703 = !DILocation(line: 361, column: 1, scope: !1696, inlinedAt: !1699)
!1704 = !DILocation(line: 367, column: 39, scope: !1675, inlinedAt: !1680)
!1705 = !DILocation(line: 367, column: 34, scope: !1675, inlinedAt: !1680)
!1706 = !DILocation(line: 367, column: 32, scope: !1675, inlinedAt: !1680)
!1707 = !DILocation(line: 374, column: 27, scope: !1688, inlinedAt: !1689)
!1708 = !{i32 -2147182107}
!1709 = !DILocation(line: 374, column: 27, scope: !1686, inlinedAt: !1689)
!1710 = !DILocation(line: 374, column: 21, scope: !1681, inlinedAt: !1689)
!1711 = !DILocation(line: 375, column: 10, scope: !1681, inlinedAt: !1689)
!1712 = !DILocation(line: 0, scope: !1656, inlinedAt: !1664)
!1713 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 674, column: 41, scope: !1656, inlinedAt: !1664)
!1717 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1714)
!1718 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1715)
!1719 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !1716)
!1720 = !DILocation(line: 674, column: 21, scope: !1656, inlinedAt: !1664)
!1721 = !DILocation(line: 678, column: 6, scope: !1656, inlinedAt: !1664)
!1722 = !DILocation(line: 678, column: 15, scope: !1656, inlinedAt: !1664)
!1723 = !DILocation(line: 679, column: 22, scope: !1656, inlinedAt: !1664)
!1724 = !DILocalVariable(name: "nelm", arg: 1, scope: !1725, file: !53, line: 116, type: !209)
!1725 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1587, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1726)
!1726 = !{!1724, !1727}
!1727 = !DILocalVariable(name: "head", arg: 2, scope: !1725, file: !53, line: 116, type: !209)
!1728 = !DILocation(line: 116, column: 52, scope: !1725, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 679, column: 3, scope: !1656, inlinedAt: !1664)
!1730 = !DILocation(line: 116, column: 76, scope: !1725, inlinedAt: !1729)
!1731 = !DILocation(line: 118, column: 25, scope: !1725, inlinedAt: !1729)
!1732 = !DILocalVariable(name: "nelm", arg: 1, scope: !1733, file: !53, line: 85, type: !209)
!1733 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1734, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !209, !209, !209}
!1736 = !{!1732, !1737, !1738}
!1737 = !DILocalVariable(name: "prev", arg: 2, scope: !1733, file: !53, line: 86, type: !209)
!1738 = !DILocalVariable(name: "next", arg: 3, scope: !1733, file: !53, line: 87, type: !209)
!1739 = !DILocation(line: 85, column: 49, scope: !1733, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 118, column: 2, scope: !1725, inlinedAt: !1729)
!1741 = !DILocation(line: 86, column: 28, scope: !1733, inlinedAt: !1740)
!1742 = !DILocation(line: 87, column: 28, scope: !1733, inlinedAt: !1740)
!1743 = !DILocation(line: 89, column: 13, scope: !1733, inlinedAt: !1740)
!1744 = !DILocation(line: 90, column: 8, scope: !1733, inlinedAt: !1740)
!1745 = !DILocation(line: 90, column: 13, scope: !1733, inlinedAt: !1740)
!1746 = !DILocation(line: 91, column: 8, scope: !1733, inlinedAt: !1740)
!1747 = !DILocation(line: 91, column: 13, scope: !1733, inlinedAt: !1740)
!1748 = !DILocation(line: 92, column: 8, scope: !1733, inlinedAt: !1740)
!1749 = !DILocation(line: 92, column: 13, scope: !1733, inlinedAt: !1740)
!1750 = !DILocation(line: 683, column: 20, scope: !1751, inlinedAt: !1664)
!1751 = distinct !DILexicalBlock(scope: !1656, file: !186, line: 683, column: 7)
!1752 = !DILocation(line: 683, column: 7, scope: !1751, inlinedAt: !1664)
!1753 = !DILocation(line: 683, column: 7, scope: !1656, inlinedAt: !1664)
!1754 = !DILocation(line: 687, column: 5, scope: !1755, inlinedAt: !1664)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !186, line: 683, column: 26)
!1756 = !DILocation(line: 688, column: 3, scope: !1755, inlinedAt: !1664)
!1757 = distinct !{!1757, !1631, !1758}
!1758 = !DILocation(line: 173, column: 3, scope: !1608)
!1759 = !DILocation(line: 175, column: 6, scope: !1608)
!1760 = !DILocation(line: 175, column: 14, scope: !1608)
!1761 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 122, column: 41, scope: !1541, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 179, column: 10, scope: !1608)
!1766 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1762)
!1767 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1763)
!1768 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !1764)
!1769 = !DILocation(line: 122, column: 21, scope: !1541, inlinedAt: !1765)
!1770 = !DILocation(line: 125, column: 15, scope: !1541, inlinedAt: !1765)
!1771 = !DILocation(line: 184, column: 54, scope: !1565, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 126, column: 9, scope: !1548, inlinedAt: !1765)
!1773 = !DILocation(line: 186, column: 15, scope: !1565, inlinedAt: !1772)
!1774 = !DILocation(line: 186, column: 20, scope: !1565, inlinedAt: !1772)
!1775 = !DILocation(line: 126, column: 7, scope: !1541, inlinedAt: !1765)
!1776 = !DILocation(line: 128, column: 25, scope: !1546, inlinedAt: !1765)
!1777 = !DILocation(line: 131, column: 40, scope: !1547, inlinedAt: !1765)
!1778 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 131, column: 5, scope: !1547, inlinedAt: !1765)
!1780 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !1779)
!1781 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !1779)
!1782 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !1779)
!1784 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !1783)
!1785 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !1783)
!1786 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !1783)
!1787 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !1783)
!1788 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !1783)
!1789 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !1779)
!1791 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !1790)
!1792 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !1790)
!1793 = !DILocation(line: 180, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1608, file: !186, line: 180, column: 7)
!1795 = !DILocation(line: 180, column: 7, scope: !1608)
!1796 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 181, column: 12, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !186, line: 180, column: 16)
!1801 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1797)
!1802 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1798)
!1803 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !1799)
!1804 = !DILocation(line: 182, column: 3, scope: !1800)
!1805 = !DILocation(line: 0, scope: !1608)
!1806 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 183, column: 3, scope: !1608)
!1809 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1807)
!1810 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1808)
!1811 = !DILocation(line: 183, column: 23, scope: !1608)
!1812 = !DILocation(line: 183, column: 34, scope: !1608)
!1813 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 186, column: 19, scope: !1608)
!1816 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1814)
!1817 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1815)
!1818 = !DILocation(line: 186, column: 39, scope: !1608)
!1819 = !DILocation(line: 186, column: 51, scope: !1608)
!1820 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 186, column: 3, scope: !1608)
!1822 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !1821)
!1823 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !1821)
!1824 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !1821)
!1826 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !1825)
!1827 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !1825)
!1828 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !1825)
!1829 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !1825)
!1830 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !1825)
!1831 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !1821)
!1833 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !1832)
!1834 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !1832)
!1835 = !DILocation(line: 189, column: 3, scope: !1608)
!1836 = !DILocation(line: 190, column: 3, scope: !1608)
!1837 = !DILocation(line: 193, column: 3, scope: !1608)
!1838 = !DILocation(line: 196, column: 1, scope: !1608)
!1839 = !DILocation(line: 663, column: 30, scope: !1656)
!1840 = !DILocation(line: 663, column: 41, scope: !1656)
!1841 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 666, column: 30, scope: !1656)
!1845 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1842)
!1846 = !DILocation(line: 666, column: 16, scope: !1656)
!1847 = !DILocation(line: 669, column: 7, scope: !1691)
!1848 = !DILocation(line: 669, column: 7, scope: !1656)
!1849 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 373, column: 20, scope: !1681, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 670, column: 19, scope: !1690)
!1852 = !DILocation(line: 366, column: 29, scope: !1674, inlinedAt: !1850)
!1853 = !DILocation(line: 366, column: 23, scope: !1675, inlinedAt: !1850)
!1854 = !DILocation(line: 358, column: 5, scope: !1696, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 367, column: 18, scope: !1675, inlinedAt: !1850)
!1856 = !DILocation(line: 359, column: 5, scope: !1696, inlinedAt: !1855)
!1857 = !DILocation(line: 360, column: 12, scope: !1696, inlinedAt: !1855)
!1858 = !DILocation(line: 358, column: 14, scope: !1696, inlinedAt: !1855)
!1859 = !DILocation(line: 361, column: 1, scope: !1696, inlinedAt: !1855)
!1860 = !DILocation(line: 367, column: 39, scope: !1675, inlinedAt: !1850)
!1861 = !DILocation(line: 367, column: 34, scope: !1675, inlinedAt: !1850)
!1862 = !DILocation(line: 367, column: 32, scope: !1675, inlinedAt: !1850)
!1863 = !DILocation(line: 374, column: 27, scope: !1688, inlinedAt: !1851)
!1864 = !DILocation(line: 374, column: 27, scope: !1686, inlinedAt: !1851)
!1865 = !DILocation(line: 374, column: 21, scope: !1681, inlinedAt: !1851)
!1866 = !DILocation(line: 375, column: 10, scope: !1681, inlinedAt: !1851)
!1867 = !DILocation(line: 671, column: 3, scope: !1690)
!1868 = !DILocation(line: 0, scope: !1656)
!1869 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 674, column: 41, scope: !1656)
!1873 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !1870)
!1874 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !1871)
!1875 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !1872)
!1876 = !DILocation(line: 674, column: 21, scope: !1656)
!1877 = !DILocation(line: 678, column: 6, scope: !1656)
!1878 = !DILocation(line: 678, column: 15, scope: !1656)
!1879 = !DILocation(line: 679, column: 22, scope: !1656)
!1880 = !DILocation(line: 116, column: 52, scope: !1725, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 679, column: 3, scope: !1656)
!1882 = !DILocation(line: 116, column: 76, scope: !1725, inlinedAt: !1881)
!1883 = !DILocation(line: 118, column: 25, scope: !1725, inlinedAt: !1881)
!1884 = !DILocation(line: 85, column: 49, scope: !1733, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 118, column: 2, scope: !1725, inlinedAt: !1881)
!1886 = !DILocation(line: 86, column: 28, scope: !1733, inlinedAt: !1885)
!1887 = !DILocation(line: 87, column: 28, scope: !1733, inlinedAt: !1885)
!1888 = !DILocation(line: 89, column: 13, scope: !1733, inlinedAt: !1885)
!1889 = !DILocation(line: 90, column: 8, scope: !1733, inlinedAt: !1885)
!1890 = !DILocation(line: 90, column: 13, scope: !1733, inlinedAt: !1885)
!1891 = !DILocation(line: 91, column: 8, scope: !1733, inlinedAt: !1885)
!1892 = !DILocation(line: 91, column: 13, scope: !1733, inlinedAt: !1885)
!1893 = !DILocation(line: 92, column: 8, scope: !1733, inlinedAt: !1885)
!1894 = !DILocation(line: 92, column: 13, scope: !1733, inlinedAt: !1885)
!1895 = !DILocation(line: 683, column: 20, scope: !1751)
!1896 = !DILocation(line: 683, column: 7, scope: !1751)
!1897 = !DILocation(line: 683, column: 7, scope: !1656)
!1898 = !DILocation(line: 687, column: 5, scope: !1755)
!1899 = !DILocation(line: 688, column: 3, scope: !1755)
!1900 = !DILocation(line: 690, column: 3, scope: !1656)
!1901 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !186, file: !186, line: 198, type: !1609, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1902)
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "f_to", arg: 1, scope: !1901, file: !186, line: 198, type: !300)
!1904 = !DILocation(line: 198, column: 33, scope: !1901)
!1905 = !DILocation(line: 202, column: 9, scope: !1901)
!1906 = !DILocation(line: 202, column: 19, scope: !1901)
!1907 = !DILocation(line: 202, column: 32, scope: !1901)
!1908 = !DILocation(line: 202, column: 3, scope: !1901)
!1909 = !DILocation(line: 208, column: 3, scope: !1901)
!1910 = !DILocation(line: 210, column: 3, scope: !1901)
!1911 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !186, file: !186, line: 274, type: !1609, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "f", arg: 1, scope: !1911, file: !186, line: 274, type: !300)
!1914 = !DILocation(line: 274, column: 33, scope: !1911)
!1915 = !DILocation(line: 276, column: 26, scope: !1911)
!1916 = !DILocation(line: 276, column: 37, scope: !1911)
!1917 = !DILocation(line: 276, column: 6, scope: !1911)
!1918 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 277, column: 3, scope: !1911)
!1920 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1919)
!1921 = !DILocation(line: 276, column: 32, scope: !1911)
!1922 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1919)
!1923 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1919)
!1924 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1919)
!1925 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 278, column: 3, scope: !1911)
!1927 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1926)
!1928 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1926)
!1929 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1926)
!1930 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1926)
!1931 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 279, column: 3, scope: !1911)
!1933 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1932)
!1934 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1932)
!1935 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1932)
!1936 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1932)
!1937 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 280, column: 3, scope: !1911)
!1939 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1938)
!1940 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1938)
!1941 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1938)
!1942 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1938)
!1943 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 281, column: 3, scope: !1911)
!1945 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1944)
!1946 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1944)
!1947 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1944)
!1948 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1944)
!1949 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 282, column: 3, scope: !1911)
!1951 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1950)
!1952 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1950)
!1953 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1950)
!1954 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1950)
!1955 = !DILocation(line: 283, column: 18, scope: !1911)
!1956 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 283, column: 3, scope: !1911)
!1958 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1957)
!1959 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1957)
!1960 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1957)
!1961 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1957)
!1962 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 284, column: 3, scope: !1911)
!1964 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1963)
!1965 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1963)
!1966 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1963)
!1967 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1963)
!1968 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 285, column: 3, scope: !1911)
!1970 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1969)
!1971 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1969)
!1972 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1969)
!1973 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1969)
!1974 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 286, column: 3, scope: !1911)
!1976 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1975)
!1977 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1975)
!1978 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1975)
!1979 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1975)
!1980 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 287, column: 3, scope: !1911)
!1982 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1981)
!1983 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1981)
!1984 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1981)
!1985 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1981)
!1986 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 288, column: 3, scope: !1911)
!1988 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1987)
!1989 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1987)
!1990 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1987)
!1991 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1987)
!1992 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 289, column: 3, scope: !1911)
!1994 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1993)
!1995 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1993)
!1996 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1993)
!1997 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1993)
!1998 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 290, column: 3, scope: !1911)
!2000 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !1999)
!2001 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !1999)
!2002 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !1999)
!2003 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !1999)
!2004 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 291, column: 3, scope: !1911)
!2006 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !2005)
!2007 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !2005)
!2008 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !2005)
!2009 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !2005)
!2010 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 292, column: 3, scope: !1911)
!2012 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !2011)
!2013 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !2011)
!2014 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !2011)
!2015 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !2011)
!2016 = !DILocation(line: 294, column: 3, scope: !1911)
!2017 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !186, file: !186, line: 299, type: !2018, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!50, !300}
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "f_to", arg: 1, scope: !2017, file: !186, line: 299, type: !300)
!2022 = !DILocalVariable(name: "f_from", scope: !2017, file: !186, line: 302, type: !300)
!2023 = !DILocalVariable(name: "fiber_sched_queue", scope: !2024, file: !186, line: 312, type: !209)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !186, line: 310, column: 63)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !186, line: 310, column: 7)
!2026 = !DILocation(line: 299, column: 36, scope: !2017)
!2027 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 302, column: 24, scope: !2017)
!2031 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2028)
!2032 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2029)
!2033 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !2030)
!2034 = !DILocation(line: 302, column: 15, scope: !2017)
!2035 = !DILocation(line: 305, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2017, file: !186, line: 305, column: 7)
!2037 = !DILocation(line: 305, column: 32, scope: !2036)
!2038 = !DILocation(line: 306, column: 22, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !186, line: 305, column: 61)
!2040 = !DILocation(line: 307, column: 3, scope: !2039)
!2041 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 310, column: 17, scope: !2025)
!2045 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2042)
!2046 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2043)
!2047 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !2044)
!2048 = !DILocation(line: 310, column: 14, scope: !2025)
!2049 = !DILocation(line: 310, column: 34, scope: !2025)
!2050 = !DILocation(line: 310, column: 45, scope: !2025)
!2051 = !DILocation(line: 310, column: 54, scope: !2025)
!2052 = !DILocation(line: 310, column: 7, scope: !2017)
!2053 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 312, column: 43, scope: !2024)
!2057 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2054)
!2058 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2055)
!2059 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !2056)
!2060 = !DILocation(line: 312, column: 23, scope: !2024)
!2061 = !DILocation(line: 318, column: 29, scope: !2024)
!2062 = !DILocation(line: 116, column: 52, scope: !1725, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 318, column: 5, scope: !2024)
!2064 = !DILocation(line: 116, column: 76, scope: !1725, inlinedAt: !2063)
!2065 = !DILocation(line: 118, column: 25, scope: !1725, inlinedAt: !2063)
!2066 = !DILocation(line: 85, column: 49, scope: !1733, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 118, column: 2, scope: !1725, inlinedAt: !2063)
!2068 = !DILocation(line: 86, column: 28, scope: !1733, inlinedAt: !2067)
!2069 = !DILocation(line: 87, column: 28, scope: !1733, inlinedAt: !2067)
!2070 = !DILocation(line: 89, column: 13, scope: !1733, inlinedAt: !2067)
!2071 = !DILocation(line: 90, column: 8, scope: !1733, inlinedAt: !2067)
!2072 = !DILocation(line: 90, column: 13, scope: !1733, inlinedAt: !2067)
!2073 = !DILocation(line: 91, column: 8, scope: !1733, inlinedAt: !2067)
!2074 = !DILocation(line: 91, column: 13, scope: !1733, inlinedAt: !2067)
!2075 = !DILocation(line: 92, column: 8, scope: !1733, inlinedAt: !2067)
!2076 = !DILocation(line: 92, column: 13, scope: !1733, inlinedAt: !2067)
!2077 = !DILocation(line: 319, column: 3, scope: !2024)
!2078 = !DILocation(line: 323, column: 16, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2017, file: !186, line: 323, column: 7)
!2080 = !DILocation(line: 323, column: 8, scope: !2079)
!2081 = !DILocation(line: 323, column: 7, scope: !2017)
!2082 = !DILocation(line: 324, column: 29, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !186, line: 323, column: 24)
!2084 = !DILocalVariable(name: "vc", arg: 1, scope: !2085, file: !186, line: 907, type: !47)
!2085 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !186, file: !186, line: 907, type: !2086, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !47}
!2088 = !{!2084, !2089}
!2089 = !DILocalVariable(name: "curr_fiber", scope: !2085, file: !186, line: 910, type: !300)
!2090 = !DILocation(line: 907, column: 49, scope: !2085, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 324, column: 5, scope: !2083)
!2092 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 910, column: 28, scope: !2085, inlinedAt: !2091)
!2096 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2093)
!2097 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2094)
!2098 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !2095)
!2099 = !DILocation(line: 910, column: 15, scope: !2085, inlinedAt: !2091)
!2100 = !DILocation(line: 913, column: 15, scope: !2085, inlinedAt: !2091)
!2101 = !DILocation(line: 913, column: 18, scope: !2085, inlinedAt: !2091)
!2102 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2109)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !16, line: 258, column: 26)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !16, line: 258, column: 26)
!2105 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !1509, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2106)
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "__r", scope: !2104, file: !16, line: 258, type: !219)
!2108 = !DILocalVariable(name: "__r", scope: !2103, file: !16, line: 258, type: !219)
!2109 = distinct !DILocation(line: 914, column: 3, scope: !2085, inlinedAt: !2091)
!2110 = !{i32 -2147260788}
!2111 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2109)
!2112 = !DILocation(line: 914, column: 21, scope: !2085, inlinedAt: !2091)
!2113 = !DILocation(line: 914, column: 24, scope: !2085, inlinedAt: !2091)
!2114 = !DILocation(line: 325, column: 3, scope: !2083)
!2115 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 328, column: 3, scope: !2017)
!2118 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2116)
!2119 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2117)
!2120 = !DILocation(line: 328, column: 23, scope: !2017)
!2121 = !DILocation(line: 328, column: 34, scope: !2017)
!2122 = !DILocation(line: 329, column: 20, scope: !2017)
!2123 = !DILocation(line: 330, column: 9, scope: !2017)
!2124 = !DILocation(line: 330, column: 18, scope: !2017)
!2125 = !DILocation(line: 331, column: 3, scope: !2017)
!2126 = !DILocation(line: 333, column: 3, scope: !2017)
!2127 = !DILocation(line: 907, column: 49, scope: !2085)
!2128 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 910, column: 28, scope: !2085)
!2132 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2129)
!2133 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2130)
!2134 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !2131)
!2135 = !DILocation(line: 910, column: 15, scope: !2085)
!2136 = !DILocation(line: 913, column: 15, scope: !2085)
!2137 = !DILocation(line: 913, column: 18, scope: !2085)
!2138 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 914, column: 3, scope: !2085)
!2140 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2139)
!2141 = !DILocation(line: 914, column: 21, scope: !2085)
!2142 = !DILocation(line: 914, column: 24, scope: !2085)
!2143 = !DILocation(line: 915, column: 1, scope: !2085)
!2144 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !186, file: !186, line: 336, type: !2145, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null}
!2147 = !{!2148}
!2148 = !DILocalVariable(name: "curr", scope: !2144, file: !186, line: 338, type: !300)
!2149 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 338, column: 22, scope: !2144)
!2153 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2150)
!2154 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2151)
!2155 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !2152)
!2156 = !DILocation(line: 338, column: 15, scope: !2144)
!2157 = !DILocation(line: 340, column: 3, scope: !2144)
!2158 = !DILocation(line: 341, column: 1, scope: !2144)
!2159 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !186, file: !186, line: 343, type: !2160, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!70, !300}
!2162 = !{!2163, !2164, !2165}
!2163 = !DILocalVariable(name: "f", arg: 1, scope: !2159, file: !186, line: 343, type: !300)
!2164 = !DILocalVariable(name: "idle_fiber", scope: !2159, file: !186, line: 345, type: !300)
!2165 = !DILocalVariable(name: "result", scope: !2159, file: !186, line: 348, type: !70)
!2166 = !DILocation(line: 343, column: 36, scope: !2159)
!2167 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 345, column: 28, scope: !2159)
!2171 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2168)
!2172 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !2169)
!2173 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !2170)
!2174 = !DILocation(line: 345, column: 15, scope: !2159)
!2175 = !DILocation(line: 348, column: 11, scope: !2159)
!2176 = !DILocation(line: 349, column: 18, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2159, file: !186, line: 349, column: 7)
!2178 = !DILocation(line: 349, column: 7, scope: !2159)
!2179 = !DILocation(line: 353, column: 3, scope: !2159)
!2180 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 373, column: 20, scope: !1681)
!2182 = !DILocation(line: 366, column: 29, scope: !1674, inlinedAt: !2181)
!2183 = !DILocation(line: 366, column: 23, scope: !1675, inlinedAt: !2181)
!2184 = !DILocation(line: 358, column: 5, scope: !1696, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 367, column: 18, scope: !1675, inlinedAt: !2181)
!2186 = !DILocation(line: 359, column: 5, scope: !1696, inlinedAt: !2185)
!2187 = !DILocation(line: 360, column: 12, scope: !1696, inlinedAt: !2185)
!2188 = !DILocation(line: 358, column: 14, scope: !1696, inlinedAt: !2185)
!2189 = !DILocation(line: 361, column: 1, scope: !1696, inlinedAt: !2185)
!2190 = !DILocation(line: 367, column: 39, scope: !1675, inlinedAt: !2181)
!2191 = !DILocation(line: 367, column: 34, scope: !1675, inlinedAt: !2181)
!2192 = !DILocation(line: 367, column: 32, scope: !1675, inlinedAt: !2181)
!2193 = !DILocation(line: 374, column: 27, scope: !1688)
!2194 = !DILocation(line: 374, column: 27, scope: !1686)
!2195 = !DILocation(line: 374, column: 21, scope: !1681)
!2196 = !DILocation(line: 375, column: 10, scope: !1681)
!2197 = !DILocation(line: 375, column: 33, scope: !1681)
!2198 = !DILocation(line: 375, column: 42, scope: !1681)
!2199 = !DILocation(line: 375, column: 3, scope: !1681)
!2200 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !186, file: !186, line: 383, type: !2018, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2201)
!2201 = !{!2202, !2203, !2204, !2206, !2208, !2209, !2210, !2211, !2213, !2218}
!2202 = !DILocalVariable(name: "to_del", arg: 1, scope: !2200, file: !186, line: 383, type: !300)
!2203 = !DILocalVariable(name: "sys", scope: !2200, file: !186, line: 386, type: !322)
!2204 = !DILocalVariable(name: "__r", scope: !2205, file: !186, line: 386, type: !322)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !186, line: 386, column: 26)
!2206 = !DILocalVariable(name: "__r", scope: !2207, file: !186, line: 386, type: !322)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !186, line: 386, column: 26)
!2208 = !DILocalVariable(name: "cpu_iter", scope: !2200, file: !186, line: 387, type: !50)
!2209 = !DILocalVariable(name: "temp", scope: !2200, file: !186, line: 390, type: !209)
!2210 = !DILocalVariable(name: "test", scope: !2200, file: !186, line: 391, type: !300)
!2211 = !DILocalVariable(name: "iter", scope: !2212, file: !186, line: 392, type: !50)
!2212 = distinct !DILexicalBlock(scope: !2200, file: !186, line: 392, column: 3)
!2213 = !DILocalVariable(name: "__mptr", scope: !2214, file: !186, line: 395, type: !1553)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !186, line: 395, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !186, line: 395, column: 5)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !186, line: 392, column: 46)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !186, line: 392, column: 3)
!2218 = !DILocalVariable(name: "__mptr", scope: !2219, file: !186, line: 395, type: !1553)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !186, line: 395, column: 5)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !186, line: 395, column: 5)
!2221 = !DILocation(line: 383, column: 42, scope: !2200)
!2222 = !DILocation(line: 386, column: 26, scope: !2207)
!2223 = !{i32 -2147179106}
!2224 = !DILocation(line: 386, column: 26, scope: !2205)
!2225 = !DILocation(line: 386, column: 20, scope: !2200)
!2226 = !DILocation(line: 387, column: 23, scope: !2200)
!2227 = !DILocation(line: 387, column: 7, scope: !2200)
!2228 = !DILocation(line: 392, column: 12, scope: !2212)
!2229 = !DILocation(line: 392, column: 27, scope: !2217)
!2230 = !DILocation(line: 392, column: 3, scope: !2212)
!2231 = !DILocation(line: 394, column: 14, scope: !2216)
!2232 = !DILocation(line: 394, column: 31, scope: !2216)
!2233 = !DILocation(line: 394, column: 40, scope: !2216)
!2234 = !DILocation(line: 390, column: 21, scope: !2200)
!2235 = !DILocation(line: 395, column: 5, scope: !2214)
!2236 = !DILocation(line: 391, column: 15, scope: !2200)
!2237 = !DILocation(line: 0, scope: !2215)
!2238 = !DILocation(line: 395, column: 5, scope: !2215)
!2239 = !DILocation(line: 395, column: 5, scope: !2220)
!2240 = !DILocation(line: 400, column: 16, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !186, line: 400, column: 11)
!2242 = distinct !DILexicalBlock(scope: !2220, file: !186, line: 395, column: 48)
!2243 = !DILocation(line: 400, column: 11, scope: !2242)
!2244 = distinct !{!2244, !2238, !2245}
!2245 = !DILocation(line: 404, column: 5, scope: !2215)
!2246 = !DILocation(line: 392, column: 43, scope: !2217)
!2247 = distinct !{!2247, !2230, !2248}
!2248 = !DILocation(line: 405, column: 3, scope: !2212)
!2249 = !DILocation(line: 401, column: 33, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !186, line: 400, column: 26)
!2251 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 401, column: 9, scope: !2250)
!2253 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !2252)
!2254 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !2252)
!2255 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !2252)
!2257 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !2256)
!2258 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !2256)
!2259 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !2256)
!2260 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !2256)
!2261 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !2256)
!2262 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !2252)
!2264 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !2263)
!2265 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !2263)
!2266 = !DILocation(line: 408, column: 1, scope: !2200)
!2267 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !186, file: !186, line: 435, type: !565, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2272, !2274, !2275, !2281, !2282, !2287, !2289, !2292, !2294}
!2269 = !DILocalVariable(name: "id", scope: !2267, file: !186, line: 437, type: !349)
!2270 = !DILocalVariable(name: "__r", scope: !2271, file: !186, line: 437, type: !349)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !186, line: 437, column: 19)
!2272 = !DILocalVariable(name: "__r", scope: !2273, file: !186, line: 437, type: !349)
!2273 = distinct !DILexicalBlock(scope: !2271, file: !186, line: 437, column: 19)
!2274 = !DILocalVariable(name: "my_cpu", scope: !2267, file: !186, line: 438, type: !328)
!2275 = !DILocalVariable(name: "_p", scope: !2276, file: !186, line: 444, type: !50)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !186, line: 444, column: 2)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !186, line: 444, column: 2)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !186, line: 444, column: 2)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !186, line: 443, column: 29)
!2280 = distinct !DILexicalBlock(scope: !2267, file: !186, line: 443, column: 9)
!2281 = !DILocalVariable(name: "_t", scope: !2276, file: !186, line: 444, type: !219)
!2282 = !DILocalVariable(name: "__r", scope: !2283, file: !186, line: 444, type: !349)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !186, line: 444, column: 2)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !186, line: 444, column: 2)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !186, line: 444, column: 2)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !186, line: 444, column: 2)
!2287 = !DILocalVariable(name: "__r", scope: !2288, file: !186, line: 444, type: !349)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !186, line: 444, column: 2)
!2289 = !DILocalVariable(name: "__r", scope: !2290, file: !186, line: 444, type: !349)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !186, line: 444, column: 2)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !186, line: 444, column: 2)
!2292 = !DILocalVariable(name: "__r", scope: !2293, file: !186, line: 444, type: !349)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !186, line: 444, column: 2)
!2294 = !DILocalVariable(name: "_p", scope: !2295, file: !186, line: 444, type: !50)
!2295 = distinct !DILexicalBlock(scope: !2277, file: !186, line: 444, column: 2)
!2296 = !DILocation(line: 437, column: 19, scope: !2273)
!2297 = !{i32 -2147162343}
!2298 = !DILocation(line: 437, column: 19, scope: !2271)
!2299 = !DILocation(line: 437, column: 14, scope: !2267)
!2300 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 438, column: 27, scope: !2267)
!2302 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !2301)
!2303 = !DILocation(line: 438, column: 18, scope: !2267)
!2304 = !DILocation(line: 442, column: 23, scope: !2267)
!2305 = !DILocation(line: 442, column: 13, scope: !2267)
!2306 = !DILocation(line: 442, column: 21, scope: !2267)
!2307 = !DILocation(line: 443, column: 10, scope: !2280)
!2308 = !DILocation(line: 443, column: 9, scope: !2267)
!2309 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2314)
!2310 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2311, file: !2311, line: 39, type: !2312, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!2311 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!33}
!2314 = distinct !DILocation(line: 444, column: 2, scope: !2277)
!2315 = !DILocation(line: 444, column: 2, scope: !2277)
!2316 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !2321)
!2318 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2311, file: !2311, line: 82, type: !565, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "base", scope: !2318, file: !2311, line: 84, type: !33)
!2321 = distinct !DILocation(line: 0, scope: !2277)
!2322 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !2321)
!2323 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !2321)
!2324 = distinct !DILexicalBlock(scope: !2318, file: !2311, line: 85, column: 9)
!2325 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !2321)
!2326 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !2321)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !2311, line: 85, column: 15)
!2328 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !2321)
!2329 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !2321)
!2330 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !2321)
!2331 = !DILocation(line: 0, scope: !2324, inlinedAt: !2321)
!2332 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !2337)
!2334 = distinct !DISubprogram(name: "preempt_disable", scope: !2311, file: !2311, line: 46, type: !2145, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2335)
!2335 = !{!2336}
!2336 = !DILocalVariable(name: "base", scope: !2334, file: !2311, line: 48, type: !33)
!2337 = distinct !DILocation(line: 0, scope: !2277)
!2338 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !2337)
!2339 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !2337)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !2311, line: 49, column: 9)
!2341 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !2337)
!2342 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !2337)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !2311, line: 49, column: 15)
!2344 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !2337)
!2345 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !2337)
!2346 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !2337)
!2347 = !DILocation(line: 444, column: 2, scope: !2278)
!2348 = !DILocation(line: 444, column: 2, scope: !2276)
!2349 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 444, column: 2, scope: !2276)
!2351 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2350)
!2352 = !DILocation(line: 444, column: 2, scope: !2285)
!2353 = !DILocation(line: 0, scope: !2285)
!2354 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2361)
!2356 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2311, file: !2311, line: 94, type: !2357, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!35}
!2359 = !{!2360}
!2360 = !DILocalVariable(name: "base", scope: !2356, file: !2311, line: 96, type: !33)
!2361 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2363)
!2362 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2311, file: !2311, line: 105, type: !565, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!2363 = distinct !DILocation(line: 0, scope: !2285)
!2364 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2361)
!2365 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2361)
!2366 = distinct !DILexicalBlock(scope: !2356, file: !2311, line: 97, column: 9)
!2367 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2361)
!2368 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2361)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !2311, line: 97, column: 15)
!2370 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2361)
!2371 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2361)
!2372 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2361)
!2373 = !DILocation(line: 444, column: 2, scope: !2286)
!2374 = !DILocation(line: 444, column: 2, scope: !2284)
!2375 = !DILocation(line: 444, column: 2, scope: !2291)
!2376 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2381)
!2378 = distinct !DISubprogram(name: "preempt_enable", scope: !2311, file: !2311, line: 57, type: !2145, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2379)
!2379 = !{!2380}
!2380 = !DILocalVariable(name: "base", scope: !2378, file: !2311, line: 59, type: !33)
!2381 = distinct !DILocation(line: 444, column: 2, scope: !2276)
!2382 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2381)
!2383 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2381)
!2384 = distinct !DILexicalBlock(scope: !2378, file: !2311, line: 60, column: 9)
!2385 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2381)
!2386 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2381)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !2311, line: 60, column: 15)
!2388 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2381)
!2389 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2381)
!2390 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2381)
!2391 = !DILocation(line: 444, column: 2, scope: !2295)
!2392 = !DILocation(line: 444, column: 2, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !186, line: 444, column: 2)
!2394 = distinct !DILexicalBlock(scope: !2295, file: !186, line: 444, column: 2)
!2395 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 0, scope: !2393)
!2399 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2397)
!2400 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2397)
!2401 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2397)
!2402 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2397)
!2403 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2397)
!2404 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2397)
!2405 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2397)
!2406 = !DILocation(line: 0, scope: !2393)
!2407 = !DILocation(line: 444, column: 2, scope: !2394)
!2408 = !DILocation(line: 444, column: 2, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2393, file: !186, line: 444, column: 2)
!2410 = !DILocation(line: 444, column: 2, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2393, file: !186, line: 444, column: 2)
!2412 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 444, column: 2, scope: !2295)
!2415 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2414)
!2416 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2414)
!2417 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2414)
!2418 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2414)
!2419 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2414)
!2420 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2414)
!2421 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2414)
!2422 = !DILocation(line: 0, scope: !2267)
!2423 = !DILocation(line: 449, column: 1, scope: !2267)
!2424 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !186, file: !186, line: 410, type: !2425, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!338}
!2427 = !{!2428, !2429, !2431, !2433, !2435, !2441, !2442, !2447, !2449, !2452, !2454}
!2428 = !DILocalVariable(name: "state", scope: !2424, file: !186, line: 412, type: !338)
!2429 = !DILocalVariable(name: "p", scope: !2430, file: !186, line: 412, type: !33)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !186, line: 412, column: 74)
!2431 = !DILocalVariable(name: "__r", scope: !2432, file: !186, line: 412, type: !349)
!2432 = distinct !DILexicalBlock(scope: !2430, file: !186, line: 412, column: 74)
!2433 = !DILocalVariable(name: "__r", scope: !2434, file: !186, line: 412, type: !349)
!2434 = distinct !DILexicalBlock(scope: !2432, file: !186, line: 412, column: 74)
!2435 = !DILocalVariable(name: "_p", scope: !2436, file: !186, line: 415, type: !50)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !186, line: 415, column: 9)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !186, line: 415, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !186, line: 415, column: 9)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !186, line: 414, column: 17)
!2440 = distinct !DILexicalBlock(scope: !2424, file: !186, line: 414, column: 9)
!2441 = !DILocalVariable(name: "_t", scope: !2436, file: !186, line: 415, type: !219)
!2442 = !DILocalVariable(name: "__r", scope: !2443, file: !186, line: 415, type: !349)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !186, line: 415, column: 9)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !186, line: 415, column: 9)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !186, line: 415, column: 9)
!2446 = distinct !DILexicalBlock(scope: !2436, file: !186, line: 415, column: 9)
!2447 = !DILocalVariable(name: "__r", scope: !2448, file: !186, line: 415, type: !349)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !186, line: 415, column: 9)
!2449 = !DILocalVariable(name: "__r", scope: !2450, file: !186, line: 415, type: !349)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !186, line: 415, column: 9)
!2451 = distinct !DILexicalBlock(scope: !2445, file: !186, line: 415, column: 9)
!2452 = !DILocalVariable(name: "__r", scope: !2453, file: !186, line: 415, type: !349)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !186, line: 415, column: 9)
!2454 = !DILocalVariable(name: "_p", scope: !2455, file: !186, line: 415, type: !50)
!2455 = distinct !DILexicalBlock(scope: !2437, file: !186, line: 415, column: 9)
!2456 = !DILocation(line: 412, column: 74, scope: !2434)
!2457 = !{i32 -2147173852}
!2458 = !DILocation(line: 412, column: 74, scope: !2432)
!2459 = !DILocation(line: 412, column: 74, scope: !2430)
!2460 = !DILocation(line: 414, column: 10, scope: !2440)
!2461 = !DILocation(line: 414, column: 9, scope: !2424)
!2462 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 415, column: 9, scope: !2437)
!2464 = !DILocation(line: 415, column: 9, scope: !2437)
!2465 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 0, scope: !2437)
!2468 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !2467)
!2469 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !2467)
!2470 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !2467)
!2471 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !2467)
!2472 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !2467)
!2473 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !2467)
!2474 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !2467)
!2475 = !DILocation(line: 0, scope: !2324, inlinedAt: !2467)
!2476 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 0, scope: !2437)
!2479 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !2478)
!2480 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !2478)
!2481 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !2478)
!2482 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !2478)
!2483 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !2478)
!2484 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !2478)
!2485 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !2478)
!2486 = !DILocation(line: 415, column: 9, scope: !2438)
!2487 = !DILocation(line: 415, column: 9, scope: !2436)
!2488 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 415, column: 9, scope: !2436)
!2490 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2489)
!2491 = !DILocation(line: 415, column: 9, scope: !2445)
!2492 = !DILocation(line: 0, scope: !2445)
!2493 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 0, scope: !2445)
!2497 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2495)
!2498 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2495)
!2499 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2495)
!2500 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2495)
!2501 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2495)
!2502 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2495)
!2503 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2495)
!2504 = !DILocation(line: 415, column: 9, scope: !2446)
!2505 = !DILocation(line: 415, column: 9, scope: !2444)
!2506 = !DILocation(line: 415, column: 9, scope: !2451)
!2507 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 415, column: 9, scope: !2436)
!2510 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2509)
!2511 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2509)
!2512 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2509)
!2513 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2509)
!2514 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2509)
!2515 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2509)
!2516 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2509)
!2517 = !DILocation(line: 415, column: 9, scope: !2455)
!2518 = !DILocation(line: 415, column: 9, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !186, line: 415, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2455, file: !186, line: 415, column: 9)
!2521 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 0, scope: !2519)
!2525 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2523)
!2526 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2523)
!2527 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2523)
!2528 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2523)
!2529 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2523)
!2530 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2523)
!2531 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2523)
!2532 = !DILocation(line: 0, scope: !2519)
!2533 = !DILocation(line: 415, column: 9, scope: !2520)
!2534 = !DILocation(line: 415, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2519, file: !186, line: 415, column: 9)
!2536 = !DILocation(line: 415, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2519, file: !186, line: 415, column: 9)
!2538 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 415, column: 9, scope: !2455)
!2541 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2540)
!2542 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2540)
!2543 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2540)
!2544 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2540)
!2545 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2540)
!2546 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2540)
!2547 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2540)
!2548 = !DILocation(line: 412, column: 43, scope: !2424)
!2549 = !DILocation(line: 412, column: 35, scope: !2424)
!2550 = !DILocation(line: 419, column: 2, scope: !2424)
!2551 = !DILocation(line: 421, column: 27, scope: !2424)
!2552 = !DILocation(line: 421, column: 5, scope: !2424)
!2553 = !DILocation(line: 424, column: 29, scope: !2424)
!2554 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 424, column: 5, scope: !2424)
!2556 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !2555)
!2557 = !DILocation(line: 76, column: 8, scope: !1599, inlinedAt: !2555)
!2558 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !2555)
!2559 = !DILocation(line: 426, column: 5, scope: !2424)
!2560 = !DILocation(line: 429, column: 5, scope: !2424)
!2561 = !DILocation(line: 431, column: 5, scope: !2424)
!2562 = !DILocation(line: 0, scope: !2424)
!2563 = !DILocation(line: 432, column: 1, scope: !2424)
!2564 = distinct !DISubprogram(name: "nk_fiber_init", scope: !186, file: !186, line: 452, type: !565, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2565)
!2565 = !{!2566, !2567, !2571, !2572, !2577, !2579, !2582, !2584, !2586, !2592, !2593, !2598, !2600, !2603, !2605}
!2566 = !DILocalVariable(name: "my_cpu", scope: !2564, file: !186, line: 454, type: !328)
!2567 = !DILocalVariable(name: "_p", scope: !2568, file: !186, line: 456, type: !50)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !186, line: 456, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !186, line: 456, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2564, file: !186, line: 456, column: 5)
!2571 = !DILocalVariable(name: "_t", scope: !2568, file: !186, line: 456, type: !219)
!2572 = !DILocalVariable(name: "__r", scope: !2573, file: !186, line: 456, type: !349)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !186, line: 456, column: 5)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !186, line: 456, column: 5)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !186, line: 456, column: 5)
!2576 = distinct !DILexicalBlock(scope: !2568, file: !186, line: 456, column: 5)
!2577 = !DILocalVariable(name: "__r", scope: !2578, file: !186, line: 456, type: !349)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !186, line: 456, column: 5)
!2579 = !DILocalVariable(name: "__r", scope: !2580, file: !186, line: 456, type: !349)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !186, line: 456, column: 5)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !186, line: 456, column: 5)
!2582 = !DILocalVariable(name: "__r", scope: !2583, file: !186, line: 456, type: !349)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !186, line: 456, column: 5)
!2584 = !DILocalVariable(name: "_p", scope: !2585, file: !186, line: 456, type: !50)
!2585 = distinct !DILexicalBlock(scope: !2569, file: !186, line: 456, column: 5)
!2586 = !DILocalVariable(name: "_p", scope: !2587, file: !186, line: 464, type: !50)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !186, line: 464, column: 2)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !186, line: 464, column: 2)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !186, line: 464, column: 2)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !186, line: 463, column: 29)
!2591 = distinct !DILexicalBlock(scope: !2564, file: !186, line: 463, column: 9)
!2592 = !DILocalVariable(name: "_t", scope: !2587, file: !186, line: 464, type: !219)
!2593 = !DILocalVariable(name: "__r", scope: !2594, file: !186, line: 464, type: !349)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !186, line: 464, column: 2)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !186, line: 464, column: 2)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !186, line: 464, column: 2)
!2597 = distinct !DILexicalBlock(scope: !2587, file: !186, line: 464, column: 2)
!2598 = !DILocalVariable(name: "__r", scope: !2599, file: !186, line: 464, type: !349)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !186, line: 464, column: 2)
!2600 = !DILocalVariable(name: "__r", scope: !2601, file: !186, line: 464, type: !349)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !186, line: 464, column: 2)
!2602 = distinct !DILexicalBlock(scope: !2596, file: !186, line: 464, column: 2)
!2603 = !DILocalVariable(name: "__r", scope: !2604, file: !186, line: 464, type: !349)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !186, line: 464, column: 2)
!2605 = !DILocalVariable(name: "_p", scope: !2606, file: !186, line: 464, type: !50)
!2606 = distinct !DILexicalBlock(scope: !2588, file: !186, line: 464, column: 2)
!2607 = !DILocation(line: 454, column: 88, scope: !2564)
!2608 = !DILocation(line: 454, column: 27, scope: !2564)
!2609 = !DILocation(line: 454, column: 18, scope: !2564)
!2610 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 456, column: 5, scope: !2569)
!2612 = !DILocation(line: 456, column: 5, scope: !2569)
!2613 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 0, scope: !2569)
!2616 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !2615)
!2617 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !2615)
!2618 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !2615)
!2619 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !2615)
!2620 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !2615)
!2621 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !2615)
!2622 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !2615)
!2623 = !DILocation(line: 0, scope: !2324, inlinedAt: !2615)
!2624 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 0, scope: !2569)
!2627 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !2626)
!2628 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !2626)
!2629 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !2626)
!2630 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !2626)
!2631 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !2626)
!2632 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !2626)
!2633 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !2626)
!2634 = !DILocation(line: 456, column: 5, scope: !2570)
!2635 = !DILocation(line: 456, column: 5, scope: !2568)
!2636 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 456, column: 5, scope: !2568)
!2638 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2637)
!2639 = !DILocation(line: 456, column: 5, scope: !2575)
!2640 = !DILocation(line: 0, scope: !2575)
!2641 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 0, scope: !2575)
!2645 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2643)
!2646 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2643)
!2647 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2643)
!2648 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2643)
!2649 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2643)
!2650 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2643)
!2651 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2643)
!2652 = !DILocation(line: 456, column: 5, scope: !2576)
!2653 = !DILocation(line: 456, column: 5, scope: !2574)
!2654 = !DILocation(line: 456, column: 5, scope: !2581)
!2655 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 456, column: 5, scope: !2568)
!2658 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2657)
!2659 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2657)
!2660 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2657)
!2661 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2657)
!2662 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2657)
!2663 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2657)
!2664 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2657)
!2665 = !DILocation(line: 456, column: 5, scope: !2585)
!2666 = !DILocation(line: 456, column: 5, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !186, line: 456, column: 5)
!2668 = distinct !DILexicalBlock(scope: !2585, file: !186, line: 456, column: 5)
!2669 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 0, scope: !2667)
!2673 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2671)
!2674 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2671)
!2675 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2671)
!2676 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2671)
!2677 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2671)
!2678 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2671)
!2679 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2671)
!2680 = !DILocation(line: 0, scope: !2667)
!2681 = !DILocation(line: 456, column: 5, scope: !2668)
!2682 = !DILocation(line: 456, column: 5, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2667, file: !186, line: 456, column: 5)
!2684 = !DILocation(line: 456, column: 5, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2667, file: !186, line: 456, column: 5)
!2686 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 456, column: 5, scope: !2585)
!2689 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2688)
!2690 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2688)
!2691 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2688)
!2692 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2688)
!2693 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2688)
!2694 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2688)
!2695 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2688)
!2696 = !DILocation(line: 462, column: 23, scope: !2564)
!2697 = !DILocation(line: 462, column: 13, scope: !2564)
!2698 = !DILocation(line: 462, column: 21, scope: !2564)
!2699 = !DILocation(line: 463, column: 10, scope: !2591)
!2700 = !DILocation(line: 463, column: 9, scope: !2564)
!2701 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 464, column: 2, scope: !2588)
!2703 = !DILocation(line: 464, column: 2, scope: !2588)
!2704 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 0, scope: !2588)
!2707 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !2706)
!2708 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !2706)
!2709 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !2706)
!2710 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !2706)
!2711 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !2706)
!2712 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !2706)
!2713 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !2706)
!2714 = !DILocation(line: 0, scope: !2324, inlinedAt: !2706)
!2715 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 0, scope: !2588)
!2718 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !2717)
!2719 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !2717)
!2720 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !2717)
!2721 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !2717)
!2722 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !2717)
!2723 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !2717)
!2724 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !2717)
!2725 = !DILocation(line: 464, column: 2, scope: !2589)
!2726 = !DILocation(line: 464, column: 2, scope: !2587)
!2727 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 464, column: 2, scope: !2587)
!2729 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2728)
!2730 = !DILocation(line: 464, column: 2, scope: !2596)
!2731 = !DILocation(line: 0, scope: !2596)
!2732 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 0, scope: !2596)
!2736 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2734)
!2737 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2734)
!2738 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2734)
!2739 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2734)
!2740 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2734)
!2741 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2734)
!2742 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2734)
!2743 = !DILocation(line: 464, column: 2, scope: !2597)
!2744 = !DILocation(line: 464, column: 2, scope: !2595)
!2745 = !DILocation(line: 464, column: 2, scope: !2602)
!2746 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 464, column: 2, scope: !2587)
!2749 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2748)
!2750 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2748)
!2751 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2748)
!2752 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2748)
!2753 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2748)
!2754 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2748)
!2755 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2748)
!2756 = !DILocation(line: 464, column: 2, scope: !2606)
!2757 = !DILocation(line: 464, column: 2, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !186, line: 464, column: 2)
!2759 = distinct !DILexicalBlock(scope: !2606, file: !186, line: 464, column: 2)
!2760 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 0, scope: !2758)
!2764 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2762)
!2765 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2762)
!2766 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2762)
!2767 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2762)
!2768 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2762)
!2769 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2762)
!2770 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2762)
!2771 = !DILocation(line: 0, scope: !2758)
!2772 = !DILocation(line: 464, column: 2, scope: !2759)
!2773 = !DILocation(line: 464, column: 2, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2758, file: !186, line: 464, column: 2)
!2775 = !DILocation(line: 464, column: 2, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2758, file: !186, line: 464, column: 2)
!2777 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 464, column: 2, scope: !2606)
!2780 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2779)
!2781 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2779)
!2782 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2779)
!2783 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2779)
!2784 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2779)
!2785 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2779)
!2786 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2779)
!2787 = !DILocation(line: 0, scope: !2564)
!2788 = !DILocation(line: 469, column: 1, scope: !2564)
!2789 = distinct !DISubprogram(name: "__fiber_thread", scope: !186, file: !186, line: 511, type: !64, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2790)
!2790 = !{!2791, !2792, !2793, !2799, !2800, !2805, !2807, !2810, !2812, !2814, !2840, !2846, !2847, !2852, !2854, !2857, !2859, !2861, !2862, !2868, !2869, !2874, !2876, !2879, !2881, !2883, !2884, !2890, !2891, !2896, !2898, !2901, !2903}
!2791 = !DILocalVariable(name: "in", arg: 1, scope: !2789, file: !186, line: 511, type: !33)
!2792 = !DILocalVariable(name: "out", arg: 2, scope: !2789, file: !186, line: 511, type: !66)
!2793 = !DILocalVariable(name: "_p", scope: !2794, file: !186, line: 515, type: !50)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !186, line: 515, column: 5)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !186, line: 515, column: 5)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !186, line: 515, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !186, line: 514, column: 51)
!2798 = distinct !DILexicalBlock(scope: !2789, file: !186, line: 514, column: 7)
!2799 = !DILocalVariable(name: "_t", scope: !2794, file: !186, line: 515, type: !219)
!2800 = !DILocalVariable(name: "__r", scope: !2801, file: !186, line: 515, type: !349)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !186, line: 515, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !186, line: 515, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !186, line: 515, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2794, file: !186, line: 515, column: 5)
!2805 = !DILocalVariable(name: "__r", scope: !2806, file: !186, line: 515, type: !349)
!2806 = distinct !DILexicalBlock(scope: !2801, file: !186, line: 515, column: 5)
!2807 = !DILocalVariable(name: "__r", scope: !2808, file: !186, line: 515, type: !349)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !186, line: 515, column: 5)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !186, line: 515, column: 5)
!2810 = !DILocalVariable(name: "__r", scope: !2811, file: !186, line: 515, type: !349)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !186, line: 515, column: 5)
!2812 = !DILocalVariable(name: "_p", scope: !2813, file: !186, line: 515, type: !50)
!2813 = distinct !DILexicalBlock(scope: !2795, file: !186, line: 515, column: 5)
!2814 = !DILocalVariable(name: "c", scope: !2789, file: !186, line: 520, type: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !112, line: 67, size: 320, elements: !2816)
!2816 = !{!2817, !2819, !2820}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2815, file: !112, line: 68, baseType: !2818, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !112, line: 66, baseType: !293)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2815, file: !112, line: 79, baseType: !70, size: 8, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2815, file: !112, line: 80, baseType: !2821, size: 256, offset: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2815, file: !112, line: 80, size: 256, elements: !2822)
!2822 = !{!2823, !2829, !2836}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2821, file: !112, line: 81, baseType: !2824, size: 192)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !112, line: 49, size: 192, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2824, file: !112, line: 50, baseType: !29, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2824, file: !112, line: 51, baseType: !29, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2824, file: !112, line: 52, baseType: !29, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2821, file: !112, line: 82, baseType: !2830, size: 256)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !112, line: 55, size: 256, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2830, file: !112, line: 56, baseType: !29, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2830, file: !112, line: 57, baseType: !29, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2830, file: !112, line: 58, baseType: !29, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2830, file: !112, line: 59, baseType: !29, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2821, file: !112, line: 83, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !112, line: 62, size: 64, elements: !2838)
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2837, file: !112, line: 63, baseType: !29, size: 64)
!2840 = !DILocalVariable(name: "_p", scope: !2841, file: !186, line: 525, type: !50)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !186, line: 525, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !186, line: 525, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !186, line: 525, column: 5)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !186, line: 524, column: 47)
!2845 = distinct !DILexicalBlock(scope: !2789, file: !186, line: 524, column: 7)
!2846 = !DILocalVariable(name: "_t", scope: !2841, file: !186, line: 525, type: !219)
!2847 = !DILocalVariable(name: "__r", scope: !2848, file: !186, line: 525, type: !349)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !186, line: 525, column: 5)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !186, line: 525, column: 5)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !186, line: 525, column: 5)
!2851 = distinct !DILexicalBlock(scope: !2841, file: !186, line: 525, column: 5)
!2852 = !DILocalVariable(name: "__r", scope: !2853, file: !186, line: 525, type: !349)
!2853 = distinct !DILexicalBlock(scope: !2848, file: !186, line: 525, column: 5)
!2854 = !DILocalVariable(name: "__r", scope: !2855, file: !186, line: 525, type: !349)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !186, line: 525, column: 5)
!2856 = distinct !DILexicalBlock(scope: !2850, file: !186, line: 525, column: 5)
!2857 = !DILocalVariable(name: "__r", scope: !2858, file: !186, line: 525, type: !349)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !186, line: 525, column: 5)
!2859 = !DILocalVariable(name: "_p", scope: !2860, file: !186, line: 525, type: !50)
!2860 = distinct !DILexicalBlock(scope: !2842, file: !186, line: 525, column: 5)
!2861 = !DILocalVariable(name: "state", scope: !2789, file: !186, line: 534, type: !1478)
!2862 = !DILocalVariable(name: "_p", scope: !2863, file: !186, line: 536, type: !50)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !186, line: 536, column: 5)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !186, line: 536, column: 5)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !186, line: 536, column: 5)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !186, line: 535, column: 17)
!2867 = distinct !DILexicalBlock(scope: !2789, file: !186, line: 535, column: 7)
!2868 = !DILocalVariable(name: "_t", scope: !2863, file: !186, line: 536, type: !219)
!2869 = !DILocalVariable(name: "__r", scope: !2870, file: !186, line: 536, type: !349)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !186, line: 536, column: 5)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !186, line: 536, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !186, line: 536, column: 5)
!2873 = distinct !DILexicalBlock(scope: !2863, file: !186, line: 536, column: 5)
!2874 = !DILocalVariable(name: "__r", scope: !2875, file: !186, line: 536, type: !349)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !186, line: 536, column: 5)
!2876 = !DILocalVariable(name: "__r", scope: !2877, file: !186, line: 536, type: !349)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !186, line: 536, column: 5)
!2878 = distinct !DILexicalBlock(scope: !2872, file: !186, line: 536, column: 5)
!2879 = !DILocalVariable(name: "__r", scope: !2880, file: !186, line: 536, type: !349)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !186, line: 536, column: 5)
!2881 = !DILocalVariable(name: "_p", scope: !2882, file: !186, line: 536, type: !50)
!2882 = distinct !DILexicalBlock(scope: !2864, file: !186, line: 536, column: 5)
!2883 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2789, file: !186, line: 541, type: !300)
!2884 = !DILocalVariable(name: "_p", scope: !2885, file: !186, line: 543, type: !50)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !186, line: 543, column: 5)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !186, line: 543, column: 5)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !186, line: 543, column: 5)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !186, line: 542, column: 71)
!2889 = distinct !DILexicalBlock(scope: !2789, file: !186, line: 542, column: 7)
!2890 = !DILocalVariable(name: "_t", scope: !2885, file: !186, line: 543, type: !219)
!2891 = !DILocalVariable(name: "__r", scope: !2892, file: !186, line: 543, type: !349)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !186, line: 543, column: 5)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !186, line: 543, column: 5)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !186, line: 543, column: 5)
!2895 = distinct !DILexicalBlock(scope: !2885, file: !186, line: 543, column: 5)
!2896 = !DILocalVariable(name: "__r", scope: !2897, file: !186, line: 543, type: !349)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !186, line: 543, column: 5)
!2898 = !DILocalVariable(name: "__r", scope: !2899, file: !186, line: 543, type: !349)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !186, line: 543, column: 5)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !186, line: 543, column: 5)
!2901 = !DILocalVariable(name: "__r", scope: !2902, file: !186, line: 543, type: !349)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !186, line: 543, column: 5)
!2903 = !DILocalVariable(name: "_p", scope: !2904, file: !186, line: 543, type: !50)
!2904 = distinct !DILexicalBlock(scope: !2886, file: !186, line: 543, column: 5)
!2905 = !DILocation(line: 511, column: 27, scope: !2789)
!2906 = !DILocation(line: 511, column: 38, scope: !2789)
!2907 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 514, column: 22, scope: !2798)
!2909 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2908)
!2910 = !DILocation(line: 514, column: 22, scope: !2798)
!2911 = !DILocation(line: 514, column: 7, scope: !2798)
!2912 = !DILocation(line: 514, column: 7, scope: !2789)
!2913 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 515, column: 5, scope: !2795)
!2915 = !DILocation(line: 515, column: 5, scope: !2795)
!2916 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 0, scope: !2795)
!2919 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !2918)
!2920 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !2918)
!2921 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !2918)
!2922 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !2918)
!2923 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !2918)
!2924 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !2918)
!2925 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !2918)
!2926 = !DILocation(line: 0, scope: !2324, inlinedAt: !2918)
!2927 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 0, scope: !2795)
!2930 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !2929)
!2931 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !2929)
!2932 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !2929)
!2933 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !2929)
!2934 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !2929)
!2935 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !2929)
!2936 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !2929)
!2937 = !DILocation(line: 515, column: 5, scope: !2796)
!2938 = !DILocation(line: 515, column: 5, scope: !2794)
!2939 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 515, column: 5, scope: !2794)
!2941 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !2940)
!2942 = !DILocation(line: 515, column: 5, scope: !2803)
!2943 = !DILocation(line: 0, scope: !2803)
!2944 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 0, scope: !2803)
!2948 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2946)
!2949 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2946)
!2950 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2946)
!2951 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2946)
!2952 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2946)
!2953 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2946)
!2954 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2946)
!2955 = !DILocation(line: 515, column: 5, scope: !2804)
!2956 = !DILocation(line: 515, column: 5, scope: !2802)
!2957 = !DILocation(line: 515, column: 5, scope: !2809)
!2958 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 515, column: 5, scope: !2794)
!2961 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2960)
!2962 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2960)
!2963 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2960)
!2964 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2960)
!2965 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2960)
!2966 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2960)
!2967 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2960)
!2968 = !DILocation(line: 515, column: 5, scope: !2813)
!2969 = !DILocation(line: 515, column: 5, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !186, line: 515, column: 5)
!2971 = distinct !DILexicalBlock(scope: !2813, file: !186, line: 515, column: 5)
!2972 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 0, scope: !2970)
!2976 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !2974)
!2977 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !2974)
!2978 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !2974)
!2979 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !2974)
!2980 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !2974)
!2981 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !2974)
!2982 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !2974)
!2983 = !DILocation(line: 0, scope: !2970)
!2984 = !DILocation(line: 515, column: 5, scope: !2971)
!2985 = !DILocation(line: 515, column: 5, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2970, file: !186, line: 515, column: 5)
!2987 = !DILocation(line: 515, column: 5, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2970, file: !186, line: 515, column: 5)
!2989 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 515, column: 5, scope: !2813)
!2992 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !2991)
!2993 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !2991)
!2994 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !2991)
!2995 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !2991)
!2996 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !2991)
!2997 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !2991)
!2998 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !2991)
!2999 = !DILocation(line: 520, column: 3, scope: !2789)
!3000 = !DILocation(line: 520, column: 31, scope: !2789)
!3001 = !DILocation(line: 524, column: 7, scope: !2845)
!3002 = !DILocation(line: 0, scope: !2789)
!3003 = !DILocation(line: 524, column: 7, scope: !2789)
!3004 = !DILocation(line: 525, column: 5, scope: !2842)
!3005 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 0, scope: !2842)
!3008 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3007)
!3009 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3007)
!3010 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3007)
!3011 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3007)
!3012 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3007)
!3013 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3007)
!3014 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3007)
!3015 = !DILocation(line: 0, scope: !2324, inlinedAt: !3007)
!3016 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 0, scope: !2842)
!3019 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3018)
!3020 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3018)
!3021 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3018)
!3022 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3018)
!3023 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3018)
!3024 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3018)
!3025 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3018)
!3026 = !DILocation(line: 525, column: 5, scope: !2843)
!3027 = !DILocation(line: 525, column: 5, scope: !2841)
!3028 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 525, column: 5, scope: !2841)
!3030 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3029)
!3031 = !DILocation(line: 525, column: 5, scope: !2850)
!3032 = !DILocation(line: 0, scope: !2850)
!3033 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 0, scope: !2850)
!3037 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3035)
!3038 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3035)
!3039 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3035)
!3040 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3035)
!3041 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3035)
!3042 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3035)
!3043 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3035)
!3044 = !DILocation(line: 525, column: 5, scope: !2851)
!3045 = !DILocation(line: 525, column: 5, scope: !2849)
!3046 = !DILocation(line: 525, column: 5, scope: !2856)
!3047 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 525, column: 5, scope: !2841)
!3050 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3049)
!3051 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3049)
!3052 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3049)
!3053 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3049)
!3054 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3049)
!3055 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3049)
!3056 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3049)
!3057 = !DILocation(line: 525, column: 5, scope: !2860)
!3058 = !DILocation(line: 525, column: 5, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !186, line: 525, column: 5)
!3060 = distinct !DILexicalBlock(scope: !2860, file: !186, line: 525, column: 5)
!3061 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 0, scope: !3059)
!3065 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3063)
!3066 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3063)
!3067 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3063)
!3068 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3063)
!3069 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3063)
!3070 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3063)
!3071 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3063)
!3072 = !DILocation(line: 0, scope: !3059)
!3073 = !DILocation(line: 525, column: 5, scope: !3060)
!3074 = !DILocation(line: 525, column: 5, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3059, file: !186, line: 525, column: 5)
!3076 = !DILocation(line: 525, column: 5, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3059, file: !186, line: 525, column: 5)
!3078 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 525, column: 5, scope: !2860)
!3081 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3080)
!3082 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3080)
!3083 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3080)
!3084 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3080)
!3085 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3080)
!3086 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3080)
!3087 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3080)
!3088 = !DILocation(line: 526, column: 5, scope: !2844)
!3089 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 534, column: 24, scope: !2789)
!3092 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3091)
!3093 = !DILocation(line: 534, column: 16, scope: !2789)
!3094 = !DILocation(line: 535, column: 8, scope: !2867)
!3095 = !DILocation(line: 535, column: 7, scope: !2789)
!3096 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 536, column: 5, scope: !2864)
!3098 = !DILocation(line: 536, column: 5, scope: !2864)
!3099 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 0, scope: !2864)
!3102 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3101)
!3103 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3101)
!3104 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3101)
!3105 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3101)
!3106 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3101)
!3107 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3101)
!3108 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3101)
!3109 = !DILocation(line: 0, scope: !2324, inlinedAt: !3101)
!3110 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 0, scope: !2864)
!3113 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3112)
!3114 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3112)
!3115 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3112)
!3116 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3112)
!3117 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3112)
!3118 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3112)
!3119 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3112)
!3120 = !DILocation(line: 536, column: 5, scope: !2865)
!3121 = !DILocation(line: 536, column: 5, scope: !2863)
!3122 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 536, column: 5, scope: !2863)
!3124 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3123)
!3125 = !DILocation(line: 536, column: 5, scope: !2872)
!3126 = !DILocation(line: 0, scope: !2872)
!3127 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 0, scope: !2872)
!3131 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3129)
!3132 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3129)
!3133 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3129)
!3134 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3129)
!3135 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3129)
!3136 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3129)
!3137 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3129)
!3138 = !DILocation(line: 536, column: 5, scope: !2873)
!3139 = !DILocation(line: 536, column: 5, scope: !2871)
!3140 = !DILocation(line: 536, column: 5, scope: !2878)
!3141 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 536, column: 5, scope: !2863)
!3144 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3143)
!3145 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3143)
!3146 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3143)
!3147 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3143)
!3148 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3143)
!3149 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3143)
!3150 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3143)
!3151 = !DILocation(line: 536, column: 5, scope: !2882)
!3152 = !DILocation(line: 536, column: 5, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !186, line: 536, column: 5)
!3154 = distinct !DILexicalBlock(scope: !2882, file: !186, line: 536, column: 5)
!3155 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 0, scope: !3153)
!3159 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3157)
!3160 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3157)
!3161 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3157)
!3162 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3157)
!3163 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3157)
!3164 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3157)
!3165 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3157)
!3166 = !DILocation(line: 0, scope: !3153)
!3167 = !DILocation(line: 536, column: 5, scope: !3154)
!3168 = !DILocation(line: 536, column: 5, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3153, file: !186, line: 536, column: 5)
!3170 = !DILocation(line: 536, column: 5, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3153, file: !186, line: 536, column: 5)
!3172 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 536, column: 5, scope: !2882)
!3175 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3174)
!3176 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3174)
!3177 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3174)
!3178 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3174)
!3179 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3174)
!3180 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3174)
!3181 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3174)
!3182 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 538, column: 25, scope: !2789)
!3184 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3183)
!3185 = !DILocation(line: 538, column: 10, scope: !2789)
!3186 = !DILocation(line: 538, column: 23, scope: !2789)
!3187 = !DILocation(line: 541, column: 3, scope: !2789)
!3188 = !DILocation(line: 541, column: 15, scope: !2789)
!3189 = !DILocation(line: 542, column: 7, scope: !2889)
!3190 = !DILocation(line: 542, column: 66, scope: !2889)
!3191 = !DILocation(line: 542, column: 7, scope: !2789)
!3192 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 543, column: 5, scope: !2886)
!3194 = !DILocation(line: 543, column: 5, scope: !2886)
!3195 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 0, scope: !2886)
!3198 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3197)
!3199 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3197)
!3200 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3197)
!3201 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3197)
!3202 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3197)
!3203 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3197)
!3204 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3197)
!3205 = !DILocation(line: 0, scope: !2324, inlinedAt: !3197)
!3206 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 0, scope: !2886)
!3209 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3208)
!3210 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3208)
!3211 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3208)
!3212 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3208)
!3213 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3208)
!3214 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3208)
!3215 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3208)
!3216 = !DILocation(line: 543, column: 5, scope: !2887)
!3217 = !DILocation(line: 543, column: 5, scope: !2885)
!3218 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 543, column: 5, scope: !2885)
!3220 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3219)
!3221 = !DILocation(line: 543, column: 5, scope: !2894)
!3222 = !DILocation(line: 0, scope: !2894)
!3223 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 0, scope: !2894)
!3227 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3225)
!3228 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3225)
!3229 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3225)
!3230 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3225)
!3231 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3225)
!3232 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3225)
!3233 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3225)
!3234 = !DILocation(line: 543, column: 5, scope: !2895)
!3235 = !DILocation(line: 543, column: 5, scope: !2893)
!3236 = !DILocation(line: 543, column: 5, scope: !2900)
!3237 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 543, column: 5, scope: !2885)
!3240 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3239)
!3241 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3239)
!3242 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3239)
!3243 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3239)
!3244 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3239)
!3245 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3239)
!3246 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3239)
!3247 = !DILocation(line: 543, column: 5, scope: !2904)
!3248 = !DILocation(line: 543, column: 5, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !186, line: 543, column: 5)
!3250 = distinct !DILexicalBlock(scope: !2904, file: !186, line: 543, column: 5)
!3251 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 0, scope: !3249)
!3255 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3253)
!3256 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3253)
!3257 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3253)
!3258 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3253)
!3259 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3253)
!3260 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3253)
!3261 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3253)
!3262 = !DILocation(line: 0, scope: !3249)
!3263 = !DILocation(line: 543, column: 5, scope: !3250)
!3264 = !DILocation(line: 543, column: 5, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3249, file: !186, line: 543, column: 5)
!3266 = !DILocation(line: 543, column: 5, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3249, file: !186, line: 543, column: 5)
!3268 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 543, column: 5, scope: !2904)
!3271 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3270)
!3272 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3270)
!3273 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3270)
!3274 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3270)
!3275 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3270)
!3276 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3270)
!3277 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3270)
!3278 = !DILocation(line: 547, column: 23, scope: !2789)
!3279 = !DILocation(line: 547, column: 10, scope: !2789)
!3280 = !DILocation(line: 547, column: 21, scope: !2789)
!3281 = !DILocation(line: 548, column: 10, scope: !2789)
!3282 = !DILocation(line: 548, column: 21, scope: !2789)
!3283 = !DILocation(line: 551, column: 3, scope: !2789)
!3284 = !DILocation(line: 551, column: 19, scope: !2789)
!3285 = !DILocation(line: 551, column: 27, scope: !2789)
!3286 = !DILocation(line: 198, column: 33, scope: !1901, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 554, column: 3, scope: !2789)
!3288 = !DILocation(line: 202, column: 9, scope: !1901, inlinedAt: !3287)
!3289 = !DILocation(line: 202, column: 19, scope: !1901, inlinedAt: !3287)
!3290 = !DILocation(line: 202, column: 32, scope: !1901, inlinedAt: !3287)
!3291 = !DILocation(line: 202, column: 3, scope: !1901, inlinedAt: !3287)
!3292 = !DILocation(line: 208, column: 3, scope: !1901, inlinedAt: !3287)
!3293 = !DILocation(line: 557, column: 1, scope: !2789)
!3294 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !186, file: !186, line: 479, type: !64, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3295)
!3295 = !{!3296, !3297}
!3296 = !DILocalVariable(name: "in", arg: 1, scope: !3294, file: !186, line: 479, type: !33)
!3297 = !DILocalVariable(name: "out", arg: 2, scope: !3294, file: !186, line: 479, type: !66)
!3298 = !DILocation(line: 479, column: 35, scope: !3294)
!3299 = !DILocation(line: 479, column: 46, scope: !3294)
!3300 = !DILocation(line: 481, column: 3, scope: !3294)
!3301 = !DILocation(line: 489, column: 5, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3294, file: !186, line: 481, column: 13)
!3303 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 490, column: 28, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !186, line: 490, column: 9)
!3308 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3304)
!3309 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3305)
!3310 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !3306)
!3311 = !DILocalVariable(name: "head", arg: 1, scope: !3312, file: !53, line: 201, type: !1553)
!3312 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1566, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3313)
!3313 = !{!3311, !3314}
!3314 = !DILocalVariable(name: "next", scope: !3312, file: !53, line: 203, type: !209)
!3315 = !DILocation(line: 201, column: 62, scope: !3312, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 490, column: 9, scope: !3307)
!3317 = !DILocation(line: 203, column: 33, scope: !3312, inlinedAt: !3316)
!3318 = !DILocation(line: 203, column: 20, scope: !3312, inlinedAt: !3316)
!3319 = !DILocation(line: 204, column: 15, scope: !3312, inlinedAt: !3316)
!3320 = !DILocation(line: 204, column: 24, scope: !3312, inlinedAt: !3316)
!3321 = !DILocation(line: 204, column: 42, scope: !3312, inlinedAt: !3316)
!3322 = !DILocation(line: 204, column: 33, scope: !3312, inlinedAt: !3316)
!3323 = !DILocation(line: 490, column: 9, scope: !3302)
!3324 = distinct !{!3324, !3300, !3325}
!3325 = !DILocation(line: 508, column: 3, scope: !3294)
!3326 = !DILocation(line: 492, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3307, file: !186, line: 490, column: 47)
!3328 = !DILocation(line: 494, column: 5, scope: !3327)
!3329 = distinct !DISubprogram(name: "nk_fiber_create", scope: !186, file: !186, line: 602, type: !3330, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3333)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!50, !62, !33, !66, !38, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3343}
!3334 = !DILocalVariable(name: "fun", arg: 1, scope: !3329, file: !186, line: 602, type: !62)
!3335 = !DILocalVariable(name: "input", arg: 2, scope: !3329, file: !186, line: 602, type: !33)
!3336 = !DILocalVariable(name: "output", arg: 3, scope: !3329, file: !186, line: 602, type: !66)
!3337 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3329, file: !186, line: 602, type: !38)
!3338 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !3329, file: !186, line: 602, type: !3332)
!3339 = !DILocalVariable(name: "fiber", scope: !3329, file: !186, line: 605, type: !300)
!3340 = !DILocalVariable(name: "required_stack_size", scope: !3329, file: !186, line: 608, type: !38)
!3341 = !DILocalVariable(name: "p", scope: !3342, file: !186, line: 611, type: !33)
!3342 = distinct !DILexicalBlock(scope: !3329, file: !186, line: 611, column: 11)
!3343 = !DILocalVariable(name: "p", scope: !3344, file: !186, line: 628, type: !33)
!3344 = distinct !DILexicalBlock(scope: !3329, file: !186, line: 628, column: 26)
!3345 = !DILocation(line: 602, column: 36, scope: !3329)
!3346 = !DILocation(line: 602, column: 47, scope: !3329)
!3347 = !DILocation(line: 602, column: 61, scope: !3329)
!3348 = !DILocation(line: 602, column: 85, scope: !3329)
!3349 = !DILocation(line: 602, column: 110, scope: !3329)
!3350 = !DILocation(line: 605, column: 15, scope: !3329)
!3351 = !DILocation(line: 608, column: 41, scope: !3329)
!3352 = !DILocation(line: 608, column: 19, scope: !3329)
!3353 = !DILocation(line: 611, column: 11, scope: !3342)
!3354 = !DILocation(line: 614, column: 8, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3329, file: !186, line: 614, column: 7)
!3356 = !DILocation(line: 614, column: 7, scope: !3329)
!3357 = !DILocation(line: 620, column: 3, scope: !3329)
!3358 = !DILocation(line: 623, column: 10, scope: !3329)
!3359 = !DILocation(line: 623, column: 19, scope: !3329)
!3360 = !DILocation(line: 625, column: 10, scope: !3329)
!3361 = !DILocation(line: 625, column: 21, scope: !3329)
!3362 = !DILocation(line: 628, column: 26, scope: !3344)
!3363 = !DILocation(line: 628, column: 10, scope: !3329)
!3364 = !DILocation(line: 628, column: 16, scope: !3329)
!3365 = !DILocation(line: 631, column: 8, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3329, file: !186, line: 631, column: 7)
!3367 = !DILocation(line: 631, column: 7, scope: !3329)
!3368 = !DILocation(line: 634, column: 5, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !186, line: 631, column: 21)
!3370 = !DILocation(line: 635, column: 5, scope: !3369)
!3371 = !DILocation(line: 639, column: 10, scope: !3329)
!3372 = !DILocation(line: 639, column: 14, scope: !3329)
!3373 = !DILocation(line: 640, column: 10, scope: !3329)
!3374 = !DILocation(line: 640, column: 16, scope: !3329)
!3375 = !DILocation(line: 641, column: 10, scope: !3329)
!3376 = !DILocation(line: 641, column: 17, scope: !3329)
!3377 = !DILocation(line: 274, column: 33, scope: !1911, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 644, column: 3, scope: !3329)
!3379 = !DILocation(line: 276, column: 37, scope: !1911, inlinedAt: !3378)
!3380 = !DILocation(line: 276, column: 6, scope: !1911, inlinedAt: !3378)
!3381 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 277, column: 3, scope: !1911, inlinedAt: !3378)
!3383 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3382)
!3384 = !DILocation(line: 276, column: 32, scope: !1911, inlinedAt: !3378)
!3385 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3382)
!3386 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3382)
!3387 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3382)
!3388 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 278, column: 3, scope: !1911, inlinedAt: !3378)
!3390 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3389)
!3391 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3389)
!3392 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3389)
!3393 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3389)
!3394 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 279, column: 3, scope: !1911, inlinedAt: !3378)
!3396 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3395)
!3397 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3395)
!3398 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3395)
!3399 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3395)
!3400 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 280, column: 3, scope: !1911, inlinedAt: !3378)
!3402 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3401)
!3403 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3401)
!3404 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3401)
!3405 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3401)
!3406 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 281, column: 3, scope: !1911, inlinedAt: !3378)
!3408 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3407)
!3409 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3407)
!3410 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3407)
!3411 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3407)
!3412 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 282, column: 3, scope: !1911, inlinedAt: !3378)
!3414 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3413)
!3415 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3413)
!3416 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3413)
!3417 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3413)
!3418 = !DILocation(line: 283, column: 18, scope: !1911, inlinedAt: !3378)
!3419 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 283, column: 3, scope: !1911, inlinedAt: !3378)
!3421 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3420)
!3422 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3420)
!3423 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3420)
!3424 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3420)
!3425 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 284, column: 3, scope: !1911, inlinedAt: !3378)
!3427 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3426)
!3428 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3426)
!3429 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3426)
!3430 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3426)
!3431 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 285, column: 3, scope: !1911, inlinedAt: !3378)
!3433 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3432)
!3434 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3432)
!3435 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3432)
!3436 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3432)
!3437 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 286, column: 3, scope: !1911, inlinedAt: !3378)
!3439 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3438)
!3440 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3438)
!3441 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3438)
!3442 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3438)
!3443 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 287, column: 3, scope: !1911, inlinedAt: !3378)
!3445 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3444)
!3446 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3444)
!3447 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3444)
!3448 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3444)
!3449 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 288, column: 3, scope: !1911, inlinedAt: !3378)
!3451 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3450)
!3452 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3450)
!3453 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3450)
!3454 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3450)
!3455 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 289, column: 3, scope: !1911, inlinedAt: !3378)
!3457 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3456)
!3458 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3456)
!3459 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3456)
!3460 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3456)
!3461 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 290, column: 3, scope: !1911, inlinedAt: !3378)
!3463 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3462)
!3464 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3462)
!3465 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3462)
!3466 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3462)
!3467 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 291, column: 3, scope: !1911, inlinedAt: !3378)
!3469 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3468)
!3470 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3468)
!3471 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3468)
!3472 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3468)
!3473 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 292, column: 3, scope: !1911, inlinedAt: !3378)
!3475 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !3474)
!3476 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !3474)
!3477 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !3474)
!3478 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !3474)
!3479 = !DILocation(line: 647, column: 7, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3329, file: !186, line: 647, column: 7)
!3481 = !DILocation(line: 647, column: 7, scope: !3329)
!3482 = !DILocation(line: 648, column: 19, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3480, file: !186, line: 647, column: 20)
!3484 = !DILocation(line: 649, column: 3, scope: !3483)
!3485 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 650, column: 15, scope: !3329)
!3487 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3486)
!3488 = !DILocation(line: 650, column: 33, scope: !3329)
!3489 = !DILocation(line: 650, column: 10, scope: !3329)
!3490 = !DILocation(line: 650, column: 13, scope: !3329)
!3491 = !DILocation(line: 653, column: 27, scope: !3329)
!3492 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 653, column: 3, scope: !3329)
!3494 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !3493)
!3495 = !DILocation(line: 76, column: 8, scope: !1599, inlinedAt: !3493)
!3496 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !3493)
!3497 = !DILocation(line: 656, column: 10, scope: !3329)
!3498 = !DILocation(line: 656, column: 19, scope: !3329)
!3499 = !DILocation(line: 657, column: 27, scope: !3329)
!3500 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 657, column: 3, scope: !3329)
!3502 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !3501)
!3503 = !DILocation(line: 76, column: 8, scope: !1599, inlinedAt: !3501)
!3504 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !3501)
!3505 = !DILocation(line: 658, column: 27, scope: !3329)
!3506 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 658, column: 3, scope: !3329)
!3508 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !3507)
!3509 = !DILocation(line: 76, column: 8, scope: !1599, inlinedAt: !3507)
!3510 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !3507)
!3511 = !DILocation(line: 660, column: 3, scope: !3329)
!3512 = !DILocation(line: 0, scope: !3329)
!3513 = !DILocation(line: 661, column: 1, scope: !3329)
!3514 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !186, file: !186, line: 709, type: !565, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3515)
!3515 = !{!3516}
!3516 = !DILocalVariable(name: "f_to", scope: !3514, file: !186, line: 715, type: !300)
!3517 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 711, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3514, file: !186, line: 711, column: 7)
!3522 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3518)
!3523 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3519)
!3524 = !DILocation(line: 98, column: 30, scope: !1508, inlinedAt: !3520)
!3525 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 711, column: 30, scope: !3521)
!3527 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3526)
!3528 = !DILocation(line: 711, column: 27, scope: !3521)
!3529 = !DILocation(line: 711, column: 7, scope: !3514)
!3530 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 122, column: 41, scope: !1541, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 715, column: 22, scope: !3514)
!3535 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3531)
!3536 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3532)
!3537 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !3533)
!3538 = !DILocation(line: 122, column: 21, scope: !1541, inlinedAt: !3534)
!3539 = !DILocation(line: 125, column: 15, scope: !1541, inlinedAt: !3534)
!3540 = !DILocation(line: 184, column: 54, scope: !1565, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 126, column: 9, scope: !1548, inlinedAt: !3534)
!3542 = !DILocation(line: 186, column: 15, scope: !1565, inlinedAt: !3541)
!3543 = !DILocation(line: 186, column: 20, scope: !1565, inlinedAt: !3541)
!3544 = !DILocation(line: 126, column: 7, scope: !1541, inlinedAt: !3534)
!3545 = !DILocation(line: 128, column: 25, scope: !1546, inlinedAt: !3534)
!3546 = !DILocation(line: 131, column: 40, scope: !1547, inlinedAt: !3534)
!3547 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 131, column: 5, scope: !1547, inlinedAt: !3534)
!3549 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !3548)
!3550 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !3548)
!3551 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !3548)
!3553 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !3552)
!3554 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !3552)
!3555 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !3552)
!3556 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !3552)
!3557 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !3552)
!3558 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !3548)
!3560 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !3559)
!3561 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !3559)
!3562 = !DILocation(line: 715, column: 15, scope: !3514)
!3563 = !DILocation(line: 725, column: 12, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3514, file: !186, line: 725, column: 7)
!3565 = !DILocation(line: 725, column: 7, scope: !3514)
!3566 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 726, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !186, line: 726, column: 9)
!3571 = distinct !DILexicalBlock(scope: !3564, file: !186, line: 725, column: 21)
!3572 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3567)
!3573 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3568)
!3574 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !3569)
!3575 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 726, column: 31, scope: !3570)
!3579 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3576)
!3580 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3577)
!3581 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !3578)
!3582 = !DILocation(line: 726, column: 28, scope: !3570)
!3583 = !DILocation(line: 726, column: 9, scope: !3571)
!3584 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 730, column: 16, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3570, file: !186, line: 729, column: 12)
!3589 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3585)
!3590 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3586)
!3591 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !3587)
!3592 = !DILocation(line: 732, column: 3, scope: !3571)
!3593 = !DILocation(line: 0, scope: !3514)
!3594 = !DILocation(line: 734, column: 10, scope: !3514)
!3595 = !DILocation(line: 734, column: 3, scope: !3514)
!3596 = !DILocation(line: 735, column: 1, scope: !3514)
!3597 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !186, file: !186, line: 570, type: !2145, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3598)
!3598 = !{!3599, !3600, !3604, !3605, !3610, !3612, !3615, !3617, !3619, !3625, !3626, !3631, !3633, !3636, !3638}
!3599 = !DILocalVariable(name: "my_cpu", scope: !3597, file: !186, line: 572, type: !328)
!3600 = !DILocalVariable(name: "_p", scope: !3601, file: !186, line: 573, type: !50)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !186, line: 573, column: 5)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !186, line: 573, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3597, file: !186, line: 573, column: 5)
!3604 = !DILocalVariable(name: "_t", scope: !3601, file: !186, line: 573, type: !219)
!3605 = !DILocalVariable(name: "__r", scope: !3606, file: !186, line: 573, type: !349)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !186, line: 573, column: 5)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !186, line: 573, column: 5)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !186, line: 573, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3601, file: !186, line: 573, column: 5)
!3610 = !DILocalVariable(name: "__r", scope: !3611, file: !186, line: 573, type: !349)
!3611 = distinct !DILexicalBlock(scope: !3606, file: !186, line: 573, column: 5)
!3612 = !DILocalVariable(name: "__r", scope: !3613, file: !186, line: 573, type: !349)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !186, line: 573, column: 5)
!3614 = distinct !DILexicalBlock(scope: !3608, file: !186, line: 573, column: 5)
!3615 = !DILocalVariable(name: "__r", scope: !3616, file: !186, line: 573, type: !349)
!3616 = distinct !DILexicalBlock(scope: !3613, file: !186, line: 573, column: 5)
!3617 = !DILocalVariable(name: "_p", scope: !3618, file: !186, line: 573, type: !50)
!3618 = distinct !DILexicalBlock(scope: !3602, file: !186, line: 573, column: 5)
!3619 = !DILocalVariable(name: "_p", scope: !3620, file: !186, line: 575, type: !50)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !186, line: 575, column: 2)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !186, line: 575, column: 2)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !186, line: 575, column: 2)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !186, line: 574, column: 45)
!3624 = distinct !DILexicalBlock(scope: !3597, file: !186, line: 574, column: 9)
!3625 = !DILocalVariable(name: "_t", scope: !3620, file: !186, line: 575, type: !219)
!3626 = !DILocalVariable(name: "__r", scope: !3627, file: !186, line: 575, type: !349)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !186, line: 575, column: 2)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !186, line: 575, column: 2)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !186, line: 575, column: 2)
!3630 = distinct !DILexicalBlock(scope: !3620, file: !186, line: 575, column: 2)
!3631 = !DILocalVariable(name: "__r", scope: !3632, file: !186, line: 575, type: !349)
!3632 = distinct !DILexicalBlock(scope: !3627, file: !186, line: 575, column: 2)
!3633 = !DILocalVariable(name: "__r", scope: !3634, file: !186, line: 575, type: !349)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !186, line: 575, column: 2)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !186, line: 575, column: 2)
!3636 = !DILocalVariable(name: "__r", scope: !3637, file: !186, line: 575, type: !349)
!3637 = distinct !DILexicalBlock(scope: !3634, file: !186, line: 575, column: 2)
!3638 = !DILocalVariable(name: "_p", scope: !3639, file: !186, line: 575, type: !50)
!3639 = distinct !DILexicalBlock(scope: !3621, file: !186, line: 575, column: 2)
!3640 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 572, column: 26, scope: !3597)
!3642 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3641)
!3643 = !DILocation(line: 572, column: 17, scope: !3597)
!3644 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 573, column: 5, scope: !3602)
!3646 = !DILocation(line: 573, column: 5, scope: !3602)
!3647 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 0, scope: !3602)
!3650 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3649)
!3651 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3649)
!3652 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3649)
!3653 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3649)
!3654 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3649)
!3655 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3649)
!3656 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3649)
!3657 = !DILocation(line: 0, scope: !2324, inlinedAt: !3649)
!3658 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 0, scope: !3602)
!3661 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3660)
!3662 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3660)
!3663 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3660)
!3664 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3660)
!3665 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3660)
!3666 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3660)
!3667 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3660)
!3668 = !DILocation(line: 573, column: 5, scope: !3603)
!3669 = !DILocation(line: 573, column: 5, scope: !3601)
!3670 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 573, column: 5, scope: !3601)
!3672 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3671)
!3673 = !DILocation(line: 573, column: 5, scope: !3608)
!3674 = !DILocation(line: 0, scope: !3608)
!3675 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 0, scope: !3608)
!3679 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3677)
!3680 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3677)
!3681 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3677)
!3682 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3677)
!3683 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3677)
!3684 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3677)
!3685 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3677)
!3686 = !DILocation(line: 573, column: 5, scope: !3609)
!3687 = !DILocation(line: 573, column: 5, scope: !3607)
!3688 = !DILocation(line: 573, column: 5, scope: !3614)
!3689 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 573, column: 5, scope: !3601)
!3692 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3691)
!3693 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3691)
!3694 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3691)
!3695 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3691)
!3696 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3691)
!3697 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3691)
!3698 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3691)
!3699 = !DILocation(line: 573, column: 5, scope: !3618)
!3700 = !DILocation(line: 573, column: 5, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !186, line: 573, column: 5)
!3702 = distinct !DILexicalBlock(scope: !3618, file: !186, line: 573, column: 5)
!3703 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 0, scope: !3701)
!3707 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3705)
!3708 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3705)
!3709 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3705)
!3710 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3705)
!3711 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3705)
!3712 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3705)
!3713 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3705)
!3714 = !DILocation(line: 0, scope: !3701)
!3715 = !DILocation(line: 573, column: 5, scope: !3702)
!3716 = !DILocation(line: 573, column: 5, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3701, file: !186, line: 573, column: 5)
!3718 = !DILocation(line: 573, column: 5, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3701, file: !186, line: 573, column: 5)
!3720 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 573, column: 5, scope: !3618)
!3723 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3722)
!3724 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3722)
!3725 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3722)
!3726 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3722)
!3727 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3722)
!3728 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3722)
!3729 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3722)
!3730 = !DILocation(line: 561, column: 3, scope: !3731, inlinedAt: !3760)
!3731 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !186, file: !186, line: 559, type: !565, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3732)
!3732 = !{!3733, !3735, !3738, !3740, !3745, !3746, !3751, !3753, !3756, !3758}
!3733 = !DILocalVariable(name: "tid", scope: !3731, file: !186, line: 561, type: !3734)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !33)
!3735 = !DILocalVariable(name: "__r", scope: !3736, file: !186, line: 562, type: !349)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !186, line: 562, column: 79)
!3737 = distinct !DILexicalBlock(scope: !3731, file: !186, line: 562, column: 7)
!3738 = !DILocalVariable(name: "__r", scope: !3739, file: !186, line: 562, type: !349)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !186, line: 562, column: 79)
!3740 = !DILocalVariable(name: "_p", scope: !3741, file: !186, line: 563, type: !50)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !186, line: 563, column: 7)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !186, line: 563, column: 7)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !186, line: 563, column: 7)
!3744 = distinct !DILexicalBlock(scope: !3737, file: !186, line: 562, column: 93)
!3745 = !DILocalVariable(name: "_t", scope: !3741, file: !186, line: 563, type: !219)
!3746 = !DILocalVariable(name: "__r", scope: !3747, file: !186, line: 563, type: !349)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !186, line: 563, column: 7)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !186, line: 563, column: 7)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !186, line: 563, column: 7)
!3750 = distinct !DILexicalBlock(scope: !3741, file: !186, line: 563, column: 7)
!3751 = !DILocalVariable(name: "__r", scope: !3752, file: !186, line: 563, type: !349)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !186, line: 563, column: 7)
!3753 = !DILocalVariable(name: "__r", scope: !3754, file: !186, line: 563, type: !349)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !186, line: 563, column: 7)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !186, line: 563, column: 7)
!3756 = !DILocalVariable(name: "__r", scope: !3757, file: !186, line: 563, type: !349)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !186, line: 563, column: 7)
!3758 = !DILocalVariable(name: "_p", scope: !3759, file: !186, line: 563, type: !50)
!3759 = distinct !DILexicalBlock(scope: !3742, file: !186, line: 563, column: 7)
!3760 = distinct !DILocation(line: 574, column: 9, scope: !3624)
!3761 = !DILocation(line: 562, column: 79, scope: !3739, inlinedAt: !3760)
!3762 = !{i32 -2147099476}
!3763 = !DILocation(line: 562, column: 79, scope: !3736, inlinedAt: !3760)
!3764 = !DILocation(line: 561, column: 18, scope: !3731, inlinedAt: !3760)
!3765 = !DILocation(line: 562, column: 7, scope: !3737, inlinedAt: !3760)
!3766 = !DILocation(line: 562, column: 7, scope: !3731, inlinedAt: !3760)
!3767 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 563, column: 7, scope: !3742, inlinedAt: !3760)
!3769 = !DILocation(line: 563, column: 7, scope: !3742, inlinedAt: !3760)
!3770 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 0, scope: !3742, inlinedAt: !3760)
!3773 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3772)
!3774 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3772)
!3775 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3772)
!3776 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3772)
!3777 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3772)
!3778 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3772)
!3779 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3772)
!3780 = !DILocation(line: 0, scope: !2324, inlinedAt: !3772)
!3781 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 0, scope: !3742, inlinedAt: !3760)
!3784 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3783)
!3785 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3783)
!3786 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3783)
!3787 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3783)
!3788 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3783)
!3789 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3783)
!3790 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3783)
!3791 = !DILocation(line: 563, column: 7, scope: !3743, inlinedAt: !3760)
!3792 = !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3760)
!3793 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3760)
!3795 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3794)
!3796 = !DILocation(line: 563, column: 7, scope: !3749, inlinedAt: !3760)
!3797 = !DILocation(line: 0, scope: !3749, inlinedAt: !3760)
!3798 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 0, scope: !3749, inlinedAt: !3760)
!3802 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3800)
!3803 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3800)
!3804 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3800)
!3805 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3800)
!3806 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3800)
!3807 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3800)
!3808 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3800)
!3809 = !DILocation(line: 563, column: 7, scope: !3750, inlinedAt: !3760)
!3810 = !DILocation(line: 563, column: 7, scope: !3748, inlinedAt: !3760)
!3811 = !DILocation(line: 563, column: 7, scope: !3755, inlinedAt: !3760)
!3812 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3760)
!3815 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3814)
!3816 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3814)
!3817 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3814)
!3818 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3814)
!3819 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3814)
!3820 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3814)
!3821 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3814)
!3822 = !DILocation(line: 563, column: 7, scope: !3759, inlinedAt: !3760)
!3823 = !DILocation(line: 563, column: 7, scope: !3824, inlinedAt: !3760)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !186, line: 563, column: 7)
!3825 = distinct !DILexicalBlock(scope: !3759, file: !186, line: 563, column: 7)
!3826 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 0, scope: !3824, inlinedAt: !3760)
!3830 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3828)
!3831 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3828)
!3832 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3828)
!3833 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3828)
!3834 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3828)
!3835 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3828)
!3836 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3828)
!3837 = !DILocation(line: 0, scope: !3824, inlinedAt: !3760)
!3838 = !DILocation(line: 563, column: 7, scope: !3825, inlinedAt: !3760)
!3839 = !DILocation(line: 563, column: 7, scope: !3840, inlinedAt: !3760)
!3840 = distinct !DILexicalBlock(scope: !3824, file: !186, line: 563, column: 7)
!3841 = !DILocation(line: 563, column: 7, scope: !3842, inlinedAt: !3760)
!3842 = distinct !DILexicalBlock(scope: !3824, file: !186, line: 563, column: 7)
!3843 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 563, column: 7, scope: !3759, inlinedAt: !3760)
!3846 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3845)
!3847 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3845)
!3848 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3845)
!3849 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3845)
!3850 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3845)
!3851 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3845)
!3852 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3845)
!3853 = !DILocation(line: 568, column: 1, scope: !3731, inlinedAt: !3760)
!3854 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 575, column: 2, scope: !3621)
!3856 = !DILocation(line: 575, column: 2, scope: !3621)
!3857 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 84, column: 18, scope: !2318, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 0, scope: !3621)
!3860 = !DILocation(line: 84, column: 11, scope: !2318, inlinedAt: !3859)
!3861 = !DILocation(line: 85, column: 9, scope: !2324, inlinedAt: !3859)
!3862 = !DILocation(line: 85, column: 9, scope: !2318, inlinedAt: !3859)
!3863 = !DILocation(line: 87, column: 57, scope: !2327, inlinedAt: !3859)
!3864 = !DILocation(line: 87, column: 30, scope: !2327, inlinedAt: !3859)
!3865 = !DILocation(line: 87, column: 9, scope: !2327, inlinedAt: !3859)
!3866 = !DILocation(line: 87, column: 2, scope: !2327, inlinedAt: !3859)
!3867 = !DILocation(line: 0, scope: !2324, inlinedAt: !3859)
!3868 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 48, column: 18, scope: !2334, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 0, scope: !3621)
!3871 = !DILocation(line: 48, column: 11, scope: !2334, inlinedAt: !3870)
!3872 = !DILocation(line: 49, column: 9, scope: !2340, inlinedAt: !3870)
!3873 = !DILocation(line: 49, column: 9, scope: !2334, inlinedAt: !3870)
!3874 = !DILocation(line: 51, column: 50, scope: !2343, inlinedAt: !3870)
!3875 = !DILocation(line: 51, column: 23, scope: !2343, inlinedAt: !3870)
!3876 = !DILocation(line: 51, column: 2, scope: !2343, inlinedAt: !3870)
!3877 = !DILocation(line: 52, column: 5, scope: !2343, inlinedAt: !3870)
!3878 = !DILocation(line: 575, column: 2, scope: !3622)
!3879 = !DILocation(line: 575, column: 2, scope: !3620)
!3880 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 575, column: 2, scope: !3620)
!3882 = !DILocation(line: 258, column: 26, scope: !2104, inlinedAt: !3881)
!3883 = !DILocation(line: 575, column: 2, scope: !3629)
!3884 = !DILocation(line: 0, scope: !3629)
!3885 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 0, scope: !3629)
!3889 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3887)
!3890 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3887)
!3891 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3887)
!3892 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3887)
!3893 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3887)
!3894 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3887)
!3895 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3887)
!3896 = !DILocation(line: 575, column: 2, scope: !3630)
!3897 = !DILocation(line: 575, column: 2, scope: !3628)
!3898 = !DILocation(line: 575, column: 2, scope: !3635)
!3899 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 575, column: 2, scope: !3620)
!3902 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3901)
!3903 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3901)
!3904 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3901)
!3905 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3901)
!3906 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3901)
!3907 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3901)
!3908 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3901)
!3909 = !DILocation(line: 575, column: 2, scope: !3639)
!3910 = !DILocation(line: 575, column: 2, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !186, line: 575, column: 2)
!3912 = distinct !DILexicalBlock(scope: !3639, file: !186, line: 575, column: 2)
!3913 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 96, column: 18, scope: !2356, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 107, column: 12, scope: !2362, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 0, scope: !3911)
!3917 = !DILocation(line: 96, column: 11, scope: !2356, inlinedAt: !3915)
!3918 = !DILocation(line: 97, column: 9, scope: !2366, inlinedAt: !3915)
!3919 = !DILocation(line: 97, column: 9, scope: !2356, inlinedAt: !3915)
!3920 = !DILocation(line: 98, column: 57, scope: !2369, inlinedAt: !3915)
!3921 = !DILocation(line: 98, column: 30, scope: !2369, inlinedAt: !3915)
!3922 = !DILocation(line: 98, column: 9, scope: !2369, inlinedAt: !3915)
!3923 = !DILocation(line: 98, column: 2, scope: !2369, inlinedAt: !3915)
!3924 = !DILocation(line: 0, scope: !3911)
!3925 = !DILocation(line: 575, column: 2, scope: !3912)
!3926 = !DILocation(line: 575, column: 2, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3911, file: !186, line: 575, column: 2)
!3928 = !DILocation(line: 575, column: 2, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3911, file: !186, line: 575, column: 2)
!3930 = !DILocation(line: 43, column: 21, scope: !2310, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 59, column: 18, scope: !2378, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 575, column: 2, scope: !3639)
!3933 = !DILocation(line: 59, column: 11, scope: !2378, inlinedAt: !3932)
!3934 = !DILocation(line: 60, column: 9, scope: !2384, inlinedAt: !3932)
!3935 = !DILocation(line: 60, column: 9, scope: !2378, inlinedAt: !3932)
!3936 = !DILocation(line: 62, column: 50, scope: !2387, inlinedAt: !3932)
!3937 = !DILocation(line: 62, column: 23, scope: !2387, inlinedAt: !3932)
!3938 = !DILocation(line: 62, column: 2, scope: !2387, inlinedAt: !3932)
!3939 = !DILocation(line: 63, column: 5, scope: !2387, inlinedAt: !3932)
!3940 = !DILocation(line: 576, column: 2, scope: !3623)
!3941 = !DILocation(line: 579, column: 1, scope: !3597)
!3942 = distinct !DISubprogram(name: "nk_fiber_start", scope: !186, file: !186, line: 693, type: !3943, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!50, !62, !33, !66, !38, !70, !3332}
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951}
!3946 = !DILocalVariable(name: "fun", arg: 1, scope: !3942, file: !186, line: 693, type: !62)
!3947 = !DILocalVariable(name: "input", arg: 2, scope: !3942, file: !186, line: 693, type: !33)
!3948 = !DILocalVariable(name: "output", arg: 3, scope: !3942, file: !186, line: 693, type: !66)
!3949 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3942, file: !186, line: 693, type: !38)
!3950 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3942, file: !186, line: 693, type: !70)
!3951 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3942, file: !186, line: 693, type: !3332)
!3952 = !DILocation(line: 693, column: 35, scope: !3942)
!3953 = !DILocation(line: 693, column: 46, scope: !3942)
!3954 = !DILocation(line: 693, column: 60, scope: !3942)
!3955 = !DILocation(line: 693, column: 84, scope: !3942)
!3956 = !DILocation(line: 693, column: 104, scope: !3942)
!3957 = !DILocation(line: 693, column: 134, scope: !3942)
!3958 = !DILocation(line: 695, column: 3, scope: !3942)
!3959 = !DILocation(line: 696, column: 16, scope: !3942)
!3960 = !DILocation(line: 696, column: 3, scope: !3942)
!3961 = !DILocation(line: 698, column: 3, scope: !3942)
!3962 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !186, file: !186, line: 701, type: !565, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1480)
!3963 = !DILocation(line: 703, column: 3, scope: !3962)
!3964 = !DILocation(line: 704, column: 10, scope: !3962)
!3965 = !DILocation(line: 704, column: 3, scope: !3962)
!3966 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !186, file: !186, line: 737, type: !2018, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3967)
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "f_to", arg: 1, scope: !3966, file: !186, line: 737, type: !300)
!3969 = !DILocalVariable(name: "new_to", scope: !3970, file: !186, line: 745, type: !300)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !186, line: 741, column: 38)
!3971 = distinct !DILexicalBlock(scope: !3966, file: !186, line: 741, column: 7)
!3972 = !DILocation(line: 737, column: 35, scope: !3966)
!3973 = !DILocation(line: 383, column: 42, scope: !2200, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 741, column: 7, scope: !3971)
!3975 = !DILocation(line: 386, column: 26, scope: !2207, inlinedAt: !3974)
!3976 = !DILocation(line: 386, column: 26, scope: !2205, inlinedAt: !3974)
!3977 = !DILocation(line: 386, column: 20, scope: !2200, inlinedAt: !3974)
!3978 = !DILocation(line: 387, column: 23, scope: !2200, inlinedAt: !3974)
!3979 = !DILocation(line: 387, column: 7, scope: !2200, inlinedAt: !3974)
!3980 = !DILocation(line: 392, column: 12, scope: !2212, inlinedAt: !3974)
!3981 = !DILocation(line: 392, column: 27, scope: !2217, inlinedAt: !3974)
!3982 = !DILocation(line: 392, column: 3, scope: !2212, inlinedAt: !3974)
!3983 = !DILocation(line: 394, column: 14, scope: !2216, inlinedAt: !3974)
!3984 = !DILocation(line: 394, column: 31, scope: !2216, inlinedAt: !3974)
!3985 = !DILocation(line: 394, column: 40, scope: !2216, inlinedAt: !3974)
!3986 = !DILocation(line: 390, column: 21, scope: !2200, inlinedAt: !3974)
!3987 = !DILocation(line: 395, column: 5, scope: !2214, inlinedAt: !3974)
!3988 = !DILocation(line: 391, column: 15, scope: !2200, inlinedAt: !3974)
!3989 = !DILocation(line: 0, scope: !2215, inlinedAt: !3974)
!3990 = !DILocation(line: 395, column: 5, scope: !2215, inlinedAt: !3974)
!3991 = !DILocation(line: 395, column: 5, scope: !2220, inlinedAt: !3974)
!3992 = !DILocation(line: 400, column: 16, scope: !2241, inlinedAt: !3974)
!3993 = !DILocation(line: 400, column: 11, scope: !2242, inlinedAt: !3974)
!3994 = !DILocation(line: 392, column: 43, scope: !2217, inlinedAt: !3974)
!3995 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 122, column: 41, scope: !1541, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 745, column: 26, scope: !3970)
!4000 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !3996)
!4001 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !3997)
!4002 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !3998)
!4003 = !DILocation(line: 122, column: 21, scope: !1541, inlinedAt: !3999)
!4004 = !DILocation(line: 125, column: 15, scope: !1541, inlinedAt: !3999)
!4005 = !DILocation(line: 184, column: 54, scope: !1565, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 126, column: 9, scope: !1548, inlinedAt: !3999)
!4007 = !DILocation(line: 186, column: 15, scope: !1565, inlinedAt: !4006)
!4008 = !DILocation(line: 186, column: 20, scope: !1565, inlinedAt: !4006)
!4009 = !DILocation(line: 126, column: 7, scope: !1541, inlinedAt: !3999)
!4010 = !DILocation(line: 128, column: 25, scope: !1546, inlinedAt: !3999)
!4011 = !DILocation(line: 131, column: 40, scope: !1547, inlinedAt: !3999)
!4012 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 131, column: 5, scope: !1547, inlinedAt: !3999)
!4014 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !4013)
!4015 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !4013)
!4016 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !4013)
!4018 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !4017)
!4019 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !4017)
!4020 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !4017)
!4021 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !4017)
!4022 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !4017)
!4023 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !4013)
!4025 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !4024)
!4026 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !4024)
!4027 = !DILocation(line: 745, column: 17, scope: !3970)
!4028 = !DILocation(line: 747, column: 16, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3970, file: !186, line: 747, column: 9)
!4030 = !DILocation(line: 747, column: 9, scope: !3970)
!4031 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 748, column: 11, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !186, line: 748, column: 11)
!4036 = distinct !DILexicalBlock(scope: !4029, file: !186, line: 747, column: 25)
!4037 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4032)
!4038 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4033)
!4039 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !4034)
!4040 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 748, column: 33, scope: !4035)
!4044 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4041)
!4045 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4042)
!4046 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !4043)
!4047 = !DILocation(line: 748, column: 30, scope: !4035)
!4048 = !DILocation(line: 748, column: 11, scope: !4036)
!4049 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 92, column: 10, scope: !1500, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 752, column: 20, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4035, file: !186, line: 751, column: 14)
!4054 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4050)
!4055 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4051)
!4056 = !DILocation(line: 92, column: 30, scope: !1500, inlinedAt: !4052)
!4057 = !DILocation(line: 754, column: 5, scope: !4036)
!4058 = !DILocation(line: 0, scope: !3970)
!4059 = !DILocation(line: 757, column: 5, scope: !3970)
!4060 = !DILocation(line: 759, column: 5, scope: !3970)
!4061 = !DILocation(line: 401, column: 33, scope: !2250, inlinedAt: !3974)
!4062 = !DILocation(line: 151, column: 52, scope: !1577, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 401, column: 9, scope: !2250, inlinedAt: !3974)
!4064 = !DILocation(line: 153, column: 20, scope: !1577, inlinedAt: !4063)
!4065 = !DILocation(line: 153, column: 33, scope: !1577, inlinedAt: !4063)
!4066 = !DILocation(line: 128, column: 50, scope: !1586, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 153, column: 2, scope: !1577, inlinedAt: !4063)
!4068 = !DILocation(line: 128, column: 75, scope: !1586, inlinedAt: !4067)
!4069 = !DILocation(line: 130, column: 8, scope: !1586, inlinedAt: !4067)
!4070 = !DILocation(line: 130, column: 13, scope: !1586, inlinedAt: !4067)
!4071 = !DILocation(line: 131, column: 8, scope: !1586, inlinedAt: !4067)
!4072 = !DILocation(line: 131, column: 13, scope: !1586, inlinedAt: !4067)
!4073 = !DILocation(line: 73, column: 53, scope: !1599, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 154, column: 2, scope: !1577, inlinedAt: !4063)
!4075 = !DILocation(line: 75, column: 13, scope: !1599, inlinedAt: !4074)
!4076 = !DILocation(line: 76, column: 13, scope: !1599, inlinedAt: !4074)
!4077 = !DILocation(line: 763, column: 3, scope: !3966)
!4078 = !DILocation(line: 766, column: 3, scope: !3966)
!4079 = !DILocation(line: 0, scope: !3966)
!4080 = !DILocation(line: 767, column: 1, scope: !3966)
!4081 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !186, file: !186, line: 769, type: !4082, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !4087)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!50, !4084, !33}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!70, !33}
!4087 = !{!4088, !4089}
!4088 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4081, file: !186, line: 769, type: !4084)
!4089 = !DILocalVariable(name: "state", arg: 2, scope: !4081, file: !186, line: 769, type: !33)
!4090 = !DILocation(line: 769, column: 42, scope: !4081)
!4091 = !DILocation(line: 769, column: 77, scope: !4081)
!4092 = !DILocation(line: 771, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4081, file: !186, line: 771, column: 7)
!4094 = !DILocation(line: 771, column: 7, scope: !4081)
!4095 = !DILocation(line: 772, column: 12, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4093, file: !186, line: 771, column: 28)
!4097 = !DILocation(line: 772, column: 5, scope: !4096)
!4098 = !DILocation(line: 0, scope: !4081)
!4099 = !DILocation(line: 775, column: 1, scope: !4081)
!4100 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !186, file: !186, line: 777, type: !4101, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!50, !300, !4084, !33}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "fib", arg: 1, scope: !4100, file: !186, line: 777, type: !300)
!4105 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4100, file: !186, line: 777, type: !4084)
!4106 = !DILocalVariable(name: "state", arg: 3, scope: !4100, file: !186, line: 777, type: !33)
!4107 = !DILocation(line: 777, column: 47, scope: !4100)
!4108 = !DILocation(line: 777, column: 62, scope: !4100)
!4109 = !DILocation(line: 777, column: 97, scope: !4100)
!4110 = !DILocation(line: 779, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4100, file: !186, line: 779, column: 7)
!4112 = !DILocation(line: 779, column: 7, scope: !4100)
!4113 = !DILocation(line: 780, column: 12, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4111, file: !186, line: 779, column: 28)
!4115 = !DILocation(line: 780, column: 5, scope: !4114)
!4116 = !DILocation(line: 0, scope: !4100)
!4117 = !DILocation(line: 783, column: 1, scope: !4100)
!4118 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !186, file: !186, line: 785, type: !1491, scopeLine: 786, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4120 = !DILocalVariable(name: "curr", scope: !4118, file: !186, line: 788, type: !300)
!4121 = !DILocalVariable(name: "size", scope: !4118, file: !186, line: 791, type: !29)
!4122 = !DILocalVariable(name: "alloc_size", scope: !4118, file: !186, line: 791, type: !29)
!4123 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4118, file: !186, line: 792, type: !29)
!4124 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4118, file: !186, line: 793, type: !29)
!4125 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4118, file: !186, line: 794, type: !29)
!4126 = !DILocalVariable(name: "child_stack", scope: !4118, file: !186, line: 795, type: !33)
!4127 = !DILocalVariable(name: "rsp", scope: !4118, file: !186, line: 796, type: !29)
!4128 = !DILocalVariable(name: "rbp0", scope: !4118, file: !186, line: 801, type: !33)
!4129 = !DILocalVariable(name: "rbp1", scope: !4118, file: !186, line: 802, type: !33)
!4130 = !DILocalVariable(name: "rbp_tos", scope: !4118, file: !186, line: 803, type: !33)
!4131 = !DILocalVariable(name: "ret0_addr", scope: !4118, file: !186, line: 804, type: !33)
!4132 = !DILocalVariable(name: "rbp_stash_addr", scope: !4118, file: !186, line: 816, type: !33)
!4133 = !DILocalVariable(name: "new", scope: !4118, file: !186, line: 832, type: !300)
!4134 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4118, file: !186, line: 848, type: !66)
!4135 = !DILocalVariable(name: "rbp2_ptr", scope: !4118, file: !186, line: 852, type: !66)
!4136 = !DILocalVariable(name: "ret2_ptr", scope: !4118, file: !186, line: 853, type: !66)
!4137 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 788, column: 22, scope: !4118)
!4141 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4138)
!4142 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4139)
!4143 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !4140)
!4144 = !DILocation(line: 788, column: 15, scope: !4118)
!4145 = !DILocation(line: 799, column: 3, scope: !4118)
!4146 = !{i32 23632}
!4147 = !DILocation(line: 796, column: 16, scope: !4118)
!4148 = !DILocation(line: 801, column: 21, scope: !4118)
!4149 = !DILocation(line: 801, column: 9, scope: !4118)
!4150 = !DILocation(line: 802, column: 21, scope: !4118)
!4151 = !DILocation(line: 802, column: 9, scope: !4118)
!4152 = !DILocation(line: 803, column: 21, scope: !4118)
!4153 = !DILocation(line: 803, column: 9, scope: !4118)
!4154 = !DILocation(line: 804, column: 26, scope: !4118)
!4155 = !DILocation(line: 804, column: 9, scope: !4118)
!4156 = !DILocation(line: 806, column: 44, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4118, file: !186, line: 806, column: 7)
!4158 = !DILocation(line: 806, column: 25, scope: !4157)
!4159 = !DILocation(line: 0, scope: !4118)
!4160 = !DILocation(line: 807, column: 46, scope: !4157)
!4161 = !DILocation(line: 807, column: 20, scope: !4157)
!4162 = !DILocation(line: 806, column: 50, scope: !4157)
!4163 = !DILocation(line: 816, column: 36, scope: !4118)
!4164 = !DILocation(line: 816, column: 9, scope: !4118)
!4165 = !DILocation(line: 822, column: 19, scope: !4118)
!4166 = !DILocation(line: 822, column: 24, scope: !4118)
!4167 = !DILocation(line: 791, column: 12, scope: !4118)
!4168 = !DILocation(line: 823, column: 37, scope: !4118)
!4169 = !DILocation(line: 792, column: 16, scope: !4118)
!4170 = !DILocation(line: 793, column: 16, scope: !4118)
!4171 = !DILocation(line: 826, column: 32, scope: !4118)
!4172 = !DILocation(line: 826, column: 57, scope: !4118)
!4173 = !DILocation(line: 794, column: 16, scope: !4118)
!4174 = !DILocation(line: 791, column: 18, scope: !4118)
!4175 = !DILocation(line: 832, column: 3, scope: !4118)
!4176 = !DILocation(line: 832, column: 15, scope: !4118)
!4177 = !DILocation(line: 833, column: 3, scope: !4118)
!4178 = !DILocation(line: 836, column: 15, scope: !4118)
!4179 = !DILocation(line: 113, column: 31, scope: !1528, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 836, column: 3, scope: !4118)
!4181 = !DILocation(line: 113, column: 43, scope: !1528, inlinedAt: !4180)
!4182 = !DILocation(line: 115, column: 8, scope: !1528, inlinedAt: !4180)
!4183 = !DILocation(line: 115, column: 12, scope: !1528, inlinedAt: !4180)
!4184 = !DILocation(line: 116, column: 6, scope: !1528, inlinedAt: !4180)
!4185 = !DILocation(line: 116, column: 26, scope: !1528, inlinedAt: !4180)
!4186 = !DILocation(line: 838, column: 17, scope: !4118)
!4187 = !DILocation(line: 838, column: 22, scope: !4118)
!4188 = !DILocation(line: 795, column: 17, scope: !4118)
!4189 = !DILocation(line: 840, column: 22, scope: !4118)
!4190 = !DILocation(line: 840, column: 35, scope: !4118)
!4191 = !DILocation(line: 840, column: 3, scope: !4118)
!4192 = !DILocation(line: 841, column: 57, scope: !4118)
!4193 = !DILocation(line: 841, column: 14, scope: !4118)
!4194 = !DILocation(line: 841, column: 3, scope: !4118)
!4195 = !DILocation(line: 841, column: 8, scope: !4118)
!4196 = !DILocation(line: 841, column: 12, scope: !4118)
!4197 = !DILocation(line: 848, column: 35, scope: !4118)
!4198 = !DILocation(line: 848, column: 40, scope: !4118)
!4199 = !DILocation(line: 848, column: 78, scope: !4118)
!4200 = !DILocation(line: 848, column: 26, scope: !4118)
!4201 = !DILocation(line: 848, column: 10, scope: !4118)
!4202 = !DILocation(line: 849, column: 37, scope: !4118)
!4203 = !DILocation(line: 849, column: 20, scope: !4118)
!4204 = !DILocation(line: 849, column: 18, scope: !4118)
!4205 = !DILocation(line: 852, column: 30, scope: !4118)
!4206 = !DILocation(line: 852, column: 35, scope: !4118)
!4207 = !DILocation(line: 852, column: 39, scope: !4118)
!4208 = !DILocation(line: 852, column: 68, scope: !4118)
!4209 = !DILocation(line: 852, column: 21, scope: !4118)
!4210 = !DILocation(line: 852, column: 10, scope: !4118)
!4211 = !DILocation(line: 853, column: 29, scope: !4118)
!4212 = !DILocation(line: 853, column: 10, scope: !4118)
!4213 = !DILocation(line: 862, column: 13, scope: !4118)
!4214 = !DILocation(line: 869, column: 16, scope: !4118)
!4215 = !DILocation(line: 869, column: 21, scope: !4118)
!4216 = !DILocation(line: 869, column: 24, scope: !4118)
!4217 = !DILocation(line: 869, column: 4, scope: !4118)
!4218 = !DILocation(line: 869, column: 41, scope: !4118)
!4219 = !DILocation(line: 872, column: 16, scope: !4118)
!4220 = !DILocation(line: 663, column: 30, scope: !1656, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 872, column: 3, scope: !4118)
!4222 = !DILocation(line: 663, column: 41, scope: !1656, inlinedAt: !4221)
!4223 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 666, column: 30, scope: !1656, inlinedAt: !4221)
!4227 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4224)
!4228 = !DILocation(line: 666, column: 16, scope: !1656, inlinedAt: !4221)
!4229 = !DILocation(line: 0, scope: !1656, inlinedAt: !4221)
!4230 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 105, column: 12, scope: !1518, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 674, column: 41, scope: !1656, inlinedAt: !4221)
!4234 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4231)
!4235 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4232)
!4236 = !DILocation(line: 105, column: 32, scope: !1518, inlinedAt: !4233)
!4237 = !DILocation(line: 674, column: 21, scope: !1656, inlinedAt: !4221)
!4238 = !DILocation(line: 678, column: 6, scope: !1656, inlinedAt: !4221)
!4239 = !DILocation(line: 678, column: 15, scope: !1656, inlinedAt: !4221)
!4240 = !DILocation(line: 679, column: 22, scope: !1656, inlinedAt: !4221)
!4241 = !DILocation(line: 116, column: 52, scope: !1725, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 679, column: 3, scope: !1656, inlinedAt: !4221)
!4243 = !DILocation(line: 116, column: 76, scope: !1725, inlinedAt: !4242)
!4244 = !DILocation(line: 118, column: 25, scope: !1725, inlinedAt: !4242)
!4245 = !DILocation(line: 85, column: 49, scope: !1733, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 118, column: 2, scope: !1725, inlinedAt: !4242)
!4247 = !DILocation(line: 86, column: 28, scope: !1733, inlinedAt: !4246)
!4248 = !DILocation(line: 87, column: 28, scope: !1733, inlinedAt: !4246)
!4249 = !DILocation(line: 89, column: 13, scope: !1733, inlinedAt: !4246)
!4250 = !DILocation(line: 90, column: 8, scope: !1733, inlinedAt: !4246)
!4251 = !DILocation(line: 90, column: 13, scope: !1733, inlinedAt: !4246)
!4252 = !DILocation(line: 91, column: 8, scope: !1733, inlinedAt: !4246)
!4253 = !DILocation(line: 91, column: 13, scope: !1733, inlinedAt: !4246)
!4254 = !DILocation(line: 92, column: 8, scope: !1733, inlinedAt: !4246)
!4255 = !DILocation(line: 92, column: 13, scope: !1733, inlinedAt: !4246)
!4256 = !DILocation(line: 683, column: 20, scope: !1751, inlinedAt: !4221)
!4257 = !DILocation(line: 683, column: 7, scope: !1751, inlinedAt: !4221)
!4258 = !DILocation(line: 683, column: 7, scope: !1656, inlinedAt: !4221)
!4259 = !DILocation(line: 687, column: 5, scope: !1755, inlinedAt: !4221)
!4260 = !DILocation(line: 688, column: 3, scope: !1755, inlinedAt: !4221)
!4261 = !DILocation(line: 874, column: 10, scope: !4118)
!4262 = !DILocation(line: 875, column: 1, scope: !4118)
!4263 = !DILocation(line: 874, column: 3, scope: !4118)
!4264 = distinct !DISubprogram(name: "nk_fiber_join", scope: !186, file: !186, line: 878, type: !2018, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !4265)
!4265 = !{!4266, !4267, !4268}
!4266 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4264, file: !186, line: 878, type: !300)
!4267 = !DILocalVariable(name: "curr_fiber", scope: !4264, file: !186, line: 888, type: !300)
!4268 = !DILocalVariable(name: "wait_q", scope: !4264, file: !186, line: 897, type: !209)
!4269 = !DILocation(line: 878, column: 31, scope: !4264)
!4270 = !DILocation(line: 884, column: 8, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4264, file: !186, line: 884, column: 7)
!4272 = !DILocation(line: 884, column: 7, scope: !4264)
!4273 = !DILocation(line: 129, column: 25, scope: !1482, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 78, column: 10, scope: !1475, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 85, column: 10, scope: !1490, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 888, column: 28, scope: !4264)
!4277 = !DILocation(line: 129, column: 12, scope: !1482, inlinedAt: !4274)
!4278 = !DILocation(line: 78, column: 21, scope: !1475, inlinedAt: !4275)
!4279 = !DILocation(line: 85, column: 30, scope: !1490, inlinedAt: !4276)
!4280 = !DILocation(line: 888, column: 15, scope: !4264)
!4281 = !DILocation(line: 897, column: 41, scope: !4264)
!4282 = !DILocation(line: 897, column: 21, scope: !4264)
!4283 = !DILocation(line: 898, column: 31, scope: !4264)
!4284 = !DILocation(line: 116, column: 52, scope: !1725, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 898, column: 3, scope: !4264)
!4286 = !DILocation(line: 116, column: 76, scope: !1725, inlinedAt: !4285)
!4287 = !DILocation(line: 118, column: 25, scope: !1725, inlinedAt: !4285)
!4288 = !DILocation(line: 85, column: 49, scope: !1733, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 118, column: 2, scope: !1725, inlinedAt: !4285)
!4290 = !DILocation(line: 86, column: 28, scope: !1733, inlinedAt: !4289)
!4291 = !DILocation(line: 87, column: 28, scope: !1733, inlinedAt: !4289)
!4292 = !DILocation(line: 89, column: 13, scope: !1733, inlinedAt: !4289)
!4293 = !DILocation(line: 90, column: 8, scope: !1733, inlinedAt: !4289)
!4294 = !DILocation(line: 90, column: 13, scope: !1733, inlinedAt: !4289)
!4295 = !DILocation(line: 91, column: 8, scope: !1733, inlinedAt: !4289)
!4296 = !DILocation(line: 91, column: 13, scope: !1733, inlinedAt: !4289)
!4297 = !DILocation(line: 92, column: 8, scope: !1733, inlinedAt: !4289)
!4298 = !DILocation(line: 92, column: 13, scope: !1733, inlinedAt: !4289)
!4299 = !DILocation(line: 899, column: 12, scope: !4264)
!4300 = !DILocation(line: 899, column: 20, scope: !4264)
!4301 = !DILocation(line: 900, column: 15, scope: !4264)
!4302 = !DILocation(line: 900, column: 24, scope: !4264)
!4303 = !DILocation(line: 904, column: 10, scope: !4264)
!4304 = !DILocation(line: 0, scope: !4264)
!4305 = !DILocation(line: 905, column: 1, scope: !4264)
