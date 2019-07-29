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

@vc = dso_local local_unnamed_addr global %struct.nk_virtual_console* null, align 8, !dbg !0
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl10 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl3 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl4 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl5 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl6 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl7 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl8 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl9 to i8*)], section "llvm.metadata"
@_nk_cmd_fibers_impl = internal global %struct.shell_cmd_impl* @fibers_impl, section ".shell_cmds", align 8, !dbg !130
@_nk_cmd_fibers_impl10 = internal global %struct.shell_cmd_impl* @fibers_impl10, section ".shell_cmds", align 8, !dbg !159
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !143
@_nk_cmd_fibers_impl3 = internal global %struct.shell_cmd_impl* @fibers_impl3, section ".shell_cmds", align 8, !dbg !145
@_nk_cmd_fibers_impl4 = internal global %struct.shell_cmd_impl* @fibers_impl4, section ".shell_cmds", align 8, !dbg !147
@_nk_cmd_fibers_impl5 = internal global %struct.shell_cmd_impl* @fibers_impl5, section ".shell_cmds", align 8, !dbg !149
@_nk_cmd_fibers_impl6 = internal global %struct.shell_cmd_impl* @fibers_impl6, section ".shell_cmds", align 8, !dbg !151
@_nk_cmd_fibers_impl7 = internal global %struct.shell_cmd_impl* @fibers_impl7, section ".shell_cmds", align 8, !dbg !153
@_nk_cmd_fibers_impl8 = internal global %struct.shell_cmd_impl* @fibers_impl8, section ".shell_cmds", align 8, !dbg !155
@_nk_cmd_fibers_impl9 = internal global %struct.shell_cmd_impl* @fibers_impl9, section ".shell_cmds", align 8, !dbg !157
@fibers_impl9 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers9 }, align 8, !dbg !177
@.str.49 = private unnamed_addr constant [11 x i8] c"fibertest9\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"test_fiber_routine_2() : virtual console %p\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"fiber_routine3() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"fiber_routine3() : fiber is finished, a = %d\0A\00", align 1
@fibers_impl8 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers8 }, align 8, !dbg !175
@.str.48 = private unnamed_addr constant [11 x i8] c"fibertest8\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"test_fiber_routine() : virtual console %p\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"fiber_routine1() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"fiber_routine1() : fiber is finished, a = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"fiber_routine2() : Fiber created\0A\00", align 1
@fibers_impl7 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers7 }, align 8, !dbg !173
@.str.47 = private unnamed_addr constant [11 x i8] c"fibertest7\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"test_fiber_fork_join() : virtual console %p\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"fiber_fork_join() : This is the %d iteration of fiber %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"fiber %p is finished, a = %d\0A\00", align 1
@fibers_impl6 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers6 }, align 8, !dbg !171
@.str.46 = private unnamed_addr constant [11 x i8] c"fibertest6\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"test_fiber_fork() : virtual console %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"fiber_fork() : This is the %dth iteration of fiber %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"fiber 4 is finished, a = %d\0A\00", align 1
@fibers_impl5 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers5 }, align 8, !dbg !169
@.str.45 = private unnamed_addr constant [11 x i8] c"fibertest5\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"test_fiber_join() : virtual console %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Fiber outer a = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Fiber outer is finished, a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Fiber inner a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Fiber inner is finished, a = %d\0A\00", align 1
@fibers_impl4 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers4 }, align 8, !dbg !167
@.str.44 = private unnamed_addr constant [11 x i8] c"fibertest4\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"test_yield_to() : virtual console %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"Fiber_second() : a = %d and yielding to fiber_third = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Fiber 2 is finished, a = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"fiber_third() : a = %d and yielding to fiber_fourth = %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"fiber 3 is finished, a = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Fiber_first() : a = %d and yielding to fiber_second = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Fiber 1 is finished, a = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"fiber_fourth() : a = %d and yielding to fiber_first = %p\0A\00", align 1
@fibers_impl3 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers3 }, align 8, !dbg !165
@.str.43 = private unnamed_addr constant [11 x i8] c"fibertest3\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fiber odd, counter = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Fiber odd is finished\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Fiber even, counter = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Fiber even is finished\0A\00", align 1
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !163
@.str.42 = private unnamed_addr constant [11 x i8] c"fibertest2\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"test_nested_fibers() : virtual console %p\0A\00", align 1
@fibers_impl10 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers10 }, align 8, !dbg !179
@.str.50 = private unnamed_addr constant [11 x i8] c"fibertime1\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Second Timer is finished, a = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [78 x i8] c"First Timer is finished, a = %d, cycle count = %d, cycles per iteration = %d\0A\00", align 1
@fibers_impl = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers }, align 8, !dbg !161
@.str.41 = private unnamed_addr constant [10 x i8] c"fibertest\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"test_fibers() : virtual console %p\0A\00", align 1
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
@.str.51 = private unnamed_addr constant [83 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.7.52 = private unnamed_addr constant [21 x i8] c"src/nautilus/fiber.c\00", align 1
@.str.8.53 = private unnamed_addr constant [73 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.27.54 = private unnamed_addr constant [81 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@.str.28.55 = private unnamed_addr constant [71 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@nautilus_info = external dso_local local_unnamed_addr global %struct.naut_info, align 8
@.str.9.56 = private unnamed_addr constant [59 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.10.57 = private unnamed_addr constant [49 x i8] c"CPU ? (%s%s): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.11.58 = private unnamed_addr constant [8 x i8] c"(fiber)\00", align 1
@.str.12.59 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.13.60 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.14.61 = private unnamed_addr constant [93 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.15.62 = private unnamed_addr constant [83 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.16.63 = private unnamed_addr constant [61 x i8] c"PANIC at %s(%d): Unable to set constraints for fiber thread\0A\00", align 1
@.str.17.64 = private unnamed_addr constant [84 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.18.65 = private unnamed_addr constant [74 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.19.68 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.20.69 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.21.70 = private unnamed_addr constant [65 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.22.71 = private unnamed_addr constant [55 x i8] c"CPU ? (%s%s): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.29.72 = private unnamed_addr constant [79 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.30.73 = private unnamed_addr constant [69 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.23.74 = private unnamed_addr constant [85 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.24.75 = private unnamed_addr constant [75 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.25.76 = private unnamed_addr constant [53 x i8] c"PANIC at %s(%d): Cannot start fiber thread for CPU!\0A\00", align 1
@.str.26.81 = private unnamed_addr constant [34 x i8] c"wrapper_nk_fiber_yield : running\0A\00", align 1

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers9(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !553 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !555, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i8* %1, metadata !556, metadata !DIExpression()), !dbg !558
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !559
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !566, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !566
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !577
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !578
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !578
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !579
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !580
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !581
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_routine3, metadata !582, metadata !DIExpression()) #10, !dbg !593
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !595
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !596
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !597
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !599
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_routine3, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !600
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !601
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !602
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !603
  ret i32 0, !dbg !604
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !605 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !607, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i8** undef, metadata !608, metadata !DIExpression()), !dbg !614
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !615
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !616
  call void @llvm.dbg.value(metadata i32 0, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 0, metadata !609, metadata !DIExpression()), !dbg !617
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !611, metadata !DIExpression()), !dbg !620
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11, !dbg !621
  call void @llvm.dbg.value(metadata i32 1, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 1, metadata !609, metadata !DIExpression()), !dbg !617
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !611, metadata !DIExpression()), !dbg !620
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11, !dbg !621
  call void @llvm.dbg.value(metadata i32 2, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 2, metadata !609, metadata !DIExpression()), !dbg !617
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !611, metadata !DIExpression()), !dbg !620
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11, !dbg !621
  call void @llvm.dbg.value(metadata i32 3, metadata !609, metadata !DIExpression()), !dbg !617
  %10 = call i32 @wrapper_nk_fiber_yield(), !dbg !617
  call void @llvm.dbg.value(metadata i32 3, metadata !609, metadata !DIExpression()), !dbg !617
  %11 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !611, metadata !DIExpression()), !dbg !620
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11, !dbg !621
  call void @llvm.dbg.value(metadata i32 4, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 4, metadata !609, metadata !DIExpression()), !dbg !617
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !610, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !611, metadata !DIExpression()), !dbg !620
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11, !dbg !621
  call void @llvm.dbg.value(metadata i32 5, metadata !609, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 5, metadata !609, metadata !DIExpression()), !dbg !617
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !622
  ret void, !dbg !623
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !624 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !626, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i8* %1, metadata !627, metadata !DIExpression()), !dbg !629
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !630
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !630
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !635, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !637
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !638
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !638
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !639
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !640
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !633, metadata !DIExpression(DW_OP_deref)) #10, !dbg !641
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_routine1, metadata !582, metadata !DIExpression()) #10, !dbg !642
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !644
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !645
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !646
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !647
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !648
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_routine1, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !649
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !650
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !651
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !652
  ret i32 0, !dbg !653
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !654 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !656, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i8** undef, metadata !657, metadata !DIExpression()), !dbg !666
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !667
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !668
  call void @llvm.dbg.value(metadata i32 0, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 0, metadata !658, metadata !DIExpression()), !dbg !669
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !659, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !660, metadata !DIExpression()), !dbg !672
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !673
  br i1 %6, label %13, label %7, !dbg !674

; <label>:7:                                      ; preds = %29, %25, %21, %13, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 2, %21 ], [ 3, %25 ], [ 4, %29 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %8, metadata !658, metadata !DIExpression()), !dbg !669
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !675
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !675
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !676
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_routine2, metadata !582, metadata !DIExpression()) #10, !dbg !677
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !679
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !680
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !681
  call void @llvm.dbg.value(metadata i8 0, metadata !591, metadata !DIExpression()) #10, !dbg !682
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !683
  %10 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_routine2, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !684
  %11 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !685
  %12 = call i32 @nk_fiber_run(%struct.nk_fiber* %11, i8 zeroext 0) #11, !dbg !686
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !687
  br label %18

; <label>:13:                                     ; preds = %2
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11, !dbg !688
  call void @llvm.dbg.value(metadata i32 1, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 1, metadata !658, metadata !DIExpression()), !dbg !669
  %15 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %15, metadata !659, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !660, metadata !DIExpression()), !dbg !672
  %16 = icmp eq %struct.nk_fiber* %15, null, !dbg !673
  %17 = call i32 @wrapper_nk_fiber_yield(), !dbg !674
  br i1 %16, label %21, label %7, !dbg !674

; <label>:18:                                     ; preds = %33, %7
  %19 = phi i32 [ %8, %7 ], [ 5, %33 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !658, metadata !DIExpression()), !dbg !669
  %20 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %19) #11, !dbg !689
  ret void, !dbg !690

; <label>:21:                                     ; preds = %13
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11, !dbg !688
  call void @llvm.dbg.value(metadata i32 2, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 2, metadata !658, metadata !DIExpression()), !dbg !669
  %23 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !659, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !660, metadata !DIExpression()), !dbg !672
  %24 = icmp eq %struct.nk_fiber* %23, null, !dbg !673
  br i1 %24, label %25, label %7, !dbg !674

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11, !dbg !688
  call void @llvm.dbg.value(metadata i32 3, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 3, metadata !658, metadata !DIExpression()), !dbg !669
  %27 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %27, metadata !659, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !660, metadata !DIExpression()), !dbg !672
  %28 = icmp eq %struct.nk_fiber* %27, null, !dbg !673
  br i1 %28, label %29, label %7, !dbg !674

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11, !dbg !688
  call void @llvm.dbg.value(metadata i32 4, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 4, metadata !658, metadata !DIExpression()), !dbg !669
  %31 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %31, metadata !659, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !660, metadata !DIExpression()), !dbg !672
  %32 = icmp eq %struct.nk_fiber* %31, null, !dbg !673
  br i1 %32, label %33, label %7, !dbg !674

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11, !dbg !688
  call void @llvm.dbg.value(metadata i32 5, metadata !658, metadata !DIExpression()), !dbg !669
  br label %18, !dbg !689
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !691 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !693, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8** undef, metadata !694, metadata !DIExpression()), !dbg !696
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !697
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !698
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !701 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !703, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %1, metadata !704, metadata !DIExpression()), !dbg !706
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !707
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !712, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !712
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !714
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !715
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !715
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !716
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !717
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !710, metadata !DIExpression(DW_OP_deref)) #10, !dbg !718
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_fork_join, metadata !582, metadata !DIExpression()) #10, !dbg !719
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !721
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !722
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !723
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !724
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !725
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_fork_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !726
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !727
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !729
  ret i32 0, !dbg !730
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !731 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !733, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8** undef, metadata !734, metadata !DIExpression()), !dbg !739
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !740
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !742
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !743
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !736, metadata !DIExpression()), !dbg !744
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !745
  br i1 %5, label %8, label %6, !dbg !747

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #11, !dbg !748
  br label %8, !dbg !750

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !737, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !742
  %9 = call i32 @wrapper_nk_fiber_yield(), !dbg !742
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !742
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #11, !dbg !752
  call void @llvm.dbg.value(metadata i32 1, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 1, metadata !735, metadata !DIExpression()), !dbg !742
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #11, !dbg !752
  call void @llvm.dbg.value(metadata i32 2, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 2, metadata !735, metadata !DIExpression()), !dbg !742
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #11, !dbg !752
  call void @llvm.dbg.value(metadata i32 3, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 3, metadata !735, metadata !DIExpression()), !dbg !742
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #11, !dbg !752
  call void @llvm.dbg.value(metadata i32 4, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 4, metadata !735, metadata !DIExpression()), !dbg !742
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #11, !dbg !752
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !742
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #11, !dbg !754
  ret void, !dbg !755
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !756 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i8* %1, metadata !759, metadata !DIExpression()), !dbg !761
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !762
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !767, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !767
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !769
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !770
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !770
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !771
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !772
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !765, metadata !DIExpression(DW_OP_deref)) #10, !dbg !773
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_fork, metadata !582, metadata !DIExpression()) #10, !dbg !774
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !776
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !777
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !778
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !779
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !780
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_fork, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !781
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !782
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !783
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !784
  ret i32 0, !dbg !785
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !786 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !788, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i8** undef, metadata !789, metadata !DIExpression()), !dbg !793
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !794
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()), !dbg !796
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #11, !dbg !797
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !791, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()), !dbg !796
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #11, !dbg !799
  call void @llvm.dbg.value(metadata i32 1, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 1, metadata !790, metadata !DIExpression()), !dbg !796
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #11, !dbg !799
  call void @llvm.dbg.value(metadata i32 2, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 2, metadata !790, metadata !DIExpression()), !dbg !796
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #11, !dbg !799
  call void @llvm.dbg.value(metadata i32 3, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 3, metadata !790, metadata !DIExpression()), !dbg !796
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #11, !dbg !799
  call void @llvm.dbg.value(metadata i32 4, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 4, metadata !790, metadata !DIExpression()), !dbg !796
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #11, !dbg !799
  call void @llvm.dbg.value(metadata i32 5, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i32 5, metadata !790, metadata !DIExpression()), !dbg !796
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !801
  ret void, !dbg !802
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !803 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* %1, metadata !806, metadata !DIExpression()), !dbg !808
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !809
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !814, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !814
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !816
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !817
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !817
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !818
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !819
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !812, metadata !DIExpression(DW_OP_deref)) #10, !dbg !820
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_outer_join, metadata !582, metadata !DIExpression()) #10, !dbg !821
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !823
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !824
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !825
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !826
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !827
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_outer_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !828
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !829
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !831
  ret i32 0, !dbg !832
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !833 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i8** undef, metadata !836, metadata !DIExpression()), !dbg !841
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !842
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !843
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()), !dbg !844
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()), !dbg !844
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #11, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !846
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !838, metadata !DIExpression(DW_OP_deref)), !dbg !847
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner_join, metadata !582, metadata !DIExpression()) #10, !dbg !848
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !850
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !851
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !852
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !853
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !854
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !855
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !856
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !857
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !838, metadata !DIExpression()), !dbg !847
  %11 = call i32 @nk_fiber_join(%struct.nk_fiber* %10) #11, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !860
  call void @llvm.dbg.value(metadata i32 1, metadata !837, metadata !DIExpression()), !dbg !844
  %12 = call i32 @wrapper_nk_fiber_yield(), !dbg !844
  call void @llvm.dbg.value(metadata i32 1, metadata !837, metadata !DIExpression()), !dbg !844
  %13 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #11, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !846
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !838, metadata !DIExpression(DW_OP_deref)), !dbg !847
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner_join, metadata !582, metadata !DIExpression()) #10, !dbg !861
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !863
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !864
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !865
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !866
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !867
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !868
  %15 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !869
  %16 = call i32 @nk_fiber_run(%struct.nk_fiber* %15, i8 zeroext 1) #11, !dbg !870
  %17 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %17, metadata !838, metadata !DIExpression()), !dbg !847
  %18 = call i32 @nk_fiber_join(%struct.nk_fiber* %17) #11, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !860
  call void @llvm.dbg.value(metadata i32 2, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 2, metadata !837, metadata !DIExpression()), !dbg !844
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #11, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !846
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !838, metadata !DIExpression(DW_OP_deref)), !dbg !847
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner_join, metadata !582, metadata !DIExpression()) #10, !dbg !871
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !873
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !875
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !876
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !877
  %20 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !878
  %21 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !879
  %22 = call i32 @nk_fiber_run(%struct.nk_fiber* %21, i8 zeroext 1) #11, !dbg !880
  %23 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !838, metadata !DIExpression()), !dbg !847
  %24 = call i32 @nk_fiber_join(%struct.nk_fiber* %23) #11, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !860
  call void @llvm.dbg.value(metadata i32 3, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i32 3, metadata !837, metadata !DIExpression()), !dbg !844
  %25 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #11, !dbg !881
  ret void, !dbg !882
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !883 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !885, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8** undef, metadata !886, metadata !DIExpression()), !dbg !889
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !890
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !891
  call void @llvm.dbg.value(metadata i32 0, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 0, metadata !887, metadata !DIExpression()), !dbg !892
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 1, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 1, metadata !887, metadata !DIExpression()), !dbg !892
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 2, metadata !887, metadata !DIExpression()), !dbg !892
  %6 = call i32 @wrapper_nk_fiber_yield(), !dbg !892
  call void @llvm.dbg.value(metadata i32 2, metadata !887, metadata !DIExpression()), !dbg !892
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 3, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 3, metadata !887, metadata !DIExpression()), !dbg !892
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 4, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 4, metadata !887, metadata !DIExpression()), !dbg !892
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 5, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 5, metadata !887, metadata !DIExpression()), !dbg !892
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 6, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 6, metadata !887, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 7, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 7, metadata !887, metadata !DIExpression()), !dbg !892
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 8, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 8, metadata !887, metadata !DIExpression()), !dbg !892
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 9, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 9, metadata !887, metadata !DIExpression()), !dbg !892
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #11, !dbg !893
  call void @llvm.dbg.value(metadata i32 10, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 10, metadata !887, metadata !DIExpression()), !dbg !892
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #11, !dbg !895
  ret void, !dbg !896
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !899, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i8* %1, metadata !900, metadata !DIExpression()), !dbg !902
  %3 = tail call i32 @test_yield_to() #12, !dbg !903
  ret i32 0, !dbg !904
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !905 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !911
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !912
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !913
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !913
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10, !dbg !914
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !915, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #10, !dbg !915
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #10, !dbg !917
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !918
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !918
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !919
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #11, !dbg !920
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !921
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #11, !dbg !922
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !907, metadata !DIExpression(DW_OP_deref)), !dbg !923
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #11, !dbg !924
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !909, metadata !DIExpression(DW_OP_deref)), !dbg !925
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #11, !dbg !926
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !908, metadata !DIExpression(DW_OP_deref)), !dbg !927
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #11, !dbg !928
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !929
  %18 = load i64, i64* %17, align 8, !dbg !929
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !908, metadata !DIExpression(DW_OP_deref)), !dbg !927
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !930
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !907, metadata !DIExpression()), !dbg !923
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !931
  %21 = bitcast i8** %20 to i64*, !dbg !932
  store i64 %18, i64* %21, align 8, !dbg !932
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !933
  %23 = load i64, i64* %22, align 8, !dbg !933
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !909, metadata !DIExpression(DW_OP_deref)), !dbg !925
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !934
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !908, metadata !DIExpression()), !dbg !927
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !935
  %26 = bitcast i8** %25 to i64*, !dbg !936
  store i64 %23, i64* %26, align 8, !dbg !936
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !937
  %28 = load i64, i64* %27, align 8, !dbg !937
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !910, metadata !DIExpression(DW_OP_deref)), !dbg !921
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !938
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !909, metadata !DIExpression()), !dbg !925
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !939
  %31 = bitcast i8** %30 to i64*, !dbg !940
  store i64 %28, i64* %31, align 8, !dbg !940
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !941
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !907, metadata !DIExpression(DW_OP_deref)), !dbg !923
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !942
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !910, metadata !DIExpression()), !dbg !921
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !943
  %35 = bitcast i8** %34 to i64*, !dbg !944
  store i64 %32, i64* %35, align 8, !dbg !944
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !910, metadata !DIExpression()), !dbg !921
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #11, !dbg !945
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !946
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !907, metadata !DIExpression()), !dbg !923
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #11, !dbg !947
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !948
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !909, metadata !DIExpression()), !dbg !925
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #11, !dbg !949
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !950
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !908, metadata !DIExpression()), !dbg !927
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #11, !dbg !951
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10, !dbg !952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !952
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !952
  ret i32 0, !dbg !953
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !956, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8** undef, metadata !957, metadata !DIExpression()), !dbg !961
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !962
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !963
  call void @llvm.dbg.value(metadata i32 0, metadata !958, metadata !DIExpression()), !dbg !964
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !965
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 0, metadata !958, metadata !DIExpression()), !dbg !964
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #11, !dbg !967
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 1, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 1, metadata !958, metadata !DIExpression()), !dbg !964
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #11, !dbg !967
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 2, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 2, metadata !958, metadata !DIExpression()), !dbg !964
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #11, !dbg !967
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 3, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 3, metadata !958, metadata !DIExpression()), !dbg !964
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #11, !dbg !967
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !969
  %13 = call i32 @wrapper_nk_fiber_yield(), !dbg !964
  call void @llvm.dbg.value(metadata i32 4, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 4, metadata !958, metadata !DIExpression()), !dbg !964
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #11, !dbg !967
  %15 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !969
  call void @llvm.dbg.value(metadata i32 5, metadata !958, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 5, metadata !958, metadata !DIExpression()), !dbg !964
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !970
  ret void, !dbg !971
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !972 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !974, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i8** undef, metadata !975, metadata !DIExpression()), !dbg !979
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !980
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !981
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()), !dbg !982
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !983
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !977, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()), !dbg !982
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #11, !dbg !985
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()), !dbg !982
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #11, !dbg !985
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 2, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 2, metadata !976, metadata !DIExpression()), !dbg !982
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #11, !dbg !985
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 3, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 3, metadata !976, metadata !DIExpression()), !dbg !982
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #11, !dbg !985
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 4, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 4, metadata !976, metadata !DIExpression()), !dbg !982
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #11, !dbg !985
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 5, metadata !976, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 5, metadata !976, metadata !DIExpression()), !dbg !982
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !988
  ret void, !dbg !989
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !992, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8** undef, metadata !993, metadata !DIExpression()), !dbg !997
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !998
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !999
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !1000
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !1001
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !995, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !1000
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #11, !dbg !1003
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1005
  %7 = call i32 @wrapper_nk_fiber_yield(), !dbg !1000
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 1, metadata !994, metadata !DIExpression()), !dbg !1000
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #11, !dbg !1003
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1005
  call void @llvm.dbg.value(metadata i32 2, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 2, metadata !994, metadata !DIExpression()), !dbg !1000
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #11, !dbg !1003
  %11 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1005
  call void @llvm.dbg.value(metadata i32 3, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 3, metadata !994, metadata !DIExpression()), !dbg !1000
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #11, !dbg !1003
  %13 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1005
  call void @llvm.dbg.value(metadata i32 4, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 4, metadata !994, metadata !DIExpression()), !dbg !1000
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #11, !dbg !1003
  %15 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1005
  call void @llvm.dbg.value(metadata i32 5, metadata !994, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 5, metadata !994, metadata !DIExpression()), !dbg !1000
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1006
  ret void, !dbg !1007
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !1008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1010, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8** undef, metadata !1011, metadata !DIExpression()), !dbg !1015
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1016
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1017
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1018
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !1019
  %5 = call i32 @wrapper_nk_fiber_yield(), !dbg !1020
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !1013, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1018
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #11, !dbg !1021
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 1, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 1, metadata !1012, metadata !DIExpression()), !dbg !1018
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #11, !dbg !1021
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 2, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 2, metadata !1012, metadata !DIExpression()), !dbg !1018
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #11, !dbg !1021
  %11 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 3, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 3, metadata !1012, metadata !DIExpression()), !dbg !1018
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #11, !dbg !1021
  %13 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 4, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 4, metadata !1012, metadata !DIExpression()), !dbg !1018
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #11, !dbg !1021
  %15 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #11, !dbg !1023
  call void @llvm.dbg.value(metadata i32 5, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 5, metadata !1012, metadata !DIExpression()), !dbg !1018
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1026 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()), !dbg !1031
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1032
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1038
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1038
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1039, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #10, !dbg !1039
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #10, !dbg !1041
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1042
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1042
  %10 = load i64, i64* %9, align 8, !dbg !1042
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1043
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1044
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @print_even, metadata !582, metadata !DIExpression()) #10, !dbg !1045
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1047
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1048
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1049
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1051
  %11 = call i32 @nk_fiber_create(void (i8*, i8**)* @print_even, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1052
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1053
  %13 = call i32 @nk_fiber_run(%struct.nk_fiber* %12, i8 zeroext 1) #11, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1036, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1055
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @print_odd, metadata !582, metadata !DIExpression()) #10, !dbg !1056
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1059
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1060
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !592, metadata !DIExpression()) #10, !dbg !1062
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* @print_odd, i8* null, i8** null, i64 0, %struct.nk_fiber** %4) #11, !dbg !1063
  %15 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8, !dbg !1064
  %16 = call i32 @nk_fiber_run(%struct.nk_fiber* %15, i8 zeroext 1) #11, !dbg !1065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1066
  ret i32 0, !dbg !1067
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1068 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1070, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i8** undef, metadata !1071, metadata !DIExpression()), !dbg !1075
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1076
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1077
  call void @llvm.dbg.value(metadata i32 0, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 0, metadata !1072, metadata !DIExpression()), !dbg !1078
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i32 1, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 1, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 2, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 2, metadata !1072, metadata !DIExpression()), !dbg !1078
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i32 3, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 3, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 4, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 4, metadata !1072, metadata !DIExpression()), !dbg !1078
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i32 5, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 5, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 6, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 6, metadata !1072, metadata !DIExpression()), !dbg !1078
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i32 7, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 7, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 8, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 8, metadata !1072, metadata !DIExpression()), !dbg !1078
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i32 9, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 9, metadata !1072, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 10, metadata !1072, metadata !DIExpression()), !dbg !1078
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !1084
  ret void, !dbg !1085
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1086 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1088, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8** undef, metadata !1089, metadata !DIExpression()), !dbg !1093
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1094
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1095
  call void @llvm.dbg.value(metadata i32 0, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 0, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 1, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 1, metadata !1090, metadata !DIExpression()), !dbg !1096
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 2, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 3, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 3, metadata !1090, metadata !DIExpression()), !dbg !1096
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i32 4, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 4, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 5, metadata !1090, metadata !DIExpression()), !dbg !1096
  %6 = call i32 @wrapper_nk_fiber_yield(), !dbg !1096
  call void @llvm.dbg.value(metadata i32 5, metadata !1090, metadata !DIExpression()), !dbg !1096
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i32 6, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 6, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 7, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 7, metadata !1090, metadata !DIExpression()), !dbg !1096
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i32 8, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 8, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 9, metadata !1090, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 9, metadata !1090, metadata !DIExpression()), !dbg !1096
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i32 10, metadata !1090, metadata !DIExpression()), !dbg !1096
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1104 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %1, metadata !1107, metadata !DIExpression()), !dbg !1109
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1110
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1115, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !1115
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !1117
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1118
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1118
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1119
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #11, !dbg !1120
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1113, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1121
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_outer, metadata !582, metadata !DIExpression()) #10, !dbg !1122
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1124
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1125
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1128
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_outer, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1129
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1130
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1132
  ret i32 0, !dbg !1133
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1134 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1136, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8** undef, metadata !1137, metadata !DIExpression()), !dbg !1142
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1143
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !1144
  call void @llvm.dbg.value(metadata i32 0, metadata !1138, metadata !DIExpression()), !dbg !1145
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1138, metadata !DIExpression()), !dbg !1145
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #11, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1139, metadata !DIExpression(DW_OP_deref)), !dbg !1148
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner, metadata !582, metadata !DIExpression()) #10, !dbg !1149
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1151
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1153
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1154
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1155
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1156
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1157
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1159
  call void @llvm.dbg.value(metadata i32 1, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 1, metadata !1138, metadata !DIExpression()), !dbg !1145
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #11, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1139, metadata !DIExpression(DW_OP_deref)), !dbg !1148
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner, metadata !582, metadata !DIExpression()) #10, !dbg !1160
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1162
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1163
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1164
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1165
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1166
  %11 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1167
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1168
  %13 = call i32 @nk_fiber_run(%struct.nk_fiber* %12, i8 zeroext 1) #11, !dbg !1169
  %14 = call i32 @wrapper_nk_fiber_yield(), !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1159
  call void @llvm.dbg.value(metadata i32 2, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 2, metadata !1138, metadata !DIExpression()), !dbg !1145
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #11, !dbg !1146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1139, metadata !DIExpression(DW_OP_deref)), !dbg !1148
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_inner, metadata !582, metadata !DIExpression()) #10, !dbg !1170
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1172
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1174
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1176
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_inner, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1177
  %17 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1178
  %18 = call i32 @nk_fiber_run(%struct.nk_fiber* %17, i8 zeroext 1) #11, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1159
  call void @llvm.dbg.value(metadata i32 3, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 3, metadata !1138, metadata !DIExpression()), !dbg !1145
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #11, !dbg !1180
  ret void, !dbg !1181
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1182 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1184, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8** undef, metadata !1185, metadata !DIExpression()), !dbg !1188
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1189
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1190
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1191
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 1, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 1, metadata !1186, metadata !DIExpression()), !dbg !1191
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 2, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 2, metadata !1186, metadata !DIExpression()), !dbg !1191
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 3, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 3, metadata !1186, metadata !DIExpression()), !dbg !1191
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 4, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 4, metadata !1186, metadata !DIExpression()), !dbg !1191
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 5, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, metadata !1186, metadata !DIExpression()), !dbg !1191
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 6, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 6, metadata !1186, metadata !DIExpression()), !dbg !1191
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 7, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 7, metadata !1186, metadata !DIExpression()), !dbg !1191
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 8, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 8, metadata !1186, metadata !DIExpression()), !dbg !1191
  %12 = call i32 @wrapper_nk_fiber_yield(), !dbg !1192
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 9, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 9, metadata !1186, metadata !DIExpression()), !dbg !1191
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #11, !dbg !1192
  call void @llvm.dbg.value(metadata i32 10, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 10, metadata !1186, metadata !DIExpression()), !dbg !1191
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #11, !dbg !1194
  ret void, !dbg !1195
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1196 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %1, metadata !1199, metadata !DIExpression()), !dbg !1201
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1202
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1208
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1208
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1209, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #10, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #10, !dbg !1211
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1212
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1212
  %10 = load i64, i64* %9, align 8, !dbg !1212
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1213
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1205, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1214
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @first_timer, metadata !582, metadata !DIExpression()) #10, !dbg !1215
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1217
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1218
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1219
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1221
  %11 = call i32 @nk_fiber_create(void (i8*, i8**)* @first_timer, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1222
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1223
  %13 = call i32 @nk_fiber_run(%struct.nk_fiber* %12, i8 zeroext 1) #11, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1206, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1225
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @second_timer, metadata !582, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1229
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !592, metadata !DIExpression()) #10, !dbg !1232
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* @second_timer, i8* null, i8** null, i64 0, %struct.nk_fiber** %4) #11, !dbg !1233
  %15 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8, !dbg !1234
  %16 = call i32 @nk_fiber_run(%struct.nk_fiber* %15, i8 zeroext 1) #11, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1236
  ret i32 0, !dbg !1237
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1238 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8** undef, metadata !1241, metadata !DIExpression()), !dbg !1246
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1247
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1248
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 0, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1244, metadata !DIExpression()), !dbg !1251
  br label %4, !dbg !1252

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %6, metadata !1242, metadata !DIExpression()), !dbg !1249
  %7 = icmp eq i32 %6, 2, !dbg !1253
  br i1 %7, label %8, label %16, !dbg !1256

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1257, !srcloc !1267
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !1257
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %10, metadata !1263, metadata !DIExpression()) #10, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %11, metadata !1264, metadata !DIExpression()) #10, !dbg !1269
  %12 = zext i32 %10 to i64, !dbg !1270
  %13 = zext i32 %11 to i64, !dbg !1271
  %14 = shl nuw i64 %13, 32, !dbg !1272
  %15 = or i64 %14, %12, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %15, metadata !1243, metadata !DIExpression()), !dbg !1250
  br label %16, !dbg !1274

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !1275
  %18 = add nuw nsw i32 %6, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %18, metadata !1242, metadata !DIExpression()), !dbg !1249
  %19 = icmp eq i32 %18, 100000, !dbg !1277
  br i1 %19, label %20, label %4, !dbg !1252, !llvm.loop !1278

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 100000, metadata !1242, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %17, metadata !1243, metadata !DIExpression()), !dbg !1250
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !1280, !srcloc !1267
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !1280
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !1280
  call void @llvm.dbg.value(metadata i32 %22, metadata !1263, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %23, metadata !1264, metadata !DIExpression()) #10, !dbg !1283
  %24 = zext i32 %22 to i64, !dbg !1284
  %25 = zext i32 %23 to i64, !dbg !1285
  %26 = call i32 @wrapper_nk_fiber_yield(), !dbg !1286
  %27 = shl nuw i64 %25, 32, !dbg !1286
  %28 = or i64 %27, %24, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %28, metadata !1244, metadata !DIExpression()), !dbg !1251
  %29 = sub i64 %28, %17, !dbg !1288
  %30 = udiv i64 %29, 100000, !dbg !1289
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %29, i64 %30) #11, !dbg !1290
  ret void, !dbg !1291
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1292 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1294, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8** undef, metadata !1295, metadata !DIExpression()), !dbg !1298
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1299
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1300
  call void @llvm.dbg.value(metadata i32 0, metadata !1296, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 undef, metadata !1296, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 100000, metadata !1296, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 100000, metadata !1296, metadata !DIExpression()), !dbg !1301
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #11, !dbg !1302
  ret void, !dbg !1303
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1304 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1306, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8* %1, metadata !1307, metadata !DIExpression()), !dbg !1309
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1310
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1317
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !1317
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !1318
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10, !dbg !1318
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1319, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #10, !dbg !1319
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #10, !dbg !1321
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1322
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !1322
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !1323
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #11, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1313, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1325
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber1, metadata !582, metadata !DIExpression()) #10, !dbg !1326
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1328
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1332
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber1, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1333
  %14 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1334
  %15 = call i32 @nk_fiber_run(%struct.nk_fiber* %14, i8 zeroext 1) #11, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1314, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1336
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber2, metadata !582, metadata !DIExpression()) #10, !dbg !1337
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1339
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1340
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1341
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !592, metadata !DIExpression()) #10, !dbg !1343
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber2, i8* null, i8** null, i64 0, %struct.nk_fiber** %4) #11, !dbg !1344
  %17 = load %struct.nk_fiber*, %struct.nk_fiber** %4, align 8, !dbg !1345
  %18 = call i32 @nk_fiber_run(%struct.nk_fiber* %17, i8 zeroext 1) #11, !dbg !1346
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !1315, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1347
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber3, metadata !582, metadata !DIExpression()) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1350
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1351
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1352
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !592, metadata !DIExpression()) #10, !dbg !1354
  %19 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber3, i8* null, i8** null, i64 0, %struct.nk_fiber** %5) #11, !dbg !1355
  %20 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1356
  %21 = call i32 @nk_fiber_run(%struct.nk_fiber* %20, i8 zeroext 1) #11, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1358
  ret i32 0, !dbg !1359
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1360 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1362, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8** undef, metadata !1363, metadata !DIExpression()), !dbg !1367
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1368
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !1369
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()), !dbg !1370
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #11, !dbg !1371
  %6 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !1373
  call void @llvm.dbg.value(metadata i32 1, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 1, metadata !1364, metadata !DIExpression()), !dbg !1370
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #11, !dbg !1371
  %8 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !1373
  call void @llvm.dbg.value(metadata i32 2, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 2, metadata !1364, metadata !DIExpression()), !dbg !1370
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #11, !dbg !1371
  %10 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !1373
  call void @llvm.dbg.value(metadata i32 3, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 3, metadata !1364, metadata !DIExpression()), !dbg !1370
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #11, !dbg !1371
  %12 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !1373
  call void @llvm.dbg.value(metadata i32 4, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 4, metadata !1364, metadata !DIExpression()), !dbg !1370
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #11, !dbg !1371
  %14 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !1373
  call void @llvm.dbg.value(metadata i32 5, metadata !1364, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 5, metadata !1364, metadata !DIExpression()), !dbg !1370
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !1374
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1375
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #10, !dbg !1375
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1376
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber3, metadata !582, metadata !DIExpression()) #10, !dbg !1377
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1379
  %17 = call i32 @wrapper_nk_fiber_yield(), !dbg !1380
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1381
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1383
  %18 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber3, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1384
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1385
  %20 = call i32 @nk_fiber_run(%struct.nk_fiber* %19, i8 zeroext 1) #11, !dbg !1386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10, !dbg !1387
  ret void, !dbg !1387
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1388 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1390, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8** undef, metadata !1391, metadata !DIExpression()), !dbg !1395
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1396
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !1397
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1398
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()), !dbg !1398
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 2, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 2, metadata !1392, metadata !DIExpression()), !dbg !1398
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 3, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 3, metadata !1392, metadata !DIExpression()), !dbg !1398
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 4, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 4, metadata !1392, metadata !DIExpression()), !dbg !1398
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 5, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 5, metadata !1392, metadata !DIExpression()), !dbg !1398
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 6, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 6, metadata !1392, metadata !DIExpression()), !dbg !1398
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 7, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 7, metadata !1392, metadata !DIExpression()), !dbg !1398
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 8, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 8, metadata !1392, metadata !DIExpression()), !dbg !1398
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 9, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 9, metadata !1392, metadata !DIExpression()), !dbg !1398
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #11, !dbg !1399
  call void @llvm.dbg.value(metadata i32 10, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 10, metadata !1392, metadata !DIExpression()), !dbg !1398
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #11, !dbg !1401
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #10, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1393, metadata !DIExpression(DW_OP_deref)), !dbg !1403
  %17 = call i32 @wrapper_nk_fiber_yield(), !dbg !1404
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber4, metadata !582, metadata !DIExpression()) #10, !dbg !1404
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1406
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1407
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1408
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1410
  %18 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber4, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1411
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1412
  %20 = call i32 @nk_fiber_run(%struct.nk_fiber* %19, i8 zeroext 1) #11, !dbg !1413
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10, !dbg !1414
  ret void, !dbg !1414
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1415 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1417, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8** undef, metadata !1418, metadata !DIExpression()), !dbg !1422
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1423
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !1424
  call void @llvm.dbg.value(metadata i32 0, metadata !1419, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 0, metadata !1419, metadata !DIExpression()), !dbg !1425
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #11, !dbg !1426
  call void @llvm.dbg.value(metadata i32 1, metadata !1419, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 1, metadata !1419, metadata !DIExpression()), !dbg !1425
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #11, !dbg !1426
  call void @llvm.dbg.value(metadata i32 2, metadata !1419, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 2, metadata !1419, metadata !DIExpression()), !dbg !1425
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #11, !dbg !1428
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1429
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10, !dbg !1429
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1420, metadata !DIExpression(DW_OP_deref)), !dbg !1430
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber4, metadata !582, metadata !DIExpression()) #10, !dbg !1431
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1433
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1435
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1436
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1437
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber4, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1438
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1439
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !1440
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10, !dbg !1441
  ret void, !dbg !1441
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1442 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1444, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8** undef, metadata !1445, metadata !DIExpression()), !dbg !1448
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1449
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #11, !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1451
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()), !dbg !1451
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 2, metadata !1446, metadata !DIExpression()), !dbg !1451
  %6 = call i32 @wrapper_nk_fiber_yield(), !dbg !1451
  call void @llvm.dbg.value(metadata i32 2, metadata !1446, metadata !DIExpression()), !dbg !1451
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 3, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 3, metadata !1446, metadata !DIExpression()), !dbg !1451
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 4, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 4, metadata !1446, metadata !DIExpression()), !dbg !1451
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 5, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 5, metadata !1446, metadata !DIExpression()), !dbg !1451
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 6, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 6, metadata !1446, metadata !DIExpression()), !dbg !1451
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 7, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 7, metadata !1446, metadata !DIExpression()), !dbg !1451
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 8, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 8, metadata !1446, metadata !DIExpression()), !dbg !1451
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 9, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 9, metadata !1446, metadata !DIExpression()), !dbg !1451
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #11, !dbg !1452
  call void @llvm.dbg.value(metadata i32 10, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 10, metadata !1446, metadata !DIExpression()), !dbg !1451
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #11, !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !1456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1460, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i32 0, metadata !1462, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 0, metadata !1461, metadata !DIExpression()), !dbg !1465
  %2 = icmp sgt i32 %0, 0, !dbg !1466
  br i1 %2, label %3, label %8, !dbg !1469

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1461, metadata !DIExpression()), !dbg !1465
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #11, !dbg !1470
  %6 = add nuw nsw i32 %4, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %4, metadata !1462, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %6, metadata !1461, metadata !DIExpression()), !dbg !1465
  %7 = icmp eq i32 %6, %0, !dbg !1466
  br i1 %7, label %8, label %3, !dbg !1469, !llvm.loop !1473

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !1475
  call void @llvm.dbg.value(metadata i32 %9, metadata !1462, metadata !DIExpression()), !dbg !1464
  ret i32 %9, !dbg !1476
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !1033 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1477
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1477
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1478
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1478
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1479, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !1479
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !1481
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1482
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1482
  %8 = load i64, i64* %7, align 8, !dbg !1482
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1035, metadata !DIExpression(DW_OP_deref)), !dbg !1484
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @print_even, metadata !582, metadata !DIExpression()) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1487
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1488
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1489
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1491
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @print_even, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1492
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1493
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1036, metadata !DIExpression(DW_OP_deref)), !dbg !1495
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @print_odd, metadata !582, metadata !DIExpression()) #10, !dbg !1496
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1498
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1499
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1500
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1501
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !592, metadata !DIExpression()) #10, !dbg !1502
  %12 = call i32 @nk_fiber_create(void (i8*, i8**)* @print_odd, i8* null, i8** null, i64 0, %struct.nk_fiber** %2) #11, !dbg !1503
  %13 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !1504
  %14 = call i32 @nk_fiber_run(%struct.nk_fiber* %13, i8 zeroext 1) #11, !dbg !1505
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1506
  ret i32 0, !dbg !1507
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !1111 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1508
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1509, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1509
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1511
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1512
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1512
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1513
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1514
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1113, metadata !DIExpression(DW_OP_deref)), !dbg !1515
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_outer, metadata !582, metadata !DIExpression()) #10, !dbg !1516
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1518
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1519
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1520
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1522
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_outer, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1523
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1524
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1525
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1526
  ret i32 0, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !1311 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1528
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1529
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1529
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1530
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1531, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #10, !dbg !1531
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #10, !dbg !1533
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1534
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !1534
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !1535
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #11, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1313, metadata !DIExpression(DW_OP_deref)), !dbg !1537
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber1, metadata !582, metadata !DIExpression()) #10, !dbg !1538
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1540
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1542
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1543
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1544
  %11 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber1, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1545
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1546
  %13 = call i32 @nk_fiber_run(%struct.nk_fiber* %12, i8 zeroext 1) #11, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1314, metadata !DIExpression(DW_OP_deref)), !dbg !1548
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber2, metadata !582, metadata !DIExpression()) #10, !dbg !1549
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1551
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1552
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1553
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1554
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !592, metadata !DIExpression()) #10, !dbg !1555
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber2, i8* null, i8** null, i64 0, %struct.nk_fiber** %2) #11, !dbg !1556
  %15 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !1557
  %16 = call i32 @nk_fiber_run(%struct.nk_fiber* %15, i8 zeroext 1) #11, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1315, metadata !DIExpression(DW_OP_deref)), !dbg !1559
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber3, metadata !582, metadata !DIExpression()) #10, !dbg !1560
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1562
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1563
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !592, metadata !DIExpression()) #10, !dbg !1566
  %17 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber3, i8* null, i8** null, i64 0, %struct.nk_fiber** %3) #11, !dbg !1567
  %18 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1568
  %19 = call i32 @nk_fiber_run(%struct.nk_fiber* %18, i8 zeroext 1) #11, !dbg !1569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !1570
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !1570
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1570
  ret i32 0, !dbg !1571
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !810 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1572
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1573, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1573
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1575
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1576
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1576
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1577
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1578
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !812, metadata !DIExpression(DW_OP_deref)), !dbg !1579
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_outer_join, metadata !582, metadata !DIExpression()) #10, !dbg !1580
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1582
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1583
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1584
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1586
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_outer_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1587
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1588
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1589
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1590
  ret i32 0, !dbg !1591
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !763 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1592
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1593, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1595
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1596
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1596
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1597
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1598
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !765, metadata !DIExpression(DW_OP_deref)), !dbg !1599
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_fork, metadata !582, metadata !DIExpression()) #10, !dbg !1600
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1602
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1604
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1605
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1606
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_fork, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1607
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1608
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1610
  ret i32 0, !dbg !1611
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !708 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1612
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1612
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1613, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1613
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1615
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1616
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1616
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1617
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1618
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !1619
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_fork_join, metadata !582, metadata !DIExpression()) #10, !dbg !1620
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1622
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1623
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1624
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1626
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_fork_join, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1627
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1628
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1630
  ret i32 0, !dbg !1631
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !631 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1632
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1632
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1633, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1633
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1635
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1636
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1636
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1637
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !1639
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_routine1, metadata !582, metadata !DIExpression()) #10, !dbg !1640
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1642
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1643
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1646
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_routine1, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1647
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1648
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1650
  ret i32 0, !dbg !1651
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !560 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1652
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1652
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1653, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #10, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #10, !dbg !1655
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1656
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1656
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1657
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #11, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !564, metadata !DIExpression(DW_OP_deref)), !dbg !1659
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @fiber_routine3, metadata !582, metadata !DIExpression()) #10, !dbg !1660
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1662
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1663
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1664
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1666
  %7 = call i32 @nk_fiber_create(void (i8*, i8**)* @fiber_routine3, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1667
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1668
  %9 = call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext 1) #11, !dbg !1669
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10, !dbg !1670
  ret i32 0, !dbg !1671
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !1203 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1672
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1672
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1673
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1673
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1674, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #10, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #10, !dbg !1676
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1677
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1677
  %8 = load i64, i64* %7, align 8, !dbg !1677
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @first_timer, metadata !582, metadata !DIExpression()) #10, !dbg !1680
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1682
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1683
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1684
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !592, metadata !DIExpression()) #10, !dbg !1686
  %9 = call i32 @nk_fiber_create(void (i8*, i8**)* @first_timer, i8* null, i8** null, i64 0, %struct.nk_fiber** %1) #11, !dbg !1687
  %10 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1688
  %11 = call i32 @nk_fiber_run(%struct.nk_fiber* %10, i8 zeroext 1) #11, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1206, metadata !DIExpression(DW_OP_deref)), !dbg !1690
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @second_timer, metadata !582, metadata !DIExpression()) #10, !dbg !1691
  call void @llvm.dbg.value(metadata i8* null, metadata !588, metadata !DIExpression()) #10, !dbg !1693
  call void @llvm.dbg.value(metadata i8** null, metadata !589, metadata !DIExpression()) #10, !dbg !1694
  call void @llvm.dbg.value(metadata i64 0, metadata !590, metadata !DIExpression()) #10, !dbg !1695
  call void @llvm.dbg.value(metadata i8 1, metadata !591, metadata !DIExpression()) #10, !dbg !1696
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !592, metadata !DIExpression()) #10, !dbg !1697
  %12 = call i32 @nk_fiber_create(void (i8*, i8**)* @second_timer, i8* null, i8** null, i64 0, %struct.nk_fiber** %2) #11, !dbg !1698
  %13 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !1699
  %14 = call i32 @nk_fiber_run(%struct.nk_fiber* %13, i8 zeroext 1) #11, !dbg !1700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1701
  ret i32 0, !dbg !1702
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1703 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1709
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1715
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1716
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1716
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1717
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1718 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1721
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1724
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1725
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1725
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1726
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1726
  ret %struct.nk_fiber* %6, !dbg !1727
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1728 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1729
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1732
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1733
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1733
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1734
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1734
  ret %struct.nk_fiber* %6, !dbg !1735
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1736 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1739
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1742
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1743
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1743
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1744
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1744
  ret %struct.nk_thread* %6, !dbg !1745
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1746 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1749
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1752
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1753
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1753
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1754
  ret %struct.list_head* %5, !dbg !1755
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !1756 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()), !dbg !1763
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1764
  %4 = load i64, i64* %3, align 8, !dbg !1765
  %5 = add i64 %4, -8, !dbg !1765
  store i64 %5, i64* %3, align 8, !dbg !1765
  %6 = inttoptr i64 %5 to i64*, !dbg !1766
  store i64 %1, i64* %6, align 8, !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1769 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1783
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1787
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1788
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1788
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1789
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1771, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1792, metadata !DIExpression()), !dbg !1797
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1799
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1799
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1800
  br i1 %8, label %20, label %9, !dbg !1801

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()), !dbg !1802
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1802
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1773, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1772, metadata !DIExpression()), !dbg !1791
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1803
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1804, metadata !DIExpression()), !dbg !1809
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1811
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1811
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1812
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1813, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1818, metadata !DIExpression()), !dbg !1821
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1822
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1823
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1824
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1826, metadata !DIExpression()), !dbg !1829
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1831
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1831
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1832
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1832
  br label %20, !dbg !1833

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1834
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1772, metadata !DIExpression()), !dbg !1791
  ret %struct.nk_fiber* %21, !dbg !1835
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1836 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1840, metadata !DIExpression()), !dbg !1851
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1852
  store i32 4, i32* %3, align 4, !dbg !1853
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1841, metadata !DIExpression()), !dbg !1854
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1855
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1843, metadata !DIExpression()), !dbg !1856
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1857
  %6 = load i32, i32* %5, align 8, !dbg !1857
  %7 = icmp sgt i32 %6, 0, !dbg !1858
  br i1 %7, label %8, label %66, !dbg !1859

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1859

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1844, metadata !DIExpression()), !dbg !1860
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1861
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1861
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1860
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1860
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1860
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1844, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1842, metadata !DIExpression()), !dbg !1862
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1804, metadata !DIExpression()), !dbg !1864
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1866
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1866
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1867
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1867
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1813, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1818, metadata !DIExpression()), !dbg !1870
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1871
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1872
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1873
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1826, metadata !DIExpression()), !dbg !1875
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1877
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1878
  %24 = load i32, i32* %5, align 8, !dbg !1879
  %25 = add i32 %24, -1, !dbg !1879
  store i32 %25, i32* %5, align 8, !dbg !1879
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1880
  br i1 %26, label %63, label %27, !dbg !1882

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1883, metadata !DIExpression()) #10, !dbg !1891
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()) #10, !dbg !1894
  %28 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %28, metadata !1889, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !1899
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1900, !srcloc !1920
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1907, metadata !DIExpression()) #10, !dbg !1900
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1906, metadata !DIExpression()) #10, !dbg !1921
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1905, metadata !DIExpression()) #10, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10, !dbg !1923
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11, !dbg !1928
  %30 = load i64, i64* %2, align 8, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %30, metadata !1926, metadata !DIExpression()) #10, !dbg !1930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10, !dbg !1931
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1932
  %32 = load i32, i32* %31, align 8, !dbg !1932
  %33 = zext i32 %32 to i64, !dbg !1933
  %34 = urem i64 %30, %33, !dbg !1934
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1935, !srcloc !1936
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1915, metadata !DIExpression()) #10, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1913, metadata !DIExpression()) #10, !dbg !1937
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1912, metadata !DIExpression()) #10, !dbg !1938
  %36 = shl nuw i64 %34, 32, !dbg !1939
  %37 = ashr exact i64 %36, 32, !dbg !1939
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1939
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1889, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !1899
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1940
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1940
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1940
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1940
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1889, metadata !DIExpression()) #10, !dbg !1899
  %44 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1941
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1945
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1946
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1946
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1890, metadata !DIExpression()) #10, !dbg !1948
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1949
  store i32 1, i32* %49, align 4, !dbg !1950
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1951
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1952, metadata !DIExpression()) #10, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1955, metadata !DIExpression()) #10, !dbg !1958
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1959
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1959
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1960, metadata !DIExpression()) #10, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1965, metadata !DIExpression()) #10, !dbg !1969
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1966, metadata !DIExpression()) #10, !dbg !1970
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1971
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1972
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1973
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1974
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1975
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1976
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1977
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1978
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1978
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1980
  br i1 %58, label %61, label %59, !dbg !1981

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #11, !dbg !1982
  br label %61, !dbg !1984

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1857
  br label %63, !dbg !1857

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1857
  %65 = icmp sgt i32 %64, 0, !dbg !1858
  br i1 %65, label %11, label %66, !dbg !1859, !llvm.loop !1985

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1987
  store i8 1, i8* %67, align 8, !dbg !1988
  %68 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1989
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1994
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1995
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1995
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1771, metadata !DIExpression()) #10, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1792, metadata !DIExpression()) #10, !dbg !1999
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !2001
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !2001
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !2002
  br i1 %75, label %88, label %76, !dbg !2003

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !2004
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !2004
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !2004
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1773, metadata !DIExpression()) #10, !dbg !2004
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1772, metadata !DIExpression()) #10, !dbg !1998
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1804, metadata !DIExpression()) #10, !dbg !2006
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !2008
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !2008
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1813, metadata !DIExpression()) #10, !dbg !2010
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1818, metadata !DIExpression()) #10, !dbg !2012
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !2013
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !2014
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !2015
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1826, metadata !DIExpression()) #10, !dbg !2017
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !2019
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !2019
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !2020
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1772, metadata !DIExpression()) #10, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1841, metadata !DIExpression()), !dbg !1854
  %87 = icmp eq %struct.list_head** %77, null, !dbg !2021
  br i1 %87, label %88, label %95, !dbg !2023

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2024
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !2029
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !2030
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !2030
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !2031
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !2031
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1841, metadata !DIExpression()), !dbg !1854
  br label %95, !dbg !2032

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !2033
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1841, metadata !DIExpression()), !dbg !1854
  %97 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2034
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !2037
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !2038
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !2038
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !2039
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !2040
  %102 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2041
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !2044
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !2045
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !2045
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !2046
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !2046
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !2047
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1804, metadata !DIExpression()), !dbg !2048
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !2050
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !2050
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !2051
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !2051
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1813, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1818, metadata !DIExpression()), !dbg !2054
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !2055
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !2056
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !2057
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !2058
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1826, metadata !DIExpression()), !dbg !2059
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !2061
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !2062
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2063
  %116 = load i8*, i8** %115, align 8, !dbg !2063
  call void @kmem_free(i8* %116) #11, !dbg !2063
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !2064
  call void @kmem_free(i8* %117) #11, !dbg !2064
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #11, !dbg !2065
  ret void, !dbg !2066
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
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1884 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1883, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %1, metadata !1888, metadata !DIExpression()), !dbg !2068
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2069
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !2073
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1889, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2074
  %6 = icmp eq i8 %1, 0, !dbg !2075
  br i1 %6, label %20, label %7, !dbg !2076

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !2077, !srcloc !1920
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1907, metadata !DIExpression()) #10, !dbg !2077
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1906, metadata !DIExpression()) #10, !dbg !2080
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1905, metadata !DIExpression()) #10, !dbg !2081
  %9 = bitcast i64* %3 to i8*, !dbg !2082
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !2082
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #11, !dbg !2084
  %10 = load i64, i64* %3, align 8, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %10, metadata !1926, metadata !DIExpression()) #10, !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !2087
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !2088
  %12 = load i32, i32* %11, align 8, !dbg !2088
  %13 = zext i32 %12 to i64, !dbg !2089
  %14 = urem i64 %10, %13, !dbg !2090
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !2091, !srcloc !1936
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1915, metadata !DIExpression()) #10, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1913, metadata !DIExpression()) #10, !dbg !2092
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1912, metadata !DIExpression()) #10, !dbg !2093
  %16 = shl nuw i64 %14, 32, !dbg !2094
  %17 = ashr exact i64 %16, 32, !dbg !2094
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !2094
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !2094
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1889, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !2074
  br label %20, !dbg !2095

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !2096
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !2096
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !2096
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1889, metadata !DIExpression()), !dbg !2074
  %26 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2097
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !2101
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !2102
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !2102
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !2103
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1890, metadata !DIExpression()), !dbg !2104
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2105
  store i32 1, i32* %31, align 4, !dbg !2106
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1952, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1955, metadata !DIExpression()), !dbg !2110
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !2111
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1960, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1965, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1966, metadata !DIExpression()), !dbg !2115
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !2116
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2117
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2118
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2119
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !2120
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !2121
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !2122
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !2123
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !2123
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !2124
  br i1 %40, label %43, label %41, !dbg !2125

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #11, !dbg !2126
  br label %43, !dbg !2127

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !2128
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !2129 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2131, metadata !DIExpression()), !dbg !2132
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !2133
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !2133
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !2134
  %5 = load i8*, i8** %4, align 8, !dbg !2134
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !2135
  %7 = load i8**, i8*** %6, align 8, !dbg !2135
  tail call void %3(i8* %5, i8** %7) #11, !dbg !2136
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #12, !dbg !2137
  ret void, !dbg !2138
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !2139 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2141, metadata !DIExpression()), !dbg !2142
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !2143
  %3 = bitcast i8** %2 to i64*, !dbg !2143
  %4 = load i64, i64* %3, align 8, !dbg !2143
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !2144
  %6 = load i64, i64* %5, align 8, !dbg !2144
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !2145
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1761, metadata !DIExpression()), !dbg !2148
  %8 = add i64 %4, -8, !dbg !2149
  %9 = add i64 %8, %6, !dbg !2150
  store i64 %9, i64* %7, align 8, !dbg !2150
  %10 = inttoptr i64 %9 to i64*, !dbg !2151
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !2152
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2155
  %11 = load i64, i64* %7, align 8, !dbg !2156
  %12 = add i64 %11, -8, !dbg !2156
  store i64 %12, i64* %7, align 8, !dbg !2156
  %13 = inttoptr i64 %12 to i64*, !dbg !2157
  store i64 0, i64* %13, align 8, !dbg !2158
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2161
  %14 = load i64, i64* %7, align 8, !dbg !2162
  %15 = add i64 %14, -8, !dbg !2162
  store i64 %15, i64* %7, align 8, !dbg !2162
  %16 = inttoptr i64 %15 to i64*, !dbg !2163
  store i64 0, i64* %16, align 8, !dbg !2164
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2167
  %17 = load i64, i64* %7, align 8, !dbg !2168
  %18 = add i64 %17, -8, !dbg !2168
  store i64 %18, i64* %7, align 8, !dbg !2168
  %19 = inttoptr i64 %18 to i64*, !dbg !2169
  store i64 0, i64* %19, align 8, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2173
  %20 = load i64, i64* %7, align 8, !dbg !2174
  %21 = add i64 %20, -8, !dbg !2174
  store i64 %21, i64* %7, align 8, !dbg !2174
  %22 = inttoptr i64 %21 to i64*, !dbg !2175
  store i64 0, i64* %22, align 8, !dbg !2176
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2179
  %23 = load i64, i64* %7, align 8, !dbg !2180
  %24 = add i64 %23, -8, !dbg !2180
  store i64 %24, i64* %7, align 8, !dbg !2180
  %25 = inttoptr i64 %24 to i64*, !dbg !2181
  store i64 0, i64* %25, align 8, !dbg !2182
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %26, metadata !1761, metadata !DIExpression()), !dbg !2186
  %27 = load i64, i64* %7, align 8, !dbg !2187
  %28 = add i64 %27, -8, !dbg !2187
  store i64 %28, i64* %7, align 8, !dbg !2187
  %29 = inttoptr i64 %28 to i64*, !dbg !2188
  store i64 %26, i64* %29, align 8, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2192
  %30 = load i64, i64* %7, align 8, !dbg !2193
  %31 = add i64 %30, -8, !dbg !2193
  store i64 %31, i64* %7, align 8, !dbg !2193
  %32 = inttoptr i64 %31 to i64*, !dbg !2194
  store i64 0, i64* %32, align 8, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2198
  %33 = load i64, i64* %7, align 8, !dbg !2199
  %34 = add i64 %33, -8, !dbg !2199
  store i64 %34, i64* %7, align 8, !dbg !2199
  %35 = inttoptr i64 %34 to i64*, !dbg !2200
  store i64 0, i64* %35, align 8, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2204
  %36 = load i64, i64* %7, align 8, !dbg !2205
  %37 = add i64 %36, -8, !dbg !2205
  store i64 %37, i64* %7, align 8, !dbg !2205
  %38 = inttoptr i64 %37 to i64*, !dbg !2206
  store i64 0, i64* %38, align 8, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2210
  %39 = load i64, i64* %7, align 8, !dbg !2211
  %40 = add i64 %39, -8, !dbg !2211
  store i64 %40, i64* %7, align 8, !dbg !2211
  %41 = inttoptr i64 %40 to i64*, !dbg !2212
  store i64 0, i64* %41, align 8, !dbg !2213
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2216
  %42 = load i64, i64* %7, align 8, !dbg !2217
  %43 = add i64 %42, -8, !dbg !2217
  store i64 %43, i64* %7, align 8, !dbg !2217
  %44 = inttoptr i64 %43 to i64*, !dbg !2218
  store i64 0, i64* %44, align 8, !dbg !2219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2222
  %45 = load i64, i64* %7, align 8, !dbg !2223
  %46 = add i64 %45, -8, !dbg !2223
  store i64 %46, i64* %7, align 8, !dbg !2223
  %47 = inttoptr i64 %46 to i64*, !dbg !2224
  store i64 0, i64* %47, align 8, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2228
  %48 = load i64, i64* %7, align 8, !dbg !2229
  %49 = add i64 %48, -8, !dbg !2229
  store i64 %49, i64* %7, align 8, !dbg !2229
  %50 = inttoptr i64 %49 to i64*, !dbg !2230
  store i64 0, i64* %50, align 8, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2234
  %51 = load i64, i64* %7, align 8, !dbg !2235
  %52 = add i64 %51, -8, !dbg !2235
  store i64 %52, i64* %7, align 8, !dbg !2235
  %53 = inttoptr i64 %52 to i64*, !dbg !2236
  store i64 0, i64* %53, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1760, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !2240
  %54 = load i64, i64* %7, align 8, !dbg !2241
  %55 = add i64 %54, -8, !dbg !2241
  store i64 %55, i64* %7, align 8, !dbg !2241
  %56 = inttoptr i64 %55 to i64*, !dbg !2242
  store i64 0, i64* %56, align 8, !dbg !2243
  ret void, !dbg !2244
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2245 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2249, metadata !DIExpression()), !dbg !2254
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2255
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2259
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2260
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2260
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2261
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2250, metadata !DIExpression()), !dbg !2262
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2263
  %9 = load i32, i32* %8, align 4, !dbg !2263
  %10 = add i32 %9, -3, !dbg !2265
  %11 = icmp ult i32 %10, 2, !dbg !2265
  br i1 %11, label %13, label %12, !dbg !2265

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2266
  br label %13, !dbg !2268

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2269
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2273
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2274
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2274
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2275
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2275
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2276
  br i1 %20, label %36, label %21, !dbg !2277

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2278
  %23 = icmp eq i32 %22, 3, !dbg !2279
  br i1 %23, label %36, label %24, !dbg !2280

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2281
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2285
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2286
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2286
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2251, metadata !DIExpression()), !dbg !2288
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1952, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1955, metadata !DIExpression()), !dbg !2292
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2293
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1960, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1965, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1966, metadata !DIExpression()), !dbg !2297
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2298
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2299
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2300
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2301
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2302
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2303
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2304
  br label %36, !dbg !2305

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2306
  %38 = load i32, i32* %37, align 8, !dbg !2306
  %39 = icmp eq i32 %38, 0, !dbg !2308
  br i1 %39, label %40, label %55, !dbg !2309

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2310
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2310
  %43 = load i64, i64* %42, align 8, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2312, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2318
  %44 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2320
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2324
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2325
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2325
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2326
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2317, metadata !DIExpression()) #10, !dbg !2327
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2328
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2329
  store i64 %43, i64* %51, align 8, !dbg !2329
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2330, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2336, metadata !DIExpression()) #10, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2335, metadata !DIExpression()) #10, !dbg !2339
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2340
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2341
  store i64 %43, i64* %54, align 8, !dbg !2341
  br label %55, !dbg !2342

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2343
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2346
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2347
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2347
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2348
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2349
  store i32 1, i32* %8, align 4, !dbg !2350
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2351
  store i32 5, i32* %61, align 4, !dbg !2352
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #11, !dbg !2353
  ret i32 0, !dbg !2354
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2313 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2312, metadata !DIExpression()), !dbg !2355
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2356
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2360
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2361
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2361
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2362
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2317, metadata !DIExpression()), !dbg !2363
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2364
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2365
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2366, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2336, metadata !DIExpression()) #10, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2335, metadata !DIExpression()) #10, !dbg !2368
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2369
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2372 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2377
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2381
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2382
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2382
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2383
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2376, metadata !DIExpression()), !dbg !2384
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #12, !dbg !2385
  ret void, !dbg !2386
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2387 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2391, metadata !DIExpression()), !dbg !2394
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2395
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2399
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2400
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2400
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2401
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2401
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2392, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2403
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2404
  %9 = zext i1 %8 to i8, !dbg !2406
  call void @llvm.dbg.value(metadata i8 %9, metadata !2393, metadata !DIExpression()), !dbg !2403
  ret i8 %9, !dbg !2407
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1909 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !2408, !srcloc !1920
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1907, metadata !DIExpression()) #10, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1906, metadata !DIExpression()) #10, !dbg !2410
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1905, metadata !DIExpression()) #10, !dbg !2411
  %3 = bitcast i64* %1 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !2412
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #11, !dbg !2414
  %4 = load i64, i64* %1, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %4, metadata !1926, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !2417
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2418
  %6 = load i32, i32* %5, align 8, !dbg !2418
  %7 = zext i32 %6 to i64, !dbg !2419
  %8 = urem i64 %4, %7, !dbg !2420
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !2421, !srcloc !1936
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1915, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1913, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1912, metadata !DIExpression()), !dbg !2423
  %10 = shl nuw i64 %8, 32, !dbg !2424
  %11 = ashr exact i64 %10, 32, !dbg !2424
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2424
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2424
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2425
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2425
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2426
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2426
  ret %struct.nk_thread* %17, !dbg !2427
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2428 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2430, metadata !DIExpression()), !dbg !2449
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !2450, !srcloc !2451
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2434, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2432, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2431, metadata !DIExpression()), !dbg !2453
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2454
  %4 = load i32, i32* %3, align 8, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %4, metadata !2436, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2456
  %5 = icmp sgt i32 %4, 0, !dbg !2457
  br i1 %5, label %6, label %38, !dbg !2458

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2459
  br label %8, !dbg !2459

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2439, metadata !DIExpression()), !dbg !2456
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2459
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2459
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2460
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2460
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2437, metadata !DIExpression()), !dbg !2462
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2441, metadata !DIExpression(DW_OP_deref)), !dbg !2463
  call void @llvm.dbg.value(metadata i8** %15, metadata !2438, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2464
  %16 = load i8*, i8** %15, align 8, !dbg !2465
  br label %17, !dbg !2466

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2465
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2467
  %20 = bitcast i8* %18 to i8**, !dbg !2467
  %21 = load i8*, i8** %20, align 8, !dbg !2467
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2467
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2467
  br i1 %22, label %27, label %23, !dbg !2466

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2465
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2465
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2438, metadata !DIExpression()), !dbg !2464
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2468
  br i1 %26, label %30, label %17, !dbg !2471, !llvm.loop !2472

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i32 undef, metadata !2439, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2456
  %29 = icmp slt i64 %28, %7, !dbg !2457
  br i1 %29, label %8, label %38, !dbg !2458, !llvm.loop !2475

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1804, metadata !DIExpression()), !dbg !2479
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2481
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2481
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2482
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1813, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1818, metadata !DIExpression()), !dbg !2485
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2486
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2487
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2488
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1826, metadata !DIExpression()), !dbg !2490
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2492
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2493
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2494
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2495 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2524, !srcloc !2525
  call void @llvm.dbg.value(metadata i32 %1, metadata !2500, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %1, metadata !2498, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2527
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2528
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2530
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2502, metadata !DIExpression()), !dbg !2531
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #12, !dbg !2532
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2533
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2534
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2535
  br i1 %6, label %7, label %109, !dbg !2536

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2537
  %9 = icmp eq i64 %8, 0, !dbg !2543
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %10, metadata !2548, metadata !DIExpression()) #10, !dbg !2550
  %11 = icmp eq i64 %10, 0, !dbg !2551
  br i1 %11, label %17, label %12, !dbg !2553

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2554
  %14 = inttoptr i64 %13 to i16*, !dbg !2556
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2557
  %16 = zext i16 %15 to i32, !dbg !2557
  br label %17, !dbg !2558

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2559
  %19 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %19, metadata !2564, metadata !DIExpression()) #10, !dbg !2566
  %20 = icmp eq i64 %19, 0, !dbg !2567
  br i1 %20, label %25, label %21, !dbg !2569

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2570
  %23 = inttoptr i64 %22 to i16*, !dbg !2572
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2573
  br label %25, !dbg !2574

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2575

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2503, metadata !DIExpression()), !dbg !2576
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2577, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2336, metadata !DIExpression()) #10, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2335, metadata !DIExpression()) #10, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2509, metadata !DIExpression()), !dbg !2576
  %28 = tail call i32 @nk_vc_is_active() #11, !dbg !2580
  %29 = icmp eq i32 %28, 0, !dbg !2580
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2581
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %31, metadata !2588, metadata !DIExpression()) #10, !dbg !2592
  %32 = icmp eq i64 %31, 0, !dbg !2593
  br i1 %32, label %38, label %33, !dbg !2595

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2596
  %35 = inttoptr i64 %34 to i16*, !dbg !2598
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2599
  %37 = icmp eq i16 %36, 0, !dbg !2600
  br i1 %37, label %38, label %39, !dbg !2581

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2581

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2581
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2581
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2581
  br i1 %29, label %60, label %44, !dbg !2601

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2602

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2602
  %47 = load i64, i64* %46, align 32, !dbg !2602
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2602
  %49 = load i8, i8* %48, align 8, !dbg !2602
  %50 = icmp eq i8 %49, 0, !dbg !2602
  br i1 %50, label %51, label %56, !dbg !2602

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2602
  %53 = load i8, i8* %52, align 64, !dbg !2602
  %54 = icmp eq i8 %53, 0, !dbg !2602
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52, !dbg !2602
  br label %56, !dbg !2602

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ], !dbg !2602
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #11, !dbg !2602
  br label %76, !dbg !2602

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2603

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2603
  %63 = load i64, i64* %62, align 32, !dbg !2603
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2603
  %65 = load i8, i8* %64, align 8, !dbg !2603
  %66 = icmp eq i8 %65, 0, !dbg !2603
  br i1 %66, label %67, label %72, !dbg !2603

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2603
  %69 = load i8, i8* %68, align 64, !dbg !2603
  %70 = icmp eq i8 %69, 0, !dbg !2603
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68, !dbg !2603
  br label %72, !dbg !2603

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ], !dbg !2603
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #11, !dbg !2603
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %77, metadata !2608, metadata !DIExpression()) #10, !dbg !2610
  %78 = icmp eq i64 %77, 0, !dbg !2611
  br i1 %78, label %109, label %79, !dbg !2613

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2614
  %81 = inttoptr i64 %80 to i16*, !dbg !2616
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2617
  br label %109, !dbg !2618

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2522, metadata !DIExpression()), !dbg !2619
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !2620
  %85 = icmp eq i32 %84, 0, !dbg !2620
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %86, metadata !2588, metadata !DIExpression()) #10, !dbg !2627
  %87 = icmp eq i64 %86, 0, !dbg !2628
  br i1 %87, label %93, label %88, !dbg !2629

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2630
  %90 = inttoptr i64 %89 to i16*, !dbg !2631
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2632
  %92 = icmp eq i16 %91, 0, !dbg !2633
  br i1 %92, label %93, label %94, !dbg !2634

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2634

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2634
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2634
  br i1 %85, label %100, label %98, !dbg !2635

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #11, !dbg !2636
  br label %102, !dbg !2636

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #11, !dbg !2638
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %103, metadata !2608, metadata !DIExpression()) #10, !dbg !2643
  %104 = icmp eq i64 %103, 0, !dbg !2644
  br i1 %104, label %109, label %105, !dbg !2645

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2646
  %107 = inttoptr i64 %106 to i16*, !dbg !2647
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2648
  br label %109, !dbg !2649

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2650
  ret i32 %110, !dbg !2651
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2652 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2684, !srcloc !2685
  call void @llvm.dbg.value(metadata i32 %1, metadata !2661, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %1, metadata !2659, metadata !DIExpression()), !dbg !2686
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #11, !dbg !2687
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()), !dbg !2687
  %3 = icmp eq i8* %2, null, !dbg !2688
  br i1 %3, label %4, label %106, !dbg !2689

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2690
  %6 = icmp eq i64 %5, 0, !dbg !2692
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %7, metadata !2548, metadata !DIExpression()) #10, !dbg !2696
  %8 = icmp eq i64 %7, 0, !dbg !2697
  br i1 %8, label %14, label %9, !dbg !2698

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2699
  %11 = inttoptr i64 %10 to i16*, !dbg !2700
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2701
  %13 = zext i16 %12 to i32, !dbg !2701
  br label %14, !dbg !2702

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2703
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %16, metadata !2564, metadata !DIExpression()) #10, !dbg !2707
  %17 = icmp eq i64 %16, 0, !dbg !2708
  br i1 %17, label %22, label %18, !dbg !2709

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2710
  %20 = inttoptr i64 %19 to i16*, !dbg !2711
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2712
  br label %22, !dbg !2713

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2714

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2663, metadata !DIExpression()), !dbg !2715
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2716, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2336, metadata !DIExpression()) #10, !dbg !2716
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2335, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2669, metadata !DIExpression()), !dbg !2715
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !2719
  %26 = icmp eq i32 %25, 0, !dbg !2719
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2720
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %28, metadata !2588, metadata !DIExpression()) #10, !dbg !2725
  %29 = icmp eq i64 %28, 0, !dbg !2726
  br i1 %29, label %35, label %30, !dbg !2727

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2728
  %32 = inttoptr i64 %31 to i16*, !dbg !2729
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2730
  %34 = icmp eq i16 %33, 0, !dbg !2731
  br i1 %34, label %35, label %36, !dbg !2720

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2720

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2720
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2720
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2720
  br i1 %26, label %57, label %41, !dbg !2732

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2733

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2733
  %44 = load i64, i64* %43, align 32, !dbg !2733
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2733
  %46 = load i8, i8* %45, align 8, !dbg !2733
  %47 = icmp eq i8 %46, 0, !dbg !2733
  br i1 %47, label %48, label %53, !dbg !2733

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2733
  %50 = load i8, i8* %49, align 64, !dbg !2733
  %51 = icmp eq i8 %50, 0, !dbg !2733
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2733
  br label %53, !dbg !2733

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2733
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #11, !dbg !2733
  br label %73, !dbg !2733

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2734

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2734
  %60 = load i64, i64* %59, align 32, !dbg !2734
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2734
  %62 = load i8, i8* %61, align 8, !dbg !2734
  %63 = icmp eq i8 %62, 0, !dbg !2734
  br i1 %63, label %64, label %69, !dbg !2734

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2734
  %66 = load i8, i8* %65, align 64, !dbg !2734
  %67 = icmp eq i8 %66, 0, !dbg !2734
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2734
  br label %69, !dbg !2734

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2734
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #11, !dbg !2734
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %74, metadata !2608, metadata !DIExpression()) #10, !dbg !2738
  %75 = icmp eq i64 %74, 0, !dbg !2739
  br i1 %75, label %114, label %76, !dbg !2740

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2741
  %78 = inttoptr i64 %77 to i16*, !dbg !2742
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2743
  br label %114, !dbg !2744

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2682, metadata !DIExpression()), !dbg !2745
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !2746
  %82 = icmp eq i32 %81, 0, !dbg !2746
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %83, metadata !2588, metadata !DIExpression()) #10, !dbg !2753
  %84 = icmp eq i64 %83, 0, !dbg !2754
  br i1 %84, label %90, label %85, !dbg !2755

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2756
  %87 = inttoptr i64 %86 to i16*, !dbg !2757
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2758
  %89 = icmp eq i16 %88, 0, !dbg !2759
  br i1 %89, label %90, label %91, !dbg !2760

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2760

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2760
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2760
  br i1 %82, label %97, label %95, !dbg !2761

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #11, !dbg !2762
  br label %99, !dbg !2762

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #11, !dbg !2764
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %100, metadata !2608, metadata !DIExpression()) #10, !dbg !2769
  %101 = icmp eq i64 %100, 0, !dbg !2770
  br i1 %101, label %114, label %102, !dbg !2771

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2772
  %104 = inttoptr i64 %103 to i16*, !dbg !2773
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2774
  br label %114, !dbg !2775

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2656, metadata !DIExpression()), !dbg !2777
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #11, !dbg !2778
  %109 = bitcast i8* %2 to i32*, !dbg !2779
  tail call void @spinlock_init(i32* %109) #11, !dbg !2780
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %110, metadata !1826, metadata !DIExpression()), !dbg !2782
  %111 = bitcast i8* %110 to i8**, !dbg !2784
  store i8* %110, i8** %111, align 8, !dbg !2784
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2785
  %113 = bitcast i8* %112 to i8**, !dbg !2786
  store i8* %110, i8** %113, align 8, !dbg !2786
  br label %115, !dbg !2787

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #11, !dbg !2788
  br label %115, !dbg !2789

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2790
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2791
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2792 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2835
  %2 = zext i32 %1 to i64, !dbg !2836
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2836
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2794, metadata !DIExpression()), !dbg !2837
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2838
  %6 = icmp eq i64 %5, 0, !dbg !2840
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %7, metadata !2548, metadata !DIExpression()) #10, !dbg !2844
  %8 = icmp eq i64 %7, 0, !dbg !2845
  br i1 %8, label %14, label %9, !dbg !2846

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2847
  %11 = inttoptr i64 %10 to i16*, !dbg !2848
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2849
  %13 = zext i16 %12 to i32, !dbg !2849
  br label %14, !dbg !2850

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2851
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %16, metadata !2564, metadata !DIExpression()) #10, !dbg !2855
  %17 = icmp eq i64 %16, 0, !dbg !2856
  br i1 %17, label %22, label %18, !dbg !2857

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2858
  %20 = inttoptr i64 %19 to i16*, !dbg !2859
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2860
  br label %22, !dbg !2861

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2862

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2795, metadata !DIExpression()), !dbg !2863
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2864, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2336, metadata !DIExpression()) #10, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2335, metadata !DIExpression()) #10, !dbg !2866
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2799, metadata !DIExpression()), !dbg !2863
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !2867
  %26 = icmp eq i32 %25, 0, !dbg !2867
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2868
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %28, metadata !2588, metadata !DIExpression()) #10, !dbg !2873
  %29 = icmp eq i64 %28, 0, !dbg !2874
  br i1 %29, label %35, label %30, !dbg !2875

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2876
  %32 = inttoptr i64 %31 to i16*, !dbg !2877
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2878
  %34 = icmp eq i16 %33, 0, !dbg !2879
  br i1 %34, label %35, label %36, !dbg !2868

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2868

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2868
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2868
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2868
  br i1 %26, label %57, label %41, !dbg !2880

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2881

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2881
  %44 = load i64, i64* %43, align 32, !dbg !2881
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2881
  %46 = load i8, i8* %45, align 8, !dbg !2881
  %47 = icmp eq i8 %46, 0, !dbg !2881
  br i1 %47, label %48, label %53, !dbg !2881

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2881
  %50 = load i8, i8* %49, align 64, !dbg !2881
  %51 = icmp eq i8 %50, 0, !dbg !2881
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2881
  br label %53, !dbg !2881

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2881
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #11, !dbg !2881
  br label %73, !dbg !2881

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2882

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2882
  %60 = load i64, i64* %59, align 32, !dbg !2882
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2882
  %62 = load i8, i8* %61, align 8, !dbg !2882
  %63 = icmp eq i8 %62, 0, !dbg !2882
  br i1 %63, label %64, label %69, !dbg !2882

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2882
  %66 = load i8, i8* %65, align 64, !dbg !2882
  %67 = icmp eq i8 %66, 0, !dbg !2882
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2882
  br label %69, !dbg !2882

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2882
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #11, !dbg !2882
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %74, metadata !2608, metadata !DIExpression()) #10, !dbg !2886
  %75 = icmp eq i64 %74, 0, !dbg !2887
  br i1 %75, label %106, label %76, !dbg !2888

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2889
  %78 = inttoptr i64 %77 to i16*, !dbg !2890
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2891
  br label %106, !dbg !2892

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2812, metadata !DIExpression()), !dbg !2893
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !2894
  %82 = icmp eq i32 %81, 0, !dbg !2894
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %83, metadata !2588, metadata !DIExpression()) #10, !dbg !2901
  %84 = icmp eq i64 %83, 0, !dbg !2902
  br i1 %84, label %90, label %85, !dbg !2903

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2904
  %87 = inttoptr i64 %86 to i16*, !dbg !2905
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2906
  %89 = icmp eq i16 %88, 0, !dbg !2907
  br i1 %89, label %90, label %91, !dbg !2908

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2908

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2908
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2908
  br i1 %82, label %97, label %95, !dbg !2909

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !2910
  br label %99, !dbg !2910

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !2912
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %100, metadata !2608, metadata !DIExpression()) #10, !dbg !2917
  %101 = icmp eq i64 %100, 0, !dbg !2918
  br i1 %101, label %106, label %102, !dbg !2919

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2920
  %104 = inttoptr i64 %103 to i16*, !dbg !2921
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2922
  br label %106, !dbg !2923

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #12, !dbg !2924
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2925
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2926
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2927
  br i1 %109, label %110, label %212, !dbg !2928

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2929
  %112 = icmp eq i64 %111, 0, !dbg !2931
  %113 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %113, metadata !2548, metadata !DIExpression()) #10, !dbg !2935
  %114 = icmp eq i64 %113, 0, !dbg !2936
  br i1 %114, label %120, label %115, !dbg !2937

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2938
  %117 = inttoptr i64 %116 to i16*, !dbg !2939
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2940
  %119 = zext i16 %118 to i32, !dbg !2940
  br label %120, !dbg !2941

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2942
  %122 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %122, metadata !2564, metadata !DIExpression()) #10, !dbg !2946
  %123 = icmp eq i64 %122, 0, !dbg !2947
  br i1 %123, label %128, label %124, !dbg !2948

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2949
  %126 = inttoptr i64 %125 to i16*, !dbg !2950
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2951
  br label %128, !dbg !2952

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2953

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2814, metadata !DIExpression()), !dbg !2954
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2955, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2336, metadata !DIExpression()) #10, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2335, metadata !DIExpression()) #10, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2820, metadata !DIExpression()), !dbg !2954
  %131 = tail call i32 @nk_vc_is_active() #11, !dbg !2958
  %132 = icmp eq i32 %131, 0, !dbg !2958
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2959
  %134 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %134, metadata !2588, metadata !DIExpression()) #10, !dbg !2964
  %135 = icmp eq i64 %134, 0, !dbg !2965
  br i1 %135, label %141, label %136, !dbg !2966

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2967
  %138 = inttoptr i64 %137 to i16*, !dbg !2968
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2969
  %140 = icmp eq i16 %139, 0, !dbg !2970
  br i1 %140, label %141, label %142, !dbg !2959

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2959

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2959
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2959
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2959
  br i1 %132, label %163, label %147, !dbg !2971

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2972

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2972
  %150 = load i64, i64* %149, align 32, !dbg !2972
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2972
  %152 = load i8, i8* %151, align 8, !dbg !2972
  %153 = icmp eq i8 %152, 0, !dbg !2972
  br i1 %153, label %154, label %159, !dbg !2972

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2972
  %156 = load i8, i8* %155, align 64, !dbg !2972
  %157 = icmp eq i8 %156, 0, !dbg !2972
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155, !dbg !2972
  br label %159, !dbg !2972

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ], !dbg !2972
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #11, !dbg !2972
  br label %179, !dbg !2972

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2973

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2973
  %166 = load i64, i64* %165, align 32, !dbg !2973
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2973
  %168 = load i8, i8* %167, align 8, !dbg !2973
  %169 = icmp eq i8 %168, 0, !dbg !2973
  br i1 %169, label %170, label %175, !dbg !2973

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2973
  %172 = load i8, i8* %171, align 64, !dbg !2973
  %173 = icmp eq i8 %172, 0, !dbg !2973
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171, !dbg !2973
  br label %175, !dbg !2973

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ], !dbg !2973
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #11, !dbg !2973
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %180, metadata !2608, metadata !DIExpression()) #10, !dbg !2977
  %181 = icmp eq i64 %180, 0, !dbg !2978
  br i1 %181, label %212, label %182, !dbg !2979

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2980
  %184 = inttoptr i64 %183 to i16*, !dbg !2981
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2982
  br label %212, !dbg !2983

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2833, metadata !DIExpression()), !dbg !2984
  %187 = tail call i32 @nk_vc_is_active() #11, !dbg !2985
  %188 = icmp eq i32 %187, 0, !dbg !2985
  %189 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %189, metadata !2588, metadata !DIExpression()) #10, !dbg !2992
  %190 = icmp eq i64 %189, 0, !dbg !2993
  br i1 %190, label %196, label %191, !dbg !2994

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2995
  %193 = inttoptr i64 %192 to i16*, !dbg !2996
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2997
  %195 = icmp eq i16 %194, 0, !dbg !2998
  br i1 %195, label %196, label %197, !dbg !2999

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2999

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2999
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2999
  br i1 %188, label %203, label %201, !dbg !3000

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #11, !dbg !3001
  br label %205, !dbg !3001

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #11, !dbg !3003
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %206, metadata !2608, metadata !DIExpression()) #10, !dbg !3008
  %207 = icmp eq i64 %206, 0, !dbg !3009
  br i1 %207, label %212, label %208, !dbg !3010

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !3011
  %210 = inttoptr i64 %209 to i16*, !dbg !3012
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !3013
  br label %212, !dbg !3014

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !3015
  ret i32 %213, !dbg !3016
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !3017 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !3019, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8** undef, metadata !3020, metadata !DIExpression()), !dbg !3134
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3135, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2336, metadata !DIExpression()) #10, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2335, metadata !DIExpression()) #10, !dbg !3137
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !3138
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.58, i64 0, i64 0)) #11, !dbg !3139
  %8 = icmp eq i32 %7, 0, !dbg !3139
  br i1 %8, label %111, label %9, !dbg !3140

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3141
  %11 = icmp eq i64 %10, 0, !dbg !3143
  %12 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %12, metadata !2548, metadata !DIExpression()) #10, !dbg !3147
  %13 = icmp eq i64 %12, 0, !dbg !3148
  br i1 %13, label %19, label %14, !dbg !3149

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !3150
  %16 = inttoptr i64 %15 to i16*, !dbg !3151
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !3152
  %18 = zext i16 %17 to i32, !dbg !3152
  br label %19, !dbg !3153

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !3154
  %21 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %21, metadata !2564, metadata !DIExpression()) #10, !dbg !3158
  %22 = icmp eq i64 %21, 0, !dbg !3159
  br i1 %22, label %27, label %23, !dbg !3160

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !3161
  %25 = inttoptr i64 %24 to i16*, !dbg !3162
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !3163
  br label %27, !dbg !3164

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !3165

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3021, metadata !DIExpression()), !dbg !3166
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3167, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2336, metadata !DIExpression()) #10, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2335, metadata !DIExpression()) #10, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !3027, metadata !DIExpression()), !dbg !3166
  %30 = tail call i32 @nk_vc_is_active() #11, !dbg !3170
  %31 = icmp eq i32 %30, 0, !dbg !3170
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3171
  %33 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %33, metadata !2588, metadata !DIExpression()) #10, !dbg !3176
  %34 = icmp eq i64 %33, 0, !dbg !3177
  br i1 %34, label %40, label %35, !dbg !3178

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !3179
  %37 = inttoptr i64 %36 to i16*, !dbg !3180
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !3181
  %39 = icmp eq i16 %38, 0, !dbg !3182
  br i1 %39, label %40, label %41, !dbg !3171

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !3171

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !3171
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3171
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !3171
  br i1 %31, label %62, label %46, !dbg !3183

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !3184

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3184
  %49 = load i64, i64* %48, align 32, !dbg !3184
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3184
  %51 = load i8, i8* %50, align 8, !dbg !3184
  %52 = icmp eq i8 %51, 0, !dbg !3184
  br i1 %52, label %53, label %58, !dbg !3184

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3184
  %55 = load i8, i8* %54, align 64, !dbg !3184
  %56 = icmp eq i8 %55, 0, !dbg !3184
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54, !dbg !3184
  br label %58, !dbg !3184

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ], !dbg !3184
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #11, !dbg !3184
  br label %78, !dbg !3184

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !3185

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !3185
  %65 = load i64, i64* %64, align 32, !dbg !3185
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !3185
  %67 = load i8, i8* %66, align 8, !dbg !3185
  %68 = icmp eq i8 %67, 0, !dbg !3185
  br i1 %68, label %69, label %74, !dbg !3185

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !3185
  %71 = load i8, i8* %70, align 64, !dbg !3185
  %72 = icmp eq i8 %71, 0, !dbg !3185
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70, !dbg !3185
  br label %74, !dbg !3185

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ], !dbg !3185
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #11, !dbg !3185
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %79, metadata !2608, metadata !DIExpression()) #10, !dbg !3189
  %80 = icmp eq i64 %79, 0, !dbg !3190
  br i1 %80, label %449, label %81, !dbg !3191

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !3192
  %83 = inttoptr i64 %82 to i16*, !dbg !3193
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !3194
  br label %449, !dbg !3195

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3040, metadata !DIExpression()), !dbg !3196
  %86 = tail call i32 @nk_vc_is_active() #11, !dbg !3197
  %87 = icmp eq i32 %86, 0, !dbg !3197
  %88 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %88, metadata !2588, metadata !DIExpression()) #10, !dbg !3204
  %89 = icmp eq i64 %88, 0, !dbg !3205
  br i1 %89, label %95, label %90, !dbg !3206

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !3207
  %92 = inttoptr i64 %91 to i16*, !dbg !3208
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !3209
  %94 = icmp eq i16 %93, 0, !dbg !3210
  br i1 %94, label %95, label %96, !dbg !3211

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !3211

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !3211
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3211
  br i1 %87, label %102, label %100, !dbg !3212

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #11, !dbg !3213
  br label %104, !dbg !3213

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #11, !dbg !3215
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %105, metadata !2608, metadata !DIExpression()) #10, !dbg !3220
  %106 = icmp eq i64 %105, 0, !dbg !3221
  br i1 %106, label %449, label %107, !dbg !3222

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3223
  %109 = inttoptr i64 %108 to i16*, !dbg !3224
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3225
  br label %449, !dbg !3226

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !3227
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #10, !dbg !3227
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !3228
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !3228
  store i64 100000000, i64* %113, align 8, !dbg !3228
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !3042, metadata !DIExpression(DW_OP_deref)), !dbg !3228
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #11, !dbg !3229
  %115 = icmp eq i32 %114, 0, !dbg !3229
  %116 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3230
  br i1 %115, label %219, label %117, !dbg !3231

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3232
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %119, metadata !2548, metadata !DIExpression()) #10, !dbg !3236
  %120 = icmp eq i64 %119, 0, !dbg !3237
  br i1 %120, label %126, label %121, !dbg !3238

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3239
  %123 = inttoptr i64 %122 to i16*, !dbg !3240
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3241
  %125 = zext i16 %124 to i32, !dbg !3241
  br label %126, !dbg !3242

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3243
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %128, metadata !2564, metadata !DIExpression()) #10, !dbg !3247
  %129 = icmp eq i64 %128, 0, !dbg !3248
  br i1 %129, label %134, label %130, !dbg !3249

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3250
  %132 = inttoptr i64 %131 to i16*, !dbg !3251
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3252
  br label %134, !dbg !3253

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3254

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3068, metadata !DIExpression()), !dbg !3255
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3256, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2336, metadata !DIExpression()) #10, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2335, metadata !DIExpression()) #10, !dbg !3258
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3074, metadata !DIExpression()), !dbg !3255
  %137 = call i32 @nk_vc_is_active() #11, !dbg !3259
  %138 = icmp eq i32 %137, 0, !dbg !3259
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3260
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %140, metadata !2588, metadata !DIExpression()) #10, !dbg !3265
  %141 = icmp eq i64 %140, 0, !dbg !3266
  br i1 %141, label %147, label %142, !dbg !3267

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3268
  %144 = inttoptr i64 %143 to i16*, !dbg !3269
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3270
  %146 = icmp eq i16 %145, 0, !dbg !3271
  br i1 %146, label %147, label %148, !dbg !3260

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3260

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3260
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3260
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3260
  br i1 %138, label %169, label %153, !dbg !3272

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3273

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3273
  %156 = load i64, i64* %155, align 32, !dbg !3273
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3273
  %158 = load i8, i8* %157, align 8, !dbg !3273
  %159 = icmp eq i8 %158, 0, !dbg !3273
  br i1 %159, label %160, label %165, !dbg !3273

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3273
  %162 = load i8, i8* %161, align 64, !dbg !3273
  %163 = icmp eq i8 %162, 0, !dbg !3273
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3273
  br label %165, !dbg !3273

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3273
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #11, !dbg !3273
  br label %185, !dbg !3273

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3274

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3274
  %172 = load i64, i64* %171, align 32, !dbg !3274
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3274
  %174 = load i8, i8* %173, align 8, !dbg !3274
  %175 = icmp eq i8 %174, 0, !dbg !3274
  br i1 %175, label %176, label %181, !dbg !3274

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3274
  %178 = load i8, i8* %177, align 64, !dbg !3274
  %179 = icmp eq i8 %178, 0, !dbg !3274
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3274
  br label %181, !dbg !3274

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3274
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #11, !dbg !3274
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %186, metadata !2608, metadata !DIExpression()) #10, !dbg !3278
  %187 = icmp eq i64 %186, 0, !dbg !3279
  br i1 %187, label %218, label %188, !dbg !3280

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3281
  %190 = inttoptr i64 %189 to i16*, !dbg !3282
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3283
  br label %218, !dbg !3284

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3087, metadata !DIExpression()), !dbg !3285
  %193 = call i32 @nk_vc_is_active() #11, !dbg !3286
  %194 = icmp eq i32 %193, 0, !dbg !3286
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %195, metadata !2588, metadata !DIExpression()) #10, !dbg !3293
  %196 = icmp eq i64 %195, 0, !dbg !3294
  br i1 %196, label %202, label %197, !dbg !3295

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3296
  %199 = inttoptr i64 %198 to i16*, !dbg !3297
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3298
  %201 = icmp eq i16 %200, 0, !dbg !3299
  br i1 %201, label %202, label %203, !dbg !3300

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3300

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3300
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3300
  br i1 %194, label %209, label %207, !dbg !3301

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #11, !dbg !3302
  br label %211, !dbg !3302

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #11, !dbg !3304
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %212, metadata !2608, metadata !DIExpression()) #10, !dbg !3309
  %213 = icmp eq i64 %212, 0, !dbg !3310
  br i1 %213, label %218, label %214, !dbg !3311

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3312
  %216 = inttoptr i64 %215 to i16*, !dbg !3313
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3314
  br label %218, !dbg !3315

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 526) #13, !dbg !3316
  unreachable, !dbg !3316

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3317
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3320
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3320
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !3089, metadata !DIExpression()), !dbg !3321
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3322
  br i1 %223, label %224, label %326, !dbg !3323

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3324
  %226 = icmp eq i64 %225, 0, !dbg !3326
  %227 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %227, metadata !2548, metadata !DIExpression()) #10, !dbg !3330
  %228 = icmp eq i64 %227, 0, !dbg !3331
  br i1 %228, label %234, label %229, !dbg !3332

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3333
  %231 = inttoptr i64 %230 to i16*, !dbg !3334
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3335
  %233 = zext i16 %232 to i32, !dbg !3335
  br label %234, !dbg !3336

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3337
  %236 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %236, metadata !2564, metadata !DIExpression()) #10, !dbg !3341
  %237 = icmp eq i64 %236, 0, !dbg !3342
  br i1 %237, label %242, label %238, !dbg !3343

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3344
  %240 = inttoptr i64 %239 to i16*, !dbg !3345
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3346
  br label %242, !dbg !3347

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3348

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3090, metadata !DIExpression()), !dbg !3349
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3350, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2336, metadata !DIExpression()) #10, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2335, metadata !DIExpression()) #10, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !3096, metadata !DIExpression()), !dbg !3349
  %245 = call i32 @nk_vc_is_active() #11, !dbg !3353
  %246 = icmp eq i32 %245, 0, !dbg !3353
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3354
  %248 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %248, metadata !2588, metadata !DIExpression()) #10, !dbg !3359
  %249 = icmp eq i64 %248, 0, !dbg !3360
  br i1 %249, label %255, label %250, !dbg !3361

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3362
  %252 = inttoptr i64 %251 to i16*, !dbg !3363
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3364
  %254 = icmp eq i16 %253, 0, !dbg !3365
  br i1 %254, label %255, label %256, !dbg !3354

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3354

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3354
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3354
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3354
  br i1 %246, label %277, label %261, !dbg !3366

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3367

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3367
  %264 = load i64, i64* %263, align 32, !dbg !3367
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3367
  %266 = load i8, i8* %265, align 8, !dbg !3367
  %267 = icmp eq i8 %266, 0, !dbg !3367
  br i1 %267, label %268, label %273, !dbg !3367

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3367
  %270 = load i8, i8* %269, align 64, !dbg !3367
  %271 = icmp eq i8 %270, 0, !dbg !3367
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269, !dbg !3367
  br label %273, !dbg !3367

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ], !dbg !3367
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #11, !dbg !3367
  br label %293, !dbg !3367

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3368

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3368
  %280 = load i64, i64* %279, align 32, !dbg !3368
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3368
  %282 = load i8, i8* %281, align 8, !dbg !3368
  %283 = icmp eq i8 %282, 0, !dbg !3368
  br i1 %283, label %284, label %289, !dbg !3368

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3368
  %286 = load i8, i8* %285, align 64, !dbg !3368
  %287 = icmp eq i8 %286, 0, !dbg !3368
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285, !dbg !3368
  br label %289, !dbg !3368

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ], !dbg !3368
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #11, !dbg !3368
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %294, metadata !2608, metadata !DIExpression()) #10, !dbg !3372
  %295 = icmp eq i64 %294, 0, !dbg !3373
  br i1 %295, label %326, label %296, !dbg !3374

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3375
  %298 = inttoptr i64 %297 to i16*, !dbg !3376
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3377
  br label %326, !dbg !3378

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !3109, metadata !DIExpression()), !dbg !3379
  %301 = call i32 @nk_vc_is_active() #11, !dbg !3380
  %302 = icmp eq i32 %301, 0, !dbg !3380
  %303 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %303, metadata !2588, metadata !DIExpression()) #10, !dbg !3387
  %304 = icmp eq i64 %303, 0, !dbg !3388
  br i1 %304, label %310, label %305, !dbg !3389

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3390
  %307 = inttoptr i64 %306 to i16*, !dbg !3391
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3392
  %309 = icmp eq i16 %308, 0, !dbg !3393
  br i1 %309, label %310, label %311, !dbg !3394

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3394

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3394
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3394
  br i1 %302, label %317, label %315, !dbg !3395

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #11, !dbg !3396
  br label %319, !dbg !3396

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #11, !dbg !3398
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %320, metadata !2608, metadata !DIExpression()) #10, !dbg !3403
  %321 = icmp eq i64 %320, 0, !dbg !3404
  br i1 %321, label %326, label %322, !dbg !3405

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3406
  %324 = inttoptr i64 %323 to i16*, !dbg !3407
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3408
  br label %326, !dbg !3409

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3410, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2336, metadata !DIExpression()) #10, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2335, metadata !DIExpression()) #10, !dbg !3412
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3413
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3414
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #10, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3111, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #12, !dbg !3417
  %331 = icmp slt i32 %330, 0, !dbg !3418
  br i1 %331, label %332, label %434, !dbg !3419

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3420
  %334 = icmp eq i64 %333, 0, !dbg !3422
  %335 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %335, metadata !2548, metadata !DIExpression()) #10, !dbg !3426
  %336 = icmp eq i64 %335, 0, !dbg !3427
  br i1 %336, label %342, label %337, !dbg !3428

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3429
  %339 = inttoptr i64 %338 to i16*, !dbg !3430
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3431
  %341 = zext i16 %340 to i32, !dbg !3431
  br label %342, !dbg !3432

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3433
  %344 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %344, metadata !2564, metadata !DIExpression()) #10, !dbg !3437
  %345 = icmp eq i64 %344, 0, !dbg !3438
  br i1 %345, label %350, label %346, !dbg !3439

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3440
  %348 = inttoptr i64 %347 to i16*, !dbg !3441
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3442
  br label %350, !dbg !3443

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3444

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3112, metadata !DIExpression()), !dbg !3445
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3446, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2336, metadata !DIExpression()) #10, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2335, metadata !DIExpression()) #10, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !3118, metadata !DIExpression()), !dbg !3445
  %353 = call i32 @nk_vc_is_active() #11, !dbg !3449
  %354 = icmp eq i32 %353, 0, !dbg !3449
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3450
  %356 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %356, metadata !2588, metadata !DIExpression()) #10, !dbg !3455
  %357 = icmp eq i64 %356, 0, !dbg !3456
  br i1 %357, label %363, label %358, !dbg !3457

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3458
  %360 = inttoptr i64 %359 to i16*, !dbg !3459
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3460
  %362 = icmp eq i16 %361, 0, !dbg !3461
  br i1 %362, label %363, label %364, !dbg !3450

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3450

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3450
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3450
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3450
  br i1 %354, label %385, label %369, !dbg !3462

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3463

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3463
  %372 = load i64, i64* %371, align 32, !dbg !3463
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3463
  %374 = load i8, i8* %373, align 8, !dbg !3463
  %375 = icmp eq i8 %374, 0, !dbg !3463
  br i1 %375, label %376, label %381, !dbg !3463

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3463
  %378 = load i8, i8* %377, align 64, !dbg !3463
  %379 = icmp eq i8 %378, 0, !dbg !3463
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377, !dbg !3463
  br label %381, !dbg !3463

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ], !dbg !3463
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #11, !dbg !3463
  br label %401, !dbg !3463

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3464

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3464
  %388 = load i64, i64* %387, align 32, !dbg !3464
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3464
  %390 = load i8, i8* %389, align 8, !dbg !3464
  %391 = icmp eq i8 %390, 0, !dbg !3464
  br i1 %391, label %392, label %397, !dbg !3464

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3464
  %394 = load i8, i8* %393, align 64, !dbg !3464
  %395 = icmp eq i8 %394, 0, !dbg !3464
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393, !dbg !3464
  br label %397, !dbg !3464

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ], !dbg !3464
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #11, !dbg !3464
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %402, metadata !2608, metadata !DIExpression()) #10, !dbg !3468
  %403 = icmp eq i64 %402, 0, !dbg !3469
  br i1 %403, label %434, label %404, !dbg !3470

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3471
  %406 = inttoptr i64 %405 to i16*, !dbg !3472
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3473
  br label %434, !dbg !3474

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !3131, metadata !DIExpression()), !dbg !3475
  %409 = call i32 @nk_vc_is_active() #11, !dbg !3476
  %410 = icmp eq i32 %409, 0, !dbg !3476
  %411 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %411, metadata !2588, metadata !DIExpression()) #10, !dbg !3483
  %412 = icmp eq i64 %411, 0, !dbg !3484
  br i1 %412, label %418, label %413, !dbg !3485

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3486
  %415 = inttoptr i64 %414 to i16*, !dbg !3487
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3488
  %417 = icmp eq i16 %416, 0, !dbg !3489
  br i1 %417, label %418, label %419, !dbg !3490

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3490

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3490
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3490
  br i1 %410, label %425, label %423, !dbg !3491

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #11, !dbg !3492
  br label %427, !dbg !3492

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #11, !dbg !3494
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %428, metadata !2608, metadata !DIExpression()) #10, !dbg !3499
  %429 = icmp eq i64 %428, 0, !dbg !3500
  br i1 %429, label %434, label %430, !dbg !3501

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3502
  %432 = inttoptr i64 %431 to i16*, !dbg !3503
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3504
  br label %434, !dbg !3505

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3506
  %436 = load i64, i64* %435, align 8, !dbg !3506
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3111, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3507
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3508
  store i64 %436, i64* %438, align 8, !dbg !3508
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3111, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3509
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3510
  store i64 %436, i64* %440, align 8, !dbg !3510
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3511
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3111, metadata !DIExpression()), !dbg !3416
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3512
  store i32 1, i32* %442, align 8, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !3111, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2131, metadata !DIExpression()) #10, !dbg !3514
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3516
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3516
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3517
  %446 = load i8*, i8** %445, align 8, !dbg !3517
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3518
  %448 = load i8**, i8*** %447, align 8, !dbg !3518
  call void %444(i8* %446, i8** %448) #11, !dbg !3519
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #11, !dbg !3520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #10, !dbg !3521
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #10, !dbg !3521
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3521
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8** %1, metadata !3525, metadata !DIExpression()), !dbg !3527
  br label %3, !dbg !3528

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3529
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3539
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3540
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3540
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3541
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3541
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3542, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !2336, metadata !DIExpression()) #10, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !2335, metadata !DIExpression()) #10, !dbg !3544
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3545
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3546

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3547
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3552
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3553
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3553
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1771, metadata !DIExpression()) #10, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1792, metadata !DIExpression()) #10, !dbg !3557
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3559
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3559
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3560
  br i1 %20, label %33, label %21, !dbg !3561

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !3562
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3562
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3562
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1773, metadata !DIExpression()) #10, !dbg !3562
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1772, metadata !DIExpression()) #10, !dbg !3556
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1804, metadata !DIExpression()) #10, !dbg !3564
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3566
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3566
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1813, metadata !DIExpression()) #10, !dbg !3568
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1818, metadata !DIExpression()) #10, !dbg !3570
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3571
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3572
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3573
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3574
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1826, metadata !DIExpression()) #10, !dbg !3575
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3577
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3577
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3578
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3578
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1772, metadata !DIExpression()) #10, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !3536, metadata !DIExpression()) #10, !dbg !3579
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3580
  br i1 %32, label %33, label %54, !dbg !3582

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3583
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3589
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3590
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3590
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3591
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3591
  %40 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3592
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3596
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !3597
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !3597
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !3598
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !3598
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !3599
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !3600

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3601
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !3606
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !3607
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !3607
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !3608
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !3608
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3536, metadata !DIExpression()) #10, !dbg !3579
  br label %54, !dbg !3609

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !3610
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3536, metadata !DIExpression()) #10, !dbg !3579
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #11, !dbg !3611
  br label %nk_fiber_yield.exit, !dbg !3612

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !3610
  %58 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3613
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3618
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3619
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3619
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !3621, metadata !DIExpression()), !dbg !3625
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !3627
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !3627
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !3624, metadata !DIExpression()), !dbg !3628
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !3629
  br i1 %65, label %66, label %70, !dbg !3630

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !3631
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !3631
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !3632
  br i1 %69, label %71, label %70, !dbg !3633

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !3634, !llvm.loop !3635

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #11, !dbg !3637
  br label %70, !dbg !3639
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !3640 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3644, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8* %1, metadata !3645, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8** %2, metadata !3646, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %3, metadata !3647, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3648, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !3649, metadata !DIExpression()), !dbg !3660
  %6 = icmp eq i64 %3, 0, !dbg !3661
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3662
  %8 = tail call i8* @kmem_malloc(i64 152) #11, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %8, metadata !3651, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %8, metadata !3649, metadata !DIExpression()), !dbg !3660
  %9 = icmp eq i8* %8, null, !dbg !3664
  br i1 %9, label %104, label %10, !dbg !3666

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #11, !dbg !3667
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3668
  %13 = bitcast i8* %12 to i32*, !dbg !3668
  store i32 0, i32* %13, align 4, !dbg !3669
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3670
  %15 = bitcast i8* %14 to i64*, !dbg !3670
  store i64 %7, i64* %15, align 8, !dbg !3671
  %16 = tail call i8* @kmem_malloc(i64 %7) #11, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %16, metadata !3653, metadata !DIExpression()), !dbg !3672
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3673
  %18 = bitcast i8* %17 to i8**, !dbg !3673
  store i8* %16, i8** %18, align 8, !dbg !3674
  %19 = icmp eq i8* %16, null, !dbg !3675
  br i1 %19, label %20, label %21, !dbg !3677

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #11, !dbg !3678
  br label %104, !dbg !3680

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3677
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3681
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3681
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3682
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3683
  %26 = bitcast i8* %25 to i8**, !dbg !3683
  store i8* %1, i8** %26, align 8, !dbg !3684
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3685
  %28 = bitcast i8* %27 to i8***, !dbg !3685
  store i8** %2, i8*** %28, align 8, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %8, metadata !2141, metadata !DIExpression()), !dbg !3687
  %29 = load i64, i64* %15, align 8, !dbg !3689
  %30 = bitcast i8* %8 to i64*, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1761, metadata !DIExpression()), !dbg !3693
  %31 = add i64 %22, -8, !dbg !3694
  %32 = add i64 %31, %29, !dbg !3695
  store i64 %32, i64* %30, align 8, !dbg !3695
  %33 = inttoptr i64 %32 to i64*, !dbg !3696
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3700
  %34 = load i64, i64* %30, align 8, !dbg !3701
  %35 = add i64 %34, -8, !dbg !3701
  store i64 %35, i64* %30, align 8, !dbg !3701
  %36 = inttoptr i64 %35 to i64*, !dbg !3702
  store i64 0, i64* %36, align 8, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3706
  %37 = load i64, i64* %30, align 8, !dbg !3707
  %38 = add i64 %37, -8, !dbg !3707
  store i64 %38, i64* %30, align 8, !dbg !3707
  %39 = inttoptr i64 %38 to i64*, !dbg !3708
  store i64 0, i64* %39, align 8, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3712
  %40 = load i64, i64* %30, align 8, !dbg !3713
  %41 = add i64 %40, -8, !dbg !3713
  store i64 %41, i64* %30, align 8, !dbg !3713
  %42 = inttoptr i64 %41 to i64*, !dbg !3714
  store i64 0, i64* %42, align 8, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3718
  %43 = load i64, i64* %30, align 8, !dbg !3719
  %44 = add i64 %43, -8, !dbg !3719
  store i64 %44, i64* %30, align 8, !dbg !3719
  %45 = inttoptr i64 %44 to i64*, !dbg !3720
  store i64 0, i64* %45, align 8, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %8, metadata !1760, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3724
  %46 = load i64, i64* %30, align 8, !dbg !3725
  %47 = add i64 %46, -8, !dbg !3725
  store i64 %47, i64* %30, align 8, !dbg !3725
  %48 = inttoptr i64 %47 to i64*, !dbg !3726
  store i64 0, i64* %48, align 8, !dbg !3727
  %49 = ptrtoint i8* %8 to i64, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %49, metadata !1761, metadata !DIExpression()), !dbg !3731
  %50 = load i64, i64* %30, align 8, !dbg !3732
  %51 = add i64 %50, -8, !dbg !3732
  store i64 %51, i64* %30, align 8, !dbg !3732
  %52 = inttoptr i64 %51 to i64*, !dbg !3733
  store i64 %49, i64* %52, align 8, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3737
  %53 = load i64, i64* %30, align 8, !dbg !3738
  %54 = add i64 %53, -8, !dbg !3738
  store i64 %54, i64* %30, align 8, !dbg !3738
  %55 = inttoptr i64 %54 to i64*, !dbg !3739
  store i64 0, i64* %55, align 8, !dbg !3740
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3743
  %56 = load i64, i64* %30, align 8, !dbg !3744
  %57 = add i64 %56, -8, !dbg !3744
  store i64 %57, i64* %30, align 8, !dbg !3744
  %58 = inttoptr i64 %57 to i64*, !dbg !3745
  store i64 0, i64* %58, align 8, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3749
  %59 = load i64, i64* %30, align 8, !dbg !3750
  %60 = add i64 %59, -8, !dbg !3750
  store i64 %60, i64* %30, align 8, !dbg !3750
  %61 = inttoptr i64 %60 to i64*, !dbg !3751
  store i64 0, i64* %61, align 8, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3755
  %62 = load i64, i64* %30, align 8, !dbg !3756
  %63 = add i64 %62, -8, !dbg !3756
  store i64 %63, i64* %30, align 8, !dbg !3756
  %64 = inttoptr i64 %63 to i64*, !dbg !3757
  store i64 0, i64* %64, align 8, !dbg !3758
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3761
  %65 = load i64, i64* %30, align 8, !dbg !3762
  %66 = add i64 %65, -8, !dbg !3762
  store i64 %66, i64* %30, align 8, !dbg !3762
  %67 = inttoptr i64 %66 to i64*, !dbg !3763
  store i64 0, i64* %67, align 8, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3767
  %68 = load i64, i64* %30, align 8, !dbg !3768
  %69 = add i64 %68, -8, !dbg !3768
  store i64 %69, i64* %30, align 8, !dbg !3768
  %70 = inttoptr i64 %69 to i64*, !dbg !3769
  store i64 0, i64* %70, align 8, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3773
  %71 = load i64, i64* %30, align 8, !dbg !3774
  %72 = add i64 %71, -8, !dbg !3774
  store i64 %72, i64* %30, align 8, !dbg !3774
  %73 = inttoptr i64 %72 to i64*, !dbg !3775
  store i64 0, i64* %73, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3779
  %74 = load i64, i64* %30, align 8, !dbg !3780
  %75 = add i64 %74, -8, !dbg !3780
  store i64 %75, i64* %30, align 8, !dbg !3780
  %76 = inttoptr i64 %75 to i64*, !dbg !3781
  store i64 0, i64* %76, align 8, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %49, metadata !1760, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !3785
  %77 = load i64, i64* %30, align 8, !dbg !3786
  %78 = add i64 %77, -8, !dbg !3786
  store i64 %78, i64* %30, align 8, !dbg !3786
  %79 = inttoptr i64 %78 to i64*, !dbg !3787
  store i64 0, i64* %79, align 8, !dbg !3788
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3789
  br i1 %80, label %83, label %81, !dbg !3791

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3792
  store i8* %8, i8** %82, align 8, !dbg !3792
  br label %83, !dbg !3794

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3795, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2336, metadata !DIExpression()) #10, !dbg !3795
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2335, metadata !DIExpression()) #10, !dbg !3797
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3798
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3798
  %87 = load i64, i64* %86, align 8, !dbg !3798
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3799
  %89 = bitcast i8* %88 to i64*, !dbg !3800
  store i64 %87, i64* %89, align 8, !dbg !3800
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %90, metadata !1826, metadata !DIExpression()), !dbg !3802
  %91 = bitcast i8* %90 to i8**, !dbg !3804
  store i8* %90, i8** %91, align 8, !dbg !3804
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3805
  %93 = bitcast i8* %92 to i8**, !dbg !3806
  store i8* %90, i8** %93, align 8, !dbg !3806
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3807
  %95 = bitcast i8* %94 to i32*, !dbg !3807
  store i32 0, i32* %95, align 8, !dbg !3808
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %96, metadata !1826, metadata !DIExpression()), !dbg !3810
  %97 = bitcast i8* %96 to i8**, !dbg !3812
  store i8* %96, i8** %97, align 8, !dbg !3812
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3813
  %99 = bitcast i8* %98 to i8**, !dbg !3814
  store i8* %96, i8** %99, align 8, !dbg !3814
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %100, metadata !1826, metadata !DIExpression()), !dbg !3816
  %101 = bitcast i8* %100 to i8**, !dbg !3818
  store i8* %100, i8** %101, align 8, !dbg !3818
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3819
  %103 = bitcast i8* %102 to i8**, !dbg !3820
  store i8* %100, i8** %103, align 8, !dbg !3820
  br label %104, !dbg !3821

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3822
  ret i32 %105, !dbg !3823
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !3534 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3824
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3828
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3829
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3829
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3830
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3830
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3831, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2336, metadata !DIExpression()) #10, !dbg !3831
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2335, metadata !DIExpression()) #10, !dbg !3833
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3834
  br i1 %8, label %9, label %54, !dbg !3835

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3836
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3841
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3842
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3842
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3843
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1771, metadata !DIExpression()) #10, !dbg !3844
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1792, metadata !DIExpression()) #10, !dbg !3846
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3848
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3848
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3849
  br i1 %17, label %30, label %18, !dbg !3850

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !3851
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3851
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3851
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1773, metadata !DIExpression()) #10, !dbg !3851
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1772, metadata !DIExpression()) #10, !dbg !3845
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1804, metadata !DIExpression()) #10, !dbg !3853
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3855
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3855
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3856
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1813, metadata !DIExpression()) #10, !dbg !3857
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1818, metadata !DIExpression()) #10, !dbg !3859
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3860
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3861
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3862
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3863
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1826, metadata !DIExpression()) #10, !dbg !3864
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3866
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3866
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3867
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1772, metadata !DIExpression()) #10, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3536, metadata !DIExpression()), !dbg !3868
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3869
  br i1 %29, label %30, label %51, !dbg !3870

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3871
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3875
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3876
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3876
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3877
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3877
  %37 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3878
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3882
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3883
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3883
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3884
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3884
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3885
  br i1 %43, label %54, label %44, !dbg !3886

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3887
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3891
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3892
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3892
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3893
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3893
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3536, metadata !DIExpression()), !dbg !3868
  br label %51, !dbg !3894

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3895
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3536, metadata !DIExpression()), !dbg !3868
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #12, !dbg !3896
  br label %54, !dbg !3897

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3895
  ret i32 %55, !dbg !3898
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3899 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3942
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3944
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3901, metadata !DIExpression()), !dbg !3945
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3946
  %5 = icmp eq i64 %4, 0, !dbg !3948
  %6 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %6, metadata !2548, metadata !DIExpression()) #10, !dbg !3952
  %7 = icmp eq i64 %6, 0, !dbg !3953
  br i1 %7, label %13, label %8, !dbg !3954

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3955
  %10 = inttoptr i64 %9 to i16*, !dbg !3956
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3957
  %12 = zext i16 %11 to i32, !dbg !3957
  br label %13, !dbg !3958

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3959
  %15 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %15, metadata !2564, metadata !DIExpression()) #10, !dbg !3963
  %16 = icmp eq i64 %15, 0, !dbg !3964
  br i1 %16, label %21, label %17, !dbg !3965

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3966
  %19 = inttoptr i64 %18 to i16*, !dbg !3967
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3968
  br label %21, !dbg !3969

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3970

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3902, metadata !DIExpression()), !dbg !3971
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3972, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2336, metadata !DIExpression()) #10, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2335, metadata !DIExpression()) #10, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3906, metadata !DIExpression()), !dbg !3971
  %24 = tail call i32 @nk_vc_is_active() #11, !dbg !3975
  %25 = icmp eq i32 %24, 0, !dbg !3975
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3976
  %27 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %27, metadata !2588, metadata !DIExpression()) #10, !dbg !3981
  %28 = icmp eq i64 %27, 0, !dbg !3982
  br i1 %28, label %34, label %29, !dbg !3983

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3984
  %31 = inttoptr i64 %30 to i16*, !dbg !3985
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3986
  %33 = icmp eq i16 %32, 0, !dbg !3987
  br i1 %33, label %34, label %35, !dbg !3976

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3976

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3976
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3976
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3976
  br i1 %25, label %58, label %40, !dbg !3988

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3989

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3989
  %43 = load i64, i64* %42, align 32, !dbg !3989
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3989
  %45 = load i8, i8* %44, align 8, !dbg !3989
  %46 = icmp eq i8 %45, 0, !dbg !3989
  br i1 %46, label %47, label %52, !dbg !3989

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3989
  %49 = load i8, i8* %48, align 64, !dbg !3989
  %50 = icmp eq i8 %49, 0, !dbg !3989
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48, !dbg !3989
  br label %52, !dbg !3989

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ], !dbg !3989
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3989
  %56 = load i32, i32* %55, align 8, !dbg !3989
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.70, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #11, !dbg !3989
  br label %76, !dbg !3989

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3990

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3990
  %61 = load i64, i64* %60, align 32, !dbg !3990
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3990
  %63 = load i8, i8* %62, align 8, !dbg !3990
  %64 = icmp eq i8 %63, 0, !dbg !3990
  br i1 %64, label %65, label %70, !dbg !3990

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3990
  %67 = load i8, i8* %66, align 64, !dbg !3990
  %68 = icmp eq i8 %67, 0, !dbg !3990
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66, !dbg !3990
  br label %70, !dbg !3990

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ], !dbg !3990
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3990
  %74 = load i32, i32* %73, align 8, !dbg !3990
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.70, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #11, !dbg !3990
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3991
  call void @llvm.dbg.value(metadata i64 %77, metadata !2608, metadata !DIExpression()) #10, !dbg !3994
  %78 = icmp eq i64 %77, 0, !dbg !3995
  br i1 %78, label %111, label %79, !dbg !3996

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3997
  %81 = inttoptr i64 %80 to i16*, !dbg !3998
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3999
  br label %111, !dbg !4000

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3919, metadata !DIExpression()), !dbg !4001
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !4002
  %85 = icmp eq i32 %84, 0, !dbg !4002
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %86, metadata !2588, metadata !DIExpression()) #10, !dbg !4009
  %87 = icmp eq i64 %86, 0, !dbg !4010
  br i1 %87, label %93, label %88, !dbg !4011

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !4012
  %90 = inttoptr i64 %89 to i16*, !dbg !4013
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !4014
  %92 = icmp eq i16 %91, 0, !dbg !4015
  br i1 %92, label %93, label %94, !dbg !4016

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !4016

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !4016
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !4016
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !4016
  %99 = load i32, i32* %98, align 8, !dbg !4016
  br i1 %85, label %102, label %100, !dbg !4017

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.71, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !4018
  br label %104, !dbg !4018

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.71, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !4020
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %105, metadata !2608, metadata !DIExpression()) #10, !dbg !4025
  %106 = icmp eq i64 %105, 0, !dbg !4026
  br i1 %106, label %111, label %107, !dbg !4027

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !4028
  %109 = inttoptr i64 %108 to i16*, !dbg !4029
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !4030
  br label %111, !dbg !4031

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #10, !dbg !4032
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !4063, !srcloc !4064
  call void @llvm.dbg.value(metadata i32 %113, metadata !4040, metadata !DIExpression()) #10, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %113, metadata !4037, metadata !DIExpression()) #10, !dbg !4065
  call void @llvm.dbg.value(metadata i8** %1, metadata !4035, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4066
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #11, !dbg !4067
  %115 = icmp eq i32 %114, 0, !dbg !4067
  br i1 %115, label %321, label %116, !dbg !4068

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4069
  %118 = icmp eq i64 %117, 0, !dbg !4071
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %119, metadata !2548, metadata !DIExpression()) #10, !dbg !4075
  %120 = icmp eq i64 %119, 0, !dbg !4076
  br i1 %120, label %126, label %121, !dbg !4077

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !4078
  %123 = inttoptr i64 %122 to i16*, !dbg !4079
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !4080
  %125 = zext i16 %124 to i32, !dbg !4080
  br label %126, !dbg !4081

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !4082
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4083
  call void @llvm.dbg.value(metadata i64 %128, metadata !2564, metadata !DIExpression()) #10, !dbg !4086
  %129 = icmp eq i64 %128, 0, !dbg !4087
  br i1 %129, label %134, label %130, !dbg !4088

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !4089
  %132 = inttoptr i64 %131 to i16*, !dbg !4090
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !4091
  br label %134, !dbg !4092

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !4093

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4042, metadata !DIExpression()) #10, !dbg !4094
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !4095, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2336, metadata !DIExpression()) #10, !dbg !4095
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2335, metadata !DIExpression()) #10, !dbg !4097
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !4047, metadata !DIExpression()) #10, !dbg !4094
  %137 = call i32 @nk_vc_is_active() #11, !dbg !4098
  %138 = icmp eq i32 %137, 0, !dbg !4098
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !4099
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4100
  call void @llvm.dbg.value(metadata i64 %140, metadata !2588, metadata !DIExpression()) #10, !dbg !4104
  %141 = icmp eq i64 %140, 0, !dbg !4105
  br i1 %141, label %147, label %142, !dbg !4106

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !4107
  %144 = inttoptr i64 %143 to i16*, !dbg !4108
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !4109
  %146 = icmp eq i16 %145, 0, !dbg !4110
  br i1 %146, label %147, label %148, !dbg !4099

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !4099

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !4099
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !4099
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !4099
  br i1 %138, label %169, label %153, !dbg !4111

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !4112

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4112
  %156 = load i64, i64* %155, align 32, !dbg !4112
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4112
  %158 = load i8, i8* %157, align 8, !dbg !4112
  %159 = icmp eq i8 %158, 0, !dbg !4112
  br i1 %159, label %160, label %165, !dbg !4112

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4112
  %162 = load i8, i8* %161, align 64, !dbg !4112
  %163 = icmp eq i8 %162, 0, !dbg !4112
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !4112
  br label %165, !dbg !4112

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !4112
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.72, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #11, !dbg !4112
  br label %185, !dbg !4112

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !4113

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !4113
  %172 = load i64, i64* %171, align 32, !dbg !4113
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !4113
  %174 = load i8, i8* %173, align 8, !dbg !4113
  %175 = icmp eq i8 %174, 0, !dbg !4113
  br i1 %175, label %176, label %181, !dbg !4113

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !4113
  %178 = load i8, i8* %177, align 64, !dbg !4113
  %179 = icmp eq i8 %178, 0, !dbg !4113
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !4113
  br label %181, !dbg !4113

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !4113
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.72, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #11, !dbg !4113
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4114
  call void @llvm.dbg.value(metadata i64 %186, metadata !2608, metadata !DIExpression()) #10, !dbg !4117
  %187 = icmp eq i64 %186, 0, !dbg !4118
  br i1 %187, label %218, label %188, !dbg !4119

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !4120
  %190 = inttoptr i64 %189 to i16*, !dbg !4121
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !4122
  br label %218, !dbg !4123

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !4060, metadata !DIExpression()) #10, !dbg !4124
  %193 = call i32 @nk_vc_is_active() #11, !dbg !4125
  %194 = icmp eq i32 %193, 0, !dbg !4125
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %195, metadata !2588, metadata !DIExpression()) #10, !dbg !4132
  %196 = icmp eq i64 %195, 0, !dbg !4133
  br i1 %196, label %202, label %197, !dbg !4134

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !4135
  %199 = inttoptr i64 %198 to i16*, !dbg !4136
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !4137
  %201 = icmp eq i16 %200, 0, !dbg !4138
  br i1 %201, label %202, label %203, !dbg !4139

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !4139

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !4139
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !4139
  br i1 %194, label %209, label %207, !dbg !4140

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.73, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #11, !dbg !4141
  br label %211, !dbg !4141

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.73, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #11, !dbg !4143
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %212, metadata !2608, metadata !DIExpression()) #10, !dbg !4148
  %213 = icmp eq i64 %212, 0, !dbg !4149
  br i1 %213, label %218, label %214, !dbg !4150

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !4151
  %216 = inttoptr i64 %215 to i16*, !dbg !4152
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !4153
  br label %218, !dbg !4154

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !4155
  %219 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4156
  %220 = icmp eq i64 %219, 0, !dbg !4158
  %221 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %221, metadata !2548, metadata !DIExpression()) #10, !dbg !4162
  %222 = icmp eq i64 %221, 0, !dbg !4163
  br i1 %222, label %228, label %223, !dbg !4164

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !4165
  %225 = inttoptr i64 %224 to i16*, !dbg !4166
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !4167
  %227 = zext i16 %226 to i32, !dbg !4167
  br label %228, !dbg !4168

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !4169
  %230 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %230, metadata !2564, metadata !DIExpression()) #10, !dbg !4173
  %231 = icmp eq i64 %230, 0, !dbg !4174
  br i1 %231, label %236, label %232, !dbg !4175

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !4176
  %234 = inttoptr i64 %233 to i16*, !dbg !4177
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !4178
  br label %236, !dbg !4179

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !4180

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3921, metadata !DIExpression()), !dbg !4181
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !4182, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2336, metadata !DIExpression()) #10, !dbg !4182
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2335, metadata !DIExpression()) #10, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3927, metadata !DIExpression()), !dbg !4181
  %239 = call i32 @nk_vc_is_active() #11, !dbg !4185
  %240 = icmp eq i32 %239, 0, !dbg !4185
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !4186
  %242 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %242, metadata !2588, metadata !DIExpression()) #10, !dbg !4191
  %243 = icmp eq i64 %242, 0, !dbg !4192
  br i1 %243, label %249, label %244, !dbg !4193

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !4194
  %246 = inttoptr i64 %245 to i16*, !dbg !4195
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !4196
  %248 = icmp eq i16 %247, 0, !dbg !4197
  br i1 %248, label %249, label %250, !dbg !4186

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !4186

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !4186
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !4186
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !4186
  br i1 %240, label %271, label %255, !dbg !4198

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !4199

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4199
  %258 = load i64, i64* %257, align 32, !dbg !4199
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4199
  %260 = load i8, i8* %259, align 8, !dbg !4199
  %261 = icmp eq i8 %260, 0, !dbg !4199
  br i1 %261, label %262, label %267, !dbg !4199

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4199
  %264 = load i8, i8* %263, align 64, !dbg !4199
  %265 = icmp eq i8 %264, 0, !dbg !4199
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263, !dbg !4199
  br label %267, !dbg !4199

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ], !dbg !4199
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.74, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #11, !dbg !4199
  br label %287, !dbg !4199

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !4200

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !4200
  %274 = load i64, i64* %273, align 32, !dbg !4200
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !4200
  %276 = load i8, i8* %275, align 8, !dbg !4200
  %277 = icmp eq i8 %276, 0, !dbg !4200
  br i1 %277, label %278, label %283, !dbg !4200

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !4200
  %280 = load i8, i8* %279, align 64, !dbg !4200
  %281 = icmp eq i8 %280, 0, !dbg !4200
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279, !dbg !4200
  br label %283, !dbg !4200

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ], !dbg !4200
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.74, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #11, !dbg !4200
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %288, metadata !2608, metadata !DIExpression()) #10, !dbg !4204
  %289 = icmp eq i64 %288, 0, !dbg !4205
  br i1 %289, label %320, label %290, !dbg !4206

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !4207
  %292 = inttoptr i64 %291 to i16*, !dbg !4208
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !4209
  br label %320, !dbg !4210

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3940, metadata !DIExpression()), !dbg !4211
  %295 = call i32 @nk_vc_is_active() #11, !dbg !4212
  %296 = icmp eq i32 %295, 0, !dbg !4212
  %297 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4215
  call void @llvm.dbg.value(metadata i64 %297, metadata !2588, metadata !DIExpression()) #10, !dbg !4219
  %298 = icmp eq i64 %297, 0, !dbg !4220
  br i1 %298, label %304, label %299, !dbg !4221

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !4222
  %301 = inttoptr i64 %300 to i16*, !dbg !4223
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !4224
  %303 = icmp eq i16 %302, 0, !dbg !4225
  br i1 %303, label %304, label %305, !dbg !4226

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !4226

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !4226
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !4226
  br i1 %296, label %311, label %309, !dbg !4227

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.75, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #11, !dbg !4228
  br label %313, !dbg !4228

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.75, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #11, !dbg !4230
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %314, metadata !2608, metadata !DIExpression()) #10, !dbg !4235
  %315 = icmp eq i64 %314, 0, !dbg !4236
  br i1 %315, label %320, label %316, !dbg !4237

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !4238
  %318 = inttoptr i64 %317 to i16*, !dbg !4239
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !4240
  br label %320, !dbg !4241

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.76, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 576) #13, !dbg !4242
  unreachable, !dbg !4242

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !4155
  ret void, !dbg !4243
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !583 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !582, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i8* %1, metadata !588, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i8** %2, metadata !589, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %3, metadata !590, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i8 %4, metadata !591, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !592, metadata !DIExpression()), !dbg !4249
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #12, !dbg !4250
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !4251
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #12, !dbg !4252
  ret i32 0, !dbg !4253
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !4254 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.81, i64 0, i64 0)) #11, !dbg !4255
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4256
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4261
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4262
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4262
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !4263
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !4263
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !4264, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !2336, metadata !DIExpression()) #10, !dbg !4264
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !2335, metadata !DIExpression()) #10, !dbg !4266
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !4267
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !4268

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4269
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !4274
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !4275
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !4275
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !4276
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1771, metadata !DIExpression()) #10, !dbg !4277
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !4278
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1792, metadata !DIExpression()) #10, !dbg !4279
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !4281
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !4281
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !4282
  br i1 %18, label %31, label %19, !dbg !4283

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !4284
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !4284
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !4284
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1773, metadata !DIExpression()) #10, !dbg !4284
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1772, metadata !DIExpression()) #10, !dbg !4278
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !4285
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1804, metadata !DIExpression()) #10, !dbg !4286
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !4288
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !4288
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1813, metadata !DIExpression()) #10, !dbg !4290
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1818, metadata !DIExpression()) #10, !dbg !4292
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !4293
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !4294
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !4295
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !4296
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1826, metadata !DIExpression()) #10, !dbg !4297
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !4299
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !4299
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !4300
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !4300
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1772, metadata !DIExpression()) #10, !dbg !4278
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !3536, metadata !DIExpression()) #10, !dbg !4301
  %30 = icmp eq %struct.list_head** %20, null, !dbg !4302
  br i1 %30, label %31, label %52, !dbg !4303

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4304
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !4308
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !4309
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !4309
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !4310
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !4310
  %38 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4311
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4315
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4316
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4316
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4317
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4317
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4318
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4319

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4320
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4324
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4325
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4325
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4326
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4326
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !3536, metadata !DIExpression()) #10, !dbg !4301
  br label %52, !dbg !4327

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4328
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3536, metadata !DIExpression()) #10, !dbg !4301
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #11, !dbg !4329
  br label %nk_fiber_yield.exit, !dbg !4330

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4328
  ret i32 %55, !dbg !4331
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4332 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4334, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2430, metadata !DIExpression()) #10, !dbg !4339
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !4341, !srcloc !2451
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2434, metadata !DIExpression()) #10, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2432, metadata !DIExpression()) #10, !dbg !4342
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2431, metadata !DIExpression()) #10, !dbg !4343
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4344
  %4 = load i32, i32* %3, align 8, !dbg !4344
  call void @llvm.dbg.value(metadata i32 %4, metadata !2436, metadata !DIExpression()) #10, !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #10, !dbg !4346
  %5 = icmp sgt i32 %4, 0, !dbg !4347
  br i1 %5, label %6, label %30, !dbg !4348

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4349
  br label %8, !dbg !4349

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2439, metadata !DIExpression()) #10, !dbg !4346
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4349
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4349
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4350
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4350
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4351
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2437, metadata !DIExpression()) #10, !dbg !4352
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4353
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2441, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4353
  call void @llvm.dbg.value(metadata i8** %15, metadata !2438, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #10, !dbg !4354
  %16 = load i8*, i8** %15, align 8, !dbg !4355
  br label %17, !dbg !4356

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4355
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4357
  %20 = bitcast i8* %18 to i8**, !dbg !4357
  %21 = load i8*, i8** %20, align 8, !dbg !4357
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #10, !dbg !4357
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4357
  br i1 %22, label %27, label %23, !dbg !4356

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4355
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4355
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2438, metadata !DIExpression()) #10, !dbg !4354
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4358
  br i1 %26, label %75, label %17, !dbg !4359, !llvm.loop !2472

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4360
  call void @llvm.dbg.value(metadata i32 undef, metadata !2439, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !4346
  %29 = icmp slt i64 %28, %7, !dbg !4347
  br i1 %29, label %8, label %30, !dbg !4348, !llvm.loop !2475

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4361
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4366
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4367
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4367
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4368
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1771, metadata !DIExpression()) #10, !dbg !4369
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !4370
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1792, metadata !DIExpression()) #10, !dbg !4371
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4373
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4373
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4374
  br i1 %38, label %51, label %39, !dbg !4375

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !4376
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4376
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4376
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1773, metadata !DIExpression()) #10, !dbg !4376
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1772, metadata !DIExpression()) #10, !dbg !4370
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4377
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1804, metadata !DIExpression()) #10, !dbg !4378
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4380
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4380
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4381
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1813, metadata !DIExpression()) #10, !dbg !4382
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1818, metadata !DIExpression()) #10, !dbg !4384
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4385
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4386
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4387
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4388
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1826, metadata !DIExpression()) #10, !dbg !4389
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4391
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4391
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4392
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4392
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1772, metadata !DIExpression()) #10, !dbg !4370
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4335, metadata !DIExpression()), !dbg !4393
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4394
  br i1 %50, label %51, label %72, !dbg !4396

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4397
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4403
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4404
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4404
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4405
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4405
  %58 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4406
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4410
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4411
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4411
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4412
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4412
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4413
  br i1 %64, label %84, label %65, !dbg !4414

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4415
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4420
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4421
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4421
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4422
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4422
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4335, metadata !DIExpression()), !dbg !4393
  br label %72, !dbg !4423

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4424
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4335, metadata !DIExpression()), !dbg !4393
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #12, !dbg !4425
  br label %84, !dbg !4426

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4427
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1804, metadata !DIExpression()) #10, !dbg !4428
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4430
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4430
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4431
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4431
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1813, metadata !DIExpression()) #10, !dbg !4432
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1818, metadata !DIExpression()) #10, !dbg !4434
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4435
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4436
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4437
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4438
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1826, metadata !DIExpression()) #10, !dbg !4439
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4441
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4442
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #12, !dbg !4443
  br label %84, !dbg !4444

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4445
  ret i32 %85, !dbg !4446
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4447 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4454, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.value(metadata i8* %1, metadata !4455, metadata !DIExpression()), !dbg !4457
  %3 = tail call zeroext i8 %0(i8* %1) #11, !dbg !4458
  %4 = icmp eq i8 %3, 0, !dbg !4458
  br i1 %4, label %60, label %5, !dbg !4460

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4461
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4467
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4468
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4468
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4469
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4469
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !4470, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !2336, metadata !DIExpression()) #10, !dbg !4470
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !2335, metadata !DIExpression()) #10, !dbg !4472
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4473
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4474

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4475
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4480
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4481
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4481
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4482
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1771, metadata !DIExpression()) #10, !dbg !4483
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !4484
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1792, metadata !DIExpression()) #10, !dbg !4485
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4487
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4487
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4488
  br i1 %22, label %35, label %23, !dbg !4489

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !4490
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4490
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4490
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1773, metadata !DIExpression()) #10, !dbg !4490
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1772, metadata !DIExpression()) #10, !dbg !4484
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4491
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1804, metadata !DIExpression()) #10, !dbg !4492
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4494
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4494
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4495
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1813, metadata !DIExpression()) #10, !dbg !4496
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1818, metadata !DIExpression()) #10, !dbg !4498
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4499
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4500
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4501
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4502
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1826, metadata !DIExpression()) #10, !dbg !4503
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4505
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4505
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4506
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4506
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1772, metadata !DIExpression()) #10, !dbg !4484
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !3536, metadata !DIExpression()) #10, !dbg !4507
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4508
  br i1 %34, label %35, label %56, !dbg !4509

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4510
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4514
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4515
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4515
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4516
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4516
  %42 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4517
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4521
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4522
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4522
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4523
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4523
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4524
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4525

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4526
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4530
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4531
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4531
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4532
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3536, metadata !DIExpression()) #10, !dbg !4507
  br label %56, !dbg !4533

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4534
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !3536, metadata !DIExpression()) #10, !dbg !4507
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #11, !dbg !4535
  br label %nk_fiber_yield.exit, !dbg !4536

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4534
  br label %60, !dbg !4537

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4538
  ret i32 %61, !dbg !4539
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4540 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4544, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4545, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i8* %2, metadata !4546, metadata !DIExpression()), !dbg !4549
  %4 = tail call zeroext i8 %1(i8* %2) #11, !dbg !4550
  %5 = icmp eq i8 %4, 0, !dbg !4550
  br i1 %5, label %8, label %6, !dbg !4552

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #12, !dbg !4553
  br label %8, !dbg !4555

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4556
  ret i32 %9, !dbg !4557
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4558 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4577
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4581
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4582
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4582
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4583
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4583
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4560, metadata !DIExpression()), !dbg !4584
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4585, !srcloc !4586
  call void @llvm.dbg.value(metadata i64 %8, metadata !4567, metadata !DIExpression()), !dbg !4587
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4588
  call void @llvm.dbg.value(metadata i8* %9, metadata !4568, metadata !DIExpression()), !dbg !4589
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4590
  call void @llvm.dbg.value(metadata i8* %10, metadata !4569, metadata !DIExpression()), !dbg !4591
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4592
  call void @llvm.dbg.value(metadata i8* %11, metadata !4570, metadata !DIExpression()), !dbg !4593
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4594
  call void @llvm.dbg.value(metadata i8* %12, metadata !4571, metadata !DIExpression()), !dbg !4595
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4596
  %14 = load i8*, i8** %13, align 8, !dbg !4596
  %15 = icmp ugt i8* %11, %14, !dbg !4598
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4599
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4600
  %19 = icmp ult i8* %11, %18, !dbg !4601
  %20 = and i1 %15, %19, !dbg !4602
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %21, metadata !4570, metadata !DIExpression()), !dbg !4593
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4603
  call void @llvm.dbg.value(metadata i8* %22, metadata !4572, metadata !DIExpression()), !dbg !4604
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4605
  %24 = ptrtoint i8* %23 to i64, !dbg !4606
  %25 = ptrtoint i8* %12 to i64, !dbg !4606
  %26 = sub i64 %24, %25, !dbg !4606
  call void @llvm.dbg.value(metadata i64 %26, metadata !4561, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4607
  %27 = ptrtoint i8* %10 to i64, !dbg !4608
  call void @llvm.dbg.value(metadata i64 undef, metadata !4563, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 72, metadata !4564, metadata !DIExpression()), !dbg !4610
  %28 = bitcast i8* %22 to i64*, !dbg !4611
  %29 = load i64, i64* %28, align 8, !dbg !4611
  %30 = sub i64 %29, %25, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %30, metadata !4565, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %17, metadata !4562, metadata !DIExpression()), !dbg !4614
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4615
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #10, !dbg !4615
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4573, metadata !DIExpression(DW_OP_deref)), !dbg !4616
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #12, !dbg !4617
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4618
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4573, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !1760, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !1761, metadata !DIExpression()), !dbg !4621
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4622
  %35 = load i64, i64* %34, align 8, !dbg !4623
  %36 = add i64 %35, -8, !dbg !4623
  store i64 %36, i64* %34, align 8, !dbg !4623
  %37 = inttoptr i64 %36 to i64*, !dbg !4624
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4625
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4626
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4573, metadata !DIExpression()), !dbg !4616
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4627
  %40 = load i8*, i8** %39, align 8, !dbg !4627
  call void @llvm.dbg.value(metadata i8* %40, metadata !4566, metadata !DIExpression()), !dbg !4628
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4629
  %42 = sub i64 -16, %26, !dbg !4630
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4630
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #11, !dbg !4631
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4632
  %46 = ptrtoint i8* %45 to i64, !dbg !4633
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4634
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4573, metadata !DIExpression()), !dbg !4616
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4635
  store i64 %46, i64* %48, align 8, !dbg !4636
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4637
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4573, metadata !DIExpression()), !dbg !4616
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4638
  %51 = load i64, i64* %50, align 8, !dbg !4638
  %52 = add i64 %51, 64, !dbg !4639
  %53 = inttoptr i64 %52 to i8**, !dbg !4640
  call void @llvm.dbg.value(metadata i8** %53, metadata !4574, metadata !DIExpression()), !dbg !4641
  %54 = add i64 %30, %51, !dbg !4642
  %55 = inttoptr i64 %54 to i8*, !dbg !4643
  store i8* %55, i8** %53, align 8, !dbg !4644
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4645
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4573, metadata !DIExpression()), !dbg !4616
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4646
  %58 = load i64, i64* %57, align 8, !dbg !4646
  %59 = sub i64 8, %25, !dbg !4608
  %60 = add i64 %59, %27, !dbg !4647
  %61 = add i64 %60, %58, !dbg !4648
  %62 = inttoptr i64 %61 to i8**, !dbg !4649
  call void @llvm.dbg.value(metadata i8** %62, metadata !4575, metadata !DIExpression()), !dbg !4650
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4651
  call void @llvm.dbg.value(metadata i8** %63, metadata !4576, metadata !DIExpression()), !dbg !4652
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4653
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4653
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4654
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4573, metadata !DIExpression()), !dbg !4616
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4655
  %67 = load i64, i64* %66, align 8, !dbg !4655
  %68 = add i64 %67, 112, !dbg !4656
  %69 = inttoptr i64 %68 to i64*, !dbg !4657
  store i64 0, i64* %69, align 8, !dbg !4658
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4659
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4573, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1883, metadata !DIExpression()) #10, !dbg !4660
  call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()) #10, !dbg !4662
  %71 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4663
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4667
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1889, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !4668
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4669
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4669
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4669
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4669
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1889, metadata !DIExpression()) #10, !dbg !4668
  %77 = call i64 @msr_read(i32 -1073741567) #11, !dbg !4670
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4674
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4675
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4675
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4676
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1890, metadata !DIExpression()) #10, !dbg !4677
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4678
  store i32 1, i32* %82, align 4, !dbg !4679
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4680
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1952, metadata !DIExpression()) #10, !dbg !4681
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1955, metadata !DIExpression()) #10, !dbg !4683
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4684
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4684
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1960, metadata !DIExpression()) #10, !dbg !4685
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1965, metadata !DIExpression()) #10, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1966, metadata !DIExpression()) #10, !dbg !4688
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4689
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4690
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4691
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4692
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4693
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4694
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4695
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4696
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4696
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4697
  br i1 %91, label %94, label %92, !dbg !4698

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #11, !dbg !4699
  br label %94, !dbg !4700

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4701
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4573, metadata !DIExpression()), !dbg !4616
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #10, !dbg !4702
  ret %struct.nk_fiber* %95, !dbg !4703
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4704 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4706, metadata !DIExpression()), !dbg !4709
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4710
  br i1 %2, label %75, label %3, !dbg !4712

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4713
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4717
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4718
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4718
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4719
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4719
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4707, metadata !DIExpression()), !dbg !4720
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4721
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4708, metadata !DIExpression()), !dbg !4722
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4723
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1952, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1955, metadata !DIExpression()), !dbg !4726
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4727
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4727
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1960, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1965, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1966, metadata !DIExpression()), !dbg !4731
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4732
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4733
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4734
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4735
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4736
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4737
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4738
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4739
  %18 = load i32, i32* %17, align 8, !dbg !4740
  %19 = add i32 %18, 1, !dbg !4740
  store i32 %19, i32* %17, align 8, !dbg !4740
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4741
  store i32 3, i32* %20, align 4, !dbg !4742
  %21 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4743
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !4748
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !4749
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !4749
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !4750
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !4750
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !4751, !srcloc !2338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2336, metadata !DIExpression()) #10, !dbg !4751
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2335, metadata !DIExpression()) #10, !dbg !4753
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !4754
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !4755

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4756
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !4761
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !4762
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !4762
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !4763
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1771, metadata !DIExpression()) #10, !dbg !4764
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1772, metadata !DIExpression()) #10, !dbg !4765
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1792, metadata !DIExpression()) #10, !dbg !4766
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !4768
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !4768
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !4769
  br i1 %37, label %50, label %38, !dbg !4770

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1773, metadata !DIExpression()) #10, !dbg !4771
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !4771
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !4771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1773, metadata !DIExpression()) #10, !dbg !4771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1772, metadata !DIExpression()) #10, !dbg !4765
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !4772
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1804, metadata !DIExpression()) #10, !dbg !4773
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !4775
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4775
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !4776
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1813, metadata !DIExpression()) #10, !dbg !4777
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1818, metadata !DIExpression()) #10, !dbg !4779
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !4780
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !4781
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !4782
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4783
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1826, metadata !DIExpression()) #10, !dbg !4784
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !4786
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !4786
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4787
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !4787
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1772, metadata !DIExpression()) #10, !dbg !4765
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !3536, metadata !DIExpression()) #10, !dbg !4788
  %49 = icmp eq %struct.list_head** %39, null, !dbg !4789
  br i1 %49, label %50, label %71, !dbg !4790

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4791
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !4795
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !4796
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !4796
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !4797
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !4797
  %57 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4798
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !4802
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !4803
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !4803
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !4804
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !4804
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !4805
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !4806

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !4807
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !4811
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !4812
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !4812
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !4813
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !4813
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3536, metadata !DIExpression()) #10, !dbg !4788
  br label %71, !dbg !4814

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !4815
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !3536, metadata !DIExpression()) #10, !dbg !4788
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #11, !dbg !4816
  br label %nk_fiber_yield.exit, !dbg !4817

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !4815
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !4818
  ret i32 %76, !dbg !4819
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

!llvm.dbg.cu = !{!2, !181}
!llvm.ident = !{!548, !548}
!llvm.module.flags = !{!549, !550, !551, !552}

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
!129 = !{!130, !143, !145, !147, !149, !151, !153, !155, !157, !159, !0, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl", scope: !2, file: !3, line: 612, type: !132, isLocal: true, isDefinition: true, align: 64)
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
!144 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 613, type: !132, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl3", scope: !2, file: !3, line: 614, type: !132, isLocal: true, isDefinition: true, align: 64)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl4", scope: !2, file: !3, line: 615, type: !132, isLocal: true, isDefinition: true, align: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl5", scope: !2, file: !3, line: 616, type: !132, isLocal: true, isDefinition: true, align: 64)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl6", scope: !2, file: !3, line: 617, type: !132, isLocal: true, isDefinition: true, align: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl7", scope: !2, file: !3, line: 618, type: !132, isLocal: true, isDefinition: true, align: 64)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl8", scope: !2, file: !3, line: 619, type: !132, isLocal: true, isDefinition: true, align: 64)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl9", scope: !2, file: !3, line: 620, type: !132, isLocal: true, isDefinition: true, align: 64)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl10", scope: !2, file: !3, line: 621, type: !132, isLocal: true, isDefinition: true, align: 64)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "fibers_impl", scope: !2, file: !3, line: 549, type: !133, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 555, type: !133, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "fibers_impl3", scope: !2, file: !3, line: 561, type: !133, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "fibers_impl4", scope: !2, file: !3, line: 567, type: !133, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "fibers_impl5", scope: !2, file: !3, line: 573, type: !133, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "fibers_impl6", scope: !2, file: !3, line: 579, type: !133, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "fibers_impl7", scope: !2, file: !3, line: 585, type: !133, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "fibers_impl8", scope: !2, file: !3, line: 591, type: !133, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "fibers_impl9", scope: !2, file: !3, line: 597, type: !133, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "fibers_impl10", scope: !2, file: !3, line: 603, type: !133, isLocal: true, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !294, nameTableKind: None)
!182 = !DIFile(filename: "src/nautilus/fiber.c", directory: "/home/sgi9754/nautilus-cs446")
!183 = !{!184, !15, !5, !263, !270, !277, !283, !289}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !186, file: !185, line: 40, baseType: !7, size: 32, elements: !259)
!185 = !DIFile(filename: "include/nautilus/timer.h", directory: "/home/sgi9754/nautilus-cs446")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_timer", file: !185, line: 38, size: 960, elements: !187)
!187 = !{!188, !189, !191, !192, !193, !251, !252, !256, !257, !258}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !185, line: 39, baseType: !115, size: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !186, file: !185, line: 42, baseType: !190, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !185, line: 43, baseType: !29, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !186, file: !185, line: 44, baseType: !29, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !186, file: !185, line: 45, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !185, line: 33, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue", file: !197, line: 85, size: 197248, elements: !198)
!197 = !DIFile(filename: "include/nautilus/waitqueue.h", directory: "/home/sgi9754/nautilus-cs446")
!198 = !{!199, !200, !201, !207, !208, !209}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 86, baseType: !115, size: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !196, file: !197, line: 87, baseType: !41, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !197, line: 88, baseType: !202, size: 128, offset: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 64, size: 128, elements: !203)
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !53, line: 65, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !53, line: 65, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !196, file: !197, line: 89, baseType: !29, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !196, file: !197, line: 90, baseType: !202, size: 128, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !196, file: !197, line: 91, baseType: !210, size: 196608, offset: 640)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 196608, elements: !249)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue_entry", file: !197, line: 70, size: 192, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !197, line: 71, baseType: !202, size: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !211, file: !197, line: 72, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_thread", file: !16, line: 178, size: 51200, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !232, !233, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !216, file: !16, line: 179, baseType: !29, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !216, file: !16, line: 180, baseType: !33, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !216, file: !16, line: 181, baseType: !35, size: 16, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "cache_part_state", scope: !216, file: !16, line: 183, baseType: !80, size: 16, offset: 144)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !216, file: !16, line: 185, baseType: !38, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !216, file: !16, line: 186, baseType: !31, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !216, file: !16, line: 188, baseType: !50, size: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !16, line: 191, baseType: !215, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !216, file: !16, line: 192, baseType: !202, size: 128, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !216, file: !16, line: 193, baseType: !202, size: 128, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !216, file: !16, line: 194, baseType: !31, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !216, file: !16, line: 196, baseType: !230, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !16, line: 175, baseType: !196)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !216, file: !16, line: 198, baseType: !50, size: 32, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !216, file: !16, line: 201, baseType: !234, size: 64, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !216, file: !16, line: 204, baseType: !99, size: 32, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bound_cpu", scope: !216, file: !16, line: 206, baseType: !50, size: 32, offset: 992)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "placement_cpu", scope: !216, file: !16, line: 207, baseType: !50, size: 32, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "current_cpu", scope: !216, file: !16, line: 208, baseType: !50, size: 32, offset: 1056)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !216, file: !16, line: 210, baseType: !70, size: 8, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "output_loc", scope: !216, file: !16, line: 212, baseType: !66, size: 64, offset: 1152)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !216, file: !16, line: 213, baseType: !33, size: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !216, file: !16, line: 214, baseType: !33, size: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !216, file: !16, line: 215, baseType: !108, size: 64, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !216, file: !16, line: 217, baseType: !110, size: 64, offset: 1408)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !216, file: !16, line: 219, baseType: !47, size: 64, offset: 1472)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !16, line: 225, baseType: !115, size: 256, offset: 1536)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !216, file: !16, line: 227, baseType: !120, size: 16384, offset: 1792)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state", scope: !216, file: !16, line: 229, baseType: !126, size: 32768, align: 512, offset: 18432)
!249 = !{!250}
!250 = !DISubrange(count: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !186, file: !185, line: 46, baseType: !43, size: 32, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !186, file: !185, line: 47, baseType: !253, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !33}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !186, file: !185, line: 48, baseType: !33, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !185, line: 49, baseType: !202, size: 128, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "active_node", scope: !186, file: !185, line: 50, baseType: !202, size: 128, offset: 832)
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "NK_TIMER_INACTIVE", value: 0, isUnsigned: true)
!261 = !DIEnumerator(name: "NK_TIMER_ACTIVE", value: 1, isUnsigned: true)
!262 = !DIEnumerator(name: "NK_TIMER_SIGNALLED", value: 2, isUnsigned: true)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 225, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "include/dev/apic.h", directory: "/home/sgi9754/nautilus-cs446")
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "APIC_INVALID", value: 0, isUnsigned: true)
!267 = !DIEnumerator(name: "APIC_DISABLED", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "APIC_XAPIC", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "APIC_X2APIC", value: 3, isUnsigned: true)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 41, baseType: !7, size: 32, elements: !272)
!271 = !DIFile(filename: "include/nautilus/irq.h", directory: "/home/sgi9754/nautilus-cs446")
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "INT_TRIG_BUS", value: 0, isUnsigned: true)
!274 = !DIEnumerator(name: "INT_TRIG_EDGE", value: 1, isUnsigned: true)
!275 = !DIEnumerator(name: "INT_TRIG_RSVD", value: 2, isUnsigned: true)
!276 = !DIEnumerator(name: "INT_TRIG_LEVEL", value: 3, isUnsigned: true)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 40, baseType: !7, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "INT_POL_BUS", value: 0, isUnsigned: true)
!280 = !DIEnumerator(name: "INT_POL_ACTHI", value: 1, isUnsigned: true)
!281 = !DIEnumerator(name: "INT_POL_RSVD", value: 2, isUnsigned: true)
!282 = !DIEnumerator(name: "INT_POL_ACTLO", value: 3, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 39, baseType: !7, size: 32, elements: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DIEnumerator(name: "INT_TYPE_INT", value: 0, isUnsigned: true)
!286 = !DIEnumerator(name: "INT_TYPE_NMI", value: 1, isUnsigned: true)
!287 = !DIEnumerator(name: "INT_TYPE_SMI", value: 2, isUnsigned: true)
!288 = !DIEnumerator(name: "INT_TYPE_EXT", value: 3, isUnsigned: true)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 66, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "APERIODIC", value: 0, isUnsigned: true)
!292 = !DIEnumerator(name: "SPORADIC", value: 1, isUnsigned: true)
!293 = !DIEnumerator(name: "PERIODIC", value: 2, isUnsigned: true)
!294 = !{!295, !296, !137, !317, !29, !318, !345, !33, !66, !324, !50, !533, !334, !547, !339, !215}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !298, file: !6, line: 71, baseType: !29, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !298, file: !6, line: 72, baseType: !33, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !298, file: !6, line: 73, baseType: !35, size: 16, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !298, file: !6, line: 75, baseType: !38, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !298, file: !6, line: 76, baseType: !31, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !298, file: !6, line: 78, baseType: !41, size: 32, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !298, file: !6, line: 79, baseType: !45, size: 32, offset: 352)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !298, file: !6, line: 82, baseType: !47, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !298, file: !6, line: 83, baseType: !50, size: 32, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !298, file: !6, line: 91, baseType: !202, size: 128, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !298, file: !6, line: 92, baseType: !202, size: 128, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !298, file: !6, line: 93, baseType: !50, size: 32, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !298, file: !6, line: 97, baseType: !202, size: 128, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !298, file: !6, line: 99, baseType: !62, size: 64, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !298, file: !6, line: 100, baseType: !33, size: 64, offset: 1024)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !298, file: !6, line: 101, baseType: !66, size: 64, offset: 1088)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !298, file: !6, line: 103, baseType: !70, size: 8, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 45, baseType: !31)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_info", file: !320, line: 183, size: 59840, elements: !321)
!320 = !DIFile(filename: "include/nautilus/nautilus.h", directory: "/home/sgi9754/nautilus-cs446")
!321 = !{!322, !439, !475, !476, !477, !478, !494, !505, !506, !507, !510, !513, !516, !528, !538, !541, !544}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !319, file: !320, line: 185, baseType: !323, size: 16384)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 16384, elements: !123)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu", file: !326, line: 74, size: 1600, elements: !327)
!326 = !DIFile(filename: "include/nautilus/smp.h", directory: "/home/sgi9754/nautilus-cs446")
!327 = !{!328, !329, !330, !331, !332, !333, !344, !346, !347, !348, !349, !350, !351, !353, !375, !376, !377, !380, !388, !401, !402, !409, !416, !425, !430}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "cur_thread", scope: !325, file: !326, line: 75, baseType: !215, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_nesting_level", scope: !325, file: !326, line: 78, baseType: !35, size: 16, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_disable_level", scope: !325, file: !326, line: 81, baseType: !35, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !325, file: !326, line: 85, baseType: !29, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "exception_count", scope: !325, file: !326, line: 86, baseType: !29, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "f_state", scope: !325, file: !326, line: 88, baseType: !334, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber_percpu_state", file: !182, line: 60, size: 384, elements: !336)
!336 = !{!337, !338, !341, !342, !343}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !335, file: !182, line: 61, baseType: !41, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fiber_thread", scope: !335, file: !182, line: 62, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_t", file: !16, line: 233, baseType: !216)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "curr_fiber", scope: !335, file: !182, line: 63, baseType: !296, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "idle_fiber", scope: !335, file: !182, line: 64, baseType: !296, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_sched_queue", scope: !335, file: !182, line: 65, baseType: !202, size: 128, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !325, file: !326, line: 89, baseType: !345, size: 32, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_id_t", file: !326, line: 58, baseType: !43)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_id", scope: !325, file: !326, line: 90, baseType: !43, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !325, file: !326, line: 91, baseType: !70, size: 8, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_bsp", scope: !325, file: !326, line: 92, baseType: !70, size: 8, offset: 392)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sig", scope: !325, file: !326, line: 93, baseType: !43, size: 32, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "feat_flags", scope: !325, file: !326, line: 94, baseType: !43, size: 32, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "booted", scope: !325, file: !326, line: 96, baseType: !352, size: 8, offset: 480)
!352 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "apic", scope: !325, file: !326, line: 98, baseType: !354, size: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic_dev", file: !264, line: 227, size: 768, elements: !356)
!356 = !{!357, !359, !361, !362, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !355, file: !264, line: 228, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "apic_mode_t", file: !264, line: 225, baseType: !263)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !355, file: !264, line: 229, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong_t", file: !30, line: 43, baseType: !31)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !355, file: !264, line: 230, baseType: !70, size: 8, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !355, file: !264, line: 231, baseType: !363, size: 32, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_t", file: !30, line: 37, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "spur_int_cnt", scope: !355, file: !264, line: 232, baseType: !29, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "err_int_cnt", scope: !355, file: !264, line: 233, baseType: !29, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bus_freq_hz", scope: !355, file: !264, line: 234, baseType: !29, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ps_per_tick", scope: !355, file: !264, line: 235, baseType: !29, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_us", scope: !355, file: !264, line: 236, baseType: !29, size: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_tick", scope: !355, file: !264, line: 237, baseType: !29, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !355, file: !264, line: 238, baseType: !70, size: 8, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "current_ticks", scope: !355, file: !264, line: 239, baseType: !43, size: 32, offset: 608)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "timer_count", scope: !355, file: !264, line: 240, baseType: !29, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "in_timer_interrupt", scope: !355, file: !264, line: 241, baseType: !50, size: 32, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "in_kick_interrupt", scope: !355, file: !264, line: 242, baseType: !50, size: 32, offset: 736)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !325, file: !326, line: 100, baseType: !318, size: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !325, file: !326, line: 102, baseType: !41, size: 32, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !325, file: !326, line: 104, baseType: !378, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_percpu_state", file: !326, line: 104, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_q", scope: !325, file: !326, line: 106, baseType: !381, size: 64, offset: 768)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_t", file: !383, line: 42, baseType: !384)
!383 = !DIFile(filename: "include/nautilus/queue.h", directory: "/home/sgi9754/nautilus-cs446")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue", file: !383, line: 33, size: 192, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !384, file: !383, line: 34, baseType: !202, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !384, file: !383, line: 35, baseType: !41, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_nowait_info", scope: !325, file: !326, line: 107, baseType: !389, size: 320, offset: 832)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_xcall", file: !326, line: 61, size: 320, elements: !390)
!390 = !{!391, !396, !397, !399, !400}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_node", scope: !389, file: !326, line: 62, baseType: !392, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_entry_t", file: !383, line: 43, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue_entry", file: !383, line: 38, size: 128, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !393, file: !383, line: 39, baseType: !202, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !389, file: !326, line: 63, baseType: !33, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !389, file: !326, line: 64, baseType: !398, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_xcall_func_t", file: !326, line: 57, baseType: !253)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_done", scope: !389, file: !326, line: 65, baseType: !70, size: 8, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "has_waiter", scope: !389, file: !326, line: 66, baseType: !70, size: 8, offset: 264)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_khz", scope: !325, file: !326, line: 109, baseType: !360, size: 64, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !325, file: !326, line: 112, baseType: !403, size: 64, offset: 1216)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_topo_params", file: !405, line: 94, size: 64, elements: !406)
!405 = !DIFile(filename: "include/nautilus/numa.h", directory: "/home/sgi9754/nautilus-cs446")
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "smt_bits", scope: !404, file: !405, line: 95, baseType: !43, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "core_bits", scope: !404, file: !405, line: 96, baseType: !43, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !325, file: !326, line: 113, baseType: !410, size: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_cpu_coords", file: !405, line: 99, size: 96, elements: !412)
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "smt_id", scope: !411, file: !405, line: 100, baseType: !43, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !411, file: !405, line: 101, baseType: !43, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_id", scope: !411, file: !405, line: 102, baseType: !43, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !325, file: !326, line: 114, baseType: !417, size: 64, offset: 1344)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numa_domain", file: !405, line: 34, size: 448, elements: !419)
!419 = !{!420, !421, !422, !423, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !418, file: !405, line: 35, baseType: !43, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "addr_space_size", scope: !418, file: !405, line: 36, baseType: !29, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !418, file: !405, line: 37, baseType: !43, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "regions", scope: !418, file: !405, line: 39, baseType: !202, size: 128, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "adj_list", scope: !418, file: !405, line: 42, baseType: !202, size: 128, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "kmem", scope: !325, file: !326, line: 116, baseType: !426, size: 128, offset: 1408)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_data", file: !427, line: 84, size: 128, elements: !428)
!427 = !DIFile(filename: "include/nautilus/mm.h", directory: "/home/sgi9754/nautilus-cs446")
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ordered_regions", scope: !426, file: !427, line: 85, baseType: !202, size: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !325, file: !326, line: 119, baseType: !431, size: 64, offset: 1536)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_rand_info", file: !433, line: 33, size: 256, elements: !434)
!433 = !DIFile(filename: "include/nautilus/random.h", directory: "/home/sgi9754/nautilus-cs446")
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !433, line: 34, baseType: !41, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !432, file: !433, line: 35, baseType: !29, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !432, file: !433, line: 36, baseType: !29, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !432, file: !433, line: 37, baseType: !29, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ioapics", scope: !319, file: !320, line: 186, baseType: !440, size: 1024, offset: 16384)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1024, elements: !473)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic", file: !443, line: 113, size: 320, elements: !444)
!443 = !DIFile(filename: "include/dev/ioapic.h", directory: "/home/sgi9754/nautilus-cs446")
!444 = !{!445, !446, !447, !448, !450, !451, !472}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !442, file: !443, line: 114, baseType: !70, size: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !442, file: !443, line: 115, baseType: !70, size: 8, offset: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "usable", scope: !442, file: !443, line: 116, baseType: !70, size: 8, offset: 16)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !442, file: !443, line: 117, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !30, line: 64, baseType: !360)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !442, file: !443, line: 119, baseType: !70, size: 8, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !442, file: !443, line: 120, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iored_entry", file: !443, line: 101, size: 192, elements: !454)
!454 = !{!455, !456, !471}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !453, file: !443, line: 103, baseType: !70, size: 8)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "boot_info", scope: !453, file: !443, line: 106, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_entry", file: !271, line: 43, size: 256, elements: !459)
!459 = !{!460, !462, !464, !466, !467, !468, !469, !470}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "trig_mode", scope: !458, file: !271, line: 44, baseType: !461, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_trig_t", file: !271, line: 41, baseType: !270)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !458, file: !271, line: 45, baseType: !463, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_pol_t", file: !271, line: 40, baseType: !277)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !271, line: 46, baseType: !465, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type_t", file: !271, line: 39, baseType: !283)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_id", scope: !458, file: !271, line: 47, baseType: !70, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_irq", scope: !458, file: !271, line: 48, baseType: !70, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_intin", scope: !458, file: !271, line: 49, baseType: !70, size: 8, offset: 112)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_id", scope: !458, file: !271, line: 50, baseType: !70, size: 8, offset: 120)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "elm", scope: !458, file: !271, line: 52, baseType: !202, size: 128, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "actual_irq", scope: !453, file: !443, line: 109, baseType: !70, size: 8, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "first_hrt_entry", scope: !442, file: !443, line: 122, baseType: !7, size: 32, offset: 256)
!473 = !{!474}
!474 = !DISubrange(count: 16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "num_cpus", scope: !319, file: !320, line: 188, baseType: !43, size: 32, offset: 17408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioapics", scope: !319, file: !320, line: 189, baseType: !43, size: 32, offset: 17440)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !320, line: 191, baseType: !29, size: 64, offset: 17472)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "core_barrier", scope: !319, file: !320, line: 194, baseType: !479, size: 64, offset: 17536)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_barrier_t", file: !481, line: 34, baseType: !482)
!481 = !DIFile(filename: "include/nautilus/barrier.h", directory: "/home/sgi9754/nautilus-cs446")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_barrier", file: !481, line: 36, size: 1024, align: 512, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !492}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !481, line: 37, baseType: !41, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !482, file: !481, line: 39, baseType: !7, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !482, file: !481, line: 40, baseType: !7, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !482, file: !481, line: 42, baseType: !70, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !482, file: !481, line: 44, baseType: !489, size: 416, offset: 104)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 416, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 52)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !482, file: !481, line: 47, baseType: !493, size: 32, offset: 520)
!493 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !319, file: !320, line: 196, baseType: !495, size: 448, offset: 17600)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_mem_info", file: !496, line: 83, size: 448, elements: !497)
!496 = !DIFile(filename: "include/nautilus/paging.h", directory: "/home/sgi9754/nautilus-cs446")
!497 = !{!498, !500, !501, !502, !503, !504}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "page_map", scope: !495, file: !496, line: 84, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pm_start", scope: !495, file: !496, line: 85, baseType: !449, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pm_end", scope: !495, file: !496, line: 86, baseType: !449, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "phys_mem_avail", scope: !495, file: !496, line: 87, baseType: !360, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "npages", scope: !495, file: !496, line: 88, baseType: !360, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mem_zone_list", scope: !495, file: !496, line: 90, baseType: !202, size: 128, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_id", scope: !319, file: !320, line: 198, baseType: !43, size: 32, offset: 18048)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pic_mode_enabled", scope: !319, file: !320, line: 200, baseType: !70, size: 8, offset: 18080)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !319, file: !320, line: 202, baseType: !508, size: 64, offset: 18112)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_info", file: !320, line: 202, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hpet", scope: !319, file: !320, line: 203, baseType: !511, size: 64, offset: 18176)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "hpet_dev", file: !320, line: 178, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mb_info", scope: !319, file: !320, line: 205, baseType: !514, size: 64, offset: 18240)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "multiboot_info", file: !320, line: 205, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "int_info", scope: !319, file: !320, line: 207, baseType: !517, size: 33024, offset: 18304)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_info", file: !320, line: 171, size: 33024, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int_list", scope: !517, file: !320, line: 172, baseType: !202, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !517, file: !320, line: 173, baseType: !202, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "irq_map", scope: !517, file: !320, line: 175, baseType: !522, size: 32768, offset: 256)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 32768, elements: !123)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_mapping", file: !320, line: 164, size: 128, elements: !524)
!524 = !{!525, !526, !527}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !523, file: !320, line: 165, baseType: !441, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !523, file: !320, line: 166, baseType: !70, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "assigned", scope: !523, file: !320, line: 167, baseType: !70, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "locality_info", scope: !319, file: !320, line: 209, baseType: !529, size: 8320, offset: 51328)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_locality_info", file: !405, line: 75, size: 8320, elements: !530)
!530 = !{!531, !532, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "num_domains", scope: !529, file: !405, line: 76, baseType: !43, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "numa_matrix", scope: !529, file: !405, line: 77, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !529, file: !405, line: 79, baseType: !535, size: 8192, offset: 128)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 8192, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pmc_info", scope: !319, file: !320, line: 211, baseType: !539, size: 64, offset: 59648)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "pmc_info", file: !320, line: 180, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "linker_info", scope: !319, file: !320, line: 213, baseType: !542, size: 64, offset: 59712)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_link_info", file: !320, line: 181, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "prog_info", scope: !319, file: !320, line: 215, baseType: !545, size: 64, offset: 59776)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_prog_info", file: !320, line: 182, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!548 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!549 = !{i32 2, !"Dwarf Version", i32 4}
!550 = !{i32 2, !"Debug Info Version", i32 3}
!551 = !{i32 1, !"wchar_size", i32 4}
!552 = !{i32 1, !"Code Model", i32 4}
!553 = distinct !DISubprogram(name: "handle_fibers9", scope: !3, file: !3, line: 533, type: !141, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!554 = !{!555, !556}
!555 = !DILocalVariable(name: "buf", arg: 1, scope: !553, file: !3, line: 533, type: !137)
!556 = !DILocalVariable(name: "priv", arg: 2, scope: !553, file: !3, line: 533, type: !33)
!557 = !DILocation(line: 533, column: 24, scope: !553)
!558 = !DILocation(line: 533, column: 36, scope: !553)
!559 = !DILocation(line: 451, column: 3, scope: !560, inlinedAt: !565)
!560 = distinct !DISubprogram(name: "test_fiber_routine_2", scope: !3, file: !3, line: 449, type: !561, scopeLine: 450, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!50}
!563 = !{!564}
!564 = !DILocalVariable(name: "f_orig", scope: !560, file: !3, line: 451, type: !24)
!565 = distinct !DILocation(line: 535, column: 3, scope: !553)
!566 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !575)
!567 = distinct !DILexicalBlock(scope: !568, file: !16, line: 258, column: 26)
!568 = distinct !DILexicalBlock(scope: !569, file: !16, line: 258, column: 26)
!569 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !570, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!72}
!572 = !{!573, !574}
!573 = !DILocalVariable(name: "__r", scope: !568, file: !16, line: 258, type: !86)
!574 = !DILocalVariable(name: "__r", scope: !567, file: !16, line: 258, type: !86)
!575 = distinct !DILocation(line: 452, column: 8, scope: !560, inlinedAt: !565)
!576 = !{i32 -2147275502}
!577 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !575)
!578 = !DILocation(line: 452, column: 26, scope: !560, inlinedAt: !565)
!579 = !DILocation(line: 452, column: 6, scope: !560, inlinedAt: !565)
!580 = !DILocation(line: 453, column: 3, scope: !560, inlinedAt: !565)
!581 = !DILocation(line: 451, column: 15, scope: !560, inlinedAt: !565)
!582 = !DILocalVariable(name: "fun", arg: 1, scope: !583, file: !182, line: 693, type: !62)
!583 = distinct !DISubprogram(name: "nk_fiber_start", scope: !182, file: !182, line: 693, type: !584, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !587)
!584 = !DISubroutineType(types: !585)
!585 = !{!50, !62, !33, !66, !38, !70, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!587 = !{!582, !588, !589, !590, !591, !592}
!588 = !DILocalVariable(name: "input", arg: 2, scope: !583, file: !182, line: 693, type: !33)
!589 = !DILocalVariable(name: "output", arg: 3, scope: !583, file: !182, line: 693, type: !66)
!590 = !DILocalVariable(name: "stack_size", arg: 4, scope: !583, file: !182, line: 693, type: !38)
!591 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !583, file: !182, line: 693, type: !70)
!592 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !583, file: !182, line: 693, type: !586)
!593 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !594)
!594 = distinct !DILocation(line: 454, column: 3, scope: !560, inlinedAt: !565)
!595 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !594)
!596 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !594)
!597 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !594)
!598 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !594)
!599 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !594)
!600 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !594)
!601 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !594)
!602 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !594)
!603 = !DILocation(line: 456, column: 1, scope: !560, inlinedAt: !565)
!604 = !DILocation(line: 536, column: 3, scope: !553)
!605 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!606 = !{!607, !608, !609, !610, !611}
!607 = !DILocalVariable(name: "i", arg: 1, scope: !605, file: !3, line: 310, type: !33)
!608 = !DILocalVariable(name: "o", arg: 2, scope: !605, file: !3, line: 310, type: !66)
!609 = !DILocalVariable(name: "a", scope: !605, file: !3, line: 313, type: !50)
!610 = !DILocalVariable(name: "f_new", scope: !605, file: !3, line: 314, type: !24)
!611 = !DILocalVariable(name: "curr", scope: !612, file: !3, line: 318, type: !24)
!612 = distinct !DILexicalBlock(scope: !605, file: !3, line: 315, column: 15)
!613 = !DILocation(line: 310, column: 27, scope: !605)
!614 = !DILocation(line: 310, column: 37, scope: !605)
!615 = !DILocation(line: 312, column: 19, scope: !605)
!616 = !DILocation(line: 312, column: 3, scope: !605)
!617 = !DILocation(line: 313, column: 7, scope: !605)
!618 = !DILocation(line: 316, column: 13, scope: !612)
!619 = !DILocation(line: 314, column: 15, scope: !605)
!620 = !DILocation(line: 318, column: 17, scope: !612)
!621 = !DILocation(line: 319, column: 5, scope: !612)
!622 = !DILocation(line: 322, column: 3, scope: !605)
!623 = !DILocation(line: 323, column: 1, scope: !605)
!624 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!625 = !{!626, !627}
!626 = !DILocalVariable(name: "buf", arg: 1, scope: !624, file: !3, line: 526, type: !137)
!627 = !DILocalVariable(name: "priv", arg: 2, scope: !624, file: !3, line: 526, type: !33)
!628 = !DILocation(line: 526, column: 24, scope: !624)
!629 = !DILocation(line: 526, column: 36, scope: !624)
!630 = !DILocation(line: 442, column: 3, scope: !631, inlinedAt: !634)
!631 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !561, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!632 = !{!633}
!633 = !DILocalVariable(name: "f_orig", scope: !631, file: !3, line: 442, type: !24)
!634 = distinct !DILocation(line: 528, column: 3, scope: !624)
!635 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !636)
!636 = distinct !DILocation(line: 443, column: 8, scope: !631, inlinedAt: !634)
!637 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !636)
!638 = !DILocation(line: 443, column: 26, scope: !631, inlinedAt: !634)
!639 = !DILocation(line: 443, column: 6, scope: !631, inlinedAt: !634)
!640 = !DILocation(line: 444, column: 3, scope: !631, inlinedAt: !634)
!641 = !DILocation(line: 442, column: 15, scope: !631, inlinedAt: !634)
!642 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !643)
!643 = distinct !DILocation(line: 445, column: 3, scope: !631, inlinedAt: !634)
!644 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !643)
!645 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !643)
!646 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !643)
!647 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !643)
!648 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !643)
!649 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !643)
!650 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !643)
!651 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !643)
!652 = !DILocation(line: 447, column: 1, scope: !631, inlinedAt: !634)
!653 = !DILocation(line: 529, column: 3, scope: !624)
!654 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!655 = !{!656, !657, !658, !659, !660, !662}
!656 = !DILocalVariable(name: "i", arg: 1, scope: !654, file: !3, line: 290, type: !33)
!657 = !DILocalVariable(name: "o", arg: 2, scope: !654, file: !3, line: 290, type: !66)
!658 = !DILocalVariable(name: "a", scope: !654, file: !3, line: 293, type: !50)
!659 = !DILocalVariable(name: "f_new", scope: !654, file: !3, line: 294, type: !24)
!660 = !DILocalVariable(name: "curr", scope: !661, file: !3, line: 298, type: !24)
!661 = distinct !DILexicalBlock(scope: !654, file: !3, line: 295, column: 15)
!662 = !DILocalVariable(name: "new", scope: !663, file: !3, line: 300, type: !24)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 299, column: 14)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 299, column: 8)
!665 = !DILocation(line: 290, column: 27, scope: !654)
!666 = !DILocation(line: 290, column: 37, scope: !654)
!667 = !DILocation(line: 292, column: 19, scope: !654)
!668 = !DILocation(line: 292, column: 3, scope: !654)
!669 = !DILocation(line: 293, column: 7, scope: !654)
!670 = !DILocation(line: 296, column: 13, scope: !661)
!671 = !DILocation(line: 294, column: 15, scope: !654)
!672 = !DILocation(line: 298, column: 17, scope: !661)
!673 = !DILocation(line: 299, column: 8, scope: !664)
!674 = !DILocation(line: 299, column: 8, scope: !661)
!675 = !DILocation(line: 300, column: 7, scope: !663)
!676 = !DILocation(line: 300, column: 19, scope: !663)
!677 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !678)
!678 = distinct !DILocation(line: 301, column: 7, scope: !663)
!679 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !678)
!680 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !678)
!681 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !678)
!682 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !678)
!683 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !678)
!684 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !678)
!685 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !678)
!686 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !678)
!687 = !DILocation(line: 303, column: 5, scope: !664)
!688 = !DILocation(line: 304, column: 5, scope: !661)
!689 = !DILocation(line: 307, column: 3, scope: !654)
!690 = !DILocation(line: 308, column: 1, scope: !654)
!691 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!692 = !{!693, !694}
!693 = !DILocalVariable(name: "i", arg: 1, scope: !691, file: !3, line: 282, type: !33)
!694 = !DILocalVariable(name: "o", arg: 2, scope: !691, file: !3, line: 282, type: !66)
!695 = !DILocation(line: 282, column: 27, scope: !691)
!696 = !DILocation(line: 282, column: 37, scope: !691)
!697 = !DILocation(line: 284, column: 19, scope: !691)
!698 = !DILocation(line: 284, column: 3, scope: !691)
!699 = !DILocation(line: 286, column: 3, scope: !691)
!700 = !DILocation(line: 287, column: 1, scope: !691)
!701 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !702)
!702 = !{!703, !704}
!703 = !DILocalVariable(name: "buf", arg: 1, scope: !701, file: !3, line: 519, type: !137)
!704 = !DILocalVariable(name: "priv", arg: 2, scope: !701, file: !3, line: 519, type: !33)
!705 = !DILocation(line: 519, column: 24, scope: !701)
!706 = !DILocation(line: 519, column: 36, scope: !701)
!707 = !DILocation(line: 433, column: 3, scope: !708, inlinedAt: !711)
!708 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !561, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710}
!710 = !DILocalVariable(name: "f_orig", scope: !708, file: !3, line: 433, type: !24)
!711 = distinct !DILocation(line: 521, column: 3, scope: !701)
!712 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !713)
!713 = distinct !DILocation(line: 434, column: 8, scope: !708, inlinedAt: !711)
!714 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !713)
!715 = !DILocation(line: 434, column: 26, scope: !708, inlinedAt: !711)
!716 = !DILocation(line: 434, column: 6, scope: !708, inlinedAt: !711)
!717 = !DILocation(line: 435, column: 3, scope: !708, inlinedAt: !711)
!718 = !DILocation(line: 433, column: 15, scope: !708, inlinedAt: !711)
!719 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !720)
!720 = distinct !DILocation(line: 436, column: 3, scope: !708, inlinedAt: !711)
!721 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !720)
!722 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !720)
!723 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !720)
!724 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !720)
!725 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !720)
!726 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !720)
!727 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !720)
!728 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !720)
!729 = !DILocation(line: 438, column: 1, scope: !708, inlinedAt: !711)
!730 = !DILocation(line: 522, column: 3, scope: !701)
!731 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!732 = !{!733, !734, !735, !736, !737}
!733 = !DILocalVariable(name: "i", arg: 1, scope: !731, file: !3, line: 263, type: !33)
!734 = !DILocalVariable(name: "o", arg: 2, scope: !731, file: !3, line: 263, type: !66)
!735 = !DILocalVariable(name: "a", scope: !731, file: !3, line: 266, type: !50)
!736 = !DILocalVariable(name: "f_new", scope: !731, file: !3, line: 267, type: !24)
!737 = !DILocalVariable(name: "f_curr", scope: !731, file: !3, line: 274, type: !24)
!738 = !DILocation(line: 263, column: 28, scope: !731)
!739 = !DILocation(line: 263, column: 38, scope: !731)
!740 = !DILocation(line: 265, column: 19, scope: !731)
!741 = !DILocation(line: 265, column: 3, scope: !731)
!742 = !DILocation(line: 266, column: 7, scope: !731)
!743 = !DILocation(line: 268, column: 11, scope: !731)
!744 = !DILocation(line: 267, column: 15, scope: !731)
!745 = !DILocation(line: 269, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !731, file: !3, line: 269, column: 6)
!747 = !DILocation(line: 269, column: 6, scope: !731)
!748 = !DILocation(line: 270, column: 5, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 269, column: 12)
!750 = !DILocation(line: 271, column: 3, scope: !749)
!751 = !DILocation(line: 274, column: 15, scope: !731)
!752 = !DILocation(line: 276, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !731, file: !3, line: 275, column: 15)
!754 = !DILocation(line: 279, column: 3, scope: !731)
!755 = !DILocation(line: 280, column: 1, scope: !731)
!756 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!757 = !{!758, !759}
!758 = !DILocalVariable(name: "buf", arg: 1, scope: !756, file: !3, line: 512, type: !137)
!759 = !DILocalVariable(name: "priv", arg: 2, scope: !756, file: !3, line: 512, type: !33)
!760 = !DILocation(line: 512, column: 24, scope: !756)
!761 = !DILocation(line: 512, column: 36, scope: !756)
!762 = !DILocation(line: 424, column: 3, scope: !763, inlinedAt: !766)
!763 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !561, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!764 = !{!765}
!765 = !DILocalVariable(name: "f_orig", scope: !763, file: !3, line: 424, type: !24)
!766 = distinct !DILocation(line: 514, column: 3, scope: !756)
!767 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !768)
!768 = distinct !DILocation(line: 425, column: 8, scope: !763, inlinedAt: !766)
!769 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !768)
!770 = !DILocation(line: 425, column: 26, scope: !763, inlinedAt: !766)
!771 = !DILocation(line: 425, column: 6, scope: !763, inlinedAt: !766)
!772 = !DILocation(line: 426, column: 3, scope: !763, inlinedAt: !766)
!773 = !DILocation(line: 424, column: 15, scope: !763, inlinedAt: !766)
!774 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !775)
!775 = distinct !DILocation(line: 427, column: 3, scope: !763, inlinedAt: !766)
!776 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !775)
!777 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !775)
!778 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !775)
!779 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !775)
!780 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !775)
!781 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !775)
!782 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !775)
!783 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !775)
!784 = !DILocation(line: 429, column: 1, scope: !763, inlinedAt: !766)
!785 = !DILocation(line: 515, column: 3, scope: !756)
!786 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!788, !789, !790, !791}
!788 = !DILocalVariable(name: "i", arg: 1, scope: !786, file: !3, line: 249, type: !33)
!789 = !DILocalVariable(name: "o", arg: 2, scope: !786, file: !3, line: 249, type: !66)
!790 = !DILocalVariable(name: "a", scope: !786, file: !3, line: 252, type: !50)
!791 = !DILocalVariable(name: "f_new", scope: !786, file: !3, line: 253, type: !24)
!792 = !DILocation(line: 249, column: 23, scope: !786)
!793 = !DILocation(line: 249, column: 33, scope: !786)
!794 = !DILocation(line: 251, column: 19, scope: !786)
!795 = !DILocation(line: 251, column: 3, scope: !786)
!796 = !DILocation(line: 252, column: 7, scope: !786)
!797 = !DILocation(line: 254, column: 11, scope: !786)
!798 = !DILocation(line: 253, column: 15, scope: !786)
!799 = !DILocation(line: 257, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !786, file: !3, line: 255, column: 15)
!801 = !DILocation(line: 260, column: 3, scope: !786)
!802 = !DILocation(line: 261, column: 1, scope: !786)
!803 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "buf", arg: 1, scope: !803, file: !3, line: 505, type: !137)
!806 = !DILocalVariable(name: "priv", arg: 2, scope: !803, file: !3, line: 505, type: !33)
!807 = !DILocation(line: 505, column: 24, scope: !803)
!808 = !DILocation(line: 505, column: 36, scope: !803)
!809 = !DILocation(line: 415, column: 3, scope: !810, inlinedAt: !813)
!810 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !561, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !811)
!811 = !{!812}
!812 = !DILocalVariable(name: "f_outer_join", scope: !810, file: !3, line: 415, type: !24)
!813 = distinct !DILocation(line: 507, column: 3, scope: !803)
!814 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !815)
!815 = distinct !DILocation(line: 416, column: 8, scope: !810, inlinedAt: !813)
!816 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !815)
!817 = !DILocation(line: 416, column: 26, scope: !810, inlinedAt: !813)
!818 = !DILocation(line: 416, column: 6, scope: !810, inlinedAt: !813)
!819 = !DILocation(line: 417, column: 3, scope: !810, inlinedAt: !813)
!820 = !DILocation(line: 415, column: 15, scope: !810, inlinedAt: !813)
!821 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !822)
!822 = distinct !DILocation(line: 418, column: 3, scope: !810, inlinedAt: !813)
!823 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !822)
!824 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !822)
!825 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !822)
!826 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !822)
!827 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !822)
!828 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !822)
!829 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !822)
!830 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !822)
!831 = !DILocation(line: 420, column: 1, scope: !810, inlinedAt: !813)
!832 = !DILocation(line: 508, column: 3, scope: !803)
!833 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!834 = !{!835, !836, !837, !838}
!835 = !DILocalVariable(name: "i", arg: 1, scope: !833, file: !3, line: 103, type: !33)
!836 = !DILocalVariable(name: "o", arg: 2, scope: !833, file: !3, line: 103, type: !66)
!837 = !DILocalVariable(name: "a", scope: !833, file: !3, line: 106, type: !50)
!838 = !DILocalVariable(name: "f_inner_join", scope: !839, file: !3, line: 109, type: !24)
!839 = distinct !DILexicalBlock(scope: !833, file: !3, line: 107, column: 15)
!840 = !DILocation(line: 103, column: 29, scope: !833)
!841 = !DILocation(line: 103, column: 39, scope: !833)
!842 = !DILocation(line: 105, column: 19, scope: !833)
!843 = !DILocation(line: 105, column: 3, scope: !833)
!844 = !DILocation(line: 106, column: 7, scope: !833)
!845 = !DILocation(line: 108, column: 5, scope: !839)
!846 = !DILocation(line: 109, column: 5, scope: !839)
!847 = !DILocation(line: 109, column: 17, scope: !839)
!848 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !849)
!849 = distinct !DILocation(line: 110, column: 5, scope: !839)
!850 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !849)
!851 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !849)
!852 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !849)
!853 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !849)
!854 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !849)
!855 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !849)
!856 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !849)
!857 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !849)
!858 = !DILocation(line: 111, column: 19, scope: !839)
!859 = !DILocation(line: 111, column: 5, scope: !839)
!860 = !DILocation(line: 113, column: 3, scope: !833)
!861 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !862)
!862 = distinct !DILocation(line: 110, column: 5, scope: !839)
!863 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !862)
!864 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !862)
!865 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !862)
!866 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !862)
!867 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !862)
!868 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !862)
!869 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !862)
!870 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !862)
!871 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !872)
!872 = distinct !DILocation(line: 110, column: 5, scope: !839)
!873 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !872)
!874 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !872)
!875 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !872)
!876 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !872)
!877 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !872)
!878 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !872)
!879 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !872)
!880 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !872)
!881 = !DILocation(line: 114, column: 3, scope: !833)
!882 = !DILocation(line: 115, column: 1, scope: !833)
!883 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!884 = !{!885, !886, !887}
!885 = !DILocalVariable(name: "i", arg: 1, scope: !883, file: !3, line: 92, type: !33)
!886 = !DILocalVariable(name: "o", arg: 2, scope: !883, file: !3, line: 92, type: !66)
!887 = !DILocalVariable(name: "a", scope: !883, file: !3, line: 95, type: !50)
!888 = !DILocation(line: 92, column: 29, scope: !883)
!889 = !DILocation(line: 92, column: 39, scope: !883)
!890 = !DILocation(line: 94, column: 19, scope: !883)
!891 = !DILocation(line: 94, column: 3, scope: !883)
!892 = !DILocation(line: 95, column: 7, scope: !883)
!893 = !DILocation(line: 97, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !883, file: !3, line: 96, column: 16)
!895 = !DILocation(line: 100, column: 3, scope: !883)
!896 = !DILocation(line: 101, column: 1, scope: !883)
!897 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !898)
!898 = !{!899, !900}
!899 = !DILocalVariable(name: "buf", arg: 1, scope: !897, file: !3, line: 497, type: !137)
!900 = !DILocalVariable(name: "priv", arg: 2, scope: !897, file: !3, line: 497, type: !33)
!901 = !DILocation(line: 497, column: 24, scope: !897)
!902 = !DILocation(line: 497, column: 36, scope: !897)
!903 = !DILocation(line: 499, column: 3, scope: !897)
!904 = !DILocation(line: 501, column: 3, scope: !897)
!905 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !561, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!906 = !{!907, !908, !909, !910}
!907 = !DILocalVariable(name: "f_first", scope: !905, file: !3, line: 391, type: !24)
!908 = !DILocalVariable(name: "f_second", scope: !905, file: !3, line: 392, type: !24)
!909 = !DILocalVariable(name: "f_third", scope: !905, file: !3, line: 393, type: !24)
!910 = !DILocalVariable(name: "f_fourth", scope: !905, file: !3, line: 394, type: !24)
!911 = !DILocation(line: 391, column: 3, scope: !905)
!912 = !DILocation(line: 392, column: 3, scope: !905)
!913 = !DILocation(line: 393, column: 3, scope: !905)
!914 = !DILocation(line: 394, column: 3, scope: !905)
!915 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !916)
!916 = distinct !DILocation(line: 395, column: 8, scope: !905)
!917 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !916)
!918 = !DILocation(line: 395, column: 26, scope: !905)
!919 = !DILocation(line: 395, column: 6, scope: !905)
!920 = !DILocation(line: 396, column: 3, scope: !905)
!921 = !DILocation(line: 394, column: 15, scope: !905)
!922 = !DILocation(line: 397, column: 3, scope: !905)
!923 = !DILocation(line: 391, column: 15, scope: !905)
!924 = !DILocation(line: 398, column: 3, scope: !905)
!925 = !DILocation(line: 393, column: 15, scope: !905)
!926 = !DILocation(line: 399, column: 3, scope: !905)
!927 = !DILocation(line: 392, column: 15, scope: !905)
!928 = !DILocation(line: 400, column: 3, scope: !905)
!929 = !DILocation(line: 402, column: 20, scope: !905)
!930 = !DILocation(line: 402, column: 3, scope: !905)
!931 = !DILocation(line: 402, column: 12, scope: !905)
!932 = !DILocation(line: 402, column: 18, scope: !905)
!933 = !DILocation(line: 403, column: 21, scope: !905)
!934 = !DILocation(line: 403, column: 3, scope: !905)
!935 = !DILocation(line: 403, column: 13, scope: !905)
!936 = !DILocation(line: 403, column: 19, scope: !905)
!937 = !DILocation(line: 404, column: 20, scope: !905)
!938 = !DILocation(line: 404, column: 3, scope: !905)
!939 = !DILocation(line: 404, column: 12, scope: !905)
!940 = !DILocation(line: 404, column: 18, scope: !905)
!941 = !DILocation(line: 405, column: 21, scope: !905)
!942 = !DILocation(line: 405, column: 3, scope: !905)
!943 = !DILocation(line: 405, column: 13, scope: !905)
!944 = !DILocation(line: 405, column: 19, scope: !905)
!945 = !DILocation(line: 406, column: 3, scope: !905)
!946 = !DILocation(line: 407, column: 16, scope: !905)
!947 = !DILocation(line: 407, column: 3, scope: !905)
!948 = !DILocation(line: 408, column: 16, scope: !905)
!949 = !DILocation(line: 408, column: 3, scope: !905)
!950 = !DILocation(line: 409, column: 16, scope: !905)
!951 = !DILocation(line: 409, column: 3, scope: !905)
!952 = !DILocation(line: 411, column: 1, scope: !905)
!953 = !DILocation(line: 410, column: 3, scope: !905)
!954 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!955 = !{!956, !957, !958, !959}
!956 = !DILocalVariable(name: "i", arg: 1, scope: !954, file: !3, line: 236, type: !33)
!957 = !DILocalVariable(name: "o", arg: 2, scope: !954, file: !3, line: 236, type: !66)
!958 = !DILocalVariable(name: "a", scope: !954, file: !3, line: 239, type: !50)
!959 = !DILocalVariable(name: "f_to", scope: !954, file: !3, line: 241, type: !24)
!960 = !DILocation(line: 236, column: 25, scope: !954)
!961 = !DILocation(line: 236, column: 35, scope: !954)
!962 = !DILocation(line: 238, column: 19, scope: !954)
!963 = !DILocation(line: 238, column: 3, scope: !954)
!964 = !DILocation(line: 239, column: 7, scope: !954)
!965 = !DILocation(line: 241, column: 22, scope: !954)
!966 = !DILocation(line: 241, column: 15, scope: !954)
!967 = !DILocation(line: 243, column: 5, scope: !968)
!968 = distinct !DILexicalBlock(scope: !954, file: !3, line: 242, column: 15)
!969 = !DILocation(line: 244, column: 5, scope: !968)
!970 = !DILocation(line: 246, column: 3, scope: !954)
!971 = !DILocation(line: 247, column: 1, scope: !954)
!972 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!973 = !{!974, !975, !976, !977}
!974 = !DILocalVariable(name: "i", arg: 1, scope: !972, file: !3, line: 198, type: !33)
!975 = !DILocalVariable(name: "o", arg: 2, scope: !972, file: !3, line: 198, type: !66)
!976 = !DILocalVariable(name: "a", scope: !972, file: !3, line: 201, type: !50)
!977 = !DILocalVariable(name: "f_to", scope: !972, file: !3, line: 202, type: !24)
!978 = !DILocation(line: 198, column: 24, scope: !972)
!979 = !DILocation(line: 198, column: 34, scope: !972)
!980 = !DILocation(line: 200, column: 19, scope: !972)
!981 = !DILocation(line: 200, column: 3, scope: !972)
!982 = !DILocation(line: 201, column: 7, scope: !972)
!983 = !DILocation(line: 202, column: 22, scope: !972)
!984 = !DILocation(line: 202, column: 15, scope: !972)
!985 = !DILocation(line: 204, column: 5, scope: !986)
!986 = distinct !DILexicalBlock(scope: !972, file: !3, line: 203, column: 15)
!987 = !DILocation(line: 205, column: 5, scope: !986)
!988 = !DILocation(line: 207, column: 3, scope: !972)
!989 = !DILocation(line: 208, column: 1, scope: !972)
!990 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!991 = !{!992, !993, !994, !995}
!992 = !DILocalVariable(name: "i", arg: 1, scope: !990, file: !3, line: 223, type: !33)
!993 = !DILocalVariable(name: "o", arg: 2, scope: !990, file: !3, line: 223, type: !66)
!994 = !DILocalVariable(name: "a", scope: !990, file: !3, line: 226, type: !50)
!995 = !DILocalVariable(name: "f_to", scope: !990, file: !3, line: 228, type: !24)
!996 = !DILocation(line: 223, column: 24, scope: !990)
!997 = !DILocation(line: 223, column: 34, scope: !990)
!998 = !DILocation(line: 225, column: 19, scope: !990)
!999 = !DILocation(line: 225, column: 3, scope: !990)
!1000 = !DILocation(line: 226, column: 7, scope: !990)
!1001 = !DILocation(line: 228, column: 22, scope: !990)
!1002 = !DILocation(line: 228, column: 15, scope: !990)
!1003 = !DILocation(line: 230, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !990, file: !3, line: 229, column: 15)
!1005 = !DILocation(line: 231, column: 5, scope: !1004)
!1006 = !DILocation(line: 233, column: 3, scope: !990)
!1007 = !DILocation(line: 234, column: 1, scope: !990)
!1008 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1009 = !{!1010, !1011, !1012, !1013}
!1010 = !DILocalVariable(name: "i", arg: 1, scope: !1008, file: !3, line: 211, type: !33)
!1011 = !DILocalVariable(name: "o", arg: 2, scope: !1008, file: !3, line: 211, type: !66)
!1012 = !DILocalVariable(name: "a", scope: !1008, file: !3, line: 214, type: !50)
!1013 = !DILocalVariable(name: "f_to", scope: !1008, file: !3, line: 215, type: !24)
!1014 = !DILocation(line: 211, column: 25, scope: !1008)
!1015 = !DILocation(line: 211, column: 35, scope: !1008)
!1016 = !DILocation(line: 213, column: 19, scope: !1008)
!1017 = !DILocation(line: 213, column: 3, scope: !1008)
!1018 = !DILocation(line: 214, column: 7, scope: !1008)
!1019 = !DILocation(line: 215, column: 22, scope: !1008)
!1020 = !DILocation(line: 215, column: 15, scope: !1008)
!1021 = !DILocation(line: 217, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 216, column: 15)
!1023 = !DILocation(line: 218, column: 5, scope: !1022)
!1024 = !DILocation(line: 220, column: 3, scope: !1008)
!1025 = !DILocation(line: 221, column: 1, scope: !1008)
!1026 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1027)
!1027 = !{!1028, !1029}
!1028 = !DILocalVariable(name: "buf", arg: 1, scope: !1026, file: !3, line: 489, type: !137)
!1029 = !DILocalVariable(name: "priv", arg: 2, scope: !1026, file: !3, line: 489, type: !33)
!1030 = !DILocation(line: 489, column: 24, scope: !1026)
!1031 = !DILocation(line: 489, column: 36, scope: !1026)
!1032 = !DILocation(line: 358, column: 3, scope: !1033, inlinedAt: !1037)
!1033 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !561, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1034 = !{!1035, !1036}
!1035 = !DILocalVariable(name: "even", scope: !1033, file: !3, line: 358, type: !24)
!1036 = !DILocalVariable(name: "odd", scope: !1033, file: !3, line: 359, type: !24)
!1037 = distinct !DILocation(line: 491, column: 3, scope: !1026)
!1038 = !DILocation(line: 359, column: 3, scope: !1033, inlinedAt: !1037)
!1039 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 360, column: 8, scope: !1033, inlinedAt: !1037)
!1041 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1040)
!1042 = !DILocation(line: 360, column: 26, scope: !1033, inlinedAt: !1037)
!1043 = !DILocation(line: 360, column: 6, scope: !1033, inlinedAt: !1037)
!1044 = !DILocation(line: 358, column: 15, scope: !1033, inlinedAt: !1037)
!1045 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 361, column: 3, scope: !1033, inlinedAt: !1037)
!1047 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1046)
!1048 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1046)
!1049 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1046)
!1050 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1046)
!1051 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1046)
!1052 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1046)
!1053 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1046)
!1054 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1046)
!1055 = !DILocation(line: 359, column: 15, scope: !1033, inlinedAt: !1037)
!1056 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 362, column: 3, scope: !1033, inlinedAt: !1037)
!1058 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1057)
!1059 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1057)
!1060 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1057)
!1061 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1057)
!1062 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1057)
!1063 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1057)
!1064 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1057)
!1065 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1057)
!1066 = !DILocation(line: 365, column: 1, scope: !1033, inlinedAt: !1037)
!1067 = !DILocation(line: 493, column: 3, scope: !1026)
!1068 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DILocalVariable(name: "i", arg: 1, scope: !1068, file: !3, line: 172, type: !33)
!1071 = !DILocalVariable(name: "o", arg: 2, scope: !1068, file: !3, line: 172, type: !66)
!1072 = !DILocalVariable(name: "i", scope: !1073, file: !3, line: 174, type: !50)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 174, column: 3)
!1074 = !DILocation(line: 172, column: 23, scope: !1068)
!1075 = !DILocation(line: 172, column: 33, scope: !1068)
!1076 = !DILocation(line: 173, column: 19, scope: !1068)
!1077 = !DILocation(line: 173, column: 3, scope: !1068)
!1078 = !DILocation(line: 174, column: 12, scope: !1073)
!1079 = !DILocation(line: 176, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 175, column: 22)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 175, column: 9)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 174, column: 31)
!1083 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 174, column: 3)
!1084 = !DILocation(line: 180, column: 3, scope: !1068)
!1085 = !DILocation(line: 182, column: 3, scope: !1068)
!1086 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DILocalVariable(name: "i", arg: 1, scope: !1086, file: !3, line: 185, type: !33)
!1089 = !DILocalVariable(name: "o", arg: 2, scope: !1086, file: !3, line: 185, type: !66)
!1090 = !DILocalVariable(name: "i", scope: !1091, file: !3, line: 187, type: !50)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 187, column: 3)
!1092 = !DILocation(line: 185, column: 22, scope: !1086)
!1093 = !DILocation(line: 185, column: 32, scope: !1086)
!1094 = !DILocation(line: 186, column: 19, scope: !1086)
!1095 = !DILocation(line: 186, column: 3, scope: !1086)
!1096 = !DILocation(line: 187, column: 12, scope: !1091)
!1097 = !DILocation(line: 189, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 188, column: 22)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 188, column: 9)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 187, column: 31)
!1101 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 187, column: 3)
!1102 = !DILocation(line: 193, column: 3, scope: !1086)
!1103 = !DILocation(line: 195, column: 3, scope: !1086)
!1104 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1105 = !{!1106, !1107}
!1106 = !DILocalVariable(name: "buf", arg: 1, scope: !1104, file: !3, line: 481, type: !137)
!1107 = !DILocalVariable(name: "priv", arg: 2, scope: !1104, file: !3, line: 481, type: !33)
!1108 = !DILocation(line: 481, column: 24, scope: !1104)
!1109 = !DILocation(line: 481, column: 36, scope: !1104)
!1110 = !DILocation(line: 369, column: 3, scope: !1111, inlinedAt: !1114)
!1111 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !561, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1112 = !{!1113}
!1113 = !DILocalVariable(name: "f_outer", scope: !1111, file: !3, line: 369, type: !24)
!1114 = distinct !DILocation(line: 483, column: 3, scope: !1104)
!1115 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 370, column: 8, scope: !1111, inlinedAt: !1114)
!1117 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1116)
!1118 = !DILocation(line: 370, column: 26, scope: !1111, inlinedAt: !1114)
!1119 = !DILocation(line: 370, column: 6, scope: !1111, inlinedAt: !1114)
!1120 = !DILocation(line: 371, column: 3, scope: !1111, inlinedAt: !1114)
!1121 = !DILocation(line: 369, column: 15, scope: !1111, inlinedAt: !1114)
!1122 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 372, column: 3, scope: !1111, inlinedAt: !1114)
!1124 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1123)
!1125 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1123)
!1126 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1123)
!1127 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1123)
!1128 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1123)
!1129 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1123)
!1130 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1123)
!1131 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1123)
!1132 = !DILocation(line: 374, column: 1, scope: !1111, inlinedAt: !1114)
!1133 = !DILocation(line: 485, column: 3, scope: !1104)
!1134 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DILocalVariable(name: "i", arg: 1, scope: !1134, file: !3, line: 79, type: !33)
!1137 = !DILocalVariable(name: "o", arg: 2, scope: !1134, file: !3, line: 79, type: !66)
!1138 = !DILocalVariable(name: "a", scope: !1134, file: !3, line: 82, type: !50)
!1139 = !DILocalVariable(name: "f_inner", scope: !1140, file: !3, line: 85, type: !24)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 83, column: 15)
!1141 = !DILocation(line: 79, column: 24, scope: !1134)
!1142 = !DILocation(line: 79, column: 34, scope: !1134)
!1143 = !DILocation(line: 81, column: 19, scope: !1134)
!1144 = !DILocation(line: 81, column: 3, scope: !1134)
!1145 = !DILocation(line: 82, column: 7, scope: !1134)
!1146 = !DILocation(line: 84, column: 5, scope: !1140)
!1147 = !DILocation(line: 85, column: 5, scope: !1140)
!1148 = !DILocation(line: 85, column: 17, scope: !1140)
!1149 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 86, column: 5, scope: !1140)
!1151 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1150)
!1152 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1150)
!1153 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1150)
!1154 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1150)
!1155 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1150)
!1156 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1150)
!1157 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1150)
!1158 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1150)
!1159 = !DILocation(line: 88, column: 3, scope: !1134)
!1160 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 86, column: 5, scope: !1140)
!1162 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1161)
!1163 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1161)
!1164 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1161)
!1165 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1161)
!1166 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1161)
!1167 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1161)
!1168 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1161)
!1169 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1161)
!1170 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 86, column: 5, scope: !1140)
!1172 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1171)
!1173 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1171)
!1174 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1171)
!1175 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1171)
!1176 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1171)
!1177 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1171)
!1178 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1171)
!1179 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1171)
!1180 = !DILocation(line: 89, column: 3, scope: !1134)
!1181 = !DILocation(line: 90, column: 1, scope: !1134)
!1182 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DILocalVariable(name: "i", arg: 1, scope: !1182, file: !3, line: 68, type: !33)
!1185 = !DILocalVariable(name: "o", arg: 2, scope: !1182, file: !3, line: 68, type: !66)
!1186 = !DILocalVariable(name: "a", scope: !1182, file: !3, line: 71, type: !50)
!1187 = !DILocation(line: 68, column: 24, scope: !1182)
!1188 = !DILocation(line: 68, column: 34, scope: !1182)
!1189 = !DILocation(line: 70, column: 19, scope: !1182)
!1190 = !DILocation(line: 70, column: 3, scope: !1182)
!1191 = !DILocation(line: 71, column: 7, scope: !1182)
!1192 = !DILocation(line: 73, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 72, column: 16)
!1194 = !DILocation(line: 76, column: 3, scope: !1182)
!1195 = !DILocation(line: 77, column: 1, scope: !1182)
!1196 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "buf", arg: 1, scope: !1196, file: !3, line: 540, type: !137)
!1199 = !DILocalVariable(name: "priv", arg: 2, scope: !1196, file: !3, line: 540, type: !33)
!1200 = !DILocation(line: 540, column: 25, scope: !1196)
!1201 = !DILocation(line: 540, column: 37, scope: !1196)
!1202 = !DILocation(line: 459, column: 3, scope: !1203, inlinedAt: !1207)
!1203 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !561, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1204 = !{!1205, !1206}
!1205 = !DILocalVariable(name: "first", scope: !1203, file: !3, line: 459, type: !24)
!1206 = !DILocalVariable(name: "second", scope: !1203, file: !3, line: 460, type: !24)
!1207 = distinct !DILocation(line: 542, column: 3, scope: !1196)
!1208 = !DILocation(line: 460, column: 3, scope: !1203, inlinedAt: !1207)
!1209 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 461, column: 8, scope: !1203, inlinedAt: !1207)
!1211 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1210)
!1212 = !DILocation(line: 461, column: 26, scope: !1203, inlinedAt: !1207)
!1213 = !DILocation(line: 461, column: 6, scope: !1203, inlinedAt: !1207)
!1214 = !DILocation(line: 459, column: 15, scope: !1203, inlinedAt: !1207)
!1215 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 463, column: 3, scope: !1203, inlinedAt: !1207)
!1217 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1216)
!1218 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1216)
!1219 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1216)
!1220 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1216)
!1221 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1216)
!1222 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1216)
!1223 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1216)
!1224 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1216)
!1225 = !DILocation(line: 460, column: 15, scope: !1203, inlinedAt: !1207)
!1226 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 464, column: 3, scope: !1203, inlinedAt: !1207)
!1228 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1227)
!1229 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1227)
!1230 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1227)
!1231 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1227)
!1232 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1227)
!1233 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1227)
!1234 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1227)
!1235 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1227)
!1236 = !DILocation(line: 467, column: 1, scope: !1203, inlinedAt: !1207)
!1237 = !DILocation(line: 543, column: 3, scope: !1196)
!1238 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244}
!1240 = !DILocalVariable(name: "i", arg: 1, scope: !1238, file: !3, line: 326, type: !33)
!1241 = !DILocalVariable(name: "o", arg: 2, scope: !1238, file: !3, line: 326, type: !66)
!1242 = !DILocalVariable(name: "a", scope: !1238, file: !3, line: 329, type: !50)
!1243 = !DILocalVariable(name: "start", scope: !1238, file: !3, line: 330, type: !29)
!1244 = !DILocalVariable(name: "end", scope: !1238, file: !3, line: 331, type: !29)
!1245 = !DILocation(line: 326, column: 24, scope: !1238)
!1246 = !DILocation(line: 326, column: 34, scope: !1238)
!1247 = !DILocation(line: 328, column: 19, scope: !1238)
!1248 = !DILocation(line: 328, column: 3, scope: !1238)
!1249 = !DILocation(line: 329, column: 7, scope: !1238)
!1250 = !DILocation(line: 330, column: 12, scope: !1238)
!1251 = !DILocation(line: 331, column: 12, scope: !1238)
!1252 = !DILocation(line: 332, column: 3, scope: !1238)
!1253 = !DILocation(line: 333, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 333, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 332, column: 15)
!1256 = !DILocation(line: 333, column: 9, scope: !1255)
!1257 = !DILocation(line: 268, column: 5, scope: !1258, inlinedAt: !1265)
!1258 = distinct !DISubprogram(name: "rdtsc", scope: !1259, file: !1259, line: 265, type: !1260, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1262)
!1259 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!29}
!1262 = !{!1263, !1264}
!1263 = !DILocalVariable(name: "lo", scope: !1258, file: !1259, line: 267, type: !43)
!1264 = !DILocalVariable(name: "hi", scope: !1258, file: !1259, line: 267, type: !43)
!1265 = distinct !DILocation(line: 334, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 333, column: 17)
!1267 = !{i32 97056}
!1268 = !DILocation(line: 267, column: 14, scope: !1258, inlinedAt: !1265)
!1269 = !DILocation(line: 267, column: 18, scope: !1258, inlinedAt: !1265)
!1270 = !DILocation(line: 269, column: 12, scope: !1258, inlinedAt: !1265)
!1271 = !DILocation(line: 269, column: 18, scope: !1258, inlinedAt: !1265)
!1272 = !DILocation(line: 269, column: 33, scope: !1258, inlinedAt: !1265)
!1273 = !DILocation(line: 269, column: 15, scope: !1258, inlinedAt: !1265)
!1274 = !DILocation(line: 335, column: 5, scope: !1266)
!1275 = !DILocation(line: 0, scope: !1238)
!1276 = !DILocation(line: 337, column: 6, scope: !1255)
!1277 = !DILocation(line: 332, column: 11, scope: !1238)
!1278 = distinct !{!1278, !1252, !1279}
!1279 = !DILocation(line: 338, column: 3, scope: !1238)
!1280 = !DILocation(line: 268, column: 5, scope: !1258, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 339, column: 9, scope: !1238)
!1282 = !DILocation(line: 267, column: 14, scope: !1258, inlinedAt: !1281)
!1283 = !DILocation(line: 267, column: 18, scope: !1258, inlinedAt: !1281)
!1284 = !DILocation(line: 269, column: 12, scope: !1258, inlinedAt: !1281)
!1285 = !DILocation(line: 269, column: 18, scope: !1258, inlinedAt: !1281)
!1286 = !DILocation(line: 269, column: 33, scope: !1258, inlinedAt: !1281)
!1287 = !DILocation(line: 269, column: 15, scope: !1258, inlinedAt: !1281)
!1288 = !DILocation(line: 340, column: 104, scope: !1238)
!1289 = !DILocation(line: 340, column: 123, scope: !1238)
!1290 = !DILocation(line: 340, column: 3, scope: !1238)
!1291 = !DILocation(line: 341, column: 1, scope: !1238)
!1292 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DILocalVariable(name: "i", arg: 1, scope: !1292, file: !3, line: 343, type: !33)
!1295 = !DILocalVariable(name: "o", arg: 2, scope: !1292, file: !3, line: 343, type: !66)
!1296 = !DILocalVariable(name: "a", scope: !1292, file: !3, line: 346, type: !50)
!1297 = !DILocation(line: 343, column: 25, scope: !1292)
!1298 = !DILocation(line: 343, column: 35, scope: !1292)
!1299 = !DILocation(line: 345, column: 19, scope: !1292)
!1300 = !DILocation(line: 345, column: 3, scope: !1292)
!1301 = !DILocation(line: 346, column: 7, scope: !1292)
!1302 = !DILocation(line: 351, column: 3, scope: !1292)
!1303 = !DILocation(line: 352, column: 1, scope: !1292)
!1304 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1305 = !{!1306, !1307}
!1306 = !DILocalVariable(name: "buf", arg: 1, scope: !1304, file: !3, line: 473, type: !137)
!1307 = !DILocalVariable(name: "priv", arg: 2, scope: !1304, file: !3, line: 473, type: !33)
!1308 = !DILocation(line: 473, column: 23, scope: !1304)
!1309 = !DILocation(line: 473, column: 35, scope: !1304)
!1310 = !DILocation(line: 378, column: 3, scope: !1311, inlinedAt: !1316)
!1311 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !561, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DILocalVariable(name: "f1", scope: !1311, file: !3, line: 378, type: !24)
!1314 = !DILocalVariable(name: "f2", scope: !1311, file: !3, line: 379, type: !24)
!1315 = !DILocalVariable(name: "f3", scope: !1311, file: !3, line: 380, type: !24)
!1316 = distinct !DILocation(line: 475, column: 3, scope: !1304)
!1317 = !DILocation(line: 379, column: 3, scope: !1311, inlinedAt: !1316)
!1318 = !DILocation(line: 380, column: 3, scope: !1311, inlinedAt: !1316)
!1319 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 381, column: 8, scope: !1311, inlinedAt: !1316)
!1321 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1320)
!1322 = !DILocation(line: 381, column: 26, scope: !1311, inlinedAt: !1316)
!1323 = !DILocation(line: 381, column: 6, scope: !1311, inlinedAt: !1316)
!1324 = !DILocation(line: 382, column: 3, scope: !1311, inlinedAt: !1316)
!1325 = !DILocation(line: 378, column: 15, scope: !1311, inlinedAt: !1316)
!1326 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 383, column: 3, scope: !1311, inlinedAt: !1316)
!1328 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1327)
!1329 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1327)
!1330 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1327)
!1331 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1327)
!1332 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1327)
!1333 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1327)
!1334 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1327)
!1335 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1327)
!1336 = !DILocation(line: 379, column: 15, scope: !1311, inlinedAt: !1316)
!1337 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 384, column: 3, scope: !1311, inlinedAt: !1316)
!1339 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1338)
!1340 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1338)
!1341 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1338)
!1342 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1338)
!1343 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1338)
!1344 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1338)
!1345 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1338)
!1346 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1338)
!1347 = !DILocation(line: 380, column: 15, scope: !1311, inlinedAt: !1316)
!1348 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 385, column: 3, scope: !1311, inlinedAt: !1316)
!1350 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1349)
!1351 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1349)
!1352 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1349)
!1353 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1349)
!1354 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1349)
!1355 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1349)
!1356 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1349)
!1357 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1349)
!1358 = !DILocation(line: 387, column: 1, scope: !1311, inlinedAt: !1316)
!1359 = !DILocation(line: 477, column: 3, scope: !1304)
!1360 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DILocalVariable(name: "i", arg: 1, scope: !1360, file: !3, line: 144, type: !33)
!1363 = !DILocalVariable(name: "o", arg: 2, scope: !1360, file: !3, line: 144, type: !66)
!1364 = !DILocalVariable(name: "a", scope: !1360, file: !3, line: 147, type: !50)
!1365 = !DILocalVariable(name: "f3", scope: !1360, file: !3, line: 154, type: !24)
!1366 = !DILocation(line: 144, column: 19, scope: !1360)
!1367 = !DILocation(line: 144, column: 29, scope: !1360)
!1368 = !DILocation(line: 146, column: 19, scope: !1360)
!1369 = !DILocation(line: 146, column: 3, scope: !1360)
!1370 = !DILocation(line: 147, column: 7, scope: !1360)
!1371 = !DILocation(line: 149, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 148, column: 15)
!1373 = !DILocation(line: 150, column: 5, scope: !1372)
!1374 = !DILocation(line: 153, column: 3, scope: !1360)
!1375 = !DILocation(line: 154, column: 3, scope: !1360)
!1376 = !DILocation(line: 154, column: 15, scope: !1360)
!1377 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 155, column: 3, scope: !1360)
!1379 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1378)
!1380 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1378)
!1381 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1378)
!1382 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1378)
!1383 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1378)
!1384 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1378)
!1385 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1378)
!1386 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1378)
!1387 = !DILocation(line: 156, column: 1, scope: !1360)
!1388 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DILocalVariable(name: "i", arg: 1, scope: !1388, file: !3, line: 159, type: !33)
!1391 = !DILocalVariable(name: "o", arg: 2, scope: !1388, file: !3, line: 159, type: !66)
!1392 = !DILocalVariable(name: "a", scope: !1388, file: !3, line: 162, type: !50)
!1393 = !DILocalVariable(name: "f4", scope: !1388, file: !3, line: 168, type: !24)
!1394 = !DILocation(line: 159, column: 19, scope: !1388)
!1395 = !DILocation(line: 159, column: 29, scope: !1388)
!1396 = !DILocation(line: 161, column: 19, scope: !1388)
!1397 = !DILocation(line: 161, column: 3, scope: !1388)
!1398 = !DILocation(line: 162, column: 7, scope: !1388)
!1399 = !DILocation(line: 164, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 163, column: 16)
!1401 = !DILocation(line: 167, column: 3, scope: !1388)
!1402 = !DILocation(line: 168, column: 3, scope: !1388)
!1403 = !DILocation(line: 168, column: 15, scope: !1388)
!1404 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 169, column: 3, scope: !1388)
!1406 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1405)
!1407 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1405)
!1408 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1405)
!1409 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1405)
!1410 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1405)
!1411 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1405)
!1412 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1405)
!1413 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1405)
!1414 = !DILocation(line: 170, column: 1, scope: !1388)
!1415 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1416)
!1416 = !{!1417, !1418, !1419, !1420}
!1417 = !DILocalVariable(name: "i", arg: 1, scope: !1415, file: !3, line: 131, type: !33)
!1418 = !DILocalVariable(name: "o", arg: 2, scope: !1415, file: !3, line: 131, type: !66)
!1419 = !DILocalVariable(name: "a", scope: !1415, file: !3, line: 134, type: !50)
!1420 = !DILocalVariable(name: "f4", scope: !1415, file: !3, line: 140, type: !24)
!1421 = !DILocation(line: 131, column: 19, scope: !1415)
!1422 = !DILocation(line: 131, column: 29, scope: !1415)
!1423 = !DILocation(line: 133, column: 19, scope: !1415)
!1424 = !DILocation(line: 133, column: 3, scope: !1415)
!1425 = !DILocation(line: 134, column: 7, scope: !1415)
!1426 = !DILocation(line: 136, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 135, column: 15)
!1428 = !DILocation(line: 139, column: 3, scope: !1415)
!1429 = !DILocation(line: 140, column: 3, scope: !1415)
!1430 = !DILocation(line: 140, column: 15, scope: !1415)
!1431 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 141, column: 3, scope: !1415)
!1433 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1432)
!1434 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1432)
!1435 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1432)
!1436 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1432)
!1437 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1432)
!1438 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1432)
!1439 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1432)
!1440 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1432)
!1441 = !DILocation(line: 142, column: 1, scope: !1415)
!1442 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DILocalVariable(name: "i", arg: 1, scope: !1442, file: !3, line: 119, type: !33)
!1445 = !DILocalVariable(name: "o", arg: 2, scope: !1442, file: !3, line: 119, type: !66)
!1446 = !DILocalVariable(name: "a", scope: !1442, file: !3, line: 122, type: !50)
!1447 = !DILocation(line: 119, column: 19, scope: !1442)
!1448 = !DILocation(line: 119, column: 29, scope: !1442)
!1449 = !DILocation(line: 121, column: 19, scope: !1442)
!1450 = !DILocation(line: 121, column: 3, scope: !1442)
!1451 = !DILocation(line: 122, column: 7, scope: !1442)
!1452 = !DILocation(line: 124, column: 5, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 123, column: 16)
!1454 = !DILocation(line: 127, column: 3, scope: !1442)
!1455 = !DILocation(line: 128, column: 1, scope: !1442)
!1456 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !1457, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!50, !50}
!1459 = !{!1460, !1461, !1462}
!1460 = !DILocalVariable(name: "a", arg: 1, scope: !1456, file: !3, line: 45, type: !50)
!1461 = !DILocalVariable(name: "i", scope: !1456, file: !3, line: 47, type: !50)
!1462 = !DILocalVariable(name: "b", scope: !1456, file: !3, line: 47, type: !50)
!1463 = !DILocation(line: 45, column: 18, scope: !1456)
!1464 = !DILocation(line: 47, column: 10, scope: !1456)
!1465 = !DILocation(line: 47, column: 7, scope: !1456)
!1466 = !DILocation(line: 49, column: 16, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 49, column: 3)
!1468 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 49, column: 3)
!1469 = !DILocation(line: 49, column: 3, scope: !1468)
!1470 = !DILocation(line: 51, column: 5, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 50, column: 3)
!1472 = !DILocation(line: 49, column: 22, scope: !1467)
!1473 = distinct !{!1473, !1469, !1474}
!1474 = !DILocation(line: 53, column: 3, scope: !1468)
!1475 = !DILocation(line: 0, scope: !1456)
!1476 = !DILocation(line: 55, column: 3, scope: !1456)
!1477 = !DILocation(line: 358, column: 3, scope: !1033)
!1478 = !DILocation(line: 359, column: 3, scope: !1033)
!1479 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 360, column: 8, scope: !1033)
!1481 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1480)
!1482 = !DILocation(line: 360, column: 26, scope: !1033)
!1483 = !DILocation(line: 360, column: 6, scope: !1033)
!1484 = !DILocation(line: 358, column: 15, scope: !1033)
!1485 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 361, column: 3, scope: !1033)
!1487 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1486)
!1488 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1486)
!1489 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1486)
!1490 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1486)
!1491 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1486)
!1492 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1486)
!1493 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1486)
!1494 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1486)
!1495 = !DILocation(line: 359, column: 15, scope: !1033)
!1496 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 362, column: 3, scope: !1033)
!1498 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1497)
!1499 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1497)
!1500 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1497)
!1501 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1497)
!1502 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1497)
!1503 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1497)
!1504 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1497)
!1505 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1497)
!1506 = !DILocation(line: 365, column: 1, scope: !1033)
!1507 = !DILocation(line: 364, column: 3, scope: !1033)
!1508 = !DILocation(line: 369, column: 3, scope: !1111)
!1509 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 370, column: 8, scope: !1111)
!1511 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1510)
!1512 = !DILocation(line: 370, column: 26, scope: !1111)
!1513 = !DILocation(line: 370, column: 6, scope: !1111)
!1514 = !DILocation(line: 371, column: 3, scope: !1111)
!1515 = !DILocation(line: 369, column: 15, scope: !1111)
!1516 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 372, column: 3, scope: !1111)
!1518 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1517)
!1519 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1517)
!1520 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1517)
!1521 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1517)
!1522 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1517)
!1523 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1517)
!1524 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1517)
!1525 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1517)
!1526 = !DILocation(line: 374, column: 1, scope: !1111)
!1527 = !DILocation(line: 373, column: 3, scope: !1111)
!1528 = !DILocation(line: 378, column: 3, scope: !1311)
!1529 = !DILocation(line: 379, column: 3, scope: !1311)
!1530 = !DILocation(line: 380, column: 3, scope: !1311)
!1531 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 381, column: 8, scope: !1311)
!1533 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1532)
!1534 = !DILocation(line: 381, column: 26, scope: !1311)
!1535 = !DILocation(line: 381, column: 6, scope: !1311)
!1536 = !DILocation(line: 382, column: 3, scope: !1311)
!1537 = !DILocation(line: 378, column: 15, scope: !1311)
!1538 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 383, column: 3, scope: !1311)
!1540 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1539)
!1541 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1539)
!1542 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1539)
!1543 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1539)
!1544 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1539)
!1545 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1539)
!1546 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1539)
!1547 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1539)
!1548 = !DILocation(line: 379, column: 15, scope: !1311)
!1549 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 384, column: 3, scope: !1311)
!1551 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1550)
!1552 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1550)
!1553 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1550)
!1554 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1550)
!1555 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1550)
!1556 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1550)
!1557 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1550)
!1558 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1550)
!1559 = !DILocation(line: 380, column: 15, scope: !1311)
!1560 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 385, column: 3, scope: !1311)
!1562 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1561)
!1563 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1561)
!1564 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1561)
!1565 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1561)
!1566 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1561)
!1567 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1561)
!1568 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1561)
!1569 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1561)
!1570 = !DILocation(line: 387, column: 1, scope: !1311)
!1571 = !DILocation(line: 386, column: 3, scope: !1311)
!1572 = !DILocation(line: 415, column: 3, scope: !810)
!1573 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 416, column: 8, scope: !810)
!1575 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1574)
!1576 = !DILocation(line: 416, column: 26, scope: !810)
!1577 = !DILocation(line: 416, column: 6, scope: !810)
!1578 = !DILocation(line: 417, column: 3, scope: !810)
!1579 = !DILocation(line: 415, column: 15, scope: !810)
!1580 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 418, column: 3, scope: !810)
!1582 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1581)
!1583 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1581)
!1584 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1581)
!1585 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1581)
!1586 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1581)
!1587 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1581)
!1588 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1581)
!1589 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1581)
!1590 = !DILocation(line: 420, column: 1, scope: !810)
!1591 = !DILocation(line: 419, column: 3, scope: !810)
!1592 = !DILocation(line: 424, column: 3, scope: !763)
!1593 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 425, column: 8, scope: !763)
!1595 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1594)
!1596 = !DILocation(line: 425, column: 26, scope: !763)
!1597 = !DILocation(line: 425, column: 6, scope: !763)
!1598 = !DILocation(line: 426, column: 3, scope: !763)
!1599 = !DILocation(line: 424, column: 15, scope: !763)
!1600 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 427, column: 3, scope: !763)
!1602 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1601)
!1603 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1601)
!1604 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1601)
!1605 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1601)
!1606 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1601)
!1607 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1601)
!1608 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1601)
!1609 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1601)
!1610 = !DILocation(line: 429, column: 1, scope: !763)
!1611 = !DILocation(line: 428, column: 3, scope: !763)
!1612 = !DILocation(line: 433, column: 3, scope: !708)
!1613 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 434, column: 8, scope: !708)
!1615 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1614)
!1616 = !DILocation(line: 434, column: 26, scope: !708)
!1617 = !DILocation(line: 434, column: 6, scope: !708)
!1618 = !DILocation(line: 435, column: 3, scope: !708)
!1619 = !DILocation(line: 433, column: 15, scope: !708)
!1620 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 436, column: 3, scope: !708)
!1622 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1621)
!1623 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1621)
!1624 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1621)
!1625 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1621)
!1626 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1621)
!1627 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1621)
!1628 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1621)
!1629 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1621)
!1630 = !DILocation(line: 438, column: 1, scope: !708)
!1631 = !DILocation(line: 437, column: 3, scope: !708)
!1632 = !DILocation(line: 442, column: 3, scope: !631)
!1633 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 443, column: 8, scope: !631)
!1635 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1634)
!1636 = !DILocation(line: 443, column: 26, scope: !631)
!1637 = !DILocation(line: 443, column: 6, scope: !631)
!1638 = !DILocation(line: 444, column: 3, scope: !631)
!1639 = !DILocation(line: 442, column: 15, scope: !631)
!1640 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 445, column: 3, scope: !631)
!1642 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1641)
!1643 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1641)
!1644 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1641)
!1645 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1641)
!1646 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1641)
!1647 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1641)
!1648 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1641)
!1649 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1641)
!1650 = !DILocation(line: 447, column: 1, scope: !631)
!1651 = !DILocation(line: 446, column: 3, scope: !631)
!1652 = !DILocation(line: 451, column: 3, scope: !560)
!1653 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 452, column: 8, scope: !560)
!1655 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1654)
!1656 = !DILocation(line: 452, column: 26, scope: !560)
!1657 = !DILocation(line: 452, column: 6, scope: !560)
!1658 = !DILocation(line: 453, column: 3, scope: !560)
!1659 = !DILocation(line: 451, column: 15, scope: !560)
!1660 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 454, column: 3, scope: !560)
!1662 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1661)
!1663 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1661)
!1664 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1661)
!1665 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1661)
!1666 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1661)
!1667 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1661)
!1668 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1661)
!1669 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1661)
!1670 = !DILocation(line: 456, column: 1, scope: !560)
!1671 = !DILocation(line: 455, column: 3, scope: !560)
!1672 = !DILocation(line: 459, column: 3, scope: !1203)
!1673 = !DILocation(line: 460, column: 3, scope: !1203)
!1674 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 461, column: 8, scope: !1203)
!1676 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1675)
!1677 = !DILocation(line: 461, column: 26, scope: !1203)
!1678 = !DILocation(line: 461, column: 6, scope: !1203)
!1679 = !DILocation(line: 459, column: 15, scope: !1203)
!1680 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 463, column: 3, scope: !1203)
!1682 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1681)
!1683 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1681)
!1684 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1681)
!1685 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1681)
!1686 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1681)
!1687 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1681)
!1688 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1681)
!1689 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1681)
!1690 = !DILocation(line: 460, column: 15, scope: !1203)
!1691 = !DILocation(line: 693, column: 35, scope: !583, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 464, column: 3, scope: !1203)
!1693 = !DILocation(line: 693, column: 46, scope: !583, inlinedAt: !1692)
!1694 = !DILocation(line: 693, column: 60, scope: !583, inlinedAt: !1692)
!1695 = !DILocation(line: 693, column: 84, scope: !583, inlinedAt: !1692)
!1696 = !DILocation(line: 693, column: 104, scope: !583, inlinedAt: !1692)
!1697 = !DILocation(line: 693, column: 134, scope: !583, inlinedAt: !1692)
!1698 = !DILocation(line: 695, column: 3, scope: !583, inlinedAt: !1692)
!1699 = !DILocation(line: 696, column: 16, scope: !583, inlinedAt: !1692)
!1700 = !DILocation(line: 696, column: 3, scope: !583, inlinedAt: !1692)
!1701 = !DILocation(line: 467, column: 1, scope: !1203)
!1702 = !DILocation(line: 466, column: 3, scope: !1203)
!1703 = distinct !DISubprogram(name: "_get_fiber_state", scope: !182, file: !182, line: 76, type: !1704, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !182, line: 66, baseType: !335)
!1708 = !{}
!1709 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1714)
!1710 = distinct !DISubprogram(name: "get_cpu", scope: !1711, file: !1711, line: 127, type: !1712, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1711 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!324}
!1714 = distinct !DILocation(line: 78, column: 10, scope: !1703)
!1715 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1714)
!1716 = !DILocation(line: 78, column: 21, scope: !1703)
!1717 = !DILocation(line: 78, column: 3, scope: !1703)
!1718 = distinct !DISubprogram(name: "nk_fiber_current", scope: !182, file: !182, line: 83, type: !1719, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!296}
!1721 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 85, column: 10, scope: !1718)
!1724 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1722)
!1725 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1723)
!1726 = !DILocation(line: 85, column: 30, scope: !1718)
!1727 = !DILocation(line: 85, column: 3, scope: !1718)
!1728 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !182, file: !182, line: 90, type: !1719, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1729 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 92, column: 10, scope: !1728)
!1732 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1730)
!1733 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1731)
!1734 = !DILocation(line: 92, column: 30, scope: !1728)
!1735 = !DILocation(line: 92, column: 3, scope: !1728)
!1736 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !182, file: !182, line: 96, type: !1737, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!339}
!1739 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 98, column: 10, scope: !1736)
!1742 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1740)
!1743 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1741)
!1744 = !DILocation(line: 98, column: 30, scope: !1736)
!1745 = !DILocation(line: 98, column: 3, scope: !1736)
!1746 = distinct !DISubprogram(name: "_get_sched_head", scope: !182, file: !182, line: 103, type: !1747, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!205}
!1749 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 105, column: 12, scope: !1746)
!1752 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1750)
!1753 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1751)
!1754 = !DILocation(line: 105, column: 32, scope: !1746)
!1755 = !DILocation(line: 105, column: 3, scope: !1746)
!1756 = distinct !DISubprogram(name: "_fiber_push", scope: !182, file: !182, line: 113, type: !1757, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !296, !29}
!1759 = !{!1760, !1761}
!1760 = !DILocalVariable(name: "f", arg: 1, scope: !1756, file: !182, line: 113, type: !296)
!1761 = !DILocalVariable(name: "x", arg: 2, scope: !1756, file: !182, line: 113, type: !29)
!1762 = !DILocation(line: 113, column: 31, scope: !1756)
!1763 = !DILocation(line: 113, column: 43, scope: !1756)
!1764 = !DILocation(line: 115, column: 8, scope: !1756)
!1765 = !DILocation(line: 115, column: 12, scope: !1756)
!1766 = !DILocation(line: 116, column: 6, scope: !1756)
!1767 = !DILocation(line: 116, column: 26, scope: !1756)
!1768 = !DILocation(line: 117, column: 1, scope: !1756)
!1769 = distinct !DISubprogram(name: "_rr_policy", scope: !182, file: !182, line: 119, type: !1719, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1770)
!1770 = !{!1771, !1772, !1773, !1777}
!1771 = !DILocalVariable(name: "fiber_sched_queue", scope: !1769, file: !182, line: 122, type: !205)
!1772 = !DILocalVariable(name: "fiber_to_schedule", scope: !1769, file: !182, line: 125, type: !296)
!1773 = !DILocalVariable(name: "first", scope: !1774, file: !182, line: 128, type: !296)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !182, line: 128, column: 25)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !182, line: 126, column: 40)
!1776 = distinct !DILexicalBlock(scope: !1769, file: !182, line: 126, column: 7)
!1777 = !DILocalVariable(name: "__mptr", scope: !1778, file: !182, line: 128, type: !1781)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !182, line: 128, column: 25)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !182, line: 128, column: 25)
!1780 = distinct !DILexicalBlock(scope: !1774, file: !182, line: 128, column: 25)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!1783 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 122, column: 41, scope: !1769)
!1787 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1784)
!1788 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1785)
!1789 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !1786)
!1790 = !DILocation(line: 122, column: 21, scope: !1769)
!1791 = !DILocation(line: 125, column: 15, scope: !1769)
!1792 = !DILocalVariable(name: "head", arg: 1, scope: !1793, file: !53, line: 184, type: !1781)
!1793 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1794, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!50, !1781}
!1796 = !{!1792}
!1797 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 126, column: 9, scope: !1776)
!1799 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !1798)
!1800 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !1798)
!1801 = !DILocation(line: 126, column: 7, scope: !1769)
!1802 = !DILocation(line: 128, column: 25, scope: !1774)
!1803 = !DILocation(line: 131, column: 40, scope: !1775)
!1804 = !DILocalVariable(name: "entry", arg: 1, scope: !1805, file: !53, line: 151, type: !205)
!1805 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !1806, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !205}
!1808 = !{!1804}
!1809 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 131, column: 5, scope: !1775)
!1811 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !1810)
!1812 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !1810)
!1813 = !DILocalVariable(name: "prev", arg: 1, scope: !1814, file: !53, line: 128, type: !205)
!1814 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1815, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !205, !205}
!1817 = !{!1813, !1818}
!1818 = !DILocalVariable(name: "next", arg: 2, scope: !1814, file: !53, line: 128, type: !205)
!1819 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !1810)
!1821 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !1820)
!1822 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !1820)
!1823 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !1820)
!1824 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !1820)
!1825 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !1820)
!1826 = !DILocalVariable(name: "list", arg: 1, scope: !1827, file: !53, line: 73, type: !205)
!1827 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !1806, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1828)
!1828 = !{!1826}
!1829 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !1810)
!1831 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !1830)
!1832 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !1830)
!1833 = !DILocation(line: 132, column: 3, scope: !1775)
!1834 = !DILocation(line: 0, scope: !1769)
!1835 = !DILocation(line: 139, column: 3, scope: !1769)
!1836 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !182, file: !182, line: 144, type: !1837, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !296}
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1847}
!1840 = !DILocalVariable(name: "f", arg: 1, scope: !1836, file: !182, line: 144, type: !296)
!1841 = !DILocalVariable(name: "next", scope: !1836, file: !182, line: 149, type: !296)
!1842 = !DILocalVariable(name: "temp", scope: !1836, file: !182, line: 155, type: !296)
!1843 = !DILocalVariable(name: "waitq", scope: !1836, file: !182, line: 156, type: !205)
!1844 = !DILocalVariable(name: "first", scope: !1845, file: !182, line: 163, type: !296)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !182, line: 163, column: 12)
!1846 = distinct !DILexicalBlock(scope: !1836, file: !182, line: 160, column: 25)
!1847 = !DILocalVariable(name: "__mptr", scope: !1848, file: !182, line: 163, type: !1781)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !182, line: 163, column: 12)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !182, line: 163, column: 12)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !182, line: 163, column: 12)
!1851 = !DILocation(line: 144, column: 33, scope: !1836)
!1852 = !DILocation(line: 147, column: 6, scope: !1836)
!1853 = !DILocation(line: 147, column: 15, scope: !1836)
!1854 = !DILocation(line: 149, column: 15, scope: !1836)
!1855 = !DILocation(line: 156, column: 34, scope: !1836)
!1856 = !DILocation(line: 156, column: 21, scope: !1836)
!1857 = !DILocation(line: 160, column: 12, scope: !1836)
!1858 = !DILocation(line: 160, column: 21, scope: !1836)
!1859 = !DILocation(line: 160, column: 3, scope: !1836)
!1860 = !DILocation(line: 163, column: 12, scope: !1845)
!1861 = !DILocation(line: 163, column: 12, scope: !1850)
!1862 = !DILocation(line: 155, column: 15, scope: !1836)
!1863 = !DILocation(line: 164, column: 27, scope: !1846)
!1864 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 164, column: 5, scope: !1846)
!1866 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !1865)
!1867 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !1865)
!1868 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !1865)
!1870 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !1869)
!1871 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !1869)
!1872 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !1869)
!1873 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !1869)
!1874 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !1869)
!1875 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !1865)
!1877 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !1876)
!1878 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !1876)
!1879 = !DILocation(line: 165, column: 16, scope: !1846)
!1880 = !DILocation(line: 168, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1846, file: !182, line: 168, column: 9)
!1882 = !DILocation(line: 168, column: 9, scope: !1846)
!1883 = !DILocalVariable(name: "f", arg: 1, scope: !1884, file: !182, line: 663, type: !296)
!1884 = distinct !DISubprogram(name: "nk_fiber_run", scope: !182, file: !182, line: 663, type: !1885, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!50, !296, !70}
!1887 = !{!1883, !1888, !1889, !1890}
!1888 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1884, file: !182, line: 663, type: !70)
!1889 = !DILocalVariable(name: "curr_thread", scope: !1884, file: !182, line: 666, type: !339)
!1890 = !DILocalVariable(name: "fiber_sched_queue", scope: !1884, file: !182, line: 674, type: !205)
!1891 = !DILocation(line: 663, column: 30, scope: !1884, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 171, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1881, file: !182, line: 168, column: 14)
!1894 = !DILocation(line: 663, column: 41, scope: !1884, inlinedAt: !1892)
!1895 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 666, column: 30, scope: !1884, inlinedAt: !1892)
!1899 = !DILocation(line: 666, column: 16, scope: !1884, inlinedAt: !1892)
!1900 = !DILocation(line: 366, column: 29, scope: !1901, inlinedAt: !1908)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !182, line: 366, column: 29)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !182, line: 366, column: 29)
!1903 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !182, file: !182, line: 363, type: !561, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "sys", scope: !1903, file: !182, line: 366, type: !318)
!1906 = !DILocalVariable(name: "__r", scope: !1902, file: !182, line: 366, type: !318)
!1907 = !DILocalVariable(name: "__r", scope: !1901, file: !182, line: 366, type: !318)
!1908 = distinct !DILocation(line: 373, column: 20, scope: !1909, inlinedAt: !1917)
!1909 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !182, file: !182, line: 370, type: !1737, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1910)
!1910 = !{!1911, !1912, !1913, !1915}
!1911 = !DILocalVariable(name: "random_cpu", scope: !1909, file: !182, line: 373, type: !50)
!1912 = !DILocalVariable(name: "sys", scope: !1909, file: !182, line: 374, type: !318)
!1913 = !DILocalVariable(name: "__r", scope: !1914, file: !182, line: 374, type: !318)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !182, line: 374, column: 27)
!1915 = !DILocalVariable(name: "__r", scope: !1916, file: !182, line: 374, type: !318)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !182, line: 374, column: 27)
!1917 = distinct !DILocation(line: 670, column: 19, scope: !1918, inlinedAt: !1892)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !182, line: 669, column: 23)
!1919 = distinct !DILexicalBlock(scope: !1884, file: !182, line: 669, column: 7)
!1920 = !{i32 -2147185111}
!1921 = !DILocation(line: 366, column: 29, scope: !1902, inlinedAt: !1908)
!1922 = !DILocation(line: 366, column: 23, scope: !1903, inlinedAt: !1908)
!1923 = !DILocation(line: 358, column: 5, scope: !1924, inlinedAt: !1927)
!1924 = distinct !DISubprogram(name: "_get_random", scope: !182, file: !182, line: 356, type: !1260, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1925)
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "t", scope: !1924, file: !182, line: 358, type: !29)
!1927 = distinct !DILocation(line: 367, column: 18, scope: !1903, inlinedAt: !1908)
!1928 = !DILocation(line: 359, column: 5, scope: !1924, inlinedAt: !1927)
!1929 = !DILocation(line: 360, column: 12, scope: !1924, inlinedAt: !1927)
!1930 = !DILocation(line: 358, column: 14, scope: !1924, inlinedAt: !1927)
!1931 = !DILocation(line: 361, column: 1, scope: !1924, inlinedAt: !1927)
!1932 = !DILocation(line: 367, column: 39, scope: !1903, inlinedAt: !1908)
!1933 = !DILocation(line: 367, column: 34, scope: !1903, inlinedAt: !1908)
!1934 = !DILocation(line: 367, column: 32, scope: !1903, inlinedAt: !1908)
!1935 = !DILocation(line: 374, column: 27, scope: !1916, inlinedAt: !1917)
!1936 = !{i32 -2147182110}
!1937 = !DILocation(line: 374, column: 27, scope: !1914, inlinedAt: !1917)
!1938 = !DILocation(line: 374, column: 21, scope: !1909, inlinedAt: !1917)
!1939 = !DILocation(line: 375, column: 10, scope: !1909, inlinedAt: !1917)
!1940 = !DILocation(line: 0, scope: !1884, inlinedAt: !1892)
!1941 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 674, column: 41, scope: !1884, inlinedAt: !1892)
!1945 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1942)
!1946 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1943)
!1947 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !1944)
!1948 = !DILocation(line: 674, column: 21, scope: !1884, inlinedAt: !1892)
!1949 = !DILocation(line: 678, column: 6, scope: !1884, inlinedAt: !1892)
!1950 = !DILocation(line: 678, column: 15, scope: !1884, inlinedAt: !1892)
!1951 = !DILocation(line: 679, column: 22, scope: !1884, inlinedAt: !1892)
!1952 = !DILocalVariable(name: "nelm", arg: 1, scope: !1953, file: !53, line: 116, type: !205)
!1953 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1815, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1954)
!1954 = !{!1952, !1955}
!1955 = !DILocalVariable(name: "head", arg: 2, scope: !1953, file: !53, line: 116, type: !205)
!1956 = !DILocation(line: 116, column: 52, scope: !1953, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 679, column: 3, scope: !1884, inlinedAt: !1892)
!1958 = !DILocation(line: 116, column: 76, scope: !1953, inlinedAt: !1957)
!1959 = !DILocation(line: 118, column: 25, scope: !1953, inlinedAt: !1957)
!1960 = !DILocalVariable(name: "nelm", arg: 1, scope: !1961, file: !53, line: 85, type: !205)
!1961 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1962, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !205, !205, !205}
!1964 = !{!1960, !1965, !1966}
!1965 = !DILocalVariable(name: "prev", arg: 2, scope: !1961, file: !53, line: 86, type: !205)
!1966 = !DILocalVariable(name: "next", arg: 3, scope: !1961, file: !53, line: 87, type: !205)
!1967 = !DILocation(line: 85, column: 49, scope: !1961, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 118, column: 2, scope: !1953, inlinedAt: !1957)
!1969 = !DILocation(line: 86, column: 28, scope: !1961, inlinedAt: !1968)
!1970 = !DILocation(line: 87, column: 28, scope: !1961, inlinedAt: !1968)
!1971 = !DILocation(line: 89, column: 13, scope: !1961, inlinedAt: !1968)
!1972 = !DILocation(line: 90, column: 8, scope: !1961, inlinedAt: !1968)
!1973 = !DILocation(line: 90, column: 13, scope: !1961, inlinedAt: !1968)
!1974 = !DILocation(line: 91, column: 8, scope: !1961, inlinedAt: !1968)
!1975 = !DILocation(line: 91, column: 13, scope: !1961, inlinedAt: !1968)
!1976 = !DILocation(line: 92, column: 8, scope: !1961, inlinedAt: !1968)
!1977 = !DILocation(line: 92, column: 13, scope: !1961, inlinedAt: !1968)
!1978 = !DILocation(line: 683, column: 20, scope: !1979, inlinedAt: !1892)
!1979 = distinct !DILexicalBlock(scope: !1884, file: !182, line: 683, column: 7)
!1980 = !DILocation(line: 683, column: 7, scope: !1979, inlinedAt: !1892)
!1981 = !DILocation(line: 683, column: 7, scope: !1884, inlinedAt: !1892)
!1982 = !DILocation(line: 687, column: 5, scope: !1983, inlinedAt: !1892)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !182, line: 683, column: 26)
!1984 = !DILocation(line: 688, column: 3, scope: !1983, inlinedAt: !1892)
!1985 = distinct !{!1985, !1859, !1986}
!1986 = !DILocation(line: 173, column: 3, scope: !1836)
!1987 = !DILocation(line: 175, column: 6, scope: !1836)
!1988 = !DILocation(line: 175, column: 14, scope: !1836)
!1989 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 179, column: 10, scope: !1836)
!1994 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !1990)
!1995 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !1991)
!1996 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !1992)
!1997 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !1993)
!1998 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !1993)
!1999 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !1993)
!2001 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !2000)
!2002 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !2000)
!2003 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !1993)
!2004 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !1993)
!2005 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !1993)
!2006 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !1993)
!2008 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !2007)
!2009 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !2007)
!2010 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !2007)
!2012 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !2011)
!2013 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !2011)
!2014 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !2011)
!2015 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !2011)
!2016 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !2011)
!2017 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !2007)
!2019 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !2018)
!2020 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !2018)
!2021 = !DILocation(line: 180, column: 8, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1836, file: !182, line: 180, column: 7)
!2023 = !DILocation(line: 180, column: 7, scope: !1836)
!2024 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 181, column: 12, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !182, line: 180, column: 16)
!2029 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2025)
!2030 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2026)
!2031 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !2027)
!2032 = !DILocation(line: 182, column: 3, scope: !2028)
!2033 = !DILocation(line: 0, scope: !1836)
!2034 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 183, column: 3, scope: !1836)
!2037 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2035)
!2038 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2036)
!2039 = !DILocation(line: 183, column: 23, scope: !1836)
!2040 = !DILocation(line: 183, column: 34, scope: !1836)
!2041 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 186, column: 19, scope: !1836)
!2044 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2042)
!2045 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2043)
!2046 = !DILocation(line: 186, column: 39, scope: !1836)
!2047 = !DILocation(line: 186, column: 51, scope: !1836)
!2048 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 186, column: 3, scope: !1836)
!2050 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !2049)
!2051 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !2049)
!2052 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !2049)
!2054 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !2053)
!2055 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !2053)
!2056 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !2053)
!2057 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !2053)
!2058 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !2053)
!2059 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !2049)
!2061 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !2060)
!2062 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !2060)
!2063 = !DILocation(line: 189, column: 3, scope: !1836)
!2064 = !DILocation(line: 190, column: 3, scope: !1836)
!2065 = !DILocation(line: 193, column: 3, scope: !1836)
!2066 = !DILocation(line: 196, column: 1, scope: !1836)
!2067 = !DILocation(line: 663, column: 30, scope: !1884)
!2068 = !DILocation(line: 663, column: 41, scope: !1884)
!2069 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 666, column: 30, scope: !1884)
!2073 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2070)
!2074 = !DILocation(line: 666, column: 16, scope: !1884)
!2075 = !DILocation(line: 669, column: 7, scope: !1919)
!2076 = !DILocation(line: 669, column: 7, scope: !1884)
!2077 = !DILocation(line: 366, column: 29, scope: !1901, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 373, column: 20, scope: !1909, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 670, column: 19, scope: !1918)
!2080 = !DILocation(line: 366, column: 29, scope: !1902, inlinedAt: !2078)
!2081 = !DILocation(line: 366, column: 23, scope: !1903, inlinedAt: !2078)
!2082 = !DILocation(line: 358, column: 5, scope: !1924, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 367, column: 18, scope: !1903, inlinedAt: !2078)
!2084 = !DILocation(line: 359, column: 5, scope: !1924, inlinedAt: !2083)
!2085 = !DILocation(line: 360, column: 12, scope: !1924, inlinedAt: !2083)
!2086 = !DILocation(line: 358, column: 14, scope: !1924, inlinedAt: !2083)
!2087 = !DILocation(line: 361, column: 1, scope: !1924, inlinedAt: !2083)
!2088 = !DILocation(line: 367, column: 39, scope: !1903, inlinedAt: !2078)
!2089 = !DILocation(line: 367, column: 34, scope: !1903, inlinedAt: !2078)
!2090 = !DILocation(line: 367, column: 32, scope: !1903, inlinedAt: !2078)
!2091 = !DILocation(line: 374, column: 27, scope: !1916, inlinedAt: !2079)
!2092 = !DILocation(line: 374, column: 27, scope: !1914, inlinedAt: !2079)
!2093 = !DILocation(line: 374, column: 21, scope: !1909, inlinedAt: !2079)
!2094 = !DILocation(line: 375, column: 10, scope: !1909, inlinedAt: !2079)
!2095 = !DILocation(line: 671, column: 3, scope: !1918)
!2096 = !DILocation(line: 0, scope: !1884)
!2097 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 674, column: 41, scope: !1884)
!2101 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2098)
!2102 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2099)
!2103 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !2100)
!2104 = !DILocation(line: 674, column: 21, scope: !1884)
!2105 = !DILocation(line: 678, column: 6, scope: !1884)
!2106 = !DILocation(line: 678, column: 15, scope: !1884)
!2107 = !DILocation(line: 679, column: 22, scope: !1884)
!2108 = !DILocation(line: 116, column: 52, scope: !1953, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 679, column: 3, scope: !1884)
!2110 = !DILocation(line: 116, column: 76, scope: !1953, inlinedAt: !2109)
!2111 = !DILocation(line: 118, column: 25, scope: !1953, inlinedAt: !2109)
!2112 = !DILocation(line: 85, column: 49, scope: !1961, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 118, column: 2, scope: !1953, inlinedAt: !2109)
!2114 = !DILocation(line: 86, column: 28, scope: !1961, inlinedAt: !2113)
!2115 = !DILocation(line: 87, column: 28, scope: !1961, inlinedAt: !2113)
!2116 = !DILocation(line: 89, column: 13, scope: !1961, inlinedAt: !2113)
!2117 = !DILocation(line: 90, column: 8, scope: !1961, inlinedAt: !2113)
!2118 = !DILocation(line: 90, column: 13, scope: !1961, inlinedAt: !2113)
!2119 = !DILocation(line: 91, column: 8, scope: !1961, inlinedAt: !2113)
!2120 = !DILocation(line: 91, column: 13, scope: !1961, inlinedAt: !2113)
!2121 = !DILocation(line: 92, column: 8, scope: !1961, inlinedAt: !2113)
!2122 = !DILocation(line: 92, column: 13, scope: !1961, inlinedAt: !2113)
!2123 = !DILocation(line: 683, column: 20, scope: !1979)
!2124 = !DILocation(line: 683, column: 7, scope: !1979)
!2125 = !DILocation(line: 683, column: 7, scope: !1884)
!2126 = !DILocation(line: 687, column: 5, scope: !1983)
!2127 = !DILocation(line: 688, column: 3, scope: !1983)
!2128 = !DILocation(line: 690, column: 3, scope: !1884)
!2129 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !182, file: !182, line: 198, type: !1837, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2130)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "f_to", arg: 1, scope: !2129, file: !182, line: 198, type: !296)
!2132 = !DILocation(line: 198, column: 33, scope: !2129)
!2133 = !DILocation(line: 202, column: 9, scope: !2129)
!2134 = !DILocation(line: 202, column: 19, scope: !2129)
!2135 = !DILocation(line: 202, column: 32, scope: !2129)
!2136 = !DILocation(line: 202, column: 3, scope: !2129)
!2137 = !DILocation(line: 208, column: 3, scope: !2129)
!2138 = !DILocation(line: 210, column: 3, scope: !2129)
!2139 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !182, file: !182, line: 274, type: !1837, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "f", arg: 1, scope: !2139, file: !182, line: 274, type: !296)
!2142 = !DILocation(line: 274, column: 33, scope: !2139)
!2143 = !DILocation(line: 276, column: 26, scope: !2139)
!2144 = !DILocation(line: 276, column: 37, scope: !2139)
!2145 = !DILocation(line: 276, column: 6, scope: !2139)
!2146 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 277, column: 3, scope: !2139)
!2148 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2147)
!2149 = !DILocation(line: 276, column: 32, scope: !2139)
!2150 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2147)
!2151 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2147)
!2152 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2147)
!2153 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 278, column: 3, scope: !2139)
!2155 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2154)
!2156 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2154)
!2157 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2154)
!2158 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2154)
!2159 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 279, column: 3, scope: !2139)
!2161 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2160)
!2162 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2160)
!2163 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2160)
!2164 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2160)
!2165 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 280, column: 3, scope: !2139)
!2167 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2166)
!2168 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2166)
!2169 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2166)
!2170 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2166)
!2171 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 281, column: 3, scope: !2139)
!2173 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2172)
!2174 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2172)
!2175 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2172)
!2176 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2172)
!2177 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 282, column: 3, scope: !2139)
!2179 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2178)
!2180 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2178)
!2181 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2178)
!2182 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2178)
!2183 = !DILocation(line: 283, column: 18, scope: !2139)
!2184 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 283, column: 3, scope: !2139)
!2186 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2185)
!2187 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2185)
!2188 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2185)
!2189 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2185)
!2190 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 284, column: 3, scope: !2139)
!2192 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2191)
!2193 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2191)
!2194 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2191)
!2195 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2191)
!2196 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 285, column: 3, scope: !2139)
!2198 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2197)
!2199 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2197)
!2200 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2197)
!2201 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2197)
!2202 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 286, column: 3, scope: !2139)
!2204 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2203)
!2205 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2203)
!2206 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2203)
!2207 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2203)
!2208 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 287, column: 3, scope: !2139)
!2210 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2209)
!2211 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2209)
!2212 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2209)
!2213 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2209)
!2214 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 288, column: 3, scope: !2139)
!2216 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2215)
!2217 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2215)
!2218 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2215)
!2219 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2215)
!2220 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 289, column: 3, scope: !2139)
!2222 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2221)
!2223 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2221)
!2224 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2221)
!2225 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2221)
!2226 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 290, column: 3, scope: !2139)
!2228 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2227)
!2229 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2227)
!2230 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2227)
!2231 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2227)
!2232 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 291, column: 3, scope: !2139)
!2234 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2233)
!2235 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2233)
!2236 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2233)
!2237 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2233)
!2238 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 292, column: 3, scope: !2139)
!2240 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !2239)
!2241 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !2239)
!2242 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !2239)
!2243 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !2239)
!2244 = !DILocation(line: 294, column: 3, scope: !2139)
!2245 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !182, file: !182, line: 299, type: !2246, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!50, !296}
!2248 = !{!2249, !2250, !2251}
!2249 = !DILocalVariable(name: "f_to", arg: 1, scope: !2245, file: !182, line: 299, type: !296)
!2250 = !DILocalVariable(name: "f_from", scope: !2245, file: !182, line: 302, type: !296)
!2251 = !DILocalVariable(name: "fiber_sched_queue", scope: !2252, file: !182, line: 312, type: !205)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !182, line: 310, column: 63)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !182, line: 310, column: 7)
!2254 = !DILocation(line: 299, column: 36, scope: !2245)
!2255 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 302, column: 24, scope: !2245)
!2259 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2256)
!2260 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2257)
!2261 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !2258)
!2262 = !DILocation(line: 302, column: 15, scope: !2245)
!2263 = !DILocation(line: 305, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2245, file: !182, line: 305, column: 7)
!2265 = !DILocation(line: 305, column: 32, scope: !2264)
!2266 = !DILocation(line: 306, column: 22, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !182, line: 305, column: 61)
!2268 = !DILocation(line: 307, column: 3, scope: !2267)
!2269 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 310, column: 17, scope: !2253)
!2273 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2270)
!2274 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2271)
!2275 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !2272)
!2276 = !DILocation(line: 310, column: 14, scope: !2253)
!2277 = !DILocation(line: 310, column: 34, scope: !2253)
!2278 = !DILocation(line: 310, column: 45, scope: !2253)
!2279 = !DILocation(line: 310, column: 54, scope: !2253)
!2280 = !DILocation(line: 310, column: 7, scope: !2245)
!2281 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 312, column: 43, scope: !2252)
!2285 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2282)
!2286 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2283)
!2287 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !2284)
!2288 = !DILocation(line: 312, column: 23, scope: !2252)
!2289 = !DILocation(line: 318, column: 29, scope: !2252)
!2290 = !DILocation(line: 116, column: 52, scope: !1953, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 318, column: 5, scope: !2252)
!2292 = !DILocation(line: 116, column: 76, scope: !1953, inlinedAt: !2291)
!2293 = !DILocation(line: 118, column: 25, scope: !1953, inlinedAt: !2291)
!2294 = !DILocation(line: 85, column: 49, scope: !1961, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 118, column: 2, scope: !1953, inlinedAt: !2291)
!2296 = !DILocation(line: 86, column: 28, scope: !1961, inlinedAt: !2295)
!2297 = !DILocation(line: 87, column: 28, scope: !1961, inlinedAt: !2295)
!2298 = !DILocation(line: 89, column: 13, scope: !1961, inlinedAt: !2295)
!2299 = !DILocation(line: 90, column: 8, scope: !1961, inlinedAt: !2295)
!2300 = !DILocation(line: 90, column: 13, scope: !1961, inlinedAt: !2295)
!2301 = !DILocation(line: 91, column: 8, scope: !1961, inlinedAt: !2295)
!2302 = !DILocation(line: 91, column: 13, scope: !1961, inlinedAt: !2295)
!2303 = !DILocation(line: 92, column: 8, scope: !1961, inlinedAt: !2295)
!2304 = !DILocation(line: 92, column: 13, scope: !1961, inlinedAt: !2295)
!2305 = !DILocation(line: 319, column: 3, scope: !2252)
!2306 = !DILocation(line: 323, column: 16, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2245, file: !182, line: 323, column: 7)
!2308 = !DILocation(line: 323, column: 8, scope: !2307)
!2309 = !DILocation(line: 323, column: 7, scope: !2245)
!2310 = !DILocation(line: 324, column: 29, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !182, line: 323, column: 24)
!2312 = !DILocalVariable(name: "vc", arg: 1, scope: !2313, file: !182, line: 906, type: !47)
!2313 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !182, file: !182, line: 906, type: !2314, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !47}
!2316 = !{!2312, !2317}
!2317 = !DILocalVariable(name: "curr_fiber", scope: !2313, file: !182, line: 909, type: !296)
!2318 = !DILocation(line: 906, column: 49, scope: !2313, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 324, column: 5, scope: !2311)
!2320 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 909, column: 28, scope: !2313, inlinedAt: !2319)
!2324 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2321)
!2325 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2322)
!2326 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !2323)
!2327 = !DILocation(line: 909, column: 15, scope: !2313, inlinedAt: !2319)
!2328 = !DILocation(line: 912, column: 15, scope: !2313, inlinedAt: !2319)
!2329 = !DILocation(line: 912, column: 18, scope: !2313, inlinedAt: !2319)
!2330 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2337)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !16, line: 258, column: 26)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !16, line: 258, column: 26)
!2333 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !1737, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2334)
!2334 = !{!2335, !2336}
!2335 = !DILocalVariable(name: "__r", scope: !2332, file: !16, line: 258, type: !215)
!2336 = !DILocalVariable(name: "__r", scope: !2331, file: !16, line: 258, type: !215)
!2337 = distinct !DILocation(line: 913, column: 3, scope: !2313, inlinedAt: !2319)
!2338 = !{i32 -2147260791}
!2339 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2337)
!2340 = !DILocation(line: 913, column: 21, scope: !2313, inlinedAt: !2319)
!2341 = !DILocation(line: 913, column: 24, scope: !2313, inlinedAt: !2319)
!2342 = !DILocation(line: 325, column: 3, scope: !2311)
!2343 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 328, column: 3, scope: !2245)
!2346 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2344)
!2347 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2345)
!2348 = !DILocation(line: 328, column: 23, scope: !2245)
!2349 = !DILocation(line: 328, column: 34, scope: !2245)
!2350 = !DILocation(line: 329, column: 20, scope: !2245)
!2351 = !DILocation(line: 330, column: 9, scope: !2245)
!2352 = !DILocation(line: 330, column: 18, scope: !2245)
!2353 = !DILocation(line: 331, column: 3, scope: !2245)
!2354 = !DILocation(line: 333, column: 3, scope: !2245)
!2355 = !DILocation(line: 906, column: 49, scope: !2313)
!2356 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 909, column: 28, scope: !2313)
!2360 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2357)
!2361 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2358)
!2362 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !2359)
!2363 = !DILocation(line: 909, column: 15, scope: !2313)
!2364 = !DILocation(line: 912, column: 15, scope: !2313)
!2365 = !DILocation(line: 912, column: 18, scope: !2313)
!2366 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 913, column: 3, scope: !2313)
!2368 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2367)
!2369 = !DILocation(line: 913, column: 21, scope: !2313)
!2370 = !DILocation(line: 913, column: 24, scope: !2313)
!2371 = !DILocation(line: 914, column: 1, scope: !2313)
!2372 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !182, file: !182, line: 336, type: !2373, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null}
!2375 = !{!2376}
!2376 = !DILocalVariable(name: "curr", scope: !2372, file: !182, line: 338, type: !296)
!2377 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 338, column: 22, scope: !2372)
!2381 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2378)
!2382 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2379)
!2383 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !2380)
!2384 = !DILocation(line: 338, column: 15, scope: !2372)
!2385 = !DILocation(line: 340, column: 3, scope: !2372)
!2386 = !DILocation(line: 341, column: 1, scope: !2372)
!2387 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !182, file: !182, line: 343, type: !2388, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!70, !296}
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "f", arg: 1, scope: !2387, file: !182, line: 343, type: !296)
!2392 = !DILocalVariable(name: "idle_fiber", scope: !2387, file: !182, line: 345, type: !296)
!2393 = !DILocalVariable(name: "result", scope: !2387, file: !182, line: 348, type: !70)
!2394 = !DILocation(line: 343, column: 36, scope: !2387)
!2395 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 345, column: 28, scope: !2387)
!2399 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2396)
!2400 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !2397)
!2401 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !2398)
!2402 = !DILocation(line: 345, column: 15, scope: !2387)
!2403 = !DILocation(line: 348, column: 11, scope: !2387)
!2404 = !DILocation(line: 349, column: 18, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2387, file: !182, line: 349, column: 7)
!2406 = !DILocation(line: 349, column: 7, scope: !2387)
!2407 = !DILocation(line: 353, column: 3, scope: !2387)
!2408 = !DILocation(line: 366, column: 29, scope: !1901, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 373, column: 20, scope: !1909)
!2410 = !DILocation(line: 366, column: 29, scope: !1902, inlinedAt: !2409)
!2411 = !DILocation(line: 366, column: 23, scope: !1903, inlinedAt: !2409)
!2412 = !DILocation(line: 358, column: 5, scope: !1924, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 367, column: 18, scope: !1903, inlinedAt: !2409)
!2414 = !DILocation(line: 359, column: 5, scope: !1924, inlinedAt: !2413)
!2415 = !DILocation(line: 360, column: 12, scope: !1924, inlinedAt: !2413)
!2416 = !DILocation(line: 358, column: 14, scope: !1924, inlinedAt: !2413)
!2417 = !DILocation(line: 361, column: 1, scope: !1924, inlinedAt: !2413)
!2418 = !DILocation(line: 367, column: 39, scope: !1903, inlinedAt: !2409)
!2419 = !DILocation(line: 367, column: 34, scope: !1903, inlinedAt: !2409)
!2420 = !DILocation(line: 367, column: 32, scope: !1903, inlinedAt: !2409)
!2421 = !DILocation(line: 374, column: 27, scope: !1916)
!2422 = !DILocation(line: 374, column: 27, scope: !1914)
!2423 = !DILocation(line: 374, column: 21, scope: !1909)
!2424 = !DILocation(line: 375, column: 10, scope: !1909)
!2425 = !DILocation(line: 375, column: 33, scope: !1909)
!2426 = !DILocation(line: 375, column: 42, scope: !1909)
!2427 = !DILocation(line: 375, column: 3, scope: !1909)
!2428 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !182, file: !182, line: 383, type: !2246, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2429)
!2429 = !{!2430, !2431, !2432, !2434, !2436, !2437, !2438, !2439, !2441, !2446}
!2430 = !DILocalVariable(name: "to_del", arg: 1, scope: !2428, file: !182, line: 383, type: !296)
!2431 = !DILocalVariable(name: "sys", scope: !2428, file: !182, line: 386, type: !318)
!2432 = !DILocalVariable(name: "__r", scope: !2433, file: !182, line: 386, type: !318)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !182, line: 386, column: 26)
!2434 = !DILocalVariable(name: "__r", scope: !2435, file: !182, line: 386, type: !318)
!2435 = distinct !DILexicalBlock(scope: !2433, file: !182, line: 386, column: 26)
!2436 = !DILocalVariable(name: "cpu_iter", scope: !2428, file: !182, line: 387, type: !50)
!2437 = !DILocalVariable(name: "temp", scope: !2428, file: !182, line: 390, type: !205)
!2438 = !DILocalVariable(name: "test", scope: !2428, file: !182, line: 391, type: !296)
!2439 = !DILocalVariable(name: "iter", scope: !2440, file: !182, line: 392, type: !50)
!2440 = distinct !DILexicalBlock(scope: !2428, file: !182, line: 392, column: 3)
!2441 = !DILocalVariable(name: "__mptr", scope: !2442, file: !182, line: 395, type: !1781)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !182, line: 395, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !182, line: 395, column: 5)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !182, line: 392, column: 46)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !182, line: 392, column: 3)
!2446 = !DILocalVariable(name: "__mptr", scope: !2447, file: !182, line: 395, type: !1781)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !182, line: 395, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !182, line: 395, column: 5)
!2449 = !DILocation(line: 383, column: 42, scope: !2428)
!2450 = !DILocation(line: 386, column: 26, scope: !2435)
!2451 = !{i32 -2147179109}
!2452 = !DILocation(line: 386, column: 26, scope: !2433)
!2453 = !DILocation(line: 386, column: 20, scope: !2428)
!2454 = !DILocation(line: 387, column: 23, scope: !2428)
!2455 = !DILocation(line: 387, column: 7, scope: !2428)
!2456 = !DILocation(line: 392, column: 12, scope: !2440)
!2457 = !DILocation(line: 392, column: 27, scope: !2445)
!2458 = !DILocation(line: 392, column: 3, scope: !2440)
!2459 = !DILocation(line: 394, column: 14, scope: !2444)
!2460 = !DILocation(line: 394, column: 31, scope: !2444)
!2461 = !DILocation(line: 394, column: 40, scope: !2444)
!2462 = !DILocation(line: 390, column: 21, scope: !2428)
!2463 = !DILocation(line: 395, column: 5, scope: !2442)
!2464 = !DILocation(line: 391, column: 15, scope: !2428)
!2465 = !DILocation(line: 0, scope: !2443)
!2466 = !DILocation(line: 395, column: 5, scope: !2443)
!2467 = !DILocation(line: 395, column: 5, scope: !2448)
!2468 = !DILocation(line: 400, column: 16, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !182, line: 400, column: 11)
!2470 = distinct !DILexicalBlock(scope: !2448, file: !182, line: 395, column: 48)
!2471 = !DILocation(line: 400, column: 11, scope: !2470)
!2472 = distinct !{!2472, !2466, !2473}
!2473 = !DILocation(line: 404, column: 5, scope: !2443)
!2474 = !DILocation(line: 392, column: 43, scope: !2445)
!2475 = distinct !{!2475, !2458, !2476}
!2476 = !DILocation(line: 405, column: 3, scope: !2440)
!2477 = !DILocation(line: 401, column: 33, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2469, file: !182, line: 400, column: 26)
!2479 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 401, column: 9, scope: !2478)
!2481 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !2480)
!2482 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !2480)
!2483 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !2480)
!2485 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !2484)
!2486 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !2484)
!2487 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !2484)
!2488 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !2484)
!2489 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !2484)
!2490 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !2480)
!2492 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !2491)
!2493 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !2491)
!2494 = !DILocation(line: 408, column: 1, scope: !2428)
!2495 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !182, file: !182, line: 435, type: !561, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2496)
!2496 = !{!2497, !2498, !2500, !2502, !2503, !2509, !2510, !2515, !2517, !2520, !2522}
!2497 = !DILocalVariable(name: "id", scope: !2495, file: !182, line: 437, type: !345)
!2498 = !DILocalVariable(name: "__r", scope: !2499, file: !182, line: 437, type: !345)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !182, line: 437, column: 19)
!2500 = !DILocalVariable(name: "__r", scope: !2501, file: !182, line: 437, type: !345)
!2501 = distinct !DILexicalBlock(scope: !2499, file: !182, line: 437, column: 19)
!2502 = !DILocalVariable(name: "my_cpu", scope: !2495, file: !182, line: 438, type: !324)
!2503 = !DILocalVariable(name: "_p", scope: !2504, file: !182, line: 444, type: !50)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !182, line: 444, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !182, line: 444, column: 2)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !182, line: 444, column: 2)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !182, line: 443, column: 29)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !182, line: 443, column: 9)
!2509 = !DILocalVariable(name: "_t", scope: !2504, file: !182, line: 444, type: !215)
!2510 = !DILocalVariable(name: "__r", scope: !2511, file: !182, line: 444, type: !345)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !182, line: 444, column: 2)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !182, line: 444, column: 2)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !182, line: 444, column: 2)
!2514 = distinct !DILexicalBlock(scope: !2504, file: !182, line: 444, column: 2)
!2515 = !DILocalVariable(name: "__r", scope: !2516, file: !182, line: 444, type: !345)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !182, line: 444, column: 2)
!2517 = !DILocalVariable(name: "__r", scope: !2518, file: !182, line: 444, type: !345)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !182, line: 444, column: 2)
!2519 = distinct !DILexicalBlock(scope: !2513, file: !182, line: 444, column: 2)
!2520 = !DILocalVariable(name: "__r", scope: !2521, file: !182, line: 444, type: !345)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !182, line: 444, column: 2)
!2522 = !DILocalVariable(name: "_p", scope: !2523, file: !182, line: 444, type: !50)
!2523 = distinct !DILexicalBlock(scope: !2505, file: !182, line: 444, column: 2)
!2524 = !DILocation(line: 437, column: 19, scope: !2501)
!2525 = !{i32 -2147162346}
!2526 = !DILocation(line: 437, column: 19, scope: !2499)
!2527 = !DILocation(line: 437, column: 14, scope: !2495)
!2528 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 438, column: 27, scope: !2495)
!2530 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !2529)
!2531 = !DILocation(line: 438, column: 18, scope: !2495)
!2532 = !DILocation(line: 442, column: 23, scope: !2495)
!2533 = !DILocation(line: 442, column: 13, scope: !2495)
!2534 = !DILocation(line: 442, column: 21, scope: !2495)
!2535 = !DILocation(line: 443, column: 10, scope: !2508)
!2536 = !DILocation(line: 443, column: 9, scope: !2495)
!2537 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2542)
!2538 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2539, file: !2539, line: 39, type: !2540, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!2539 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!33}
!2542 = distinct !DILocation(line: 444, column: 2, scope: !2505)
!2543 = !DILocation(line: 444, column: 2, scope: !2505)
!2544 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !2549)
!2546 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2539, file: !2539, line: 82, type: !561, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2547)
!2547 = !{!2548}
!2548 = !DILocalVariable(name: "base", scope: !2546, file: !2539, line: 84, type: !33)
!2549 = distinct !DILocation(line: 0, scope: !2505)
!2550 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !2549)
!2551 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !2549)
!2552 = distinct !DILexicalBlock(scope: !2546, file: !2539, line: 85, column: 9)
!2553 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !2549)
!2554 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !2549)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !2539, line: 85, column: 15)
!2556 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !2549)
!2557 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !2549)
!2558 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !2549)
!2559 = !DILocation(line: 0, scope: !2552, inlinedAt: !2549)
!2560 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !2565)
!2562 = distinct !DISubprogram(name: "preempt_disable", scope: !2539, file: !2539, line: 46, type: !2373, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2563)
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "base", scope: !2562, file: !2539, line: 48, type: !33)
!2565 = distinct !DILocation(line: 0, scope: !2505)
!2566 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !2565)
!2567 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !2565)
!2568 = distinct !DILexicalBlock(scope: !2562, file: !2539, line: 49, column: 9)
!2569 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !2565)
!2570 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !2565)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !2539, line: 49, column: 15)
!2572 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !2565)
!2573 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !2565)
!2574 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !2565)
!2575 = !DILocation(line: 444, column: 2, scope: !2506)
!2576 = !DILocation(line: 444, column: 2, scope: !2504)
!2577 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 444, column: 2, scope: !2504)
!2579 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2578)
!2580 = !DILocation(line: 444, column: 2, scope: !2513)
!2581 = !DILocation(line: 0, scope: !2513)
!2582 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2589)
!2584 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2539, file: !2539, line: 94, type: !2585, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!35}
!2587 = !{!2588}
!2588 = !DILocalVariable(name: "base", scope: !2584, file: !2539, line: 96, type: !33)
!2589 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2591)
!2590 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2539, file: !2539, line: 105, type: !561, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!2591 = distinct !DILocation(line: 0, scope: !2513)
!2592 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2589)
!2593 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2589)
!2594 = distinct !DILexicalBlock(scope: !2584, file: !2539, line: 97, column: 9)
!2595 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2589)
!2596 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2589)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !2539, line: 97, column: 15)
!2598 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2589)
!2599 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2589)
!2600 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2589)
!2601 = !DILocation(line: 444, column: 2, scope: !2514)
!2602 = !DILocation(line: 444, column: 2, scope: !2512)
!2603 = !DILocation(line: 444, column: 2, scope: !2519)
!2604 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2609)
!2606 = distinct !DISubprogram(name: "preempt_enable", scope: !2539, file: !2539, line: 57, type: !2373, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2607)
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "base", scope: !2606, file: !2539, line: 59, type: !33)
!2609 = distinct !DILocation(line: 444, column: 2, scope: !2504)
!2610 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2609)
!2611 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2609)
!2612 = distinct !DILexicalBlock(scope: !2606, file: !2539, line: 60, column: 9)
!2613 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2609)
!2614 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2609)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !2539, line: 60, column: 15)
!2616 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2609)
!2617 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2609)
!2618 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2609)
!2619 = !DILocation(line: 444, column: 2, scope: !2523)
!2620 = !DILocation(line: 444, column: 2, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !182, line: 444, column: 2)
!2622 = distinct !DILexicalBlock(scope: !2523, file: !182, line: 444, column: 2)
!2623 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 0, scope: !2621)
!2627 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2625)
!2628 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2625)
!2629 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2625)
!2630 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2625)
!2631 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2625)
!2632 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2625)
!2633 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2625)
!2634 = !DILocation(line: 0, scope: !2621)
!2635 = !DILocation(line: 444, column: 2, scope: !2622)
!2636 = !DILocation(line: 444, column: 2, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2621, file: !182, line: 444, column: 2)
!2638 = !DILocation(line: 444, column: 2, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2621, file: !182, line: 444, column: 2)
!2640 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 444, column: 2, scope: !2523)
!2643 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2642)
!2644 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2642)
!2645 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2642)
!2646 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2642)
!2647 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2642)
!2648 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2642)
!2649 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2642)
!2650 = !DILocation(line: 0, scope: !2495)
!2651 = !DILocation(line: 449, column: 1, scope: !2495)
!2652 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !182, file: !182, line: 410, type: !2653, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!334}
!2655 = !{!2656, !2657, !2659, !2661, !2663, !2669, !2670, !2675, !2677, !2680, !2682}
!2656 = !DILocalVariable(name: "state", scope: !2652, file: !182, line: 412, type: !334)
!2657 = !DILocalVariable(name: "p", scope: !2658, file: !182, line: 412, type: !33)
!2658 = distinct !DILexicalBlock(scope: !2652, file: !182, line: 412, column: 74)
!2659 = !DILocalVariable(name: "__r", scope: !2660, file: !182, line: 412, type: !345)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !182, line: 412, column: 74)
!2661 = !DILocalVariable(name: "__r", scope: !2662, file: !182, line: 412, type: !345)
!2662 = distinct !DILexicalBlock(scope: !2660, file: !182, line: 412, column: 74)
!2663 = !DILocalVariable(name: "_p", scope: !2664, file: !182, line: 415, type: !50)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !182, line: 415, column: 9)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !182, line: 415, column: 9)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !182, line: 415, column: 9)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !182, line: 414, column: 17)
!2668 = distinct !DILexicalBlock(scope: !2652, file: !182, line: 414, column: 9)
!2669 = !DILocalVariable(name: "_t", scope: !2664, file: !182, line: 415, type: !215)
!2670 = !DILocalVariable(name: "__r", scope: !2671, file: !182, line: 415, type: !345)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !182, line: 415, column: 9)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !182, line: 415, column: 9)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !182, line: 415, column: 9)
!2674 = distinct !DILexicalBlock(scope: !2664, file: !182, line: 415, column: 9)
!2675 = !DILocalVariable(name: "__r", scope: !2676, file: !182, line: 415, type: !345)
!2676 = distinct !DILexicalBlock(scope: !2671, file: !182, line: 415, column: 9)
!2677 = !DILocalVariable(name: "__r", scope: !2678, file: !182, line: 415, type: !345)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !182, line: 415, column: 9)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !182, line: 415, column: 9)
!2680 = !DILocalVariable(name: "__r", scope: !2681, file: !182, line: 415, type: !345)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !182, line: 415, column: 9)
!2682 = !DILocalVariable(name: "_p", scope: !2683, file: !182, line: 415, type: !50)
!2683 = distinct !DILexicalBlock(scope: !2665, file: !182, line: 415, column: 9)
!2684 = !DILocation(line: 412, column: 74, scope: !2662)
!2685 = !{i32 -2147173855}
!2686 = !DILocation(line: 412, column: 74, scope: !2660)
!2687 = !DILocation(line: 412, column: 74, scope: !2658)
!2688 = !DILocation(line: 414, column: 10, scope: !2668)
!2689 = !DILocation(line: 414, column: 9, scope: !2652)
!2690 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 415, column: 9, scope: !2665)
!2692 = !DILocation(line: 415, column: 9, scope: !2665)
!2693 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 0, scope: !2665)
!2696 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !2695)
!2697 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !2695)
!2698 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !2695)
!2699 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !2695)
!2700 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !2695)
!2701 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !2695)
!2702 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !2695)
!2703 = !DILocation(line: 0, scope: !2552, inlinedAt: !2695)
!2704 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 0, scope: !2665)
!2707 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !2706)
!2708 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !2706)
!2709 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !2706)
!2710 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !2706)
!2711 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !2706)
!2712 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !2706)
!2713 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !2706)
!2714 = !DILocation(line: 415, column: 9, scope: !2666)
!2715 = !DILocation(line: 415, column: 9, scope: !2664)
!2716 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 415, column: 9, scope: !2664)
!2718 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2717)
!2719 = !DILocation(line: 415, column: 9, scope: !2673)
!2720 = !DILocation(line: 0, scope: !2673)
!2721 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 0, scope: !2673)
!2725 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2723)
!2726 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2723)
!2727 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2723)
!2728 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2723)
!2729 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2723)
!2730 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2723)
!2731 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2723)
!2732 = !DILocation(line: 415, column: 9, scope: !2674)
!2733 = !DILocation(line: 415, column: 9, scope: !2672)
!2734 = !DILocation(line: 415, column: 9, scope: !2679)
!2735 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 415, column: 9, scope: !2664)
!2738 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2737)
!2739 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2737)
!2740 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2737)
!2741 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2737)
!2742 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2737)
!2743 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2737)
!2744 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2737)
!2745 = !DILocation(line: 415, column: 9, scope: !2683)
!2746 = !DILocation(line: 415, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !182, line: 415, column: 9)
!2748 = distinct !DILexicalBlock(scope: !2683, file: !182, line: 415, column: 9)
!2749 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 0, scope: !2747)
!2753 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2751)
!2754 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2751)
!2755 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2751)
!2756 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2751)
!2757 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2751)
!2758 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2751)
!2759 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2751)
!2760 = !DILocation(line: 0, scope: !2747)
!2761 = !DILocation(line: 415, column: 9, scope: !2748)
!2762 = !DILocation(line: 415, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2747, file: !182, line: 415, column: 9)
!2764 = !DILocation(line: 415, column: 9, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2747, file: !182, line: 415, column: 9)
!2766 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 415, column: 9, scope: !2683)
!2769 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2768)
!2770 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2768)
!2771 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2768)
!2772 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2768)
!2773 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2768)
!2774 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2768)
!2775 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2768)
!2776 = !DILocation(line: 412, column: 43, scope: !2652)
!2777 = !DILocation(line: 412, column: 35, scope: !2652)
!2778 = !DILocation(line: 419, column: 2, scope: !2652)
!2779 = !DILocation(line: 421, column: 27, scope: !2652)
!2780 = !DILocation(line: 421, column: 5, scope: !2652)
!2781 = !DILocation(line: 424, column: 29, scope: !2652)
!2782 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 424, column: 5, scope: !2652)
!2784 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !2783)
!2785 = !DILocation(line: 76, column: 8, scope: !1827, inlinedAt: !2783)
!2786 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !2783)
!2787 = !DILocation(line: 426, column: 5, scope: !2652)
!2788 = !DILocation(line: 429, column: 5, scope: !2652)
!2789 = !DILocation(line: 431, column: 5, scope: !2652)
!2790 = !DILocation(line: 0, scope: !2652)
!2791 = !DILocation(line: 432, column: 1, scope: !2652)
!2792 = distinct !DISubprogram(name: "nk_fiber_init", scope: !182, file: !182, line: 452, type: !561, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2793)
!2793 = !{!2794, !2795, !2799, !2800, !2805, !2807, !2810, !2812, !2814, !2820, !2821, !2826, !2828, !2831, !2833}
!2794 = !DILocalVariable(name: "my_cpu", scope: !2792, file: !182, line: 454, type: !324)
!2795 = !DILocalVariable(name: "_p", scope: !2796, file: !182, line: 456, type: !50)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !182, line: 456, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !182, line: 456, column: 5)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !182, line: 456, column: 5)
!2799 = !DILocalVariable(name: "_t", scope: !2796, file: !182, line: 456, type: !215)
!2800 = !DILocalVariable(name: "__r", scope: !2801, file: !182, line: 456, type: !345)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !182, line: 456, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !182, line: 456, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !182, line: 456, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !182, line: 456, column: 5)
!2805 = !DILocalVariable(name: "__r", scope: !2806, file: !182, line: 456, type: !345)
!2806 = distinct !DILexicalBlock(scope: !2801, file: !182, line: 456, column: 5)
!2807 = !DILocalVariable(name: "__r", scope: !2808, file: !182, line: 456, type: !345)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !182, line: 456, column: 5)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !182, line: 456, column: 5)
!2810 = !DILocalVariable(name: "__r", scope: !2811, file: !182, line: 456, type: !345)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !182, line: 456, column: 5)
!2812 = !DILocalVariable(name: "_p", scope: !2813, file: !182, line: 456, type: !50)
!2813 = distinct !DILexicalBlock(scope: !2797, file: !182, line: 456, column: 5)
!2814 = !DILocalVariable(name: "_p", scope: !2815, file: !182, line: 464, type: !50)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !182, line: 464, column: 2)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !182, line: 464, column: 2)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !182, line: 464, column: 2)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !182, line: 463, column: 29)
!2819 = distinct !DILexicalBlock(scope: !2792, file: !182, line: 463, column: 9)
!2820 = !DILocalVariable(name: "_t", scope: !2815, file: !182, line: 464, type: !215)
!2821 = !DILocalVariable(name: "__r", scope: !2822, file: !182, line: 464, type: !345)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !182, line: 464, column: 2)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !182, line: 464, column: 2)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !182, line: 464, column: 2)
!2825 = distinct !DILexicalBlock(scope: !2815, file: !182, line: 464, column: 2)
!2826 = !DILocalVariable(name: "__r", scope: !2827, file: !182, line: 464, type: !345)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !182, line: 464, column: 2)
!2828 = !DILocalVariable(name: "__r", scope: !2829, file: !182, line: 464, type: !345)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !182, line: 464, column: 2)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !182, line: 464, column: 2)
!2831 = !DILocalVariable(name: "__r", scope: !2832, file: !182, line: 464, type: !345)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !182, line: 464, column: 2)
!2833 = !DILocalVariable(name: "_p", scope: !2834, file: !182, line: 464, type: !50)
!2834 = distinct !DILexicalBlock(scope: !2816, file: !182, line: 464, column: 2)
!2835 = !DILocation(line: 454, column: 88, scope: !2792)
!2836 = !DILocation(line: 454, column: 27, scope: !2792)
!2837 = !DILocation(line: 454, column: 18, scope: !2792)
!2838 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 456, column: 5, scope: !2797)
!2840 = !DILocation(line: 456, column: 5, scope: !2797)
!2841 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 0, scope: !2797)
!2844 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !2843)
!2845 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !2843)
!2846 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !2843)
!2847 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !2843)
!2848 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !2843)
!2849 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !2843)
!2850 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !2843)
!2851 = !DILocation(line: 0, scope: !2552, inlinedAt: !2843)
!2852 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 0, scope: !2797)
!2855 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !2854)
!2856 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !2854)
!2857 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !2854)
!2858 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !2854)
!2859 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !2854)
!2860 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !2854)
!2861 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !2854)
!2862 = !DILocation(line: 456, column: 5, scope: !2798)
!2863 = !DILocation(line: 456, column: 5, scope: !2796)
!2864 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 456, column: 5, scope: !2796)
!2866 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2865)
!2867 = !DILocation(line: 456, column: 5, scope: !2803)
!2868 = !DILocation(line: 0, scope: !2803)
!2869 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 0, scope: !2803)
!2873 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2871)
!2874 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2871)
!2875 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2871)
!2876 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2871)
!2877 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2871)
!2878 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2871)
!2879 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2871)
!2880 = !DILocation(line: 456, column: 5, scope: !2804)
!2881 = !DILocation(line: 456, column: 5, scope: !2802)
!2882 = !DILocation(line: 456, column: 5, scope: !2809)
!2883 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 456, column: 5, scope: !2796)
!2886 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2885)
!2887 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2885)
!2888 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2885)
!2889 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2885)
!2890 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2885)
!2891 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2885)
!2892 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2885)
!2893 = !DILocation(line: 456, column: 5, scope: !2813)
!2894 = !DILocation(line: 456, column: 5, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !182, line: 456, column: 5)
!2896 = distinct !DILexicalBlock(scope: !2813, file: !182, line: 456, column: 5)
!2897 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 0, scope: !2895)
!2901 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2899)
!2902 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2899)
!2903 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2899)
!2904 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2899)
!2905 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2899)
!2906 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2899)
!2907 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2899)
!2908 = !DILocation(line: 0, scope: !2895)
!2909 = !DILocation(line: 456, column: 5, scope: !2896)
!2910 = !DILocation(line: 456, column: 5, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2895, file: !182, line: 456, column: 5)
!2912 = !DILocation(line: 456, column: 5, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2895, file: !182, line: 456, column: 5)
!2914 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 456, column: 5, scope: !2813)
!2917 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2916)
!2918 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2916)
!2919 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2916)
!2920 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2916)
!2921 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2916)
!2922 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2916)
!2923 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2916)
!2924 = !DILocation(line: 462, column: 23, scope: !2792)
!2925 = !DILocation(line: 462, column: 13, scope: !2792)
!2926 = !DILocation(line: 462, column: 21, scope: !2792)
!2927 = !DILocation(line: 463, column: 10, scope: !2819)
!2928 = !DILocation(line: 463, column: 9, scope: !2792)
!2929 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 464, column: 2, scope: !2816)
!2931 = !DILocation(line: 464, column: 2, scope: !2816)
!2932 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 0, scope: !2816)
!2935 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !2934)
!2936 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !2934)
!2937 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !2934)
!2938 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !2934)
!2939 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !2934)
!2940 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !2934)
!2941 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !2934)
!2942 = !DILocation(line: 0, scope: !2552, inlinedAt: !2934)
!2943 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 0, scope: !2816)
!2946 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !2945)
!2947 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !2945)
!2948 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !2945)
!2949 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !2945)
!2950 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !2945)
!2951 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !2945)
!2952 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !2945)
!2953 = !DILocation(line: 464, column: 2, scope: !2817)
!2954 = !DILocation(line: 464, column: 2, scope: !2815)
!2955 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 464, column: 2, scope: !2815)
!2957 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !2956)
!2958 = !DILocation(line: 464, column: 2, scope: !2824)
!2959 = !DILocation(line: 0, scope: !2824)
!2960 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 0, scope: !2824)
!2964 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2962)
!2965 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2962)
!2966 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2962)
!2967 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2962)
!2968 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2962)
!2969 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2962)
!2970 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2962)
!2971 = !DILocation(line: 464, column: 2, scope: !2825)
!2972 = !DILocation(line: 464, column: 2, scope: !2823)
!2973 = !DILocation(line: 464, column: 2, scope: !2830)
!2974 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 464, column: 2, scope: !2815)
!2977 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !2976)
!2978 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !2976)
!2979 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !2976)
!2980 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !2976)
!2981 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !2976)
!2982 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !2976)
!2983 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !2976)
!2984 = !DILocation(line: 464, column: 2, scope: !2834)
!2985 = !DILocation(line: 464, column: 2, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !182, line: 464, column: 2)
!2987 = distinct !DILexicalBlock(scope: !2834, file: !182, line: 464, column: 2)
!2988 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 0, scope: !2986)
!2992 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !2990)
!2993 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !2990)
!2994 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !2990)
!2995 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !2990)
!2996 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !2990)
!2997 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !2990)
!2998 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !2990)
!2999 = !DILocation(line: 0, scope: !2986)
!3000 = !DILocation(line: 464, column: 2, scope: !2987)
!3001 = !DILocation(line: 464, column: 2, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2986, file: !182, line: 464, column: 2)
!3003 = !DILocation(line: 464, column: 2, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2986, file: !182, line: 464, column: 2)
!3005 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 464, column: 2, scope: !2834)
!3008 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3007)
!3009 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3007)
!3010 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3007)
!3011 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3007)
!3012 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3007)
!3013 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3007)
!3014 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3007)
!3015 = !DILocation(line: 0, scope: !2792)
!3016 = !DILocation(line: 469, column: 1, scope: !2792)
!3017 = distinct !DISubprogram(name: "__fiber_thread", scope: !182, file: !182, line: 511, type: !64, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3018)
!3018 = !{!3019, !3020, !3021, !3027, !3028, !3033, !3035, !3038, !3040, !3042, !3068, !3074, !3075, !3080, !3082, !3085, !3087, !3089, !3090, !3096, !3097, !3102, !3104, !3107, !3109, !3111, !3112, !3118, !3119, !3124, !3126, !3129, !3131}
!3019 = !DILocalVariable(name: "in", arg: 1, scope: !3017, file: !182, line: 511, type: !33)
!3020 = !DILocalVariable(name: "out", arg: 2, scope: !3017, file: !182, line: 511, type: !66)
!3021 = !DILocalVariable(name: "_p", scope: !3022, file: !182, line: 515, type: !50)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !182, line: 515, column: 5)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !182, line: 515, column: 5)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !182, line: 515, column: 5)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !182, line: 514, column: 51)
!3026 = distinct !DILexicalBlock(scope: !3017, file: !182, line: 514, column: 7)
!3027 = !DILocalVariable(name: "_t", scope: !3022, file: !182, line: 515, type: !215)
!3028 = !DILocalVariable(name: "__r", scope: !3029, file: !182, line: 515, type: !345)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !182, line: 515, column: 5)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !182, line: 515, column: 5)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !182, line: 515, column: 5)
!3032 = distinct !DILexicalBlock(scope: !3022, file: !182, line: 515, column: 5)
!3033 = !DILocalVariable(name: "__r", scope: !3034, file: !182, line: 515, type: !345)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !182, line: 515, column: 5)
!3035 = !DILocalVariable(name: "__r", scope: !3036, file: !182, line: 515, type: !345)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !182, line: 515, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3031, file: !182, line: 515, column: 5)
!3038 = !DILocalVariable(name: "__r", scope: !3039, file: !182, line: 515, type: !345)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !182, line: 515, column: 5)
!3040 = !DILocalVariable(name: "_p", scope: !3041, file: !182, line: 515, type: !50)
!3041 = distinct !DILexicalBlock(scope: !3023, file: !182, line: 515, column: 5)
!3042 = !DILocalVariable(name: "c", scope: !3017, file: !182, line: 520, type: !3043)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !112, line: 67, size: 320, elements: !3044)
!3044 = !{!3045, !3047, !3048}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3043, file: !112, line: 68, baseType: !3046, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !112, line: 66, baseType: !289)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !3043, file: !112, line: 79, baseType: !70, size: 8, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !3043, file: !112, line: 80, baseType: !3049, size: 256, offset: 64)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3043, file: !112, line: 80, size: 256, elements: !3050)
!3050 = !{!3051, !3057, !3064}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3049, file: !112, line: 81, baseType: !3052, size: 192)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !112, line: 49, size: 192, elements: !3053)
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3052, file: !112, line: 50, baseType: !29, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3052, file: !112, line: 51, baseType: !29, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3052, file: !112, line: 52, baseType: !29, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !3049, file: !112, line: 82, baseType: !3058, size: 256)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !112, line: 55, size: 256, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3058, file: !112, line: 56, baseType: !29, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3058, file: !112, line: 57, baseType: !29, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3058, file: !112, line: 58, baseType: !29, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !3058, file: !112, line: 59, baseType: !29, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !3049, file: !112, line: 83, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !112, line: 62, size: 64, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3065, file: !112, line: 63, baseType: !29, size: 64)
!3068 = !DILocalVariable(name: "_p", scope: !3069, file: !182, line: 525, type: !50)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !182, line: 525, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !182, line: 525, column: 5)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !182, line: 525, column: 5)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !182, line: 524, column: 47)
!3073 = distinct !DILexicalBlock(scope: !3017, file: !182, line: 524, column: 7)
!3074 = !DILocalVariable(name: "_t", scope: !3069, file: !182, line: 525, type: !215)
!3075 = !DILocalVariable(name: "__r", scope: !3076, file: !182, line: 525, type: !345)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !182, line: 525, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !182, line: 525, column: 5)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !182, line: 525, column: 5)
!3079 = distinct !DILexicalBlock(scope: !3069, file: !182, line: 525, column: 5)
!3080 = !DILocalVariable(name: "__r", scope: !3081, file: !182, line: 525, type: !345)
!3081 = distinct !DILexicalBlock(scope: !3076, file: !182, line: 525, column: 5)
!3082 = !DILocalVariable(name: "__r", scope: !3083, file: !182, line: 525, type: !345)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !182, line: 525, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3078, file: !182, line: 525, column: 5)
!3085 = !DILocalVariable(name: "__r", scope: !3086, file: !182, line: 525, type: !345)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !182, line: 525, column: 5)
!3087 = !DILocalVariable(name: "_p", scope: !3088, file: !182, line: 525, type: !50)
!3088 = distinct !DILexicalBlock(scope: !3070, file: !182, line: 525, column: 5)
!3089 = !DILocalVariable(name: "state", scope: !3017, file: !182, line: 534, type: !1706)
!3090 = !DILocalVariable(name: "_p", scope: !3091, file: !182, line: 536, type: !50)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !182, line: 536, column: 5)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !182, line: 536, column: 5)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !182, line: 536, column: 5)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !182, line: 535, column: 17)
!3095 = distinct !DILexicalBlock(scope: !3017, file: !182, line: 535, column: 7)
!3096 = !DILocalVariable(name: "_t", scope: !3091, file: !182, line: 536, type: !215)
!3097 = !DILocalVariable(name: "__r", scope: !3098, file: !182, line: 536, type: !345)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !182, line: 536, column: 5)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !182, line: 536, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !182, line: 536, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3091, file: !182, line: 536, column: 5)
!3102 = !DILocalVariable(name: "__r", scope: !3103, file: !182, line: 536, type: !345)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !182, line: 536, column: 5)
!3104 = !DILocalVariable(name: "__r", scope: !3105, file: !182, line: 536, type: !345)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !182, line: 536, column: 5)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !182, line: 536, column: 5)
!3107 = !DILocalVariable(name: "__r", scope: !3108, file: !182, line: 536, type: !345)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !182, line: 536, column: 5)
!3109 = !DILocalVariable(name: "_p", scope: !3110, file: !182, line: 536, type: !50)
!3110 = distinct !DILexicalBlock(scope: !3092, file: !182, line: 536, column: 5)
!3111 = !DILocalVariable(name: "idle_fiber_ptr", scope: !3017, file: !182, line: 541, type: !296)
!3112 = !DILocalVariable(name: "_p", scope: !3113, file: !182, line: 543, type: !50)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !182, line: 543, column: 5)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !182, line: 543, column: 5)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !182, line: 543, column: 5)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !182, line: 542, column: 71)
!3117 = distinct !DILexicalBlock(scope: !3017, file: !182, line: 542, column: 7)
!3118 = !DILocalVariable(name: "_t", scope: !3113, file: !182, line: 543, type: !215)
!3119 = !DILocalVariable(name: "__r", scope: !3120, file: !182, line: 543, type: !345)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !182, line: 543, column: 5)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !182, line: 543, column: 5)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !182, line: 543, column: 5)
!3123 = distinct !DILexicalBlock(scope: !3113, file: !182, line: 543, column: 5)
!3124 = !DILocalVariable(name: "__r", scope: !3125, file: !182, line: 543, type: !345)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !182, line: 543, column: 5)
!3126 = !DILocalVariable(name: "__r", scope: !3127, file: !182, line: 543, type: !345)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !182, line: 543, column: 5)
!3128 = distinct !DILexicalBlock(scope: !3122, file: !182, line: 543, column: 5)
!3129 = !DILocalVariable(name: "__r", scope: !3130, file: !182, line: 543, type: !345)
!3130 = distinct !DILexicalBlock(scope: !3127, file: !182, line: 543, column: 5)
!3131 = !DILocalVariable(name: "_p", scope: !3132, file: !182, line: 543, type: !50)
!3132 = distinct !DILexicalBlock(scope: !3114, file: !182, line: 543, column: 5)
!3133 = !DILocation(line: 511, column: 27, scope: !3017)
!3134 = !DILocation(line: 511, column: 38, scope: !3017)
!3135 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 514, column: 22, scope: !3026)
!3137 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3136)
!3138 = !DILocation(line: 514, column: 22, scope: !3026)
!3139 = !DILocation(line: 514, column: 7, scope: !3026)
!3140 = !DILocation(line: 514, column: 7, scope: !3017)
!3141 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 515, column: 5, scope: !3023)
!3143 = !DILocation(line: 515, column: 5, scope: !3023)
!3144 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 0, scope: !3023)
!3147 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !3146)
!3148 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !3146)
!3149 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !3146)
!3150 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !3146)
!3151 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !3146)
!3152 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !3146)
!3153 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !3146)
!3154 = !DILocation(line: 0, scope: !2552, inlinedAt: !3146)
!3155 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 0, scope: !3023)
!3158 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !3157)
!3159 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !3157)
!3160 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !3157)
!3161 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !3157)
!3162 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !3157)
!3163 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !3157)
!3164 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !3157)
!3165 = !DILocation(line: 515, column: 5, scope: !3024)
!3166 = !DILocation(line: 515, column: 5, scope: !3022)
!3167 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 515, column: 5, scope: !3022)
!3169 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3168)
!3170 = !DILocation(line: 515, column: 5, scope: !3031)
!3171 = !DILocation(line: 0, scope: !3031)
!3172 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 0, scope: !3031)
!3176 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3174)
!3177 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3174)
!3178 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3174)
!3179 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3174)
!3180 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3174)
!3181 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3174)
!3182 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3174)
!3183 = !DILocation(line: 515, column: 5, scope: !3032)
!3184 = !DILocation(line: 515, column: 5, scope: !3030)
!3185 = !DILocation(line: 515, column: 5, scope: !3037)
!3186 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 515, column: 5, scope: !3022)
!3189 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3188)
!3190 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3188)
!3191 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3188)
!3192 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3188)
!3193 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3188)
!3194 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3188)
!3195 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3188)
!3196 = !DILocation(line: 515, column: 5, scope: !3041)
!3197 = !DILocation(line: 515, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !182, line: 515, column: 5)
!3199 = distinct !DILexicalBlock(scope: !3041, file: !182, line: 515, column: 5)
!3200 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 0, scope: !3198)
!3204 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3202)
!3205 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3202)
!3206 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3202)
!3207 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3202)
!3208 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3202)
!3209 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3202)
!3210 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3202)
!3211 = !DILocation(line: 0, scope: !3198)
!3212 = !DILocation(line: 515, column: 5, scope: !3199)
!3213 = !DILocation(line: 515, column: 5, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3198, file: !182, line: 515, column: 5)
!3215 = !DILocation(line: 515, column: 5, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3198, file: !182, line: 515, column: 5)
!3217 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 515, column: 5, scope: !3041)
!3220 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3219)
!3221 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3219)
!3222 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3219)
!3223 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3219)
!3224 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3219)
!3225 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3219)
!3226 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3219)
!3227 = !DILocation(line: 520, column: 3, scope: !3017)
!3228 = !DILocation(line: 520, column: 31, scope: !3017)
!3229 = !DILocation(line: 524, column: 7, scope: !3073)
!3230 = !DILocation(line: 0, scope: !3017)
!3231 = !DILocation(line: 524, column: 7, scope: !3017)
!3232 = !DILocation(line: 525, column: 5, scope: !3070)
!3233 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 0, scope: !3070)
!3236 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !3235)
!3237 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !3235)
!3238 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !3235)
!3239 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !3235)
!3240 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !3235)
!3241 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !3235)
!3242 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !3235)
!3243 = !DILocation(line: 0, scope: !2552, inlinedAt: !3235)
!3244 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 0, scope: !3070)
!3247 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !3246)
!3248 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !3246)
!3249 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !3246)
!3250 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !3246)
!3251 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !3246)
!3252 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !3246)
!3253 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !3246)
!3254 = !DILocation(line: 525, column: 5, scope: !3071)
!3255 = !DILocation(line: 525, column: 5, scope: !3069)
!3256 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 525, column: 5, scope: !3069)
!3258 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3257)
!3259 = !DILocation(line: 525, column: 5, scope: !3078)
!3260 = !DILocation(line: 0, scope: !3078)
!3261 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 0, scope: !3078)
!3265 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3263)
!3266 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3263)
!3267 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3263)
!3268 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3263)
!3269 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3263)
!3270 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3263)
!3271 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3263)
!3272 = !DILocation(line: 525, column: 5, scope: !3079)
!3273 = !DILocation(line: 525, column: 5, scope: !3077)
!3274 = !DILocation(line: 525, column: 5, scope: !3084)
!3275 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 525, column: 5, scope: !3069)
!3278 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3277)
!3279 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3277)
!3280 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3277)
!3281 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3277)
!3282 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3277)
!3283 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3277)
!3284 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3277)
!3285 = !DILocation(line: 525, column: 5, scope: !3088)
!3286 = !DILocation(line: 525, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !182, line: 525, column: 5)
!3288 = distinct !DILexicalBlock(scope: !3088, file: !182, line: 525, column: 5)
!3289 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 0, scope: !3287)
!3293 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3291)
!3294 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3291)
!3295 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3291)
!3296 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3291)
!3297 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3291)
!3298 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3291)
!3299 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3291)
!3300 = !DILocation(line: 0, scope: !3287)
!3301 = !DILocation(line: 525, column: 5, scope: !3288)
!3302 = !DILocation(line: 525, column: 5, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3287, file: !182, line: 525, column: 5)
!3304 = !DILocation(line: 525, column: 5, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3287, file: !182, line: 525, column: 5)
!3306 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 525, column: 5, scope: !3088)
!3309 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3308)
!3310 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3308)
!3311 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3308)
!3312 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3308)
!3313 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3308)
!3314 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3308)
!3315 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3308)
!3316 = !DILocation(line: 526, column: 5, scope: !3072)
!3317 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 534, column: 24, scope: !3017)
!3320 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3319)
!3321 = !DILocation(line: 534, column: 16, scope: !3017)
!3322 = !DILocation(line: 535, column: 8, scope: !3095)
!3323 = !DILocation(line: 535, column: 7, scope: !3017)
!3324 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 536, column: 5, scope: !3092)
!3326 = !DILocation(line: 536, column: 5, scope: !3092)
!3327 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 0, scope: !3092)
!3330 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !3329)
!3331 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !3329)
!3332 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !3329)
!3333 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !3329)
!3334 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !3329)
!3335 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !3329)
!3336 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !3329)
!3337 = !DILocation(line: 0, scope: !2552, inlinedAt: !3329)
!3338 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 0, scope: !3092)
!3341 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !3340)
!3342 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !3340)
!3343 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !3340)
!3344 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !3340)
!3345 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !3340)
!3346 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !3340)
!3347 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !3340)
!3348 = !DILocation(line: 536, column: 5, scope: !3093)
!3349 = !DILocation(line: 536, column: 5, scope: !3091)
!3350 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 536, column: 5, scope: !3091)
!3352 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3351)
!3353 = !DILocation(line: 536, column: 5, scope: !3100)
!3354 = !DILocation(line: 0, scope: !3100)
!3355 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 0, scope: !3100)
!3359 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3357)
!3360 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3357)
!3361 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3357)
!3362 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3357)
!3363 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3357)
!3364 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3357)
!3365 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3357)
!3366 = !DILocation(line: 536, column: 5, scope: !3101)
!3367 = !DILocation(line: 536, column: 5, scope: !3099)
!3368 = !DILocation(line: 536, column: 5, scope: !3106)
!3369 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 536, column: 5, scope: !3091)
!3372 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3371)
!3373 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3371)
!3374 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3371)
!3375 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3371)
!3376 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3371)
!3377 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3371)
!3378 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3371)
!3379 = !DILocation(line: 536, column: 5, scope: !3110)
!3380 = !DILocation(line: 536, column: 5, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !182, line: 536, column: 5)
!3382 = distinct !DILexicalBlock(scope: !3110, file: !182, line: 536, column: 5)
!3383 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 0, scope: !3381)
!3387 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3385)
!3388 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3385)
!3389 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3385)
!3390 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3385)
!3391 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3385)
!3392 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3385)
!3393 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3385)
!3394 = !DILocation(line: 0, scope: !3381)
!3395 = !DILocation(line: 536, column: 5, scope: !3382)
!3396 = !DILocation(line: 536, column: 5, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3381, file: !182, line: 536, column: 5)
!3398 = !DILocation(line: 536, column: 5, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3381, file: !182, line: 536, column: 5)
!3400 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 536, column: 5, scope: !3110)
!3403 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3402)
!3404 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3402)
!3405 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3402)
!3406 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3402)
!3407 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3402)
!3408 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3402)
!3409 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3402)
!3410 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 538, column: 25, scope: !3017)
!3412 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3411)
!3413 = !DILocation(line: 538, column: 10, scope: !3017)
!3414 = !DILocation(line: 538, column: 23, scope: !3017)
!3415 = !DILocation(line: 541, column: 3, scope: !3017)
!3416 = !DILocation(line: 541, column: 15, scope: !3017)
!3417 = !DILocation(line: 542, column: 7, scope: !3117)
!3418 = !DILocation(line: 542, column: 66, scope: !3117)
!3419 = !DILocation(line: 542, column: 7, scope: !3017)
!3420 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 543, column: 5, scope: !3114)
!3422 = !DILocation(line: 543, column: 5, scope: !3114)
!3423 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 0, scope: !3114)
!3426 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !3425)
!3427 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !3425)
!3428 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !3425)
!3429 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !3425)
!3430 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !3425)
!3431 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !3425)
!3432 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !3425)
!3433 = !DILocation(line: 0, scope: !2552, inlinedAt: !3425)
!3434 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 0, scope: !3114)
!3437 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !3436)
!3438 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !3436)
!3439 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !3436)
!3440 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !3436)
!3441 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !3436)
!3442 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !3436)
!3443 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !3436)
!3444 = !DILocation(line: 543, column: 5, scope: !3115)
!3445 = !DILocation(line: 543, column: 5, scope: !3113)
!3446 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 543, column: 5, scope: !3113)
!3448 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3447)
!3449 = !DILocation(line: 543, column: 5, scope: !3122)
!3450 = !DILocation(line: 0, scope: !3122)
!3451 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 0, scope: !3122)
!3455 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3453)
!3456 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3453)
!3457 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3453)
!3458 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3453)
!3459 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3453)
!3460 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3453)
!3461 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3453)
!3462 = !DILocation(line: 543, column: 5, scope: !3123)
!3463 = !DILocation(line: 543, column: 5, scope: !3121)
!3464 = !DILocation(line: 543, column: 5, scope: !3128)
!3465 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 543, column: 5, scope: !3113)
!3468 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3467)
!3469 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3467)
!3470 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3467)
!3471 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3467)
!3472 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3467)
!3473 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3467)
!3474 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3467)
!3475 = !DILocation(line: 543, column: 5, scope: !3132)
!3476 = !DILocation(line: 543, column: 5, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !182, line: 543, column: 5)
!3478 = distinct !DILexicalBlock(scope: !3132, file: !182, line: 543, column: 5)
!3479 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 0, scope: !3477)
!3483 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3481)
!3484 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3481)
!3485 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3481)
!3486 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3481)
!3487 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3481)
!3488 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3481)
!3489 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3481)
!3490 = !DILocation(line: 0, scope: !3477)
!3491 = !DILocation(line: 543, column: 5, scope: !3478)
!3492 = !DILocation(line: 543, column: 5, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3477, file: !182, line: 543, column: 5)
!3494 = !DILocation(line: 543, column: 5, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3477, file: !182, line: 543, column: 5)
!3496 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 543, column: 5, scope: !3132)
!3499 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3498)
!3500 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3498)
!3501 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3498)
!3502 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3498)
!3503 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3498)
!3504 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3498)
!3505 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3498)
!3506 = !DILocation(line: 547, column: 23, scope: !3017)
!3507 = !DILocation(line: 547, column: 10, scope: !3017)
!3508 = !DILocation(line: 547, column: 21, scope: !3017)
!3509 = !DILocation(line: 548, column: 10, scope: !3017)
!3510 = !DILocation(line: 548, column: 21, scope: !3017)
!3511 = !DILocation(line: 551, column: 3, scope: !3017)
!3512 = !DILocation(line: 551, column: 19, scope: !3017)
!3513 = !DILocation(line: 551, column: 27, scope: !3017)
!3514 = !DILocation(line: 198, column: 33, scope: !2129, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 554, column: 3, scope: !3017)
!3516 = !DILocation(line: 202, column: 9, scope: !2129, inlinedAt: !3515)
!3517 = !DILocation(line: 202, column: 19, scope: !2129, inlinedAt: !3515)
!3518 = !DILocation(line: 202, column: 32, scope: !2129, inlinedAt: !3515)
!3519 = !DILocation(line: 202, column: 3, scope: !2129, inlinedAt: !3515)
!3520 = !DILocation(line: 208, column: 3, scope: !2129, inlinedAt: !3515)
!3521 = !DILocation(line: 557, column: 1, scope: !3017)
!3522 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !182, file: !182, line: 479, type: !64, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3523)
!3523 = !{!3524, !3525}
!3524 = !DILocalVariable(name: "in", arg: 1, scope: !3522, file: !182, line: 479, type: !33)
!3525 = !DILocalVariable(name: "out", arg: 2, scope: !3522, file: !182, line: 479, type: !66)
!3526 = !DILocation(line: 479, column: 35, scope: !3522)
!3527 = !DILocation(line: 479, column: 46, scope: !3522)
!3528 = !DILocation(line: 481, column: 3, scope: !3522)
!3529 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 704, column: 7, scope: !3533, inlinedAt: !3537)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !182, line: 704, column: 7)
!3534 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !182, file: !182, line: 702, type: !561, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3535)
!3535 = !{!3536}
!3536 = !DILocalVariable(name: "f_to", scope: !3534, file: !182, line: 708, type: !296)
!3537 = distinct !DILocation(line: 489, column: 5, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3522, file: !182, line: 481, column: 13)
!3539 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3530)
!3540 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3531)
!3541 = !DILocation(line: 98, column: 30, scope: !1736, inlinedAt: !3532)
!3542 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 704, column: 30, scope: !3533, inlinedAt: !3537)
!3544 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3543)
!3545 = !DILocation(line: 704, column: 27, scope: !3533, inlinedAt: !3537)
!3546 = !DILocation(line: 704, column: 7, scope: !3534, inlinedAt: !3537)
!3547 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 708, column: 22, scope: !3534, inlinedAt: !3537)
!3552 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3548)
!3553 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3549)
!3554 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !3550)
!3555 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !3551)
!3556 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !3551)
!3557 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !3551)
!3559 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !3558)
!3560 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !3558)
!3561 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !3551)
!3562 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !3551)
!3563 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !3551)
!3564 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !3551)
!3566 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !3565)
!3567 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !3565)
!3568 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !3565)
!3570 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !3569)
!3571 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !3569)
!3572 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !3569)
!3573 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !3569)
!3574 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !3569)
!3575 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !3565)
!3577 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !3576)
!3578 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !3576)
!3579 = !DILocation(line: 708, column: 15, scope: !3534, inlinedAt: !3537)
!3580 = !DILocation(line: 718, column: 12, scope: !3581, inlinedAt: !3537)
!3581 = distinct !DILexicalBlock(scope: !3534, file: !182, line: 718, column: 7)
!3582 = !DILocation(line: 718, column: 7, scope: !3534, inlinedAt: !3537)
!3583 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 719, column: 9, scope: !3587, inlinedAt: !3537)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !182, line: 719, column: 9)
!3588 = distinct !DILexicalBlock(scope: !3581, file: !182, line: 718, column: 21)
!3589 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3584)
!3590 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3585)
!3591 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !3586)
!3592 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 719, column: 31, scope: !3587, inlinedAt: !3537)
!3596 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3593)
!3597 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3594)
!3598 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !3595)
!3599 = !DILocation(line: 719, column: 28, scope: !3587, inlinedAt: !3537)
!3600 = !DILocation(line: 719, column: 9, scope: !3588, inlinedAt: !3537)
!3601 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 723, column: 16, scope: !3605, inlinedAt: !3537)
!3605 = distinct !DILexicalBlock(scope: !3587, file: !182, line: 722, column: 12)
!3606 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3602)
!3607 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3603)
!3608 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !3604)
!3609 = !DILocation(line: 725, column: 3, scope: !3588, inlinedAt: !3537)
!3610 = !DILocation(line: 0, scope: !3534, inlinedAt: !3537)
!3611 = !DILocation(line: 727, column: 10, scope: !3534, inlinedAt: !3537)
!3612 = !DILocation(line: 727, column: 3, scope: !3534, inlinedAt: !3537)
!3613 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 490, column: 28, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3538, file: !182, line: 490, column: 9)
!3618 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3614)
!3619 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3615)
!3620 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !3616)
!3621 = !DILocalVariable(name: "head", arg: 1, scope: !3622, file: !53, line: 201, type: !1781)
!3622 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1794, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3623)
!3623 = !{!3621, !3624}
!3624 = !DILocalVariable(name: "next", scope: !3622, file: !53, line: 203, type: !205)
!3625 = !DILocation(line: 201, column: 62, scope: !3622, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 490, column: 9, scope: !3617)
!3627 = !DILocation(line: 203, column: 33, scope: !3622, inlinedAt: !3626)
!3628 = !DILocation(line: 203, column: 20, scope: !3622, inlinedAt: !3626)
!3629 = !DILocation(line: 204, column: 15, scope: !3622, inlinedAt: !3626)
!3630 = !DILocation(line: 204, column: 24, scope: !3622, inlinedAt: !3626)
!3631 = !DILocation(line: 204, column: 42, scope: !3622, inlinedAt: !3626)
!3632 = !DILocation(line: 204, column: 33, scope: !3622, inlinedAt: !3626)
!3633 = !DILocation(line: 490, column: 9, scope: !3538)
!3634 = !DILocation(line: 489, column: 5, scope: !3538)
!3635 = distinct !{!3635, !3528, !3636}
!3636 = !DILocation(line: 508, column: 3, scope: !3522)
!3637 = !DILocation(line: 492, column: 7, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3617, file: !182, line: 490, column: 47)
!3639 = !DILocation(line: 494, column: 5, scope: !3638)
!3640 = distinct !DISubprogram(name: "nk_fiber_create", scope: !182, file: !182, line: 602, type: !3641, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!50, !62, !33, !66, !38, !586}
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3653}
!3644 = !DILocalVariable(name: "fun", arg: 1, scope: !3640, file: !182, line: 602, type: !62)
!3645 = !DILocalVariable(name: "input", arg: 2, scope: !3640, file: !182, line: 602, type: !33)
!3646 = !DILocalVariable(name: "output", arg: 3, scope: !3640, file: !182, line: 602, type: !66)
!3647 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3640, file: !182, line: 602, type: !38)
!3648 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !3640, file: !182, line: 602, type: !586)
!3649 = !DILocalVariable(name: "fiber", scope: !3640, file: !182, line: 605, type: !296)
!3650 = !DILocalVariable(name: "required_stack_size", scope: !3640, file: !182, line: 608, type: !38)
!3651 = !DILocalVariable(name: "p", scope: !3652, file: !182, line: 611, type: !33)
!3652 = distinct !DILexicalBlock(scope: !3640, file: !182, line: 611, column: 11)
!3653 = !DILocalVariable(name: "p", scope: !3654, file: !182, line: 628, type: !33)
!3654 = distinct !DILexicalBlock(scope: !3640, file: !182, line: 628, column: 26)
!3655 = !DILocation(line: 602, column: 36, scope: !3640)
!3656 = !DILocation(line: 602, column: 47, scope: !3640)
!3657 = !DILocation(line: 602, column: 61, scope: !3640)
!3658 = !DILocation(line: 602, column: 85, scope: !3640)
!3659 = !DILocation(line: 602, column: 110, scope: !3640)
!3660 = !DILocation(line: 605, column: 15, scope: !3640)
!3661 = !DILocation(line: 608, column: 41, scope: !3640)
!3662 = !DILocation(line: 608, column: 19, scope: !3640)
!3663 = !DILocation(line: 611, column: 11, scope: !3652)
!3664 = !DILocation(line: 614, column: 8, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3640, file: !182, line: 614, column: 7)
!3666 = !DILocation(line: 614, column: 7, scope: !3640)
!3667 = !DILocation(line: 620, column: 3, scope: !3640)
!3668 = !DILocation(line: 623, column: 10, scope: !3640)
!3669 = !DILocation(line: 623, column: 19, scope: !3640)
!3670 = !DILocation(line: 625, column: 10, scope: !3640)
!3671 = !DILocation(line: 625, column: 21, scope: !3640)
!3672 = !DILocation(line: 628, column: 26, scope: !3654)
!3673 = !DILocation(line: 628, column: 10, scope: !3640)
!3674 = !DILocation(line: 628, column: 16, scope: !3640)
!3675 = !DILocation(line: 631, column: 8, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3640, file: !182, line: 631, column: 7)
!3677 = !DILocation(line: 631, column: 7, scope: !3640)
!3678 = !DILocation(line: 634, column: 5, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !182, line: 631, column: 21)
!3680 = !DILocation(line: 635, column: 5, scope: !3679)
!3681 = !DILocation(line: 639, column: 10, scope: !3640)
!3682 = !DILocation(line: 639, column: 14, scope: !3640)
!3683 = !DILocation(line: 640, column: 10, scope: !3640)
!3684 = !DILocation(line: 640, column: 16, scope: !3640)
!3685 = !DILocation(line: 641, column: 10, scope: !3640)
!3686 = !DILocation(line: 641, column: 17, scope: !3640)
!3687 = !DILocation(line: 274, column: 33, scope: !2139, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 644, column: 3, scope: !3640)
!3689 = !DILocation(line: 276, column: 37, scope: !2139, inlinedAt: !3688)
!3690 = !DILocation(line: 276, column: 6, scope: !2139, inlinedAt: !3688)
!3691 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 277, column: 3, scope: !2139, inlinedAt: !3688)
!3693 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3692)
!3694 = !DILocation(line: 276, column: 32, scope: !2139, inlinedAt: !3688)
!3695 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3692)
!3696 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3692)
!3697 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3692)
!3698 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 278, column: 3, scope: !2139, inlinedAt: !3688)
!3700 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3699)
!3701 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3699)
!3702 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3699)
!3703 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3699)
!3704 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 279, column: 3, scope: !2139, inlinedAt: !3688)
!3706 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3705)
!3707 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3705)
!3708 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3705)
!3709 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3705)
!3710 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 280, column: 3, scope: !2139, inlinedAt: !3688)
!3712 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3711)
!3713 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3711)
!3714 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3711)
!3715 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3711)
!3716 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 281, column: 3, scope: !2139, inlinedAt: !3688)
!3718 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3717)
!3719 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3717)
!3720 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3717)
!3721 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3717)
!3722 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 282, column: 3, scope: !2139, inlinedAt: !3688)
!3724 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3723)
!3725 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3723)
!3726 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3723)
!3727 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3723)
!3728 = !DILocation(line: 283, column: 18, scope: !2139, inlinedAt: !3688)
!3729 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 283, column: 3, scope: !2139, inlinedAt: !3688)
!3731 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3730)
!3732 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3730)
!3733 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3730)
!3734 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3730)
!3735 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 284, column: 3, scope: !2139, inlinedAt: !3688)
!3737 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3736)
!3738 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3736)
!3739 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3736)
!3740 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3736)
!3741 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 285, column: 3, scope: !2139, inlinedAt: !3688)
!3743 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3742)
!3744 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3742)
!3745 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3742)
!3746 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3742)
!3747 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 286, column: 3, scope: !2139, inlinedAt: !3688)
!3749 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3748)
!3750 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3748)
!3751 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3748)
!3752 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3748)
!3753 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 287, column: 3, scope: !2139, inlinedAt: !3688)
!3755 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3754)
!3756 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3754)
!3757 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3754)
!3758 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3754)
!3759 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 288, column: 3, scope: !2139, inlinedAt: !3688)
!3761 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3760)
!3762 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3760)
!3763 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3760)
!3764 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3760)
!3765 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 289, column: 3, scope: !2139, inlinedAt: !3688)
!3767 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3766)
!3768 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3766)
!3769 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3766)
!3770 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3766)
!3771 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 290, column: 3, scope: !2139, inlinedAt: !3688)
!3773 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3772)
!3774 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3772)
!3775 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3772)
!3776 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3772)
!3777 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 291, column: 3, scope: !2139, inlinedAt: !3688)
!3779 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3778)
!3780 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3778)
!3781 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3778)
!3782 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3778)
!3783 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 292, column: 3, scope: !2139, inlinedAt: !3688)
!3785 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !3784)
!3786 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !3784)
!3787 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !3784)
!3788 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !3784)
!3789 = !DILocation(line: 647, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3640, file: !182, line: 647, column: 7)
!3791 = !DILocation(line: 647, column: 7, scope: !3640)
!3792 = !DILocation(line: 648, column: 19, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !182, line: 647, column: 20)
!3794 = !DILocation(line: 649, column: 3, scope: !3793)
!3795 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 650, column: 15, scope: !3640)
!3797 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3796)
!3798 = !DILocation(line: 650, column: 33, scope: !3640)
!3799 = !DILocation(line: 650, column: 10, scope: !3640)
!3800 = !DILocation(line: 650, column: 13, scope: !3640)
!3801 = !DILocation(line: 653, column: 27, scope: !3640)
!3802 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 653, column: 3, scope: !3640)
!3804 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !3803)
!3805 = !DILocation(line: 76, column: 8, scope: !1827, inlinedAt: !3803)
!3806 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !3803)
!3807 = !DILocation(line: 656, column: 10, scope: !3640)
!3808 = !DILocation(line: 656, column: 19, scope: !3640)
!3809 = !DILocation(line: 657, column: 27, scope: !3640)
!3810 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 657, column: 3, scope: !3640)
!3812 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !3811)
!3813 = !DILocation(line: 76, column: 8, scope: !1827, inlinedAt: !3811)
!3814 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !3811)
!3815 = !DILocation(line: 658, column: 27, scope: !3640)
!3816 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 658, column: 3, scope: !3640)
!3818 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !3817)
!3819 = !DILocation(line: 76, column: 8, scope: !1827, inlinedAt: !3817)
!3820 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !3817)
!3821 = !DILocation(line: 660, column: 3, scope: !3640)
!3822 = !DILocation(line: 0, scope: !3640)
!3823 = !DILocation(line: 661, column: 1, scope: !3640)
!3824 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 704, column: 7, scope: !3533)
!3828 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3825)
!3829 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3826)
!3830 = !DILocation(line: 98, column: 30, scope: !1736, inlinedAt: !3827)
!3831 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 704, column: 30, scope: !3533)
!3833 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3832)
!3834 = !DILocation(line: 704, column: 27, scope: !3533)
!3835 = !DILocation(line: 704, column: 7, scope: !3534)
!3836 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 708, column: 22, scope: !3534)
!3841 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3837)
!3842 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3838)
!3843 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !3839)
!3844 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !3840)
!3845 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !3840)
!3846 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !3840)
!3848 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !3847)
!3849 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !3847)
!3850 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !3840)
!3851 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !3840)
!3852 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !3840)
!3853 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !3840)
!3855 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !3854)
!3856 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !3854)
!3857 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !3854)
!3859 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !3858)
!3860 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !3858)
!3861 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !3858)
!3862 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !3858)
!3863 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !3858)
!3864 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !3854)
!3866 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !3865)
!3867 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !3865)
!3868 = !DILocation(line: 708, column: 15, scope: !3534)
!3869 = !DILocation(line: 718, column: 12, scope: !3581)
!3870 = !DILocation(line: 718, column: 7, scope: !3534)
!3871 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 719, column: 9, scope: !3587)
!3875 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3872)
!3876 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3873)
!3877 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !3874)
!3878 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 719, column: 31, scope: !3587)
!3882 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3879)
!3883 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3880)
!3884 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !3881)
!3885 = !DILocation(line: 719, column: 28, scope: !3587)
!3886 = !DILocation(line: 719, column: 9, scope: !3588)
!3887 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 723, column: 16, scope: !3605)
!3891 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3888)
!3892 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !3889)
!3893 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !3890)
!3894 = !DILocation(line: 725, column: 3, scope: !3588)
!3895 = !DILocation(line: 0, scope: !3534)
!3896 = !DILocation(line: 727, column: 10, scope: !3534)
!3897 = !DILocation(line: 727, column: 3, scope: !3534)
!3898 = !DILocation(line: 728, column: 1, scope: !3534)
!3899 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !182, file: !182, line: 570, type: !2373, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3900)
!3900 = !{!3901, !3902, !3906, !3907, !3912, !3914, !3917, !3919, !3921, !3927, !3928, !3933, !3935, !3938, !3940}
!3901 = !DILocalVariable(name: "my_cpu", scope: !3899, file: !182, line: 572, type: !324)
!3902 = !DILocalVariable(name: "_p", scope: !3903, file: !182, line: 573, type: !50)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !182, line: 573, column: 5)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !182, line: 573, column: 5)
!3905 = distinct !DILexicalBlock(scope: !3899, file: !182, line: 573, column: 5)
!3906 = !DILocalVariable(name: "_t", scope: !3903, file: !182, line: 573, type: !215)
!3907 = !DILocalVariable(name: "__r", scope: !3908, file: !182, line: 573, type: !345)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !182, line: 573, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !182, line: 573, column: 5)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !182, line: 573, column: 5)
!3911 = distinct !DILexicalBlock(scope: !3903, file: !182, line: 573, column: 5)
!3912 = !DILocalVariable(name: "__r", scope: !3913, file: !182, line: 573, type: !345)
!3913 = distinct !DILexicalBlock(scope: !3908, file: !182, line: 573, column: 5)
!3914 = !DILocalVariable(name: "__r", scope: !3915, file: !182, line: 573, type: !345)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !182, line: 573, column: 5)
!3916 = distinct !DILexicalBlock(scope: !3910, file: !182, line: 573, column: 5)
!3917 = !DILocalVariable(name: "__r", scope: !3918, file: !182, line: 573, type: !345)
!3918 = distinct !DILexicalBlock(scope: !3915, file: !182, line: 573, column: 5)
!3919 = !DILocalVariable(name: "_p", scope: !3920, file: !182, line: 573, type: !50)
!3920 = distinct !DILexicalBlock(scope: !3904, file: !182, line: 573, column: 5)
!3921 = !DILocalVariable(name: "_p", scope: !3922, file: !182, line: 575, type: !50)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !182, line: 575, column: 2)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !182, line: 575, column: 2)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !182, line: 575, column: 2)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !182, line: 574, column: 45)
!3926 = distinct !DILexicalBlock(scope: !3899, file: !182, line: 574, column: 9)
!3927 = !DILocalVariable(name: "_t", scope: !3922, file: !182, line: 575, type: !215)
!3928 = !DILocalVariable(name: "__r", scope: !3929, file: !182, line: 575, type: !345)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !182, line: 575, column: 2)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !182, line: 575, column: 2)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !182, line: 575, column: 2)
!3932 = distinct !DILexicalBlock(scope: !3922, file: !182, line: 575, column: 2)
!3933 = !DILocalVariable(name: "__r", scope: !3934, file: !182, line: 575, type: !345)
!3934 = distinct !DILexicalBlock(scope: !3929, file: !182, line: 575, column: 2)
!3935 = !DILocalVariable(name: "__r", scope: !3936, file: !182, line: 575, type: !345)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !182, line: 575, column: 2)
!3937 = distinct !DILexicalBlock(scope: !3931, file: !182, line: 575, column: 2)
!3938 = !DILocalVariable(name: "__r", scope: !3939, file: !182, line: 575, type: !345)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !182, line: 575, column: 2)
!3940 = !DILocalVariable(name: "_p", scope: !3941, file: !182, line: 575, type: !50)
!3941 = distinct !DILexicalBlock(scope: !3923, file: !182, line: 575, column: 2)
!3942 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 572, column: 26, scope: !3899)
!3944 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !3943)
!3945 = !DILocation(line: 572, column: 17, scope: !3899)
!3946 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 573, column: 5, scope: !3904)
!3948 = !DILocation(line: 573, column: 5, scope: !3904)
!3949 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 0, scope: !3904)
!3952 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !3951)
!3953 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !3951)
!3954 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !3951)
!3955 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !3951)
!3956 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !3951)
!3957 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !3951)
!3958 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !3951)
!3959 = !DILocation(line: 0, scope: !2552, inlinedAt: !3951)
!3960 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 0, scope: !3904)
!3963 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !3962)
!3964 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !3962)
!3965 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !3962)
!3966 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !3962)
!3967 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !3962)
!3968 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !3962)
!3969 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !3962)
!3970 = !DILocation(line: 573, column: 5, scope: !3905)
!3971 = !DILocation(line: 573, column: 5, scope: !3903)
!3972 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 573, column: 5, scope: !3903)
!3974 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !3973)
!3975 = !DILocation(line: 573, column: 5, scope: !3910)
!3976 = !DILocation(line: 0, scope: !3910)
!3977 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 0, scope: !3910)
!3981 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !3979)
!3982 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !3979)
!3983 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !3979)
!3984 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !3979)
!3985 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !3979)
!3986 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !3979)
!3987 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !3979)
!3988 = !DILocation(line: 573, column: 5, scope: !3911)
!3989 = !DILocation(line: 573, column: 5, scope: !3909)
!3990 = !DILocation(line: 573, column: 5, scope: !3916)
!3991 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 573, column: 5, scope: !3903)
!3994 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !3993)
!3995 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !3993)
!3996 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !3993)
!3997 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !3993)
!3998 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !3993)
!3999 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !3993)
!4000 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !3993)
!4001 = !DILocation(line: 573, column: 5, scope: !3920)
!4002 = !DILocation(line: 573, column: 5, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !182, line: 573, column: 5)
!4004 = distinct !DILexicalBlock(scope: !3920, file: !182, line: 573, column: 5)
!4005 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 0, scope: !4003)
!4009 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !4007)
!4010 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !4007)
!4011 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !4007)
!4012 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !4007)
!4013 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !4007)
!4014 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !4007)
!4015 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !4007)
!4016 = !DILocation(line: 0, scope: !4003)
!4017 = !DILocation(line: 573, column: 5, scope: !4004)
!4018 = !DILocation(line: 573, column: 5, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4003, file: !182, line: 573, column: 5)
!4020 = !DILocation(line: 573, column: 5, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4003, file: !182, line: 573, column: 5)
!4022 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 573, column: 5, scope: !3920)
!4025 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !4024)
!4026 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !4024)
!4027 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !4024)
!4028 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !4024)
!4029 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !4024)
!4030 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !4024)
!4031 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !4024)
!4032 = !DILocation(line: 561, column: 3, scope: !4033, inlinedAt: !4062)
!4033 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !182, file: !182, line: 559, type: !561, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4034)
!4034 = !{!4035, !4037, !4040, !4042, !4047, !4048, !4053, !4055, !4058, !4060}
!4035 = !DILocalVariable(name: "tid", scope: !4033, file: !182, line: 561, type: !4036)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !33)
!4037 = !DILocalVariable(name: "__r", scope: !4038, file: !182, line: 562, type: !345)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !182, line: 562, column: 79)
!4039 = distinct !DILexicalBlock(scope: !4033, file: !182, line: 562, column: 7)
!4040 = !DILocalVariable(name: "__r", scope: !4041, file: !182, line: 562, type: !345)
!4041 = distinct !DILexicalBlock(scope: !4038, file: !182, line: 562, column: 79)
!4042 = !DILocalVariable(name: "_p", scope: !4043, file: !182, line: 563, type: !50)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !182, line: 563, column: 7)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !182, line: 563, column: 7)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !182, line: 563, column: 7)
!4046 = distinct !DILexicalBlock(scope: !4039, file: !182, line: 562, column: 93)
!4047 = !DILocalVariable(name: "_t", scope: !4043, file: !182, line: 563, type: !215)
!4048 = !DILocalVariable(name: "__r", scope: !4049, file: !182, line: 563, type: !345)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !182, line: 563, column: 7)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !182, line: 563, column: 7)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !182, line: 563, column: 7)
!4052 = distinct !DILexicalBlock(scope: !4043, file: !182, line: 563, column: 7)
!4053 = !DILocalVariable(name: "__r", scope: !4054, file: !182, line: 563, type: !345)
!4054 = distinct !DILexicalBlock(scope: !4049, file: !182, line: 563, column: 7)
!4055 = !DILocalVariable(name: "__r", scope: !4056, file: !182, line: 563, type: !345)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !182, line: 563, column: 7)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !182, line: 563, column: 7)
!4058 = !DILocalVariable(name: "__r", scope: !4059, file: !182, line: 563, type: !345)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !182, line: 563, column: 7)
!4060 = !DILocalVariable(name: "_p", scope: !4061, file: !182, line: 563, type: !50)
!4061 = distinct !DILexicalBlock(scope: !4044, file: !182, line: 563, column: 7)
!4062 = distinct !DILocation(line: 574, column: 9, scope: !3926)
!4063 = !DILocation(line: 562, column: 79, scope: !4041, inlinedAt: !4062)
!4064 = !{i32 -2147099479}
!4065 = !DILocation(line: 562, column: 79, scope: !4038, inlinedAt: !4062)
!4066 = !DILocation(line: 561, column: 18, scope: !4033, inlinedAt: !4062)
!4067 = !DILocation(line: 562, column: 7, scope: !4039, inlinedAt: !4062)
!4068 = !DILocation(line: 562, column: 7, scope: !4033, inlinedAt: !4062)
!4069 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 563, column: 7, scope: !4044, inlinedAt: !4062)
!4071 = !DILocation(line: 563, column: 7, scope: !4044, inlinedAt: !4062)
!4072 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 0, scope: !4044, inlinedAt: !4062)
!4075 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !4074)
!4076 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !4074)
!4077 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !4074)
!4078 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !4074)
!4079 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !4074)
!4080 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !4074)
!4081 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !4074)
!4082 = !DILocation(line: 0, scope: !2552, inlinedAt: !4074)
!4083 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 0, scope: !4044, inlinedAt: !4062)
!4086 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !4085)
!4087 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !4085)
!4088 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !4085)
!4089 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !4085)
!4090 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !4085)
!4091 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !4085)
!4092 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !4085)
!4093 = !DILocation(line: 563, column: 7, scope: !4045, inlinedAt: !4062)
!4094 = !DILocation(line: 563, column: 7, scope: !4043, inlinedAt: !4062)
!4095 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 563, column: 7, scope: !4043, inlinedAt: !4062)
!4097 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !4096)
!4098 = !DILocation(line: 563, column: 7, scope: !4051, inlinedAt: !4062)
!4099 = !DILocation(line: 0, scope: !4051, inlinedAt: !4062)
!4100 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 0, scope: !4051, inlinedAt: !4062)
!4104 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !4102)
!4105 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !4102)
!4106 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !4102)
!4107 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !4102)
!4108 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !4102)
!4109 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !4102)
!4110 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !4102)
!4111 = !DILocation(line: 563, column: 7, scope: !4052, inlinedAt: !4062)
!4112 = !DILocation(line: 563, column: 7, scope: !4050, inlinedAt: !4062)
!4113 = !DILocation(line: 563, column: 7, scope: !4057, inlinedAt: !4062)
!4114 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 563, column: 7, scope: !4043, inlinedAt: !4062)
!4117 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !4116)
!4118 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !4116)
!4119 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !4116)
!4120 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !4116)
!4121 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !4116)
!4122 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !4116)
!4123 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !4116)
!4124 = !DILocation(line: 563, column: 7, scope: !4061, inlinedAt: !4062)
!4125 = !DILocation(line: 563, column: 7, scope: !4126, inlinedAt: !4062)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !182, line: 563, column: 7)
!4127 = distinct !DILexicalBlock(scope: !4061, file: !182, line: 563, column: 7)
!4128 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 0, scope: !4126, inlinedAt: !4062)
!4132 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !4130)
!4133 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !4130)
!4134 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !4130)
!4135 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !4130)
!4136 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !4130)
!4137 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !4130)
!4138 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !4130)
!4139 = !DILocation(line: 0, scope: !4126, inlinedAt: !4062)
!4140 = !DILocation(line: 563, column: 7, scope: !4127, inlinedAt: !4062)
!4141 = !DILocation(line: 563, column: 7, scope: !4142, inlinedAt: !4062)
!4142 = distinct !DILexicalBlock(scope: !4126, file: !182, line: 563, column: 7)
!4143 = !DILocation(line: 563, column: 7, scope: !4144, inlinedAt: !4062)
!4144 = distinct !DILexicalBlock(scope: !4126, file: !182, line: 563, column: 7)
!4145 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 563, column: 7, scope: !4061, inlinedAt: !4062)
!4148 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !4147)
!4149 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !4147)
!4150 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !4147)
!4151 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !4147)
!4152 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !4147)
!4153 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !4147)
!4154 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !4147)
!4155 = !DILocation(line: 568, column: 1, scope: !4033, inlinedAt: !4062)
!4156 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 575, column: 2, scope: !3923)
!4158 = !DILocation(line: 575, column: 2, scope: !3923)
!4159 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 84, column: 18, scope: !2546, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 0, scope: !3923)
!4162 = !DILocation(line: 84, column: 11, scope: !2546, inlinedAt: !4161)
!4163 = !DILocation(line: 85, column: 9, scope: !2552, inlinedAt: !4161)
!4164 = !DILocation(line: 85, column: 9, scope: !2546, inlinedAt: !4161)
!4165 = !DILocation(line: 87, column: 57, scope: !2555, inlinedAt: !4161)
!4166 = !DILocation(line: 87, column: 30, scope: !2555, inlinedAt: !4161)
!4167 = !DILocation(line: 87, column: 9, scope: !2555, inlinedAt: !4161)
!4168 = !DILocation(line: 87, column: 2, scope: !2555, inlinedAt: !4161)
!4169 = !DILocation(line: 0, scope: !2552, inlinedAt: !4161)
!4170 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 48, column: 18, scope: !2562, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 0, scope: !3923)
!4173 = !DILocation(line: 48, column: 11, scope: !2562, inlinedAt: !4172)
!4174 = !DILocation(line: 49, column: 9, scope: !2568, inlinedAt: !4172)
!4175 = !DILocation(line: 49, column: 9, scope: !2562, inlinedAt: !4172)
!4176 = !DILocation(line: 51, column: 50, scope: !2571, inlinedAt: !4172)
!4177 = !DILocation(line: 51, column: 23, scope: !2571, inlinedAt: !4172)
!4178 = !DILocation(line: 51, column: 2, scope: !2571, inlinedAt: !4172)
!4179 = !DILocation(line: 52, column: 5, scope: !2571, inlinedAt: !4172)
!4180 = !DILocation(line: 575, column: 2, scope: !3924)
!4181 = !DILocation(line: 575, column: 2, scope: !3922)
!4182 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 575, column: 2, scope: !3922)
!4184 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !4183)
!4185 = !DILocation(line: 575, column: 2, scope: !3931)
!4186 = !DILocation(line: 0, scope: !3931)
!4187 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 0, scope: !3931)
!4191 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !4189)
!4192 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !4189)
!4193 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !4189)
!4194 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !4189)
!4195 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !4189)
!4196 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !4189)
!4197 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !4189)
!4198 = !DILocation(line: 575, column: 2, scope: !3932)
!4199 = !DILocation(line: 575, column: 2, scope: !3930)
!4200 = !DILocation(line: 575, column: 2, scope: !3937)
!4201 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 575, column: 2, scope: !3922)
!4204 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !4203)
!4205 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !4203)
!4206 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !4203)
!4207 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !4203)
!4208 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !4203)
!4209 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !4203)
!4210 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !4203)
!4211 = !DILocation(line: 575, column: 2, scope: !3941)
!4212 = !DILocation(line: 575, column: 2, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !182, line: 575, column: 2)
!4214 = distinct !DILexicalBlock(scope: !3941, file: !182, line: 575, column: 2)
!4215 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 96, column: 18, scope: !2584, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 107, column: 12, scope: !2590, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 0, scope: !4213)
!4219 = !DILocation(line: 96, column: 11, scope: !2584, inlinedAt: !4217)
!4220 = !DILocation(line: 97, column: 9, scope: !2594, inlinedAt: !4217)
!4221 = !DILocation(line: 97, column: 9, scope: !2584, inlinedAt: !4217)
!4222 = !DILocation(line: 98, column: 57, scope: !2597, inlinedAt: !4217)
!4223 = !DILocation(line: 98, column: 30, scope: !2597, inlinedAt: !4217)
!4224 = !DILocation(line: 98, column: 9, scope: !2597, inlinedAt: !4217)
!4225 = !DILocation(line: 98, column: 2, scope: !2597, inlinedAt: !4217)
!4226 = !DILocation(line: 0, scope: !4213)
!4227 = !DILocation(line: 575, column: 2, scope: !4214)
!4228 = !DILocation(line: 575, column: 2, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4213, file: !182, line: 575, column: 2)
!4230 = !DILocation(line: 575, column: 2, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4213, file: !182, line: 575, column: 2)
!4232 = !DILocation(line: 43, column: 21, scope: !2538, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 59, column: 18, scope: !2606, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 575, column: 2, scope: !3941)
!4235 = !DILocation(line: 59, column: 11, scope: !2606, inlinedAt: !4234)
!4236 = !DILocation(line: 60, column: 9, scope: !2612, inlinedAt: !4234)
!4237 = !DILocation(line: 60, column: 9, scope: !2606, inlinedAt: !4234)
!4238 = !DILocation(line: 62, column: 50, scope: !2615, inlinedAt: !4234)
!4239 = !DILocation(line: 62, column: 23, scope: !2615, inlinedAt: !4234)
!4240 = !DILocation(line: 62, column: 2, scope: !2615, inlinedAt: !4234)
!4241 = !DILocation(line: 63, column: 5, scope: !2615, inlinedAt: !4234)
!4242 = !DILocation(line: 576, column: 2, scope: !3925)
!4243 = !DILocation(line: 579, column: 1, scope: !3899)
!4244 = !DILocation(line: 693, column: 35, scope: !583)
!4245 = !DILocation(line: 693, column: 46, scope: !583)
!4246 = !DILocation(line: 693, column: 60, scope: !583)
!4247 = !DILocation(line: 693, column: 84, scope: !583)
!4248 = !DILocation(line: 693, column: 104, scope: !583)
!4249 = !DILocation(line: 693, column: 134, scope: !583)
!4250 = !DILocation(line: 695, column: 3, scope: !583)
!4251 = !DILocation(line: 696, column: 16, scope: !583)
!4252 = !DILocation(line: 696, column: 3, scope: !583)
!4253 = !DILocation(line: 698, column: 3, scope: !583)
!4254 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !182, file: !182, line: 730, type: !561, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1708)
!4255 = !DILocation(line: 732, column: 3, scope: !4254)
!4256 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 704, column: 7, scope: !3533, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 733, column: 10, scope: !4254)
!4261 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4257)
!4262 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4258)
!4263 = !DILocation(line: 98, column: 30, scope: !1736, inlinedAt: !4259)
!4264 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 704, column: 30, scope: !3533, inlinedAt: !4260)
!4266 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !4265)
!4267 = !DILocation(line: 704, column: 27, scope: !3533, inlinedAt: !4260)
!4268 = !DILocation(line: 704, column: 7, scope: !3534, inlinedAt: !4260)
!4269 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 708, column: 22, scope: !3534, inlinedAt: !4260)
!4274 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4270)
!4275 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4271)
!4276 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !4272)
!4277 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !4273)
!4278 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !4273)
!4279 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !4273)
!4281 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !4280)
!4282 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !4280)
!4283 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !4273)
!4284 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !4273)
!4285 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !4273)
!4286 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !4273)
!4288 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !4287)
!4289 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !4287)
!4290 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !4287)
!4292 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !4291)
!4293 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !4291)
!4294 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !4291)
!4295 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !4291)
!4296 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !4291)
!4297 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !4287)
!4299 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !4298)
!4300 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !4298)
!4301 = !DILocation(line: 708, column: 15, scope: !3534, inlinedAt: !4260)
!4302 = !DILocation(line: 718, column: 12, scope: !3581, inlinedAt: !4260)
!4303 = !DILocation(line: 718, column: 7, scope: !3534, inlinedAt: !4260)
!4304 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 719, column: 9, scope: !3587, inlinedAt: !4260)
!4308 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4305)
!4309 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4306)
!4310 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4307)
!4311 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 719, column: 31, scope: !3587, inlinedAt: !4260)
!4315 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4312)
!4316 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4313)
!4317 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4314)
!4318 = !DILocation(line: 719, column: 28, scope: !3587, inlinedAt: !4260)
!4319 = !DILocation(line: 719, column: 9, scope: !3588, inlinedAt: !4260)
!4320 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 723, column: 16, scope: !3605, inlinedAt: !4260)
!4324 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4321)
!4325 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4322)
!4326 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4323)
!4327 = !DILocation(line: 725, column: 3, scope: !3588, inlinedAt: !4260)
!4328 = !DILocation(line: 0, scope: !3534, inlinedAt: !4260)
!4329 = !DILocation(line: 727, column: 10, scope: !3534, inlinedAt: !4260)
!4330 = !DILocation(line: 727, column: 3, scope: !3534, inlinedAt: !4260)
!4331 = !DILocation(line: 733, column: 3, scope: !4254)
!4332 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !182, file: !182, line: 736, type: !2246, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4333)
!4333 = !{!4334, !4335}
!4334 = !DILocalVariable(name: "f_to", arg: 1, scope: !4332, file: !182, line: 736, type: !296)
!4335 = !DILocalVariable(name: "new_to", scope: !4336, file: !182, line: 744, type: !296)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !182, line: 740, column: 38)
!4337 = distinct !DILexicalBlock(scope: !4332, file: !182, line: 740, column: 7)
!4338 = !DILocation(line: 736, column: 35, scope: !4332)
!4339 = !DILocation(line: 383, column: 42, scope: !2428, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 740, column: 7, scope: !4337)
!4341 = !DILocation(line: 386, column: 26, scope: !2435, inlinedAt: !4340)
!4342 = !DILocation(line: 386, column: 26, scope: !2433, inlinedAt: !4340)
!4343 = !DILocation(line: 386, column: 20, scope: !2428, inlinedAt: !4340)
!4344 = !DILocation(line: 387, column: 23, scope: !2428, inlinedAt: !4340)
!4345 = !DILocation(line: 387, column: 7, scope: !2428, inlinedAt: !4340)
!4346 = !DILocation(line: 392, column: 12, scope: !2440, inlinedAt: !4340)
!4347 = !DILocation(line: 392, column: 27, scope: !2445, inlinedAt: !4340)
!4348 = !DILocation(line: 392, column: 3, scope: !2440, inlinedAt: !4340)
!4349 = !DILocation(line: 394, column: 14, scope: !2444, inlinedAt: !4340)
!4350 = !DILocation(line: 394, column: 31, scope: !2444, inlinedAt: !4340)
!4351 = !DILocation(line: 394, column: 40, scope: !2444, inlinedAt: !4340)
!4352 = !DILocation(line: 390, column: 21, scope: !2428, inlinedAt: !4340)
!4353 = !DILocation(line: 395, column: 5, scope: !2442, inlinedAt: !4340)
!4354 = !DILocation(line: 391, column: 15, scope: !2428, inlinedAt: !4340)
!4355 = !DILocation(line: 0, scope: !2443, inlinedAt: !4340)
!4356 = !DILocation(line: 395, column: 5, scope: !2443, inlinedAt: !4340)
!4357 = !DILocation(line: 395, column: 5, scope: !2448, inlinedAt: !4340)
!4358 = !DILocation(line: 400, column: 16, scope: !2469, inlinedAt: !4340)
!4359 = !DILocation(line: 400, column: 11, scope: !2470, inlinedAt: !4340)
!4360 = !DILocation(line: 392, column: 43, scope: !2445, inlinedAt: !4340)
!4361 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 744, column: 26, scope: !4336)
!4366 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4362)
!4367 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4363)
!4368 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !4364)
!4369 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !4365)
!4370 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !4365)
!4371 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !4365)
!4373 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !4372)
!4374 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !4372)
!4375 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !4365)
!4376 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !4365)
!4377 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !4365)
!4378 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !4365)
!4380 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !4379)
!4381 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !4379)
!4382 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !4379)
!4384 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !4383)
!4385 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !4383)
!4386 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !4383)
!4387 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !4383)
!4388 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !4383)
!4389 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !4379)
!4391 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !4390)
!4392 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !4390)
!4393 = !DILocation(line: 744, column: 17, scope: !4336)
!4394 = !DILocation(line: 746, column: 16, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4336, file: !182, line: 746, column: 9)
!4396 = !DILocation(line: 746, column: 9, scope: !4336)
!4397 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 747, column: 11, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !182, line: 747, column: 11)
!4402 = distinct !DILexicalBlock(scope: !4395, file: !182, line: 746, column: 25)
!4403 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4398)
!4404 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4399)
!4405 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4400)
!4406 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 747, column: 33, scope: !4401)
!4410 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4407)
!4411 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4408)
!4412 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4409)
!4413 = !DILocation(line: 747, column: 30, scope: !4401)
!4414 = !DILocation(line: 747, column: 11, scope: !4402)
!4415 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 751, column: 20, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4401, file: !182, line: 750, column: 14)
!4420 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4416)
!4421 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4417)
!4422 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4418)
!4423 = !DILocation(line: 753, column: 5, scope: !4402)
!4424 = !DILocation(line: 0, scope: !4336)
!4425 = !DILocation(line: 756, column: 5, scope: !4336)
!4426 = !DILocation(line: 758, column: 5, scope: !4336)
!4427 = !DILocation(line: 401, column: 33, scope: !2478, inlinedAt: !4340)
!4428 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 401, column: 9, scope: !2478, inlinedAt: !4340)
!4430 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !4429)
!4431 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !4429)
!4432 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !4429)
!4434 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !4433)
!4435 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !4433)
!4436 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !4433)
!4437 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !4433)
!4438 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !4433)
!4439 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !4429)
!4441 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !4440)
!4442 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !4440)
!4443 = !DILocation(line: 762, column: 3, scope: !4332)
!4444 = !DILocation(line: 765, column: 3, scope: !4332)
!4445 = !DILocation(line: 0, scope: !4332)
!4446 = !DILocation(line: 766, column: 1, scope: !4332)
!4447 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !182, file: !182, line: 768, type: !4448, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4453)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!50, !4450, !33}
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!70, !33}
!4453 = !{!4454, !4455}
!4454 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4447, file: !182, line: 768, type: !4450)
!4455 = !DILocalVariable(name: "state", arg: 2, scope: !4447, file: !182, line: 768, type: !33)
!4456 = !DILocation(line: 768, column: 42, scope: !4447)
!4457 = !DILocation(line: 768, column: 77, scope: !4447)
!4458 = !DILocation(line: 770, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4447, file: !182, line: 770, column: 7)
!4460 = !DILocation(line: 770, column: 7, scope: !4447)
!4461 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 704, column: 7, scope: !3533, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 771, column: 12, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4459, file: !182, line: 770, column: 28)
!4467 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4462)
!4468 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4463)
!4469 = !DILocation(line: 98, column: 30, scope: !1736, inlinedAt: !4464)
!4470 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 704, column: 30, scope: !3533, inlinedAt: !4465)
!4472 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !4471)
!4473 = !DILocation(line: 704, column: 27, scope: !3533, inlinedAt: !4465)
!4474 = !DILocation(line: 704, column: 7, scope: !3534, inlinedAt: !4465)
!4475 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 708, column: 22, scope: !3534, inlinedAt: !4465)
!4480 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4476)
!4481 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4477)
!4482 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !4478)
!4483 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !4479)
!4484 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !4479)
!4485 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !4479)
!4487 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !4486)
!4488 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !4486)
!4489 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !4479)
!4490 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !4479)
!4491 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !4479)
!4492 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !4479)
!4494 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !4493)
!4495 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !4493)
!4496 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !4493)
!4498 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !4497)
!4499 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !4497)
!4500 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !4497)
!4501 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !4497)
!4502 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !4497)
!4503 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !4493)
!4505 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !4504)
!4506 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !4504)
!4507 = !DILocation(line: 708, column: 15, scope: !3534, inlinedAt: !4465)
!4508 = !DILocation(line: 718, column: 12, scope: !3581, inlinedAt: !4465)
!4509 = !DILocation(line: 718, column: 7, scope: !3534, inlinedAt: !4465)
!4510 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 719, column: 9, scope: !3587, inlinedAt: !4465)
!4514 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4511)
!4515 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4512)
!4516 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4513)
!4517 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 719, column: 31, scope: !3587, inlinedAt: !4465)
!4521 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4518)
!4522 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4519)
!4523 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4520)
!4524 = !DILocation(line: 719, column: 28, scope: !3587, inlinedAt: !4465)
!4525 = !DILocation(line: 719, column: 9, scope: !3588, inlinedAt: !4465)
!4526 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 723, column: 16, scope: !3605, inlinedAt: !4465)
!4530 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4527)
!4531 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4528)
!4532 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4529)
!4533 = !DILocation(line: 725, column: 3, scope: !3588, inlinedAt: !4465)
!4534 = !DILocation(line: 0, scope: !3534, inlinedAt: !4465)
!4535 = !DILocation(line: 727, column: 10, scope: !3534, inlinedAt: !4465)
!4536 = !DILocation(line: 727, column: 3, scope: !3534, inlinedAt: !4465)
!4537 = !DILocation(line: 771, column: 5, scope: !4466)
!4538 = !DILocation(line: 0, scope: !4447)
!4539 = !DILocation(line: 774, column: 1, scope: !4447)
!4540 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !182, file: !182, line: 776, type: !4541, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!50, !296, !4450, !33}
!4543 = !{!4544, !4545, !4546}
!4544 = !DILocalVariable(name: "fib", arg: 1, scope: !4540, file: !182, line: 776, type: !296)
!4545 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4540, file: !182, line: 776, type: !4450)
!4546 = !DILocalVariable(name: "state", arg: 3, scope: !4540, file: !182, line: 776, type: !33)
!4547 = !DILocation(line: 776, column: 47, scope: !4540)
!4548 = !DILocation(line: 776, column: 62, scope: !4540)
!4549 = !DILocation(line: 776, column: 97, scope: !4540)
!4550 = !DILocation(line: 778, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4540, file: !182, line: 778, column: 7)
!4552 = !DILocation(line: 778, column: 7, scope: !4540)
!4553 = !DILocation(line: 779, column: 12, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4551, file: !182, line: 778, column: 28)
!4555 = !DILocation(line: 779, column: 5, scope: !4554)
!4556 = !DILocation(line: 0, scope: !4540)
!4557 = !DILocation(line: 782, column: 1, scope: !4540)
!4558 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !182, file: !182, line: 784, type: !1719, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4559)
!4559 = !{!4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576}
!4560 = !DILocalVariable(name: "curr", scope: !4558, file: !182, line: 787, type: !296)
!4561 = !DILocalVariable(name: "size", scope: !4558, file: !182, line: 790, type: !29)
!4562 = !DILocalVariable(name: "alloc_size", scope: !4558, file: !182, line: 790, type: !29)
!4563 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4558, file: !182, line: 791, type: !29)
!4564 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4558, file: !182, line: 792, type: !29)
!4565 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4558, file: !182, line: 793, type: !29)
!4566 = !DILocalVariable(name: "child_stack", scope: !4558, file: !182, line: 794, type: !33)
!4567 = !DILocalVariable(name: "rsp", scope: !4558, file: !182, line: 795, type: !29)
!4568 = !DILocalVariable(name: "rbp0", scope: !4558, file: !182, line: 800, type: !33)
!4569 = !DILocalVariable(name: "rbp1", scope: !4558, file: !182, line: 801, type: !33)
!4570 = !DILocalVariable(name: "rbp_tos", scope: !4558, file: !182, line: 802, type: !33)
!4571 = !DILocalVariable(name: "ret0_addr", scope: !4558, file: !182, line: 803, type: !33)
!4572 = !DILocalVariable(name: "rbp_stash_addr", scope: !4558, file: !182, line: 815, type: !33)
!4573 = !DILocalVariable(name: "new", scope: !4558, file: !182, line: 831, type: !296)
!4574 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4558, file: !182, line: 847, type: !66)
!4575 = !DILocalVariable(name: "rbp2_ptr", scope: !4558, file: !182, line: 851, type: !66)
!4576 = !DILocalVariable(name: "ret2_ptr", scope: !4558, file: !182, line: 852, type: !66)
!4577 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 787, column: 22, scope: !4558)
!4581 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4578)
!4582 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4579)
!4583 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4580)
!4584 = !DILocation(line: 787, column: 15, scope: !4558)
!4585 = !DILocation(line: 798, column: 3, scope: !4558)
!4586 = !{i32 23631}
!4587 = !DILocation(line: 795, column: 16, scope: !4558)
!4588 = !DILocation(line: 800, column: 21, scope: !4558)
!4589 = !DILocation(line: 800, column: 9, scope: !4558)
!4590 = !DILocation(line: 801, column: 21, scope: !4558)
!4591 = !DILocation(line: 801, column: 9, scope: !4558)
!4592 = !DILocation(line: 802, column: 21, scope: !4558)
!4593 = !DILocation(line: 802, column: 9, scope: !4558)
!4594 = !DILocation(line: 803, column: 26, scope: !4558)
!4595 = !DILocation(line: 803, column: 9, scope: !4558)
!4596 = !DILocation(line: 805, column: 44, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4558, file: !182, line: 805, column: 7)
!4598 = !DILocation(line: 805, column: 25, scope: !4597)
!4599 = !DILocation(line: 0, scope: !4558)
!4600 = !DILocation(line: 806, column: 46, scope: !4597)
!4601 = !DILocation(line: 806, column: 20, scope: !4597)
!4602 = !DILocation(line: 805, column: 50, scope: !4597)
!4603 = !DILocation(line: 815, column: 36, scope: !4558)
!4604 = !DILocation(line: 815, column: 9, scope: !4558)
!4605 = !DILocation(line: 821, column: 19, scope: !4558)
!4606 = !DILocation(line: 821, column: 24, scope: !4558)
!4607 = !DILocation(line: 790, column: 12, scope: !4558)
!4608 = !DILocation(line: 822, column: 37, scope: !4558)
!4609 = !DILocation(line: 791, column: 16, scope: !4558)
!4610 = !DILocation(line: 792, column: 16, scope: !4558)
!4611 = !DILocation(line: 825, column: 32, scope: !4558)
!4612 = !DILocation(line: 825, column: 57, scope: !4558)
!4613 = !DILocation(line: 793, column: 16, scope: !4558)
!4614 = !DILocation(line: 790, column: 18, scope: !4558)
!4615 = !DILocation(line: 831, column: 3, scope: !4558)
!4616 = !DILocation(line: 831, column: 15, scope: !4558)
!4617 = !DILocation(line: 832, column: 3, scope: !4558)
!4618 = !DILocation(line: 835, column: 15, scope: !4558)
!4619 = !DILocation(line: 113, column: 31, scope: !1756, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 835, column: 3, scope: !4558)
!4621 = !DILocation(line: 113, column: 43, scope: !1756, inlinedAt: !4620)
!4622 = !DILocation(line: 115, column: 8, scope: !1756, inlinedAt: !4620)
!4623 = !DILocation(line: 115, column: 12, scope: !1756, inlinedAt: !4620)
!4624 = !DILocation(line: 116, column: 6, scope: !1756, inlinedAt: !4620)
!4625 = !DILocation(line: 116, column: 26, scope: !1756, inlinedAt: !4620)
!4626 = !DILocation(line: 837, column: 17, scope: !4558)
!4627 = !DILocation(line: 837, column: 22, scope: !4558)
!4628 = !DILocation(line: 794, column: 17, scope: !4558)
!4629 = !DILocation(line: 839, column: 22, scope: !4558)
!4630 = !DILocation(line: 839, column: 35, scope: !4558)
!4631 = !DILocation(line: 839, column: 3, scope: !4558)
!4632 = !DILocation(line: 840, column: 57, scope: !4558)
!4633 = !DILocation(line: 840, column: 14, scope: !4558)
!4634 = !DILocation(line: 840, column: 3, scope: !4558)
!4635 = !DILocation(line: 840, column: 8, scope: !4558)
!4636 = !DILocation(line: 840, column: 12, scope: !4558)
!4637 = !DILocation(line: 847, column: 35, scope: !4558)
!4638 = !DILocation(line: 847, column: 40, scope: !4558)
!4639 = !DILocation(line: 847, column: 78, scope: !4558)
!4640 = !DILocation(line: 847, column: 26, scope: !4558)
!4641 = !DILocation(line: 847, column: 10, scope: !4558)
!4642 = !DILocation(line: 848, column: 37, scope: !4558)
!4643 = !DILocation(line: 848, column: 20, scope: !4558)
!4644 = !DILocation(line: 848, column: 18, scope: !4558)
!4645 = !DILocation(line: 851, column: 30, scope: !4558)
!4646 = !DILocation(line: 851, column: 35, scope: !4558)
!4647 = !DILocation(line: 851, column: 39, scope: !4558)
!4648 = !DILocation(line: 851, column: 68, scope: !4558)
!4649 = !DILocation(line: 851, column: 21, scope: !4558)
!4650 = !DILocation(line: 851, column: 10, scope: !4558)
!4651 = !DILocation(line: 852, column: 29, scope: !4558)
!4652 = !DILocation(line: 852, column: 10, scope: !4558)
!4653 = !DILocation(line: 861, column: 13, scope: !4558)
!4654 = !DILocation(line: 868, column: 16, scope: !4558)
!4655 = !DILocation(line: 868, column: 21, scope: !4558)
!4656 = !DILocation(line: 868, column: 24, scope: !4558)
!4657 = !DILocation(line: 868, column: 4, scope: !4558)
!4658 = !DILocation(line: 868, column: 41, scope: !4558)
!4659 = !DILocation(line: 871, column: 16, scope: !4558)
!4660 = !DILocation(line: 663, column: 30, scope: !1884, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 871, column: 3, scope: !4558)
!4662 = !DILocation(line: 663, column: 41, scope: !1884, inlinedAt: !4661)
!4663 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 666, column: 30, scope: !1884, inlinedAt: !4661)
!4667 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4664)
!4668 = !DILocation(line: 666, column: 16, scope: !1884, inlinedAt: !4661)
!4669 = !DILocation(line: 0, scope: !1884, inlinedAt: !4661)
!4670 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 674, column: 41, scope: !1884, inlinedAt: !4661)
!4674 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4671)
!4675 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4672)
!4676 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !4673)
!4677 = !DILocation(line: 674, column: 21, scope: !1884, inlinedAt: !4661)
!4678 = !DILocation(line: 678, column: 6, scope: !1884, inlinedAt: !4661)
!4679 = !DILocation(line: 678, column: 15, scope: !1884, inlinedAt: !4661)
!4680 = !DILocation(line: 679, column: 22, scope: !1884, inlinedAt: !4661)
!4681 = !DILocation(line: 116, column: 52, scope: !1953, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 679, column: 3, scope: !1884, inlinedAt: !4661)
!4683 = !DILocation(line: 116, column: 76, scope: !1953, inlinedAt: !4682)
!4684 = !DILocation(line: 118, column: 25, scope: !1953, inlinedAt: !4682)
!4685 = !DILocation(line: 85, column: 49, scope: !1961, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 118, column: 2, scope: !1953, inlinedAt: !4682)
!4687 = !DILocation(line: 86, column: 28, scope: !1961, inlinedAt: !4686)
!4688 = !DILocation(line: 87, column: 28, scope: !1961, inlinedAt: !4686)
!4689 = !DILocation(line: 89, column: 13, scope: !1961, inlinedAt: !4686)
!4690 = !DILocation(line: 90, column: 8, scope: !1961, inlinedAt: !4686)
!4691 = !DILocation(line: 90, column: 13, scope: !1961, inlinedAt: !4686)
!4692 = !DILocation(line: 91, column: 8, scope: !1961, inlinedAt: !4686)
!4693 = !DILocation(line: 91, column: 13, scope: !1961, inlinedAt: !4686)
!4694 = !DILocation(line: 92, column: 8, scope: !1961, inlinedAt: !4686)
!4695 = !DILocation(line: 92, column: 13, scope: !1961, inlinedAt: !4686)
!4696 = !DILocation(line: 683, column: 20, scope: !1979, inlinedAt: !4661)
!4697 = !DILocation(line: 683, column: 7, scope: !1979, inlinedAt: !4661)
!4698 = !DILocation(line: 683, column: 7, scope: !1884, inlinedAt: !4661)
!4699 = !DILocation(line: 687, column: 5, scope: !1983, inlinedAt: !4661)
!4700 = !DILocation(line: 688, column: 3, scope: !1983, inlinedAt: !4661)
!4701 = !DILocation(line: 873, column: 10, scope: !4558)
!4702 = !DILocation(line: 874, column: 1, scope: !4558)
!4703 = !DILocation(line: 873, column: 3, scope: !4558)
!4704 = distinct !DISubprogram(name: "nk_fiber_join", scope: !182, file: !182, line: 877, type: !2246, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4705)
!4705 = !{!4706, !4707, !4708}
!4706 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4704, file: !182, line: 877, type: !296)
!4707 = !DILocalVariable(name: "curr_fiber", scope: !4704, file: !182, line: 887, type: !296)
!4708 = !DILocalVariable(name: "wait_q", scope: !4704, file: !182, line: 896, type: !205)
!4709 = !DILocation(line: 877, column: 31, scope: !4704)
!4710 = !DILocation(line: 883, column: 8, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4704, file: !182, line: 883, column: 7)
!4712 = !DILocation(line: 883, column: 7, scope: !4704)
!4713 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 887, column: 28, scope: !4704)
!4717 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4714)
!4718 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4715)
!4719 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4716)
!4720 = !DILocation(line: 887, column: 15, scope: !4704)
!4721 = !DILocation(line: 896, column: 41, scope: !4704)
!4722 = !DILocation(line: 896, column: 21, scope: !4704)
!4723 = !DILocation(line: 897, column: 31, scope: !4704)
!4724 = !DILocation(line: 116, column: 52, scope: !1953, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 897, column: 3, scope: !4704)
!4726 = !DILocation(line: 116, column: 76, scope: !1953, inlinedAt: !4725)
!4727 = !DILocation(line: 118, column: 25, scope: !1953, inlinedAt: !4725)
!4728 = !DILocation(line: 85, column: 49, scope: !1961, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 118, column: 2, scope: !1953, inlinedAt: !4725)
!4730 = !DILocation(line: 86, column: 28, scope: !1961, inlinedAt: !4729)
!4731 = !DILocation(line: 87, column: 28, scope: !1961, inlinedAt: !4729)
!4732 = !DILocation(line: 89, column: 13, scope: !1961, inlinedAt: !4729)
!4733 = !DILocation(line: 90, column: 8, scope: !1961, inlinedAt: !4729)
!4734 = !DILocation(line: 90, column: 13, scope: !1961, inlinedAt: !4729)
!4735 = !DILocation(line: 91, column: 8, scope: !1961, inlinedAt: !4729)
!4736 = !DILocation(line: 91, column: 13, scope: !1961, inlinedAt: !4729)
!4737 = !DILocation(line: 92, column: 8, scope: !1961, inlinedAt: !4729)
!4738 = !DILocation(line: 92, column: 13, scope: !1961, inlinedAt: !4729)
!4739 = !DILocation(line: 898, column: 12, scope: !4704)
!4740 = !DILocation(line: 898, column: 20, scope: !4704)
!4741 = !DILocation(line: 899, column: 15, scope: !4704)
!4742 = !DILocation(line: 899, column: 24, scope: !4704)
!4743 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 98, column: 10, scope: !1736, inlinedAt: !4746)
!4746 = distinct !DILocation(line: 704, column: 7, scope: !3533, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 903, column: 10, scope: !4704)
!4748 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4744)
!4749 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4745)
!4750 = !DILocation(line: 98, column: 30, scope: !1736, inlinedAt: !4746)
!4751 = !DILocation(line: 258, column: 26, scope: !2331, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 704, column: 30, scope: !3533, inlinedAt: !4747)
!4753 = !DILocation(line: 258, column: 26, scope: !2332, inlinedAt: !4752)
!4754 = !DILocation(line: 704, column: 27, scope: !3533, inlinedAt: !4747)
!4755 = !DILocation(line: 704, column: 7, scope: !3534, inlinedAt: !4747)
!4756 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 105, column: 12, scope: !1746, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 122, column: 41, scope: !1769, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 708, column: 22, scope: !3534, inlinedAt: !4747)
!4761 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4757)
!4762 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4758)
!4763 = !DILocation(line: 105, column: 32, scope: !1746, inlinedAt: !4759)
!4764 = !DILocation(line: 122, column: 21, scope: !1769, inlinedAt: !4760)
!4765 = !DILocation(line: 125, column: 15, scope: !1769, inlinedAt: !4760)
!4766 = !DILocation(line: 184, column: 54, scope: !1793, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 126, column: 9, scope: !1776, inlinedAt: !4760)
!4768 = !DILocation(line: 186, column: 15, scope: !1793, inlinedAt: !4767)
!4769 = !DILocation(line: 186, column: 20, scope: !1793, inlinedAt: !4767)
!4770 = !DILocation(line: 126, column: 7, scope: !1769, inlinedAt: !4760)
!4771 = !DILocation(line: 128, column: 25, scope: !1774, inlinedAt: !4760)
!4772 = !DILocation(line: 131, column: 40, scope: !1775, inlinedAt: !4760)
!4773 = !DILocation(line: 151, column: 52, scope: !1805, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 131, column: 5, scope: !1775, inlinedAt: !4760)
!4775 = !DILocation(line: 153, column: 20, scope: !1805, inlinedAt: !4774)
!4776 = !DILocation(line: 153, column: 33, scope: !1805, inlinedAt: !4774)
!4777 = !DILocation(line: 128, column: 50, scope: !1814, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 153, column: 2, scope: !1805, inlinedAt: !4774)
!4779 = !DILocation(line: 128, column: 75, scope: !1814, inlinedAt: !4778)
!4780 = !DILocation(line: 130, column: 8, scope: !1814, inlinedAt: !4778)
!4781 = !DILocation(line: 130, column: 13, scope: !1814, inlinedAt: !4778)
!4782 = !DILocation(line: 131, column: 8, scope: !1814, inlinedAt: !4778)
!4783 = !DILocation(line: 131, column: 13, scope: !1814, inlinedAt: !4778)
!4784 = !DILocation(line: 73, column: 53, scope: !1827, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 154, column: 2, scope: !1805, inlinedAt: !4774)
!4786 = !DILocation(line: 75, column: 13, scope: !1827, inlinedAt: !4785)
!4787 = !DILocation(line: 76, column: 13, scope: !1827, inlinedAt: !4785)
!4788 = !DILocation(line: 708, column: 15, scope: !3534, inlinedAt: !4747)
!4789 = !DILocation(line: 718, column: 12, scope: !3581, inlinedAt: !4747)
!4790 = !DILocation(line: 718, column: 7, scope: !3534, inlinedAt: !4747)
!4791 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 85, column: 10, scope: !1718, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 719, column: 9, scope: !3587, inlinedAt: !4747)
!4795 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4792)
!4796 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4793)
!4797 = !DILocation(line: 85, column: 30, scope: !1718, inlinedAt: !4794)
!4798 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 719, column: 31, scope: !3587, inlinedAt: !4747)
!4802 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4799)
!4803 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4800)
!4804 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4801)
!4805 = !DILocation(line: 719, column: 28, scope: !3587, inlinedAt: !4747)
!4806 = !DILocation(line: 719, column: 9, scope: !3588, inlinedAt: !4747)
!4807 = !DILocation(line: 129, column: 25, scope: !1710, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 78, column: 10, scope: !1703, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 92, column: 10, scope: !1728, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 723, column: 16, scope: !3605, inlinedAt: !4747)
!4811 = !DILocation(line: 129, column: 12, scope: !1710, inlinedAt: !4808)
!4812 = !DILocation(line: 78, column: 21, scope: !1703, inlinedAt: !4809)
!4813 = !DILocation(line: 92, column: 30, scope: !1728, inlinedAt: !4810)
!4814 = !DILocation(line: 725, column: 3, scope: !3588, inlinedAt: !4747)
!4815 = !DILocation(line: 0, scope: !3534, inlinedAt: !4747)
!4816 = !DILocation(line: 727, column: 10, scope: !3534, inlinedAt: !4747)
!4817 = !DILocation(line: 727, column: 3, scope: !3534, inlinedAt: !4747)
!4818 = !DILocation(line: 0, scope: !4704)
!4819 = !DILocation(line: 904, column: 1, scope: !4704)
