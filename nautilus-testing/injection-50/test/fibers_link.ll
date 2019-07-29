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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !559
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !566, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !566
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !577
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !578
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !578
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !579
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !580
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !564, metadata !DIExpression(DW_OP_deref)) #9, !dbg !581
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !582
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !583
  ret i32 0, !dbg !584
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !585 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !587, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i8** undef, metadata !588, metadata !DIExpression()), !dbg !594
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !595
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !596
  call void @llvm.dbg.value(metadata i32 0, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 0, metadata !589, metadata !DIExpression()), !dbg !597
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !600
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !601
  call void @llvm.dbg.value(metadata i32 1, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 1, metadata !589, metadata !DIExpression()), !dbg !597
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !600
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !601
  call void @llvm.dbg.value(metadata i32 2, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 2, metadata !589, metadata !DIExpression()), !dbg !597
  %8 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !600
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !601
  call void @llvm.dbg.value(metadata i32 3, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 3, metadata !589, metadata !DIExpression()), !dbg !597
  %10 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %10, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !600
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !601
  call void @llvm.dbg.value(metadata i32 4, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 4, metadata !589, metadata !DIExpression()), !dbg !597
  %12 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !598
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !590, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !600
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !601
  call void @llvm.dbg.value(metadata i32 5, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 5, metadata !589, metadata !DIExpression()), !dbg !597
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !602
  ret void, !dbg !603
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !604 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !606, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata i8* %1, metadata !607, metadata !DIExpression()), !dbg !609
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !610
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !615, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !615
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !617
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !618
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !618
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !619
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !620
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !613, metadata !DIExpression(DW_OP_deref)) #9, !dbg !621
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !623
  ret i32 0, !dbg !624
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !625 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !627, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8** undef, metadata !628, metadata !DIExpression()), !dbg !637
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !638
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !639
  call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !640
  %5 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !641
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %5, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !631, metadata !DIExpression()), !dbg !643
  %6 = icmp eq %struct.nk_fiber* %5, null, !dbg !644
  br i1 %6, label %11, label %7, !dbg !645

; <label>:7:                                      ; preds = %26, %22, %18, %11, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 %8, metadata !629, metadata !DIExpression()), !dbg !640
  %9 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !646
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !646
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !633, metadata !DIExpression(DW_OP_deref)), !dbg !647
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #10, !dbg !648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !649
  br label %15

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 1, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 1, metadata !629, metadata !DIExpression()), !dbg !640
  %13 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !641
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !631, metadata !DIExpression()), !dbg !643
  %14 = icmp eq %struct.nk_fiber* %13, null, !dbg !644
  br i1 %14, label %18, label %7, !dbg !645

; <label>:15:                                     ; preds = %30, %7
  %16 = phi i32 [ %8, %7 ], [ 5, %30 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !629, metadata !DIExpression()), !dbg !640
  %17 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %16) #10, !dbg !651
  ret void, !dbg !652

; <label>:18:                                     ; preds = %11
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 2, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 2, metadata !629, metadata !DIExpression()), !dbg !640
  %20 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !641
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !631, metadata !DIExpression()), !dbg !643
  %21 = icmp eq %struct.nk_fiber* %20, null, !dbg !644
  br i1 %21, label %22, label %7, !dbg !645

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 3, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 3, metadata !629, metadata !DIExpression()), !dbg !640
  %24 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !641
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !631, metadata !DIExpression()), !dbg !643
  %25 = icmp eq %struct.nk_fiber* %24, null, !dbg !644
  br i1 %25, label %26, label %7, !dbg !645

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 4, metadata !629, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 4, metadata !629, metadata !DIExpression()), !dbg !640
  %28 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !641
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %28, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !631, metadata !DIExpression()), !dbg !643
  %29 = icmp eq %struct.nk_fiber* %28, null, !dbg !644
  br i1 %29, label %30, label %7, !dbg !645

; <label>:30:                                     ; preds = %26
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !650
  call void @llvm.dbg.value(metadata i32 5, metadata !629, metadata !DIExpression()), !dbg !640
  br label %15, !dbg !651
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !653 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i8** undef, metadata !656, metadata !DIExpression()), !dbg !658
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !659
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !660
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !663 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8* %1, metadata !666, metadata !DIExpression()), !dbg !668
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !669
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !674, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !674
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !676
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !677
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !677
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !678
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !679
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !672, metadata !DIExpression(DW_OP_deref)) #9, !dbg !680
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !682
  ret i32 0, !dbg !683
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !684 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !686, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8** undef, metadata !687, metadata !DIExpression()), !dbg !692
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !693
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !694
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !695
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !696
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !689, metadata !DIExpression()), !dbg !697
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !698
  br i1 %5, label %8, label %6, !dbg !700

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #10, !dbg !701
  br label %8, !dbg !703

; <label>:8:                                      ; preds = %2, %6
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !690, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 0, metadata !688, metadata !DIExpression()), !dbg !695
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 0, %struct.nk_fiber* null) #10, !dbg !705
  call void @llvm.dbg.value(metadata i32 1, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 1, metadata !688, metadata !DIExpression()), !dbg !695
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !705
  call void @llvm.dbg.value(metadata i32 2, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 2, metadata !688, metadata !DIExpression()), !dbg !695
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !705
  call void @llvm.dbg.value(metadata i32 3, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 3, metadata !688, metadata !DIExpression()), !dbg !695
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !705
  call void @llvm.dbg.value(metadata i32 4, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 4, metadata !688, metadata !DIExpression()), !dbg !695
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !705
  call void @llvm.dbg.value(metadata i32 5, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 5, metadata !688, metadata !DIExpression()), !dbg !695
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #10, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !709 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !711, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i8* %1, metadata !712, metadata !DIExpression()), !dbg !714
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !715
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !715
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !720, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !720
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !722
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !723
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !723
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !724
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !725
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !718, metadata !DIExpression(DW_OP_deref)) #9, !dbg !726
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !728
  ret i32 0, !dbg !729
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !730 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !732, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i8** undef, metadata !733, metadata !DIExpression()), !dbg !737
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !738
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !739
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !740
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !741
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !735, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 0, metadata !734, metadata !DIExpression()), !dbg !740
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 1, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 1, metadata !734, metadata !DIExpression()), !dbg !740
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 2, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 2, metadata !734, metadata !DIExpression()), !dbg !740
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 3, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 3, metadata !734, metadata !DIExpression()), !dbg !740
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 4, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 4, metadata !734, metadata !DIExpression()), !dbg !740
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #10, !dbg !743
  call void @llvm.dbg.value(metadata i32 5, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 5, metadata !734, metadata !DIExpression()), !dbg !740
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !747 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !749, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i8* %1, metadata !750, metadata !DIExpression()), !dbg !752
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !753
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !758, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !758
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !760
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !761
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !761
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !762
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !763
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !756, metadata !DIExpression(DW_OP_deref)) #9, !dbg !764
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !766
  ret i32 0, !dbg !767
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !768 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !770, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8** undef, metadata !771, metadata !DIExpression()), !dbg !776
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !777
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !778
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !779
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !772, metadata !DIExpression()), !dbg !779
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !781
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !782
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !783
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !784
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !773, metadata !DIExpression()), !dbg !782
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #10, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !786
  call void @llvm.dbg.value(metadata i32 1, metadata !772, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 1, metadata !772, metadata !DIExpression()), !dbg !779
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !781
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !782
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !783
  %12 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !784
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %12, metadata !773, metadata !DIExpression()), !dbg !782
  %13 = call i32 @nk_fiber_join(%struct.nk_fiber* %12) #10, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !786
  call void @llvm.dbg.value(metadata i32 2, metadata !772, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 2, metadata !772, metadata !DIExpression()), !dbg !779
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !781
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !782
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !783
  %16 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !784
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !773, metadata !DIExpression()), !dbg !782
  %17 = call i32 @nk_fiber_join(%struct.nk_fiber* %16) #10, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !786
  call void @llvm.dbg.value(metadata i32 3, metadata !772, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 3, metadata !772, metadata !DIExpression()), !dbg !779
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !787
  ret void, !dbg !788
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !789 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !791, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8** undef, metadata !792, metadata !DIExpression()), !dbg !795
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !796
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !797
  call void @llvm.dbg.value(metadata i32 0, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !793, metadata !DIExpression()), !dbg !798
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 1, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 1, metadata !793, metadata !DIExpression()), !dbg !798
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 2, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 2, metadata !793, metadata !DIExpression()), !dbg !798
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 3, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 3, metadata !793, metadata !DIExpression()), !dbg !798
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 4, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 4, metadata !793, metadata !DIExpression()), !dbg !798
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 5, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 5, metadata !793, metadata !DIExpression()), !dbg !798
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 6, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 6, metadata !793, metadata !DIExpression()), !dbg !798
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 7, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 7, metadata !793, metadata !DIExpression()), !dbg !798
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 8, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 8, metadata !793, metadata !DIExpression()), !dbg !798
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 9, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 9, metadata !793, metadata !DIExpression()), !dbg !798
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !799
  call void @llvm.dbg.value(metadata i32 10, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 10, metadata !793, metadata !DIExpression()), !dbg !798
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !801
  ret void, !dbg !802
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* %1, metadata !806, metadata !DIExpression()), !dbg !808
  %3 = tail call i32 @test_yield_to() #11, !dbg !809
  ret i32 0, !dbg !810
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !811 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !817
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !818
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !818
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !819
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !820
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !821, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !821
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !823
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !824
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !824
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !825
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !826
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !816, metadata !DIExpression(DW_OP_deref)), !dbg !827
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !828
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !813, metadata !DIExpression(DW_OP_deref)), !dbg !829
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #10, !dbg !830
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !815, metadata !DIExpression(DW_OP_deref)), !dbg !831
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #10, !dbg !832
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !814, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #10, !dbg !834
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !835
  %18 = load i64, i64* %17, align 8, !dbg !835
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !814, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !836
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !813, metadata !DIExpression()), !dbg !829
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !837
  %21 = bitcast i8** %20 to i64*, !dbg !838
  store i64 %18, i64* %21, align 8, !dbg !838
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !839
  %23 = load i64, i64* %22, align 8, !dbg !839
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !815, metadata !DIExpression(DW_OP_deref)), !dbg !831
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !840
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !814, metadata !DIExpression()), !dbg !833
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !841
  %26 = bitcast i8** %25 to i64*, !dbg !842
  store i64 %23, i64* %26, align 8, !dbg !842
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !843
  %28 = load i64, i64* %27, align 8, !dbg !843
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !816, metadata !DIExpression(DW_OP_deref)), !dbg !827
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !844
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !815, metadata !DIExpression()), !dbg !831
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !845
  %31 = bitcast i8** %30 to i64*, !dbg !846
  store i64 %28, i64* %31, align 8, !dbg !846
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !847
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !813, metadata !DIExpression(DW_OP_deref)), !dbg !829
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !848
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !816, metadata !DIExpression()), !dbg !827
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !849
  %35 = bitcast i8** %34 to i64*, !dbg !850
  store i64 %32, i64* %35, align 8, !dbg !850
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !816, metadata !DIExpression()), !dbg !827
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #10, !dbg !851
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !852
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !813, metadata !DIExpression()), !dbg !829
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #10, !dbg !853
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !854
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !815, metadata !DIExpression()), !dbg !831
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #10, !dbg !855
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !856
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !814, metadata !DIExpression()), !dbg !833
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #10, !dbg !857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !858
  ret i32 0, !dbg !859
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !860 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !862, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i8** undef, metadata !863, metadata !DIExpression()), !dbg !867
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !868
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !869
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !870
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !871
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !865, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 0, metadata !864, metadata !DIExpression()), !dbg !870
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !873
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 1, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 1, metadata !864, metadata !DIExpression()), !dbg !870
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !873
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 2, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 2, metadata !864, metadata !DIExpression()), !dbg !870
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !873
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 3, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 3, metadata !864, metadata !DIExpression()), !dbg !870
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !873
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 4, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 4, metadata !864, metadata !DIExpression()), !dbg !870
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !873
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !875
  call void @llvm.dbg.value(metadata i32 5, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 5, metadata !864, metadata !DIExpression()), !dbg !870
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !878 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !880, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8** undef, metadata !881, metadata !DIExpression()), !dbg !885
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !886
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !887
  call void @llvm.dbg.value(metadata i32 0, metadata !882, metadata !DIExpression()), !dbg !888
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !889
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !883, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata i32 0, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 0, metadata !882, metadata !DIExpression()), !dbg !888
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !891
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 1, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 1, metadata !882, metadata !DIExpression()), !dbg !888
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !891
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 2, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 2, metadata !882, metadata !DIExpression()), !dbg !888
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !891
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 3, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 3, metadata !882, metadata !DIExpression()), !dbg !888
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !891
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 4, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 4, metadata !882, metadata !DIExpression()), !dbg !888
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !891
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !893
  call void @llvm.dbg.value(metadata i32 5, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 5, metadata !882, metadata !DIExpression()), !dbg !888
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !894
  ret void, !dbg !895
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !898, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8** undef, metadata !899, metadata !DIExpression()), !dbg !903
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !904
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !905
  call void @llvm.dbg.value(metadata i32 0, metadata !900, metadata !DIExpression()), !dbg !906
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !907
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !901, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 0, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 0, metadata !900, metadata !DIExpression()), !dbg !906
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !909
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !911
  call void @llvm.dbg.value(metadata i32 1, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 1, metadata !900, metadata !DIExpression()), !dbg !906
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !909
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !911
  call void @llvm.dbg.value(metadata i32 2, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 2, metadata !900, metadata !DIExpression()), !dbg !906
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !909
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !911
  call void @llvm.dbg.value(metadata i32 3, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 3, metadata !900, metadata !DIExpression()), !dbg !906
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !909
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !911
  call void @llvm.dbg.value(metadata i32 4, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 4, metadata !900, metadata !DIExpression()), !dbg !906
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !909
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !911
  call void @llvm.dbg.value(metadata i32 5, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 5, metadata !900, metadata !DIExpression()), !dbg !906
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !912
  ret void, !dbg !913
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !916, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8** undef, metadata !917, metadata !DIExpression()), !dbg !921
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !922
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !923
  call void @llvm.dbg.value(metadata i32 0, metadata !918, metadata !DIExpression()), !dbg !924
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !925
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !919, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i32 0, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 0, metadata !918, metadata !DIExpression()), !dbg !924
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* %0) #10, !dbg !927
  %6 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 1, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 1, metadata !918, metadata !DIExpression()), !dbg !924
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %0) #10, !dbg !927
  %8 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 2, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 2, metadata !918, metadata !DIExpression()), !dbg !924
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 2, i8* %0) #10, !dbg !927
  %10 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 3, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 3, metadata !918, metadata !DIExpression()), !dbg !924
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 3, i8* %0) #10, !dbg !927
  %12 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 4, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 4, metadata !918, metadata !DIExpression()), !dbg !924
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 4, i8* %0) #10, !dbg !927
  %14 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !929
  call void @llvm.dbg.value(metadata i32 5, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 5, metadata !918, metadata !DIExpression()), !dbg !924
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !930
  ret void, !dbg !931
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !932 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !934, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %1, metadata !935, metadata !DIExpression()), !dbg !937
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !938
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !944
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !945, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !945
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !947
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !948
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !948
  %10 = load i64, i64* %9, align 8, !dbg !948
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !949
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !941, metadata !DIExpression(DW_OP_deref)) #9, !dbg !950
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !951
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !942, metadata !DIExpression(DW_OP_deref)) #9, !dbg !952
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !954
  ret i32 0, !dbg !955
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !956 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !958, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8** undef, metadata !959, metadata !DIExpression()), !dbg !963
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !964
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !965
  call void @llvm.dbg.value(metadata i32 0, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 0, metadata !960, metadata !DIExpression()), !dbg !966
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 0) #10, !dbg !967
  call void @llvm.dbg.value(metadata i32 1, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 1, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 2, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 2, metadata !960, metadata !DIExpression()), !dbg !966
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #10, !dbg !967
  call void @llvm.dbg.value(metadata i32 3, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 3, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 4, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 4, metadata !960, metadata !DIExpression()), !dbg !966
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #10, !dbg !967
  call void @llvm.dbg.value(metadata i32 5, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 5, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 6, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 6, metadata !960, metadata !DIExpression()), !dbg !966
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #10, !dbg !967
  call void @llvm.dbg.value(metadata i32 7, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 7, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 8, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 8, metadata !960, metadata !DIExpression()), !dbg !966
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #10, !dbg !967
  call void @llvm.dbg.value(metadata i32 9, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 9, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 10, metadata !960, metadata !DIExpression()), !dbg !966
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !972
  ret void, !dbg !973
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !974 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !976, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata i8** undef, metadata !977, metadata !DIExpression()), !dbg !981
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !982
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !983
  call void @llvm.dbg.value(metadata i32 0, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 1, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 1, metadata !978, metadata !DIExpression()), !dbg !984
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #10, !dbg !985
  call void @llvm.dbg.value(metadata i32 2, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 2, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 3, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 3, metadata !978, metadata !DIExpression()), !dbg !984
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #10, !dbg !985
  call void @llvm.dbg.value(metadata i32 4, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 4, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 5, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 5, metadata !978, metadata !DIExpression()), !dbg !984
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !985
  call void @llvm.dbg.value(metadata i32 6, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 6, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 7, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 7, metadata !978, metadata !DIExpression()), !dbg !984
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #10, !dbg !985
  call void @llvm.dbg.value(metadata i32 8, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 8, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 9, metadata !978, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i32 9, metadata !978, metadata !DIExpression()), !dbg !984
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #10, !dbg !985
  call void @llvm.dbg.value(metadata i32 10, metadata !978, metadata !DIExpression()), !dbg !984
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !990
  ret void, !dbg !991
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !992 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !994, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8* %1, metadata !995, metadata !DIExpression()), !dbg !997
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !998
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !998
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1003, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1005
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1006
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1006
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1007
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !1008
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1001, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1009
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1010
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1011
  ret i32 0, !dbg !1012
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1013 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1015, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8** undef, metadata !1016, metadata !DIExpression()), !dbg !1021
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1022
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1023
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()), !dbg !1024
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()), !dbg !1024
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1018, metadata !DIExpression(DW_OP_deref)), !dbg !1027
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1028
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1029
  call void @llvm.dbg.value(metadata i32 1, metadata !1017, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 1, metadata !1017, metadata !DIExpression()), !dbg !1024
  %8 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1018, metadata !DIExpression(DW_OP_deref)), !dbg !1027
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1028
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1029
  call void @llvm.dbg.value(metadata i32 2, metadata !1017, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 2, metadata !1017, metadata !DIExpression()), !dbg !1024
  %10 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1018, metadata !DIExpression(DW_OP_deref)), !dbg !1027
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1028
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1029
  call void @llvm.dbg.value(metadata i32 3, metadata !1017, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 3, metadata !1017, metadata !DIExpression()), !dbg !1024
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1032 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1034, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8** undef, metadata !1035, metadata !DIExpression()), !dbg !1038
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1039
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i32 0, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 0, metadata !1036, metadata !DIExpression()), !dbg !1041
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 1, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 1, metadata !1036, metadata !DIExpression()), !dbg !1041
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 2, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 2, metadata !1036, metadata !DIExpression()), !dbg !1041
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 3, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 3, metadata !1036, metadata !DIExpression()), !dbg !1041
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 4, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 4, metadata !1036, metadata !DIExpression()), !dbg !1041
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 5, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 5, metadata !1036, metadata !DIExpression()), !dbg !1041
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 6, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 6, metadata !1036, metadata !DIExpression()), !dbg !1041
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 7, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 7, metadata !1036, metadata !DIExpression()), !dbg !1041
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 8, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 8, metadata !1036, metadata !DIExpression()), !dbg !1041
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 9, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 9, metadata !1036, metadata !DIExpression()), !dbg !1041
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 10, metadata !1036, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 10, metadata !1036, metadata !DIExpression()), !dbg !1041
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !1044
  ret void, !dbg !1045
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1046 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1048, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8* %1, metadata !1049, metadata !DIExpression()), !dbg !1051
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1052
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1052
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1058
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1058
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1059, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1061
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1062
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1062
  %10 = load i64, i64* %9, align 8, !dbg !1062
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1063
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1055, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1064
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1065
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1056, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1066
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1067
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1068
  ret i32 0, !dbg !1069
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1070 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1072, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8** undef, metadata !1073, metadata !DIExpression()), !dbg !1078
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1079
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1080
  call void @llvm.dbg.value(metadata i32 0, metadata !1074, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 0, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1083
  br label %4, !dbg !1084

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %6, metadata !1074, metadata !DIExpression()), !dbg !1081
  %7 = icmp eq i32 %6, 2, !dbg !1085
  br i1 %7, label %8, label %16, !dbg !1088

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1089, !srcloc !1099
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !1089
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %10, metadata !1095, metadata !DIExpression()) #9, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %11, metadata !1096, metadata !DIExpression()) #9, !dbg !1101
  %12 = zext i32 %10 to i64, !dbg !1102
  %13 = zext i32 %11 to i64, !dbg !1103
  %14 = shl nuw i64 %13, 32, !dbg !1104
  %15 = or i64 %14, %12, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %15, metadata !1075, metadata !DIExpression()), !dbg !1082
  br label %16, !dbg !1106

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !1107
  %18 = add nuw nsw i32 %6, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %18, metadata !1074, metadata !DIExpression()), !dbg !1081
  %19 = icmp eq i32 %18, 100000, !dbg !1109
  br i1 %19, label %20, label %4, !dbg !1084, !llvm.loop !1110

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 100000, metadata !1074, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %17, metadata !1075, metadata !DIExpression()), !dbg !1082
  %21 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1112, !srcloc !1099
  %22 = extractvalue { i32, i32 } %21, 0, !dbg !1112
  %23 = extractvalue { i32, i32 } %21, 1, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %22, metadata !1095, metadata !DIExpression()) #9, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %23, metadata !1096, metadata !DIExpression()) #9, !dbg !1115
  %24 = zext i32 %22 to i64, !dbg !1116
  %25 = zext i32 %23 to i64, !dbg !1117
  %26 = shl nuw i64 %25, 32, !dbg !1118
  %27 = or i64 %26, %24, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %27, metadata !1076, metadata !DIExpression()), !dbg !1083
  %28 = sub i64 %27, %17, !dbg !1120
  %29 = udiv i64 %28, 100000, !dbg !1121
  %30 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %28, i64 %29) #10, !dbg !1122
  ret void, !dbg !1123
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1124 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1126, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8** undef, metadata !1127, metadata !DIExpression()), !dbg !1130
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1131
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1128, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 undef, metadata !1128, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 100000, metadata !1128, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 100000, metadata !1128, metadata !DIExpression()), !dbg !1133
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #10, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1136 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1138, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %1, metadata !1139, metadata !DIExpression()), !dbg !1141
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1142
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1142
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1149
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1149
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1150
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1151, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !1153
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1154
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !1154
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !1155
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !1156
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1145, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1157
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1146, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1159
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1160
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !1147, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1161
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #10, !dbg !1162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1163
  ret i32 0, !dbg !1164
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1165 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1167, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8** undef, metadata !1168, metadata !DIExpression()), !dbg !1172
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1173
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1174
  call void @llvm.dbg.value(metadata i32 0, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 0, metadata !1169, metadata !DIExpression()), !dbg !1175
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #10, !dbg !1176
  %6 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 1, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 1, metadata !1169, metadata !DIExpression()), !dbg !1175
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #10, !dbg !1176
  %8 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 2, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, metadata !1169, metadata !DIExpression()), !dbg !1175
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #10, !dbg !1176
  %10 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 3, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 3, metadata !1169, metadata !DIExpression()), !dbg !1175
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #10, !dbg !1176
  %12 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 4, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 4, metadata !1169, metadata !DIExpression()), !dbg !1175
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #10, !dbg !1176
  %14 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 5, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 5, metadata !1169, metadata !DIExpression()), !dbg !1175
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !1179
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1170, metadata !DIExpression(DW_OP_deref)), !dbg !1181
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1183
  ret void, !dbg !1183
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1184 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1186, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8** undef, metadata !1187, metadata !DIExpression()), !dbg !1191
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1192
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1193
  call void @llvm.dbg.value(metadata i32 0, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 0, metadata !1188, metadata !DIExpression()), !dbg !1194
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 1, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 1, metadata !1188, metadata !DIExpression()), !dbg !1194
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 2, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 2, metadata !1188, metadata !DIExpression()), !dbg !1194
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 3, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 3, metadata !1188, metadata !DIExpression()), !dbg !1194
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 4, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 4, metadata !1188, metadata !DIExpression()), !dbg !1194
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 5, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 5, metadata !1188, metadata !DIExpression()), !dbg !1194
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 6, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 6, metadata !1188, metadata !DIExpression()), !dbg !1194
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 7, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 7, metadata !1188, metadata !DIExpression()), !dbg !1194
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 8, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 8, metadata !1188, metadata !DIExpression()), !dbg !1194
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 9, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 9, metadata !1188, metadata !DIExpression()), !dbg !1194
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 10, metadata !1188, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 10, metadata !1188, metadata !DIExpression()), !dbg !1194
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #10, !dbg !1197
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1189, metadata !DIExpression(DW_OP_deref)), !dbg !1199
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1201
  ret void, !dbg !1201
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1202 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1204, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8** undef, metadata !1205, metadata !DIExpression()), !dbg !1209
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1210
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1211
  call void @llvm.dbg.value(metadata i32 0, metadata !1206, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i32 0, metadata !1206, metadata !DIExpression()), !dbg !1212
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 1, metadata !1206, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i32 1, metadata !1206, metadata !DIExpression()), !dbg !1212
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 2, metadata !1206, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i32 2, metadata !1206, metadata !DIExpression()), !dbg !1212
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #10, !dbg !1215
  %8 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1216
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1207, metadata !DIExpression(DW_OP_deref)), !dbg !1217
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1219
  ret void, !dbg !1219
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1220 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1222, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8** undef, metadata !1223, metadata !DIExpression()), !dbg !1226
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1227
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i32 0, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 0, metadata !1224, metadata !DIExpression()), !dbg !1229
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 1, metadata !1224, metadata !DIExpression()), !dbg !1229
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 2, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 2, metadata !1224, metadata !DIExpression()), !dbg !1229
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 3, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 3, metadata !1224, metadata !DIExpression()), !dbg !1229
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 4, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 4, metadata !1224, metadata !DIExpression()), !dbg !1229
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 5, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 5, metadata !1224, metadata !DIExpression()), !dbg !1229
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 6, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 6, metadata !1224, metadata !DIExpression()), !dbg !1229
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 7, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 7, metadata !1224, metadata !DIExpression()), !dbg !1229
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 8, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 8, metadata !1224, metadata !DIExpression()), !dbg !1229
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 9, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 9, metadata !1224, metadata !DIExpression()), !dbg !1229
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i32 10, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 10, metadata !1224, metadata !DIExpression()), !dbg !1229
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #10, !dbg !1232
  ret void, !dbg !1233
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !1234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1238, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 0, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()), !dbg !1243
  %2 = icmp sgt i32 %0, 0, !dbg !1244
  br i1 %2, label %3, label %8, !dbg !1247

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1239, metadata !DIExpression()), !dbg !1243
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #10, !dbg !1248
  %6 = add nuw nsw i32 %4, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %4, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %6, metadata !1239, metadata !DIExpression()), !dbg !1243
  %7 = icmp eq i32 %6, %0, !dbg !1244
  br i1 %7, label %8, label %3, !dbg !1247, !llvm.loop !1251

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !1253
  call void @llvm.dbg.value(metadata i32 %9, metadata !1240, metadata !DIExpression()), !dbg !1242
  ret i32 %9, !dbg !1254
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !939 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1255
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1256
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1257, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1257
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1259
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1260
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1260
  %8 = load i64, i64* %7, align 8, !dbg !1260
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !941, metadata !DIExpression(DW_OP_deref)), !dbg !1262
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1263
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !942, metadata !DIExpression(DW_OP_deref)), !dbg !1264
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1266
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1266
  ret i32 0, !dbg !1267
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !999 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1268
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1268
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1269, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1271
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1272
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1272
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1273
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1001, metadata !DIExpression(DW_OP_deref)), !dbg !1275
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1277
  ret i32 0, !dbg !1278
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !1143 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1279
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1280
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1281
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1281
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1282, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1284
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1285
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !1285
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !1286
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #10, !dbg !1287
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1145, metadata !DIExpression(DW_OP_deref)), !dbg !1288
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1146, metadata !DIExpression(DW_OP_deref)), !dbg !1290
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1291
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1147, metadata !DIExpression(DW_OP_deref)), !dbg !1292
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1294
  ret i32 0, !dbg !1295
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !754 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1296
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1297, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1297
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1299
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1300
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1300
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1301
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1302
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !756, metadata !DIExpression(DW_OP_deref)), !dbg !1303
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1304
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1305
  ret i32 0, !dbg !1306
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !716 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1307
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1308, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1310
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1311
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1311
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1312
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !718, metadata !DIExpression(DW_OP_deref)), !dbg !1314
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1315
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1316
  ret i32 0, !dbg !1317
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !670 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1318
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1318
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1319, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1319
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1321
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1322
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1322
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1323
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !672, metadata !DIExpression(DW_OP_deref)), !dbg !1325
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1326
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1327
  ret i32 0, !dbg !1328
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !611 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1329
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1329
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1330, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1332
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1333
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1333
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1334
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !613, metadata !DIExpression(DW_OP_deref)), !dbg !1336
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1337
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1338
  ret i32 0, !dbg !1339
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !560 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1340
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1341, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1343
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1344
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1344
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1345
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1346
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !564, metadata !DIExpression(DW_OP_deref)), !dbg !1347
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1349
  ret i32 0, !dbg !1350
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !1053 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1351
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1352
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1352
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1353, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1355
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1356
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1356
  %8 = load i64, i64* %7, align 8, !dbg !1356
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1357
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1055, metadata !DIExpression(DW_OP_deref)), !dbg !1358
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1359
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1056, metadata !DIExpression(DW_OP_deref)), !dbg !1360
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1362
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1362
  ret i32 0, !dbg !1363
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1364 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1370
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1376
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1377
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1377
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1378
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1379 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1382
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1385
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1386
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1386
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1387
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1387
  ret %struct.nk_fiber* %6, !dbg !1388
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1389 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1390
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1393
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1394
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1394
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1395
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1395
  ret %struct.nk_fiber* %6, !dbg !1396
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1397 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1400
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1403
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1404
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1404
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1405
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1405
  ret %struct.nk_thread* %6, !dbg !1406
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1407 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1410
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1413
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1414
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1414
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1415
  ret %struct.list_head* %5, !dbg !1416
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !1417 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i64 %1, metadata !1422, metadata !DIExpression()), !dbg !1424
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1425
  %4 = load i64, i64* %3, align 8, !dbg !1426
  %5 = add i64 %4, -8, !dbg !1426
  store i64 %5, i64* %3, align 8, !dbg !1426
  %6 = inttoptr i64 %5 to i64*, !dbg !1427
  store i64 %1, i64* %6, align 8, !dbg !1428
  ret void, !dbg !1429
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1430 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1444
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1448
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1449
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1449
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1432, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1433, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1453, metadata !DIExpression()), !dbg !1458
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1460
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1460
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1461
  br i1 %8, label %20, label %9, !dbg !1462

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1434, metadata !DIExpression()), !dbg !1463
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1463
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1463
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1434, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1433, metadata !DIExpression()), !dbg !1452
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1464
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1465, metadata !DIExpression()), !dbg !1470
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1472
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1472
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1474, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1479, metadata !DIExpression()), !dbg !1482
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1483
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1484
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1485
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1486
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1487, metadata !DIExpression()), !dbg !1490
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1492
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1492
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1493
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1493
  br label %20, !dbg !1494

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1495
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1433, metadata !DIExpression()), !dbg !1452
  ret %struct.nk_fiber* %21, !dbg !1496
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1497 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1501, metadata !DIExpression()), !dbg !1512
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1513
  store i32 4, i32* %3, align 4, !dbg !1514
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1502, metadata !DIExpression()), !dbg !1515
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1516
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1504, metadata !DIExpression()), !dbg !1517
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1518
  %6 = load i32, i32* %5, align 8, !dbg !1518
  %7 = icmp sgt i32 %6, 0, !dbg !1519
  br i1 %7, label %8, label %66, !dbg !1520

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1520

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1505, metadata !DIExpression()), !dbg !1521
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1522
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1522
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1521
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1521
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1505, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1503, metadata !DIExpression()), !dbg !1523
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1465, metadata !DIExpression()), !dbg !1525
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1527
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1527
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1528
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1528
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1474, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1479, metadata !DIExpression()), !dbg !1531
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1532
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1533
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1534
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1535
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1487, metadata !DIExpression()), !dbg !1536
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1538
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1539
  %24 = load i32, i32* %5, align 8, !dbg !1540
  %25 = add i32 %24, -1, !dbg !1540
  store i32 %25, i32* %5, align 8, !dbg !1540
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1541
  br i1 %26, label %63, label %27, !dbg !1543

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1544, metadata !DIExpression()) #9, !dbg !1552
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()) #9, !dbg !1555
  %28 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %28, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1560
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1561, !srcloc !1581
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1568, metadata !DIExpression()) #9, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1567, metadata !DIExpression()) #9, !dbg !1582
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1566, metadata !DIExpression()) #9, !dbg !1583
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1584
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #10, !dbg !1589
  %30 = load i64, i64* %2, align 8, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %30, metadata !1587, metadata !DIExpression()) #9, !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1592
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1593
  %32 = load i32, i32* %31, align 8, !dbg !1593
  %33 = zext i32 %32 to i64, !dbg !1594
  %34 = urem i64 %30, %33, !dbg !1595
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1596, !srcloc !1597
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1576, metadata !DIExpression()) #9, !dbg !1596
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1574, metadata !DIExpression()) #9, !dbg !1598
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1573, metadata !DIExpression()) #9, !dbg !1599
  %36 = shl nuw i64 %34, 32, !dbg !1600
  %37 = ashr exact i64 %36, 32, !dbg !1600
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1600
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1560
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1601
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1601
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1601
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1550, metadata !DIExpression()) #9, !dbg !1560
  %44 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1602
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1606
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1607
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1607
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1608
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1551, metadata !DIExpression()) #9, !dbg !1609
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1610
  store i32 1, i32* %49, align 4, !dbg !1611
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1613, metadata !DIExpression()) #9, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1616, metadata !DIExpression()) #9, !dbg !1619
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1620
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1621, metadata !DIExpression()) #9, !dbg !1628
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1626, metadata !DIExpression()) #9, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1627, metadata !DIExpression()) #9, !dbg !1631
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1632
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1633
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1634
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1635
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1636
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1637
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1638
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1639
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1639
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1641
  br i1 %58, label %61, label %59, !dbg !1642

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #10, !dbg !1643
  br label %61, !dbg !1645

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1518
  br label %63, !dbg !1518

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1518
  %65 = icmp sgt i32 %64, 0, !dbg !1519
  br i1 %65, label %11, label %66, !dbg !1520, !llvm.loop !1646

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1648
  store i8 1, i8* %67, align 8, !dbg !1649
  %68 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1650
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1655
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1656
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1656
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1432, metadata !DIExpression()) #9, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1433, metadata !DIExpression()) #9, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1453, metadata !DIExpression()) #9, !dbg !1660
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1662
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1662
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1663
  br i1 %75, label %88, label %76, !dbg !1664

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1434, metadata !DIExpression()) #9, !dbg !1665
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1665
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1434, metadata !DIExpression()) #9, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1433, metadata !DIExpression()) #9, !dbg !1659
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1465, metadata !DIExpression()) #9, !dbg !1667
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1669
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1669
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1474, metadata !DIExpression()) #9, !dbg !1671
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1479, metadata !DIExpression()) #9, !dbg !1673
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1674
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1675
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1676
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1487, metadata !DIExpression()) #9, !dbg !1678
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1680
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1680
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1681
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1681
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1433, metadata !DIExpression()) #9, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1502, metadata !DIExpression()), !dbg !1515
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1682
  br i1 %87, label %88, label %95, !dbg !1684

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1685
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1690
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1691
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1691
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1692
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1502, metadata !DIExpression()), !dbg !1515
  br label %95, !dbg !1693

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1694
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1502, metadata !DIExpression()), !dbg !1515
  %97 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1695
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1698
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1699
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1699
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1700
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1701
  %102 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1702
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1705
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1706
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1706
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1707
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1707
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1465, metadata !DIExpression()), !dbg !1709
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1711
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1711
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1712
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1474, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1479, metadata !DIExpression()), !dbg !1715
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1716
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1717
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1718
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1719
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1487, metadata !DIExpression()), !dbg !1720
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1722
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1723
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1724
  %116 = load i8*, i8** %115, align 8, !dbg !1724
  call void @kmem_free(i8* %116) #10, !dbg !1724
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1725
  call void @kmem_free(i8* %117) #10, !dbg !1725
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #10, !dbg !1726
  ret void, !dbg !1727
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
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1545 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1544, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %1, metadata !1549, metadata !DIExpression()), !dbg !1729
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1730
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1735
  %6 = icmp eq i8 %1, 0, !dbg !1736
  br i1 %6, label %20, label %7, !dbg !1737

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1738, !srcloc !1581
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1568, metadata !DIExpression()) #9, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1567, metadata !DIExpression()) #9, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1566, metadata !DIExpression()) #9, !dbg !1742
  %9 = bitcast i64* %3 to i8*, !dbg !1743
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1743
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #10, !dbg !1745
  %10 = load i64, i64* %3, align 8, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %10, metadata !1587, metadata !DIExpression()) #9, !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1748
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1749
  %12 = load i32, i32* %11, align 8, !dbg !1749
  %13 = zext i32 %12 to i64, !dbg !1750
  %14 = urem i64 %10, %13, !dbg !1751
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1752, !srcloc !1597
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1576, metadata !DIExpression()) #9, !dbg !1752
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1574, metadata !DIExpression()) #9, !dbg !1753
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1573, metadata !DIExpression()) #9, !dbg !1754
  %16 = shl nuw i64 %14, 32, !dbg !1755
  %17 = ashr exact i64 %16, 32, !dbg !1755
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1755
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1755
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1735
  br label %20, !dbg !1756

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1757
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1757
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1757
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1757
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1550, metadata !DIExpression()), !dbg !1735
  %26 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1758
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1762
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1763
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1763
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1764
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1551, metadata !DIExpression()), !dbg !1765
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1766
  store i32 1, i32* %31, align 4, !dbg !1767
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1613, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1616, metadata !DIExpression()), !dbg !1771
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1772
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1626, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1627, metadata !DIExpression()), !dbg !1776
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1777
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1778
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1779
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1780
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1781
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1782
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1783
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1784
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1784
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1785
  br i1 %40, label %43, label %41, !dbg !1786

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #10, !dbg !1787
  br label %43, !dbg !1788

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1789
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1790 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1792, metadata !DIExpression()), !dbg !1793
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1794
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1794
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1795
  %5 = load i8*, i8** %4, align 8, !dbg !1795
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1796
  %7 = load i8**, i8*** %6, align 8, !dbg !1796
  tail call void %3(i8* %5, i8** %7) #10, !dbg !1797
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #11, !dbg !1798
  ret void, !dbg !1799
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1800 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1804
  %3 = bitcast i8** %2 to i64*, !dbg !1804
  %4 = load i64, i64* %3, align 8, !dbg !1804
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1805
  %6 = load i64, i64* %5, align 8, !dbg !1805
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1422, metadata !DIExpression()), !dbg !1809
  %8 = add i64 %4, -8, !dbg !1810
  %9 = add i64 %8, %6, !dbg !1811
  store i64 %9, i64* %7, align 8, !dbg !1811
  %10 = inttoptr i64 %9 to i64*, !dbg !1812
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1816
  %11 = load i64, i64* %7, align 8, !dbg !1817
  %12 = add i64 %11, -8, !dbg !1817
  store i64 %12, i64* %7, align 8, !dbg !1817
  %13 = inttoptr i64 %12 to i64*, !dbg !1818
  store i64 0, i64* %13, align 8, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1822
  %14 = load i64, i64* %7, align 8, !dbg !1823
  %15 = add i64 %14, -8, !dbg !1823
  store i64 %15, i64* %7, align 8, !dbg !1823
  %16 = inttoptr i64 %15 to i64*, !dbg !1824
  store i64 0, i64* %16, align 8, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1828
  %17 = load i64, i64* %7, align 8, !dbg !1829
  %18 = add i64 %17, -8, !dbg !1829
  store i64 %18, i64* %7, align 8, !dbg !1829
  %19 = inttoptr i64 %18 to i64*, !dbg !1830
  store i64 0, i64* %19, align 8, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1834
  %20 = load i64, i64* %7, align 8, !dbg !1835
  %21 = add i64 %20, -8, !dbg !1835
  store i64 %21, i64* %7, align 8, !dbg !1835
  %22 = inttoptr i64 %21 to i64*, !dbg !1836
  store i64 0, i64* %22, align 8, !dbg !1837
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1840
  %23 = load i64, i64* %7, align 8, !dbg !1841
  %24 = add i64 %23, -8, !dbg !1841
  store i64 %24, i64* %7, align 8, !dbg !1841
  %25 = inttoptr i64 %24 to i64*, !dbg !1842
  store i64 0, i64* %25, align 8, !dbg !1843
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %26, metadata !1422, metadata !DIExpression()), !dbg !1847
  %27 = load i64, i64* %7, align 8, !dbg !1848
  %28 = add i64 %27, -8, !dbg !1848
  store i64 %28, i64* %7, align 8, !dbg !1848
  %29 = inttoptr i64 %28 to i64*, !dbg !1849
  store i64 %26, i64* %29, align 8, !dbg !1850
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1853
  %30 = load i64, i64* %7, align 8, !dbg !1854
  %31 = add i64 %30, -8, !dbg !1854
  store i64 %31, i64* %7, align 8, !dbg !1854
  %32 = inttoptr i64 %31 to i64*, !dbg !1855
  store i64 0, i64* %32, align 8, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1859
  %33 = load i64, i64* %7, align 8, !dbg !1860
  %34 = add i64 %33, -8, !dbg !1860
  store i64 %34, i64* %7, align 8, !dbg !1860
  %35 = inttoptr i64 %34 to i64*, !dbg !1861
  store i64 0, i64* %35, align 8, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1865
  %36 = load i64, i64* %7, align 8, !dbg !1866
  %37 = add i64 %36, -8, !dbg !1866
  store i64 %37, i64* %7, align 8, !dbg !1866
  %38 = inttoptr i64 %37 to i64*, !dbg !1867
  store i64 0, i64* %38, align 8, !dbg !1868
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1871
  %39 = load i64, i64* %7, align 8, !dbg !1872
  %40 = add i64 %39, -8, !dbg !1872
  store i64 %40, i64* %7, align 8, !dbg !1872
  %41 = inttoptr i64 %40 to i64*, !dbg !1873
  store i64 0, i64* %41, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1877
  %42 = load i64, i64* %7, align 8, !dbg !1878
  %43 = add i64 %42, -8, !dbg !1878
  store i64 %43, i64* %7, align 8, !dbg !1878
  %44 = inttoptr i64 %43 to i64*, !dbg !1879
  store i64 0, i64* %44, align 8, !dbg !1880
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1883
  %45 = load i64, i64* %7, align 8, !dbg !1884
  %46 = add i64 %45, -8, !dbg !1884
  store i64 %46, i64* %7, align 8, !dbg !1884
  %47 = inttoptr i64 %46 to i64*, !dbg !1885
  store i64 0, i64* %47, align 8, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1889
  %48 = load i64, i64* %7, align 8, !dbg !1890
  %49 = add i64 %48, -8, !dbg !1890
  store i64 %49, i64* %7, align 8, !dbg !1890
  %50 = inttoptr i64 %49 to i64*, !dbg !1891
  store i64 0, i64* %50, align 8, !dbg !1892
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1895
  %51 = load i64, i64* %7, align 8, !dbg !1896
  %52 = add i64 %51, -8, !dbg !1896
  store i64 %52, i64* %7, align 8, !dbg !1896
  %53 = inttoptr i64 %52 to i64*, !dbg !1897
  store i64 0, i64* %53, align 8, !dbg !1898
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1421, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1901
  %54 = load i64, i64* %7, align 8, !dbg !1902
  %55 = add i64 %54, -8, !dbg !1902
  store i64 %55, i64* %7, align 8, !dbg !1902
  %56 = inttoptr i64 %55 to i64*, !dbg !1903
  store i64 0, i64* %56, align 8, !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1906 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1910, metadata !DIExpression()), !dbg !1915
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1916
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1920
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1921
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1921
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1922
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1911, metadata !DIExpression()), !dbg !1923
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1924
  %9 = load i32, i32* %8, align 4, !dbg !1924
  %10 = add i32 %9, -3, !dbg !1926
  %11 = icmp ult i32 %10, 2, !dbg !1926
  br i1 %11, label %13, label %12, !dbg !1926

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1927
  br label %13, !dbg !1929

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1930
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1934
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1935
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1935
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1936
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1936
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1937
  br i1 %20, label %36, label %21, !dbg !1938

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1939
  %23 = icmp eq i32 %22, 3, !dbg !1940
  br i1 %23, label %36, label %24, !dbg !1941

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1942
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !1946
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !1947
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !1947
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !1948
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1912, metadata !DIExpression()), !dbg !1949
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !1950
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1613, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1616, metadata !DIExpression()), !dbg !1953
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !1954
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1621, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1626, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1627, metadata !DIExpression()), !dbg !1958
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !1959
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !1960
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !1961
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !1962
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !1963
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1964
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1965
  br label %36, !dbg !1966

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !1967
  %38 = load i32, i32* %37, align 8, !dbg !1967
  %39 = icmp eq i32 %38, 0, !dbg !1969
  br i1 %39, label %40, label %55, !dbg !1970

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1971
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !1971
  %43 = load i64, i64* %42, align 8, !dbg !1971
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !1973, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1979
  %44 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1981
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1985
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1986
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1986
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !1987
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !1987
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !1978, metadata !DIExpression()) #9, !dbg !1988
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !1989
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !1990
  store i64 %43, i64* %51, align 8, !dbg !1990
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1991, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1997, metadata !DIExpression()) #9, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1996, metadata !DIExpression()) #9, !dbg !2000
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2001
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2002
  store i64 %43, i64* %54, align 8, !dbg !2002
  br label %55, !dbg !2003

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2004
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2007
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2008
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2008
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2009
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2010
  store i32 1, i32* %8, align 4, !dbg !2011
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2012
  store i32 5, i32* %61, align 4, !dbg !2013
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #10, !dbg !2014
  ret i32 0, !dbg !2015
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !1974 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !1973, metadata !DIExpression()), !dbg !2016
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2017
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2021
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2022
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2022
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2023
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2023
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1978, metadata !DIExpression()), !dbg !2024
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2025
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2026
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2027, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1997, metadata !DIExpression()) #9, !dbg !2027
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1996, metadata !DIExpression()) #9, !dbg !2029
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2030
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2031
  ret void, !dbg !2032
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2033 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2038
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2042
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2043
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2043
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2044
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2044
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2037, metadata !DIExpression()), !dbg !2045
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #11, !dbg !2046
  ret void, !dbg !2047
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2048 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2056
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2060
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2061
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2061
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2062
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2053, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2064
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2065
  %9 = zext i1 %8 to i8, !dbg !2067
  call void @llvm.dbg.value(metadata i8 %9, metadata !2054, metadata !DIExpression()), !dbg !2064
  ret i8 %9, !dbg !2068
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1570 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2069, !srcloc !1581
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1568, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1567, metadata !DIExpression()) #9, !dbg !2071
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1566, metadata !DIExpression()) #9, !dbg !2072
  %3 = bitcast i64* %1 to i8*, !dbg !2073
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2073
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #10, !dbg !2075
  %4 = load i64, i64* %1, align 8, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %4, metadata !1587, metadata !DIExpression()) #9, !dbg !2077
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2078
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2079
  %6 = load i32, i32* %5, align 8, !dbg !2079
  %7 = zext i32 %6 to i64, !dbg !2080
  %8 = urem i64 %4, %7, !dbg !2081
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2082, !srcloc !1597
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1576, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1574, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1573, metadata !DIExpression()), !dbg !2084
  %10 = shl nuw i64 %8, 32, !dbg !2085
  %11 = ashr exact i64 %10, 32, !dbg !2085
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2085
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2085
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2086
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2086
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2087
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2087
  ret %struct.nk_thread* %17, !dbg !2088
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2089 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2091, metadata !DIExpression()), !dbg !2110
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2111, !srcloc !2112
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2095, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2093, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2092, metadata !DIExpression()), !dbg !2114
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2115
  %4 = load i32, i32* %3, align 8, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %4, metadata !2097, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 0, metadata !2100, metadata !DIExpression()), !dbg !2117
  %5 = icmp sgt i32 %4, 0, !dbg !2118
  br i1 %5, label %6, label %38, !dbg !2119

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2120
  br label %8, !dbg !2120

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2100, metadata !DIExpression()), !dbg !2117
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2120
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2120
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2121
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2121
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2122
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2098, metadata !DIExpression()), !dbg !2123
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2124
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2102, metadata !DIExpression(DW_OP_deref)), !dbg !2124
  call void @llvm.dbg.value(metadata i8** %15, metadata !2099, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2125
  %16 = load i8*, i8** %15, align 8, !dbg !2126
  br label %17, !dbg !2127

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2126
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2128
  %20 = bitcast i8* %18 to i8**, !dbg !2128
  %21 = load i8*, i8** %20, align 8, !dbg !2128
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2128
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2128
  br i1 %22, label %27, label %23, !dbg !2127

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2126
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2126
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2099, metadata !DIExpression()), !dbg !2125
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2129
  br i1 %26, label %30, label %17, !dbg !2132, !llvm.loop !2133

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i32 undef, metadata !2100, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2117
  %29 = icmp slt i64 %28, %7, !dbg !2118
  br i1 %29, label %8, label %38, !dbg !2119, !llvm.loop !2136

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1465, metadata !DIExpression()), !dbg !2140
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2142
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2142
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2143
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2143
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1474, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1479, metadata !DIExpression()), !dbg !2146
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2147
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2148
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2149
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1487, metadata !DIExpression()), !dbg !2151
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2153
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2154
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2155
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2156 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2185, !srcloc !2186
  call void @llvm.dbg.value(metadata i32 %1, metadata !2161, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2159, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %1, metadata !2158, metadata !DIExpression()), !dbg !2188
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2189
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2163, metadata !DIExpression()), !dbg !2192
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2193
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2194
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2195
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2196
  br i1 %6, label %7, label %109, !dbg !2197

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2198
  %9 = icmp eq i64 %8, 0, !dbg !2204
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %10, metadata !2209, metadata !DIExpression()) #9, !dbg !2211
  %11 = icmp eq i64 %10, 0, !dbg !2212
  br i1 %11, label %17, label %12, !dbg !2214

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2215
  %14 = inttoptr i64 %13 to i16*, !dbg !2217
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2218
  %16 = zext i16 %15 to i32, !dbg !2218
  br label %17, !dbg !2219

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2220
  %19 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %19, metadata !2225, metadata !DIExpression()) #9, !dbg !2227
  %20 = icmp eq i64 %19, 0, !dbg !2228
  br i1 %20, label %25, label %21, !dbg !2230

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2231
  %23 = inttoptr i64 %22 to i16*, !dbg !2233
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2234
  br label %25, !dbg !2235

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2236

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2164, metadata !DIExpression()), !dbg !2237
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2238, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1997, metadata !DIExpression()) #9, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1996, metadata !DIExpression()) #9, !dbg !2240
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2170, metadata !DIExpression()), !dbg !2237
  %28 = tail call i32 @nk_vc_is_active() #10, !dbg !2241
  %29 = icmp eq i32 %28, 0, !dbg !2241
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2242
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %31, metadata !2249, metadata !DIExpression()) #9, !dbg !2253
  %32 = icmp eq i64 %31, 0, !dbg !2254
  br i1 %32, label %38, label %33, !dbg !2256

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2257
  %35 = inttoptr i64 %34 to i16*, !dbg !2259
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2260
  %37 = icmp eq i16 %36, 0, !dbg !2261
  br i1 %37, label %38, label %39, !dbg !2242

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2242

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2242
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2242
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2242
  br i1 %29, label %60, label %44, !dbg !2262

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2263

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2263
  %47 = load i64, i64* %46, align 32, !dbg !2263
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2263
  %49 = load i8, i8* %48, align 8, !dbg !2263
  %50 = icmp eq i8 %49, 0, !dbg !2263
  br i1 %50, label %51, label %56, !dbg !2263

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2263
  %53 = load i8, i8* %52, align 64, !dbg !2263
  %54 = icmp eq i8 %53, 0, !dbg !2263
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52, !dbg !2263
  br label %56, !dbg !2263

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ], !dbg !2263
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2263
  br label %76, !dbg !2263

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2264

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2264
  %63 = load i64, i64* %62, align 32, !dbg !2264
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2264
  %65 = load i8, i8* %64, align 8, !dbg !2264
  %66 = icmp eq i8 %65, 0, !dbg !2264
  br i1 %66, label %67, label %72, !dbg !2264

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2264
  %69 = load i8, i8* %68, align 64, !dbg !2264
  %70 = icmp eq i8 %69, 0, !dbg !2264
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68, !dbg !2264
  br label %72, !dbg !2264

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ], !dbg !2264
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2264
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %77, metadata !2269, metadata !DIExpression()) #9, !dbg !2271
  %78 = icmp eq i64 %77, 0, !dbg !2272
  br i1 %78, label %109, label %79, !dbg !2274

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2275
  %81 = inttoptr i64 %80 to i16*, !dbg !2277
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2278
  br label %109, !dbg !2279

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2183, metadata !DIExpression()), !dbg !2280
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !2281
  %85 = icmp eq i32 %84, 0, !dbg !2281
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %86, metadata !2249, metadata !DIExpression()) #9, !dbg !2288
  %87 = icmp eq i64 %86, 0, !dbg !2289
  br i1 %87, label %93, label %88, !dbg !2290

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2291
  %90 = inttoptr i64 %89 to i16*, !dbg !2292
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2293
  %92 = icmp eq i16 %91, 0, !dbg !2294
  br i1 %92, label %93, label %94, !dbg !2295

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2295

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2295
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2295
  br i1 %85, label %100, label %98, !dbg !2296

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2297
  br label %102, !dbg !2297

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2299
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %103, metadata !2269, metadata !DIExpression()) #9, !dbg !2304
  %104 = icmp eq i64 %103, 0, !dbg !2305
  br i1 %104, label %109, label %105, !dbg !2306

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2307
  %107 = inttoptr i64 %106 to i16*, !dbg !2308
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2309
  br label %109, !dbg !2310

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2311
  ret i32 %110, !dbg !2312
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2313 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2345, !srcloc !2346
  call void @llvm.dbg.value(metadata i32 %1, metadata !2322, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2320, metadata !DIExpression()), !dbg !2347
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #10, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %2, metadata !2318, metadata !DIExpression()), !dbg !2348
  %3 = icmp eq i8* %2, null, !dbg !2349
  br i1 %3, label %4, label %106, !dbg !2350

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2351
  %6 = icmp eq i64 %5, 0, !dbg !2353
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %7, metadata !2209, metadata !DIExpression()) #9, !dbg !2357
  %8 = icmp eq i64 %7, 0, !dbg !2358
  br i1 %8, label %14, label %9, !dbg !2359

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2360
  %11 = inttoptr i64 %10 to i16*, !dbg !2361
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2362
  %13 = zext i16 %12 to i32, !dbg !2362
  br label %14, !dbg !2363

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2364
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %16, metadata !2225, metadata !DIExpression()) #9, !dbg !2368
  %17 = icmp eq i64 %16, 0, !dbg !2369
  br i1 %17, label %22, label %18, !dbg !2370

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2371
  %20 = inttoptr i64 %19 to i16*, !dbg !2372
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2373
  br label %22, !dbg !2374

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2375

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2324, metadata !DIExpression()), !dbg !2376
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2377, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1997, metadata !DIExpression()) #9, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1996, metadata !DIExpression()) #9, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2330, metadata !DIExpression()), !dbg !2376
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2380
  %26 = icmp eq i32 %25, 0, !dbg !2380
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2381
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %28, metadata !2249, metadata !DIExpression()) #9, !dbg !2386
  %29 = icmp eq i64 %28, 0, !dbg !2387
  br i1 %29, label %35, label %30, !dbg !2388

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2389
  %32 = inttoptr i64 %31 to i16*, !dbg !2390
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2391
  %34 = icmp eq i16 %33, 0, !dbg !2392
  br i1 %34, label %35, label %36, !dbg !2381

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2381

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2381
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2381
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2381
  br i1 %26, label %57, label %41, !dbg !2393

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2394

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2394
  %44 = load i64, i64* %43, align 32, !dbg !2394
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2394
  %46 = load i8, i8* %45, align 8, !dbg !2394
  %47 = icmp eq i8 %46, 0, !dbg !2394
  br i1 %47, label %48, label %53, !dbg !2394

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2394
  %50 = load i8, i8* %49, align 64, !dbg !2394
  %51 = icmp eq i8 %50, 0, !dbg !2394
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2394
  br label %53, !dbg !2394

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2394
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2394
  br label %73, !dbg !2394

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2395

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2395
  %60 = load i64, i64* %59, align 32, !dbg !2395
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2395
  %62 = load i8, i8* %61, align 8, !dbg !2395
  %63 = icmp eq i8 %62, 0, !dbg !2395
  br i1 %63, label %64, label %69, !dbg !2395

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2395
  %66 = load i8, i8* %65, align 64, !dbg !2395
  %67 = icmp eq i8 %66, 0, !dbg !2395
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2395
  br label %69, !dbg !2395

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2395
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2395
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %74, metadata !2269, metadata !DIExpression()) #9, !dbg !2399
  %75 = icmp eq i64 %74, 0, !dbg !2400
  br i1 %75, label %114, label %76, !dbg !2401

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2402
  %78 = inttoptr i64 %77 to i16*, !dbg !2403
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2404
  br label %114, !dbg !2405

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2343, metadata !DIExpression()), !dbg !2406
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2407
  %82 = icmp eq i32 %81, 0, !dbg !2407
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %83, metadata !2249, metadata !DIExpression()) #9, !dbg !2414
  %84 = icmp eq i64 %83, 0, !dbg !2415
  br i1 %84, label %90, label %85, !dbg !2416

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2417
  %87 = inttoptr i64 %86 to i16*, !dbg !2418
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2419
  %89 = icmp eq i16 %88, 0, !dbg !2420
  br i1 %89, label %90, label %91, !dbg !2421

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2421

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2421
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2421
  br i1 %82, label %97, label %95, !dbg !2422

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2423
  br label %99, !dbg !2423

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2425
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %100, metadata !2269, metadata !DIExpression()) #9, !dbg !2430
  %101 = icmp eq i64 %100, 0, !dbg !2431
  br i1 %101, label %114, label %102, !dbg !2432

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2433
  %104 = inttoptr i64 %103 to i16*, !dbg !2434
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2435
  br label %114, !dbg !2436

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2317, metadata !DIExpression()), !dbg !2438
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #10, !dbg !2439
  %109 = bitcast i8* %2 to i32*, !dbg !2440
  tail call void @spinlock_init(i32* %109) #10, !dbg !2441
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %110, metadata !1487, metadata !DIExpression()), !dbg !2443
  %111 = bitcast i8* %110 to i8**, !dbg !2445
  store i8* %110, i8** %111, align 8, !dbg !2445
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2446
  %113 = bitcast i8* %112 to i8**, !dbg !2447
  store i8* %110, i8** %113, align 8, !dbg !2447
  br label %115, !dbg !2448

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #10, !dbg !2449
  br label %115, !dbg !2450

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2451
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2452
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2453 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2496
  %2 = zext i32 %1 to i64, !dbg !2497
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2497
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2455, metadata !DIExpression()), !dbg !2498
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2499
  %6 = icmp eq i64 %5, 0, !dbg !2501
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %7, metadata !2209, metadata !DIExpression()) #9, !dbg !2505
  %8 = icmp eq i64 %7, 0, !dbg !2506
  br i1 %8, label %14, label %9, !dbg !2507

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2508
  %11 = inttoptr i64 %10 to i16*, !dbg !2509
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2510
  %13 = zext i16 %12 to i32, !dbg !2510
  br label %14, !dbg !2511

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2512
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %16, metadata !2225, metadata !DIExpression()) #9, !dbg !2516
  %17 = icmp eq i64 %16, 0, !dbg !2517
  br i1 %17, label %22, label %18, !dbg !2518

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2519
  %20 = inttoptr i64 %19 to i16*, !dbg !2520
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2521
  br label %22, !dbg !2522

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2523

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2456, metadata !DIExpression()), !dbg !2524
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2525, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1997, metadata !DIExpression()) #9, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1996, metadata !DIExpression()) #9, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2460, metadata !DIExpression()), !dbg !2524
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2528
  %26 = icmp eq i32 %25, 0, !dbg !2528
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2529
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %28, metadata !2249, metadata !DIExpression()) #9, !dbg !2534
  %29 = icmp eq i64 %28, 0, !dbg !2535
  br i1 %29, label %35, label %30, !dbg !2536

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2537
  %32 = inttoptr i64 %31 to i16*, !dbg !2538
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2539
  %34 = icmp eq i16 %33, 0, !dbg !2540
  br i1 %34, label %35, label %36, !dbg !2529

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2529

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2529
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2529
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2529
  br i1 %26, label %57, label %41, !dbg !2541

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2542

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2542
  %44 = load i64, i64* %43, align 32, !dbg !2542
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2542
  %46 = load i8, i8* %45, align 8, !dbg !2542
  %47 = icmp eq i8 %46, 0, !dbg !2542
  br i1 %47, label %48, label %53, !dbg !2542

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2542
  %50 = load i8, i8* %49, align 64, !dbg !2542
  %51 = icmp eq i8 %50, 0, !dbg !2542
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2542
  br label %53, !dbg !2542

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2542
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #10, !dbg !2542
  br label %73, !dbg !2542

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2543

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2543
  %60 = load i64, i64* %59, align 32, !dbg !2543
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2543
  %62 = load i8, i8* %61, align 8, !dbg !2543
  %63 = icmp eq i8 %62, 0, !dbg !2543
  br i1 %63, label %64, label %69, !dbg !2543

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2543
  %66 = load i8, i8* %65, align 64, !dbg !2543
  %67 = icmp eq i8 %66, 0, !dbg !2543
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2543
  br label %69, !dbg !2543

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2543
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #10, !dbg !2543
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %74, metadata !2269, metadata !DIExpression()) #9, !dbg !2547
  %75 = icmp eq i64 %74, 0, !dbg !2548
  br i1 %75, label %106, label %76, !dbg !2549

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2550
  %78 = inttoptr i64 %77 to i16*, !dbg !2551
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2552
  br label %106, !dbg !2553

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2473, metadata !DIExpression()), !dbg !2554
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2555
  %82 = icmp eq i32 %81, 0, !dbg !2555
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %83, metadata !2249, metadata !DIExpression()) #9, !dbg !2562
  %84 = icmp eq i64 %83, 0, !dbg !2563
  br i1 %84, label %90, label %85, !dbg !2564

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2565
  %87 = inttoptr i64 %86 to i16*, !dbg !2566
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2567
  %89 = icmp eq i16 %88, 0, !dbg !2568
  br i1 %89, label %90, label %91, !dbg !2569

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2569

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2569
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2569
  br i1 %82, label %97, label %95, !dbg !2570

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2571
  br label %99, !dbg !2571

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2573
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %100, metadata !2269, metadata !DIExpression()) #9, !dbg !2578
  %101 = icmp eq i64 %100, 0, !dbg !2579
  br i1 %101, label %106, label %102, !dbg !2580

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2581
  %104 = inttoptr i64 %103 to i16*, !dbg !2582
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2583
  br label %106, !dbg !2584

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2585
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2586
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2587
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2588
  br i1 %109, label %110, label %212, !dbg !2589

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2590
  %112 = icmp eq i64 %111, 0, !dbg !2592
  %113 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %113, metadata !2209, metadata !DIExpression()) #9, !dbg !2596
  %114 = icmp eq i64 %113, 0, !dbg !2597
  br i1 %114, label %120, label %115, !dbg !2598

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2599
  %117 = inttoptr i64 %116 to i16*, !dbg !2600
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2601
  %119 = zext i16 %118 to i32, !dbg !2601
  br label %120, !dbg !2602

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2603
  %122 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %122, metadata !2225, metadata !DIExpression()) #9, !dbg !2607
  %123 = icmp eq i64 %122, 0, !dbg !2608
  br i1 %123, label %128, label %124, !dbg !2609

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2610
  %126 = inttoptr i64 %125 to i16*, !dbg !2611
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2612
  br label %128, !dbg !2613

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2614

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2475, metadata !DIExpression()), !dbg !2615
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2616, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1997, metadata !DIExpression()) #9, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1996, metadata !DIExpression()) #9, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2481, metadata !DIExpression()), !dbg !2615
  %131 = tail call i32 @nk_vc_is_active() #10, !dbg !2619
  %132 = icmp eq i32 %131, 0, !dbg !2619
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2620
  %134 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %134, metadata !2249, metadata !DIExpression()) #9, !dbg !2625
  %135 = icmp eq i64 %134, 0, !dbg !2626
  br i1 %135, label %141, label %136, !dbg !2627

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2628
  %138 = inttoptr i64 %137 to i16*, !dbg !2629
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2630
  %140 = icmp eq i16 %139, 0, !dbg !2631
  br i1 %140, label %141, label %142, !dbg !2620

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2620

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2620
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2620
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2620
  br i1 %132, label %163, label %147, !dbg !2632

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2633

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2633
  %150 = load i64, i64* %149, align 32, !dbg !2633
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2633
  %152 = load i8, i8* %151, align 8, !dbg !2633
  %153 = icmp eq i8 %152, 0, !dbg !2633
  br i1 %153, label %154, label %159, !dbg !2633

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2633
  %156 = load i8, i8* %155, align 64, !dbg !2633
  %157 = icmp eq i8 %156, 0, !dbg !2633
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155, !dbg !2633
  br label %159, !dbg !2633

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ], !dbg !2633
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2633
  br label %179, !dbg !2633

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2634

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2634
  %166 = load i64, i64* %165, align 32, !dbg !2634
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2634
  %168 = load i8, i8* %167, align 8, !dbg !2634
  %169 = icmp eq i8 %168, 0, !dbg !2634
  br i1 %169, label %170, label %175, !dbg !2634

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2634
  %172 = load i8, i8* %171, align 64, !dbg !2634
  %173 = icmp eq i8 %172, 0, !dbg !2634
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171, !dbg !2634
  br label %175, !dbg !2634

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ], !dbg !2634
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2634
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %180, metadata !2269, metadata !DIExpression()) #9, !dbg !2638
  %181 = icmp eq i64 %180, 0, !dbg !2639
  br i1 %181, label %212, label %182, !dbg !2640

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2641
  %184 = inttoptr i64 %183 to i16*, !dbg !2642
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2643
  br label %212, !dbg !2644

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2494, metadata !DIExpression()), !dbg !2645
  %187 = tail call i32 @nk_vc_is_active() #10, !dbg !2646
  %188 = icmp eq i32 %187, 0, !dbg !2646
  %189 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %189, metadata !2249, metadata !DIExpression()) #9, !dbg !2653
  %190 = icmp eq i64 %189, 0, !dbg !2654
  br i1 %190, label %196, label %191, !dbg !2655

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2656
  %193 = inttoptr i64 %192 to i16*, !dbg !2657
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2658
  %195 = icmp eq i16 %194, 0, !dbg !2659
  br i1 %195, label %196, label %197, !dbg !2660

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2660

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2660
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2660
  br i1 %188, label %203, label %201, !dbg !2661

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2662
  br label %205, !dbg !2662

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2664
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %206, metadata !2269, metadata !DIExpression()) #9, !dbg !2669
  %207 = icmp eq i64 %206, 0, !dbg !2670
  br i1 %207, label %212, label %208, !dbg !2671

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2672
  %210 = inttoptr i64 %209 to i16*, !dbg !2673
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2674
  br label %212, !dbg !2675

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2676
  ret i32 %213, !dbg !2677
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2678 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2680, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8** undef, metadata !2681, metadata !DIExpression()), !dbg !2795
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2796, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1997, metadata !DIExpression()) #9, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1996, metadata !DIExpression()) #9, !dbg !2798
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2799
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.58, i64 0, i64 0)) #10, !dbg !2800
  %8 = icmp eq i32 %7, 0, !dbg !2800
  br i1 %8, label %111, label %9, !dbg !2801

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2802
  %11 = icmp eq i64 %10, 0, !dbg !2804
  %12 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %12, metadata !2209, metadata !DIExpression()) #9, !dbg !2808
  %13 = icmp eq i64 %12, 0, !dbg !2809
  br i1 %13, label %19, label %14, !dbg !2810

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2811
  %16 = inttoptr i64 %15 to i16*, !dbg !2812
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2813
  %18 = zext i16 %17 to i32, !dbg !2813
  br label %19, !dbg !2814

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2815
  %21 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %21, metadata !2225, metadata !DIExpression()) #9, !dbg !2819
  %22 = icmp eq i64 %21, 0, !dbg !2820
  br i1 %22, label %27, label %23, !dbg !2821

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2822
  %25 = inttoptr i64 %24 to i16*, !dbg !2823
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2824
  br label %27, !dbg !2825

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2826

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2682, metadata !DIExpression()), !dbg !2827
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2828, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1997, metadata !DIExpression()) #9, !dbg !2828
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1996, metadata !DIExpression()) #9, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2688, metadata !DIExpression()), !dbg !2827
  %30 = tail call i32 @nk_vc_is_active() #10, !dbg !2831
  %31 = icmp eq i32 %30, 0, !dbg !2831
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2832
  %33 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %33, metadata !2249, metadata !DIExpression()) #9, !dbg !2837
  %34 = icmp eq i64 %33, 0, !dbg !2838
  br i1 %34, label %40, label %35, !dbg !2839

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2840
  %37 = inttoptr i64 %36 to i16*, !dbg !2841
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2842
  %39 = icmp eq i16 %38, 0, !dbg !2843
  br i1 %39, label %40, label %41, !dbg !2832

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2832

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2832
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2832
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2832
  br i1 %31, label %62, label %46, !dbg !2844

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2845

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2845
  %49 = load i64, i64* %48, align 32, !dbg !2845
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2845
  %51 = load i8, i8* %50, align 8, !dbg !2845
  %52 = icmp eq i8 %51, 0, !dbg !2845
  br i1 %52, label %53, label %58, !dbg !2845

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2845
  %55 = load i8, i8* %54, align 64, !dbg !2845
  %56 = icmp eq i8 %55, 0, !dbg !2845
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54, !dbg !2845
  br label %58, !dbg !2845

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ], !dbg !2845
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2845
  br label %78, !dbg !2845

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2846

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2846
  %65 = load i64, i64* %64, align 32, !dbg !2846
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2846
  %67 = load i8, i8* %66, align 8, !dbg !2846
  %68 = icmp eq i8 %67, 0, !dbg !2846
  br i1 %68, label %69, label %74, !dbg !2846

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2846
  %71 = load i8, i8* %70, align 64, !dbg !2846
  %72 = icmp eq i8 %71, 0, !dbg !2846
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70, !dbg !2846
  br label %74, !dbg !2846

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ], !dbg !2846
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2846
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %79, metadata !2269, metadata !DIExpression()) #9, !dbg !2850
  %80 = icmp eq i64 %79, 0, !dbg !2851
  br i1 %80, label %449, label %81, !dbg !2852

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2853
  %83 = inttoptr i64 %82 to i16*, !dbg !2854
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2855
  br label %449, !dbg !2856

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2701, metadata !DIExpression()), !dbg !2857
  %86 = tail call i32 @nk_vc_is_active() #10, !dbg !2858
  %87 = icmp eq i32 %86, 0, !dbg !2858
  %88 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %88, metadata !2249, metadata !DIExpression()) #9, !dbg !2865
  %89 = icmp eq i64 %88, 0, !dbg !2866
  br i1 %89, label %95, label %90, !dbg !2867

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2868
  %92 = inttoptr i64 %91 to i16*, !dbg !2869
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2870
  %94 = icmp eq i16 %93, 0, !dbg !2871
  br i1 %94, label %95, label %96, !dbg !2872

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2872

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2872
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2872
  br i1 %87, label %102, label %100, !dbg !2873

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2874
  br label %104, !dbg !2874

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2876
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %105, metadata !2269, metadata !DIExpression()) #9, !dbg !2881
  %106 = icmp eq i64 %105, 0, !dbg !2882
  br i1 %106, label %449, label %107, !dbg !2883

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2884
  %109 = inttoptr i64 %108 to i16*, !dbg !2885
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2886
  br label %449, !dbg !2887

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #9, !dbg !2888
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2889
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2889
  store i64 100000000, i64* %113, align 8, !dbg !2889
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2889
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #10, !dbg !2890
  %115 = icmp eq i32 %114, 0, !dbg !2890
  %116 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2891
  br i1 %115, label %219, label %117, !dbg !2892

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2893
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %119, metadata !2209, metadata !DIExpression()) #9, !dbg !2897
  %120 = icmp eq i64 %119, 0, !dbg !2898
  br i1 %120, label %126, label %121, !dbg !2899

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2900
  %123 = inttoptr i64 %122 to i16*, !dbg !2901
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2902
  %125 = zext i16 %124 to i32, !dbg !2902
  br label %126, !dbg !2903

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2904
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %128, metadata !2225, metadata !DIExpression()) #9, !dbg !2908
  %129 = icmp eq i64 %128, 0, !dbg !2909
  br i1 %129, label %134, label %130, !dbg !2910

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2911
  %132 = inttoptr i64 %131 to i16*, !dbg !2912
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2913
  br label %134, !dbg !2914

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2915

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2729, metadata !DIExpression()), !dbg !2916
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2917, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1997, metadata !DIExpression()) #9, !dbg !2917
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1996, metadata !DIExpression()) #9, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2735, metadata !DIExpression()), !dbg !2916
  %137 = call i32 @nk_vc_is_active() #10, !dbg !2920
  %138 = icmp eq i32 %137, 0, !dbg !2920
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2921
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %140, metadata !2249, metadata !DIExpression()) #9, !dbg !2926
  %141 = icmp eq i64 %140, 0, !dbg !2927
  br i1 %141, label %147, label %142, !dbg !2928

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2929
  %144 = inttoptr i64 %143 to i16*, !dbg !2930
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2931
  %146 = icmp eq i16 %145, 0, !dbg !2932
  br i1 %146, label %147, label %148, !dbg !2921

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2921

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2921
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2921
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2921
  br i1 %138, label %169, label %153, !dbg !2933

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2934

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2934
  %156 = load i64, i64* %155, align 32, !dbg !2934
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2934
  %158 = load i8, i8* %157, align 8, !dbg !2934
  %159 = icmp eq i8 %158, 0, !dbg !2934
  br i1 %159, label %160, label %165, !dbg !2934

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2934
  %162 = load i8, i8* %161, align 64, !dbg !2934
  %163 = icmp eq i8 %162, 0, !dbg !2934
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !2934
  br label %165, !dbg !2934

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !2934
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2934
  br label %185, !dbg !2934

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2935

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2935
  %172 = load i64, i64* %171, align 32, !dbg !2935
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2935
  %174 = load i8, i8* %173, align 8, !dbg !2935
  %175 = icmp eq i8 %174, 0, !dbg !2935
  br i1 %175, label %176, label %181, !dbg !2935

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2935
  %178 = load i8, i8* %177, align 64, !dbg !2935
  %179 = icmp eq i8 %178, 0, !dbg !2935
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !2935
  br label %181, !dbg !2935

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !2935
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2935
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %186, metadata !2269, metadata !DIExpression()) #9, !dbg !2939
  %187 = icmp eq i64 %186, 0, !dbg !2940
  br i1 %187, label %218, label %188, !dbg !2941

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2942
  %190 = inttoptr i64 %189 to i16*, !dbg !2943
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2944
  br label %218, !dbg !2945

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2748, metadata !DIExpression()), !dbg !2946
  %193 = call i32 @nk_vc_is_active() #10, !dbg !2947
  %194 = icmp eq i32 %193, 0, !dbg !2947
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %195, metadata !2249, metadata !DIExpression()) #9, !dbg !2954
  %196 = icmp eq i64 %195, 0, !dbg !2955
  br i1 %196, label %202, label %197, !dbg !2956

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !2957
  %199 = inttoptr i64 %198 to i16*, !dbg !2958
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !2959
  %201 = icmp eq i16 %200, 0, !dbg !2960
  br i1 %201, label %202, label %203, !dbg !2961

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !2961

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !2961
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2961
  br i1 %194, label %209, label %207, !dbg !2962

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2963
  br label %211, !dbg !2963

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2965
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %212, metadata !2269, metadata !DIExpression()) #9, !dbg !2970
  %213 = icmp eq i64 %212, 0, !dbg !2971
  br i1 %213, label %218, label %214, !dbg !2972

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !2973
  %216 = inttoptr i64 %215 to i16*, !dbg !2974
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !2975
  br label %218, !dbg !2976

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 526) #12, !dbg !2977
  unreachable, !dbg !2977

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !2978
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !2981
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2750, metadata !DIExpression()), !dbg !2982
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !2983
  br i1 %223, label %224, label %326, !dbg !2984

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2985
  %226 = icmp eq i64 %225, 0, !dbg !2987
  %227 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %227, metadata !2209, metadata !DIExpression()) #9, !dbg !2991
  %228 = icmp eq i64 %227, 0, !dbg !2992
  br i1 %228, label %234, label %229, !dbg !2993

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !2994
  %231 = inttoptr i64 %230 to i16*, !dbg !2995
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !2996
  %233 = zext i16 %232 to i32, !dbg !2996
  br label %234, !dbg !2997

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !2998
  %236 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %236, metadata !2225, metadata !DIExpression()) #9, !dbg !3002
  %237 = icmp eq i64 %236, 0, !dbg !3003
  br i1 %237, label %242, label %238, !dbg !3004

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3005
  %240 = inttoptr i64 %239 to i16*, !dbg !3006
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3007
  br label %242, !dbg !3008

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3009

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2751, metadata !DIExpression()), !dbg !3010
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3011, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1997, metadata !DIExpression()) #9, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1996, metadata !DIExpression()) #9, !dbg !3013
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2757, metadata !DIExpression()), !dbg !3010
  %245 = call i32 @nk_vc_is_active() #10, !dbg !3014
  %246 = icmp eq i32 %245, 0, !dbg !3014
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3015
  %248 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %248, metadata !2249, metadata !DIExpression()) #9, !dbg !3020
  %249 = icmp eq i64 %248, 0, !dbg !3021
  br i1 %249, label %255, label %250, !dbg !3022

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3023
  %252 = inttoptr i64 %251 to i16*, !dbg !3024
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3025
  %254 = icmp eq i16 %253, 0, !dbg !3026
  br i1 %254, label %255, label %256, !dbg !3015

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3015

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3015
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3015
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3015
  br i1 %246, label %277, label %261, !dbg !3027

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3028

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3028
  %264 = load i64, i64* %263, align 32, !dbg !3028
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3028
  %266 = load i8, i8* %265, align 8, !dbg !3028
  %267 = icmp eq i8 %266, 0, !dbg !3028
  br i1 %267, label %268, label %273, !dbg !3028

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3028
  %270 = load i8, i8* %269, align 64, !dbg !3028
  %271 = icmp eq i8 %270, 0, !dbg !3028
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269, !dbg !3028
  br label %273, !dbg !3028

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ], !dbg !3028
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3028
  br label %293, !dbg !3028

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3029

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3029
  %280 = load i64, i64* %279, align 32, !dbg !3029
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3029
  %282 = load i8, i8* %281, align 8, !dbg !3029
  %283 = icmp eq i8 %282, 0, !dbg !3029
  br i1 %283, label %284, label %289, !dbg !3029

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3029
  %286 = load i8, i8* %285, align 64, !dbg !3029
  %287 = icmp eq i8 %286, 0, !dbg !3029
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285, !dbg !3029
  br label %289, !dbg !3029

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ], !dbg !3029
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3029
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %294, metadata !2269, metadata !DIExpression()) #9, !dbg !3033
  %295 = icmp eq i64 %294, 0, !dbg !3034
  br i1 %295, label %326, label %296, !dbg !3035

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3036
  %298 = inttoptr i64 %297 to i16*, !dbg !3037
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3038
  br label %326, !dbg !3039

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2770, metadata !DIExpression()), !dbg !3040
  %301 = call i32 @nk_vc_is_active() #10, !dbg !3041
  %302 = icmp eq i32 %301, 0, !dbg !3041
  %303 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %303, metadata !2249, metadata !DIExpression()) #9, !dbg !3048
  %304 = icmp eq i64 %303, 0, !dbg !3049
  br i1 %304, label %310, label %305, !dbg !3050

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3051
  %307 = inttoptr i64 %306 to i16*, !dbg !3052
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3053
  %309 = icmp eq i16 %308, 0, !dbg !3054
  br i1 %309, label %310, label %311, !dbg !3055

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3055

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3055
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3055
  br i1 %302, label %317, label %315, !dbg !3056

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3057
  br label %319, !dbg !3057

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3059
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %320, metadata !2269, metadata !DIExpression()) #9, !dbg !3064
  %321 = icmp eq i64 %320, 0, !dbg !3065
  br i1 %321, label %326, label %322, !dbg !3066

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3067
  %324 = inttoptr i64 %323 to i16*, !dbg !3068
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3069
  br label %326, !dbg !3070

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3071, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1997, metadata !DIExpression()) #9, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1996, metadata !DIExpression()) #9, !dbg !3073
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3074
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3075
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3076
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !3077
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #11, !dbg !3078
  %331 = icmp slt i32 %330, 0, !dbg !3079
  br i1 %331, label %332, label %434, !dbg !3080

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3081
  %334 = icmp eq i64 %333, 0, !dbg !3083
  %335 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %335, metadata !2209, metadata !DIExpression()) #9, !dbg !3087
  %336 = icmp eq i64 %335, 0, !dbg !3088
  br i1 %336, label %342, label %337, !dbg !3089

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3090
  %339 = inttoptr i64 %338 to i16*, !dbg !3091
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3092
  %341 = zext i16 %340 to i32, !dbg !3092
  br label %342, !dbg !3093

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3094
  %344 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %344, metadata !2225, metadata !DIExpression()) #9, !dbg !3098
  %345 = icmp eq i64 %344, 0, !dbg !3099
  br i1 %345, label %350, label %346, !dbg !3100

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3101
  %348 = inttoptr i64 %347 to i16*, !dbg !3102
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3103
  br label %350, !dbg !3104

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3105

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2773, metadata !DIExpression()), !dbg !3106
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3107, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1997, metadata !DIExpression()) #9, !dbg !3107
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1996, metadata !DIExpression()) #9, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2779, metadata !DIExpression()), !dbg !3106
  %353 = call i32 @nk_vc_is_active() #10, !dbg !3110
  %354 = icmp eq i32 %353, 0, !dbg !3110
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3111
  %356 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %356, metadata !2249, metadata !DIExpression()) #9, !dbg !3116
  %357 = icmp eq i64 %356, 0, !dbg !3117
  br i1 %357, label %363, label %358, !dbg !3118

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3119
  %360 = inttoptr i64 %359 to i16*, !dbg !3120
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3121
  %362 = icmp eq i16 %361, 0, !dbg !3122
  br i1 %362, label %363, label %364, !dbg !3111

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3111

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3111
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3111
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3111
  br i1 %354, label %385, label %369, !dbg !3123

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3124

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3124
  %372 = load i64, i64* %371, align 32, !dbg !3124
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3124
  %374 = load i8, i8* %373, align 8, !dbg !3124
  %375 = icmp eq i8 %374, 0, !dbg !3124
  br i1 %375, label %376, label %381, !dbg !3124

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3124
  %378 = load i8, i8* %377, align 64, !dbg !3124
  %379 = icmp eq i8 %378, 0, !dbg !3124
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377, !dbg !3124
  br label %381, !dbg !3124

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ], !dbg !3124
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3124
  br label %401, !dbg !3124

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3125

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3125
  %388 = load i64, i64* %387, align 32, !dbg !3125
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3125
  %390 = load i8, i8* %389, align 8, !dbg !3125
  %391 = icmp eq i8 %390, 0, !dbg !3125
  br i1 %391, label %392, label %397, !dbg !3125

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3125
  %394 = load i8, i8* %393, align 64, !dbg !3125
  %395 = icmp eq i8 %394, 0, !dbg !3125
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393, !dbg !3125
  br label %397, !dbg !3125

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ], !dbg !3125
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3125
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %402, metadata !2269, metadata !DIExpression()) #9, !dbg !3129
  %403 = icmp eq i64 %402, 0, !dbg !3130
  br i1 %403, label %434, label %404, !dbg !3131

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3132
  %406 = inttoptr i64 %405 to i16*, !dbg !3133
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3134
  br label %434, !dbg !3135

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2792, metadata !DIExpression()), !dbg !3136
  %409 = call i32 @nk_vc_is_active() #10, !dbg !3137
  %410 = icmp eq i32 %409, 0, !dbg !3137
  %411 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %411, metadata !2249, metadata !DIExpression()) #9, !dbg !3144
  %412 = icmp eq i64 %411, 0, !dbg !3145
  br i1 %412, label %418, label %413, !dbg !3146

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3147
  %415 = inttoptr i64 %414 to i16*, !dbg !3148
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3149
  %417 = icmp eq i16 %416, 0, !dbg !3150
  br i1 %417, label %418, label %419, !dbg !3151

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3151

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3151
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3151
  br i1 %410, label %425, label %423, !dbg !3152

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3153
  br label %427, !dbg !3153

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3155
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %428, metadata !2269, metadata !DIExpression()) #9, !dbg !3160
  %429 = icmp eq i64 %428, 0, !dbg !3161
  br i1 %429, label %434, label %430, !dbg !3162

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3163
  %432 = inttoptr i64 %431 to i16*, !dbg !3164
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3165
  br label %434, !dbg !3166

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3167
  %436 = load i64, i64* %435, align 8, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !3077
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3168
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3169
  store i64 %436, i64* %438, align 8, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !3077
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3170
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3171
  store i64 %436, i64* %440, align 8, !dbg !3171
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2772, metadata !DIExpression()), !dbg !3077
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3173
  store i32 1, i32* %442, align 8, !dbg !3174
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2772, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1792, metadata !DIExpression()) #9, !dbg !3175
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3177
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3177
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3178
  %446 = load i8*, i8** %445, align 8, !dbg !3178
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3179
  %448 = load i8**, i8*** %447, align 8, !dbg !3179
  call void %444(i8* %446, i8** %448) #10, !dbg !3180
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #10, !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3182
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #9, !dbg !3182
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3182
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8** %1, metadata !3186, metadata !DIExpression()), !dbg !3188
  br label %3, !dbg !3189

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #11, !dbg !3190
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3192
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !3197
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !3198
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !3198
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !3199
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !3200, metadata !DIExpression()), !dbg !3204
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !3206
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !3203, metadata !DIExpression()), !dbg !3207
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !3208
  br i1 %12, label %13, label %17, !dbg !3209

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !3210
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !3210
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !3211
  br i1 %16, label %18, label %17, !dbg !3212

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !3190, !llvm.loop !3213

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #10, !dbg !3215
  br label %17, !dbg !3217
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3218 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3223, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8** %2, metadata !3225, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %3, metadata !3226, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3227, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !3228, metadata !DIExpression()), !dbg !3239
  %6 = icmp eq i64 %3, 0, !dbg !3240
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %7, metadata !3229, metadata !DIExpression()), !dbg !3241
  %8 = tail call i8* @kmem_malloc(i64 152) #10, !dbg !3242
  call void @llvm.dbg.value(metadata i8* %8, metadata !3230, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i8* %8, metadata !3228, metadata !DIExpression()), !dbg !3239
  %9 = icmp eq i8* %8, null, !dbg !3243
  br i1 %9, label %104, label %10, !dbg !3245

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #10, !dbg !3246
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3247
  %13 = bitcast i8* %12 to i32*, !dbg !3247
  store i32 0, i32* %13, align 4, !dbg !3248
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3249
  %15 = bitcast i8* %14 to i64*, !dbg !3249
  store i64 %7, i64* %15, align 8, !dbg !3250
  %16 = tail call i8* @kmem_malloc(i64 %7) #10, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %16, metadata !3232, metadata !DIExpression()), !dbg !3251
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3252
  %18 = bitcast i8* %17 to i8**, !dbg !3252
  store i8* %16, i8** %18, align 8, !dbg !3253
  %19 = icmp eq i8* %16, null, !dbg !3254
  br i1 %19, label %20, label %21, !dbg !3256

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #10, !dbg !3257
  br label %104, !dbg !3259

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3256
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3260
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3260
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3261
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3262
  %26 = bitcast i8* %25 to i8**, !dbg !3262
  store i8* %1, i8** %26, align 8, !dbg !3263
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3264
  %28 = bitcast i8* %27 to i8***, !dbg !3264
  store i8** %2, i8*** %28, align 8, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %8, metadata !1802, metadata !DIExpression()), !dbg !3266
  %29 = load i64, i64* %15, align 8, !dbg !3268
  %30 = bitcast i8* %8 to i64*, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1422, metadata !DIExpression()), !dbg !3272
  %31 = add i64 %22, -8, !dbg !3273
  %32 = add i64 %31, %29, !dbg !3274
  store i64 %32, i64* %30, align 8, !dbg !3274
  %33 = inttoptr i64 %32 to i64*, !dbg !3275
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3279
  %34 = load i64, i64* %30, align 8, !dbg !3280
  %35 = add i64 %34, -8, !dbg !3280
  store i64 %35, i64* %30, align 8, !dbg !3280
  %36 = inttoptr i64 %35 to i64*, !dbg !3281
  store i64 0, i64* %36, align 8, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3285
  %37 = load i64, i64* %30, align 8, !dbg !3286
  %38 = add i64 %37, -8, !dbg !3286
  store i64 %38, i64* %30, align 8, !dbg !3286
  %39 = inttoptr i64 %38 to i64*, !dbg !3287
  store i64 0, i64* %39, align 8, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3291
  %40 = load i64, i64* %30, align 8, !dbg !3292
  %41 = add i64 %40, -8, !dbg !3292
  store i64 %41, i64* %30, align 8, !dbg !3292
  %42 = inttoptr i64 %41 to i64*, !dbg !3293
  store i64 0, i64* %42, align 8, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3297
  %43 = load i64, i64* %30, align 8, !dbg !3298
  %44 = add i64 %43, -8, !dbg !3298
  store i64 %44, i64* %30, align 8, !dbg !3298
  %45 = inttoptr i64 %44 to i64*, !dbg !3299
  store i64 0, i64* %45, align 8, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3303
  %46 = load i64, i64* %30, align 8, !dbg !3304
  %47 = add i64 %46, -8, !dbg !3304
  store i64 %47, i64* %30, align 8, !dbg !3304
  %48 = inttoptr i64 %47 to i64*, !dbg !3305
  store i64 0, i64* %48, align 8, !dbg !3306
  %49 = ptrtoint i8* %8 to i64, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %49, metadata !1422, metadata !DIExpression()), !dbg !3310
  %50 = load i64, i64* %30, align 8, !dbg !3311
  %51 = add i64 %50, -8, !dbg !3311
  store i64 %51, i64* %30, align 8, !dbg !3311
  %52 = inttoptr i64 %51 to i64*, !dbg !3312
  store i64 %49, i64* %52, align 8, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3316
  %53 = load i64, i64* %30, align 8, !dbg !3317
  %54 = add i64 %53, -8, !dbg !3317
  store i64 %54, i64* %30, align 8, !dbg !3317
  %55 = inttoptr i64 %54 to i64*, !dbg !3318
  store i64 0, i64* %55, align 8, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3322
  %56 = load i64, i64* %30, align 8, !dbg !3323
  %57 = add i64 %56, -8, !dbg !3323
  store i64 %57, i64* %30, align 8, !dbg !3323
  %58 = inttoptr i64 %57 to i64*, !dbg !3324
  store i64 0, i64* %58, align 8, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3328
  %59 = load i64, i64* %30, align 8, !dbg !3329
  %60 = add i64 %59, -8, !dbg !3329
  store i64 %60, i64* %30, align 8, !dbg !3329
  %61 = inttoptr i64 %60 to i64*, !dbg !3330
  store i64 0, i64* %61, align 8, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3334
  %62 = load i64, i64* %30, align 8, !dbg !3335
  %63 = add i64 %62, -8, !dbg !3335
  store i64 %63, i64* %30, align 8, !dbg !3335
  %64 = inttoptr i64 %63 to i64*, !dbg !3336
  store i64 0, i64* %64, align 8, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3340
  %65 = load i64, i64* %30, align 8, !dbg !3341
  %66 = add i64 %65, -8, !dbg !3341
  store i64 %66, i64* %30, align 8, !dbg !3341
  %67 = inttoptr i64 %66 to i64*, !dbg !3342
  store i64 0, i64* %67, align 8, !dbg !3343
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3346
  %68 = load i64, i64* %30, align 8, !dbg !3347
  %69 = add i64 %68, -8, !dbg !3347
  store i64 %69, i64* %30, align 8, !dbg !3347
  %70 = inttoptr i64 %69 to i64*, !dbg !3348
  store i64 0, i64* %70, align 8, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3352
  %71 = load i64, i64* %30, align 8, !dbg !3353
  %72 = add i64 %71, -8, !dbg !3353
  store i64 %72, i64* %30, align 8, !dbg !3353
  %73 = inttoptr i64 %72 to i64*, !dbg !3354
  store i64 0, i64* %73, align 8, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3358
  %74 = load i64, i64* %30, align 8, !dbg !3359
  %75 = add i64 %74, -8, !dbg !3359
  store i64 %75, i64* %30, align 8, !dbg !3359
  %76 = inttoptr i64 %75 to i64*, !dbg !3360
  store i64 0, i64* %76, align 8, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %49, metadata !1421, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !3364
  %77 = load i64, i64* %30, align 8, !dbg !3365
  %78 = add i64 %77, -8, !dbg !3365
  store i64 %78, i64* %30, align 8, !dbg !3365
  %79 = inttoptr i64 %78 to i64*, !dbg !3366
  store i64 0, i64* %79, align 8, !dbg !3367
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3368
  br i1 %80, label %83, label %81, !dbg !3370

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3371
  store i8* %8, i8** %82, align 8, !dbg !3371
  br label %83, !dbg !3373

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3374, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1997, metadata !DIExpression()) #9, !dbg !3374
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1996, metadata !DIExpression()) #9, !dbg !3376
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3377
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3377
  %87 = load i64, i64* %86, align 8, !dbg !3377
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3378
  %89 = bitcast i8* %88 to i64*, !dbg !3379
  store i64 %87, i64* %89, align 8, !dbg !3379
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %90, metadata !1487, metadata !DIExpression()), !dbg !3381
  %91 = bitcast i8* %90 to i8**, !dbg !3383
  store i8* %90, i8** %91, align 8, !dbg !3383
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3384
  %93 = bitcast i8* %92 to i8**, !dbg !3385
  store i8* %90, i8** %93, align 8, !dbg !3385
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3386
  %95 = bitcast i8* %94 to i32*, !dbg !3386
  store i32 0, i32* %95, align 8, !dbg !3387
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %96, metadata !1487, metadata !DIExpression()), !dbg !3389
  %97 = bitcast i8* %96 to i8**, !dbg !3391
  store i8* %96, i8** %97, align 8, !dbg !3391
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3392
  %99 = bitcast i8* %98 to i8**, !dbg !3393
  store i8* %96, i8** %99, align 8, !dbg !3393
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %100, metadata !1487, metadata !DIExpression()), !dbg !3395
  %101 = bitcast i8* %100 to i8**, !dbg !3397
  store i8* %100, i8** %101, align 8, !dbg !3397
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3398
  %103 = bitcast i8* %102 to i8**, !dbg !3399
  store i8* %100, i8** %103, align 8, !dbg !3399
  br label %104, !dbg !3400

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3401
  ret i32 %105, !dbg !3402
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !3403 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3406
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3411
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3412
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3412
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3413
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3413
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3414, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1997, metadata !DIExpression()) #9, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1996, metadata !DIExpression()) #9, !dbg !3416
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3417
  br i1 %8, label %9, label %54, !dbg !3418

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3419
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3424
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3425
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3425
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1432, metadata !DIExpression()) #9, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1433, metadata !DIExpression()) #9, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1453, metadata !DIExpression()) #9, !dbg !3429
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3431
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3431
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3432
  br i1 %17, label %30, label %18, !dbg !3433

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1434, metadata !DIExpression()) #9, !dbg !3434
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3434
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1434, metadata !DIExpression()) #9, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1433, metadata !DIExpression()) #9, !dbg !3428
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1465, metadata !DIExpression()) #9, !dbg !3436
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3438
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3438
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1474, metadata !DIExpression()) #9, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1479, metadata !DIExpression()) #9, !dbg !3442
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3443
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3444
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3445
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1487, metadata !DIExpression()) #9, !dbg !3447
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3449
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3449
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3450
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1433, metadata !DIExpression()) #9, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3405, metadata !DIExpression()), !dbg !3451
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3452
  br i1 %29, label %30, label %51, !dbg !3454

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3455
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3461
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3462
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3462
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3463
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3463
  %37 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3464
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3468
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3469
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3469
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3470
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3470
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3471
  br i1 %43, label %54, label %44, !dbg !3472

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3473
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3478
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3479
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3479
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3480
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3405, metadata !DIExpression()), !dbg !3451
  br label %51, !dbg !3481

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3482
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3405, metadata !DIExpression()), !dbg !3451
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #11, !dbg !3483
  br label %54, !dbg !3484

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3482
  ret i32 %55, !dbg !3485
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3486 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3529
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3488, metadata !DIExpression()), !dbg !3532
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3533
  %5 = icmp eq i64 %4, 0, !dbg !3535
  %6 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %6, metadata !2209, metadata !DIExpression()) #9, !dbg !3539
  %7 = icmp eq i64 %6, 0, !dbg !3540
  br i1 %7, label %13, label %8, !dbg !3541

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3542
  %10 = inttoptr i64 %9 to i16*, !dbg !3543
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3544
  %12 = zext i16 %11 to i32, !dbg !3544
  br label %13, !dbg !3545

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3546
  %15 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %15, metadata !2225, metadata !DIExpression()) #9, !dbg !3550
  %16 = icmp eq i64 %15, 0, !dbg !3551
  br i1 %16, label %21, label %17, !dbg !3552

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3553
  %19 = inttoptr i64 %18 to i16*, !dbg !3554
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3555
  br label %21, !dbg !3556

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3557

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3489, metadata !DIExpression()), !dbg !3558
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3559, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1997, metadata !DIExpression()) #9, !dbg !3559
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1996, metadata !DIExpression()) #9, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3493, metadata !DIExpression()), !dbg !3558
  %24 = tail call i32 @nk_vc_is_active() #10, !dbg !3562
  %25 = icmp eq i32 %24, 0, !dbg !3562
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3563
  %27 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %27, metadata !2249, metadata !DIExpression()) #9, !dbg !3568
  %28 = icmp eq i64 %27, 0, !dbg !3569
  br i1 %28, label %34, label %29, !dbg !3570

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3571
  %31 = inttoptr i64 %30 to i16*, !dbg !3572
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3573
  %33 = icmp eq i16 %32, 0, !dbg !3574
  br i1 %33, label %34, label %35, !dbg !3563

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3563

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3563
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3563
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3563
  br i1 %25, label %58, label %40, !dbg !3575

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3576

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3576
  %43 = load i64, i64* %42, align 32, !dbg !3576
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3576
  %45 = load i8, i8* %44, align 8, !dbg !3576
  %46 = icmp eq i8 %45, 0, !dbg !3576
  br i1 %46, label %47, label %52, !dbg !3576

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3576
  %49 = load i8, i8* %48, align 64, !dbg !3576
  %50 = icmp eq i8 %49, 0, !dbg !3576
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48, !dbg !3576
  br label %52, !dbg !3576

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ], !dbg !3576
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3576
  %56 = load i32, i32* %55, align 8, !dbg !3576
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.70, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #10, !dbg !3576
  br label %76, !dbg !3576

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3577

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3577
  %61 = load i64, i64* %60, align 32, !dbg !3577
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3577
  %63 = load i8, i8* %62, align 8, !dbg !3577
  %64 = icmp eq i8 %63, 0, !dbg !3577
  br i1 %64, label %65, label %70, !dbg !3577

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3577
  %67 = load i8, i8* %66, align 64, !dbg !3577
  %68 = icmp eq i8 %67, 0, !dbg !3577
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66, !dbg !3577
  br label %70, !dbg !3577

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ], !dbg !3577
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3577
  %74 = load i32, i32* %73, align 8, !dbg !3577
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.70, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #10, !dbg !3577
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %77, metadata !2269, metadata !DIExpression()) #9, !dbg !3581
  %78 = icmp eq i64 %77, 0, !dbg !3582
  br i1 %78, label %111, label %79, !dbg !3583

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3584
  %81 = inttoptr i64 %80 to i16*, !dbg !3585
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3586
  br label %111, !dbg !3587

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3506, metadata !DIExpression()), !dbg !3588
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !3589
  %85 = icmp eq i32 %84, 0, !dbg !3589
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %86, metadata !2249, metadata !DIExpression()) #9, !dbg !3596
  %87 = icmp eq i64 %86, 0, !dbg !3597
  br i1 %87, label %93, label %88, !dbg !3598

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3599
  %90 = inttoptr i64 %89 to i16*, !dbg !3600
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3601
  %92 = icmp eq i16 %91, 0, !dbg !3602
  br i1 %92, label %93, label %94, !dbg !3603

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3603

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3603
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3603
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3603
  %99 = load i32, i32* %98, align 8, !dbg !3603
  br i1 %85, label %102, label %100, !dbg !3604

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.71, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3605
  br label %104, !dbg !3605

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.71, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3607
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %105, metadata !2269, metadata !DIExpression()) #9, !dbg !3612
  %106 = icmp eq i64 %105, 0, !dbg !3613
  br i1 %106, label %111, label %107, !dbg !3614

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3615
  %109 = inttoptr i64 %108 to i16*, !dbg !3616
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3617
  br label %111, !dbg !3618

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3619
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3619
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3650, !srcloc !3651
  call void @llvm.dbg.value(metadata i32 %113, metadata !3627, metadata !DIExpression()) #9, !dbg !3650
  call void @llvm.dbg.value(metadata i32 %113, metadata !3624, metadata !DIExpression()) #9, !dbg !3652
  call void @llvm.dbg.value(metadata i8** %1, metadata !3622, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3653
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #10, !dbg !3654
  %115 = icmp eq i32 %114, 0, !dbg !3654
  br i1 %115, label %321, label %116, !dbg !3655

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3656
  %118 = icmp eq i64 %117, 0, !dbg !3658
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %119, metadata !2209, metadata !DIExpression()) #9, !dbg !3662
  %120 = icmp eq i64 %119, 0, !dbg !3663
  br i1 %120, label %126, label %121, !dbg !3664

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3665
  %123 = inttoptr i64 %122 to i16*, !dbg !3666
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3667
  %125 = zext i16 %124 to i32, !dbg !3667
  br label %126, !dbg !3668

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3669
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %128, metadata !2225, metadata !DIExpression()) #9, !dbg !3673
  %129 = icmp eq i64 %128, 0, !dbg !3674
  br i1 %129, label %134, label %130, !dbg !3675

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3676
  %132 = inttoptr i64 %131 to i16*, !dbg !3677
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3678
  br label %134, !dbg !3679

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3680

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3629, metadata !DIExpression()) #9, !dbg !3681
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3682, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1997, metadata !DIExpression()) #9, !dbg !3682
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1996, metadata !DIExpression()) #9, !dbg !3684
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3634, metadata !DIExpression()) #9, !dbg !3681
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3685
  %138 = icmp eq i32 %137, 0, !dbg !3685
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3686
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %140, metadata !2249, metadata !DIExpression()) #9, !dbg !3691
  %141 = icmp eq i64 %140, 0, !dbg !3692
  br i1 %141, label %147, label %142, !dbg !3693

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3694
  %144 = inttoptr i64 %143 to i16*, !dbg !3695
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3696
  %146 = icmp eq i16 %145, 0, !dbg !3697
  br i1 %146, label %147, label %148, !dbg !3686

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3686

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3686
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3686
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3686
  br i1 %138, label %169, label %153, !dbg !3698

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3699

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3699
  %156 = load i64, i64* %155, align 32, !dbg !3699
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3699
  %158 = load i8, i8* %157, align 8, !dbg !3699
  %159 = icmp eq i8 %158, 0, !dbg !3699
  br i1 %159, label %160, label %165, !dbg !3699

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3699
  %162 = load i8, i8* %161, align 64, !dbg !3699
  %163 = icmp eq i8 %162, 0, !dbg !3699
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3699
  br label %165, !dbg !3699

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3699
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.72, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3699
  br label %185, !dbg !3699

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3700

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3700
  %172 = load i64, i64* %171, align 32, !dbg !3700
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3700
  %174 = load i8, i8* %173, align 8, !dbg !3700
  %175 = icmp eq i8 %174, 0, !dbg !3700
  br i1 %175, label %176, label %181, !dbg !3700

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3700
  %178 = load i8, i8* %177, align 64, !dbg !3700
  %179 = icmp eq i8 %178, 0, !dbg !3700
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3700
  br label %181, !dbg !3700

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3700
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.72, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3700
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %186, metadata !2269, metadata !DIExpression()) #9, !dbg !3704
  %187 = icmp eq i64 %186, 0, !dbg !3705
  br i1 %187, label %218, label %188, !dbg !3706

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3707
  %190 = inttoptr i64 %189 to i16*, !dbg !3708
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3709
  br label %218, !dbg !3710

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3647, metadata !DIExpression()) #9, !dbg !3711
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3712
  %194 = icmp eq i32 %193, 0, !dbg !3712
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %195, metadata !2249, metadata !DIExpression()) #9, !dbg !3719
  %196 = icmp eq i64 %195, 0, !dbg !3720
  br i1 %196, label %202, label %197, !dbg !3721

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3722
  %199 = inttoptr i64 %198 to i16*, !dbg !3723
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3724
  %201 = icmp eq i16 %200, 0, !dbg !3725
  br i1 %201, label %202, label %203, !dbg !3726

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3726

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3726
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3726
  br i1 %194, label %209, label %207, !dbg !3727

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.73, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3728
  br label %211, !dbg !3728

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.73, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3730
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %212, metadata !2269, metadata !DIExpression()) #9, !dbg !3735
  %213 = icmp eq i64 %212, 0, !dbg !3736
  br i1 %213, label %218, label %214, !dbg !3737

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3738
  %216 = inttoptr i64 %215 to i16*, !dbg !3739
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3740
  br label %218, !dbg !3741

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3742
  %219 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3743
  %220 = icmp eq i64 %219, 0, !dbg !3745
  %221 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %221, metadata !2209, metadata !DIExpression()) #9, !dbg !3749
  %222 = icmp eq i64 %221, 0, !dbg !3750
  br i1 %222, label %228, label %223, !dbg !3751

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3752
  %225 = inttoptr i64 %224 to i16*, !dbg !3753
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3754
  %227 = zext i16 %226 to i32, !dbg !3754
  br label %228, !dbg !3755

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3756
  %230 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %230, metadata !2225, metadata !DIExpression()) #9, !dbg !3760
  %231 = icmp eq i64 %230, 0, !dbg !3761
  br i1 %231, label %236, label %232, !dbg !3762

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3763
  %234 = inttoptr i64 %233 to i16*, !dbg !3764
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3765
  br label %236, !dbg !3766

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3767

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3508, metadata !DIExpression()), !dbg !3768
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3769, !srcloc !1999
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1997, metadata !DIExpression()) #9, !dbg !3769
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1996, metadata !DIExpression()) #9, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3514, metadata !DIExpression()), !dbg !3768
  %239 = call i32 @nk_vc_is_active() #10, !dbg !3772
  %240 = icmp eq i32 %239, 0, !dbg !3772
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3773
  %242 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %242, metadata !2249, metadata !DIExpression()) #9, !dbg !3778
  %243 = icmp eq i64 %242, 0, !dbg !3779
  br i1 %243, label %249, label %244, !dbg !3780

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3781
  %246 = inttoptr i64 %245 to i16*, !dbg !3782
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3783
  %248 = icmp eq i16 %247, 0, !dbg !3784
  br i1 %248, label %249, label %250, !dbg !3773

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3773

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3773
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3773
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3773
  br i1 %240, label %271, label %255, !dbg !3785

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3786

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3786
  %258 = load i64, i64* %257, align 32, !dbg !3786
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3786
  %260 = load i8, i8* %259, align 8, !dbg !3786
  %261 = icmp eq i8 %260, 0, !dbg !3786
  br i1 %261, label %262, label %267, !dbg !3786

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3786
  %264 = load i8, i8* %263, align 64, !dbg !3786
  %265 = icmp eq i8 %264, 0, !dbg !3786
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263, !dbg !3786
  br label %267, !dbg !3786

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ], !dbg !3786
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.74, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3786
  br label %287, !dbg !3786

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3787

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3787
  %274 = load i64, i64* %273, align 32, !dbg !3787
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3787
  %276 = load i8, i8* %275, align 8, !dbg !3787
  %277 = icmp eq i8 %276, 0, !dbg !3787
  br i1 %277, label %278, label %283, !dbg !3787

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3787
  %280 = load i8, i8* %279, align 64, !dbg !3787
  %281 = icmp eq i8 %280, 0, !dbg !3787
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279, !dbg !3787
  br label %283, !dbg !3787

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ], !dbg !3787
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.74, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3787
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %288, metadata !2269, metadata !DIExpression()) #9, !dbg !3791
  %289 = icmp eq i64 %288, 0, !dbg !3792
  br i1 %289, label %320, label %290, !dbg !3793

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3794
  %292 = inttoptr i64 %291 to i16*, !dbg !3795
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3796
  br label %320, !dbg !3797

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3527, metadata !DIExpression()), !dbg !3798
  %295 = call i32 @nk_vc_is_active() #10, !dbg !3799
  %296 = icmp eq i32 %295, 0, !dbg !3799
  %297 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %297, metadata !2249, metadata !DIExpression()) #9, !dbg !3806
  %298 = icmp eq i64 %297, 0, !dbg !3807
  br i1 %298, label %304, label %299, !dbg !3808

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3809
  %301 = inttoptr i64 %300 to i16*, !dbg !3810
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3811
  %303 = icmp eq i16 %302, 0, !dbg !3812
  br i1 %303, label %304, label %305, !dbg !3813

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3813

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3813
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3813
  br i1 %296, label %311, label %309, !dbg !3814

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.75, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3815
  br label %313, !dbg !3815

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.75, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3817
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %314, metadata !2269, metadata !DIExpression()) #9, !dbg !3822
  %315 = icmp eq i64 %314, 0, !dbg !3823
  br i1 %315, label %320, label %316, !dbg !3824

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3825
  %318 = inttoptr i64 %317 to i16*, !dbg !3826
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3827
  br label %320, !dbg !3828

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.76, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 576) #12, !dbg !3829
  unreachable, !dbg !3829

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3742
  ret void, !dbg !3830
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3831 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3835, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8** %2, metadata !3837, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 %3, metadata !3838, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %4, metadata !3839, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3840, metadata !DIExpression()), !dbg !3846
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #11, !dbg !3847
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3848
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #11, !dbg !3849
  ret i32 0, !dbg !3850
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3851 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.81, i64 0, i64 0)) #10, !dbg !3852
  %2 = tail call i32 @nk_fiber_yield() #11, !dbg !3853
  ret i32 %2, !dbg !3854
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3855 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3857, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2091, metadata !DIExpression()) #9, !dbg !3862
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !3864, !srcloc !2112
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2095, metadata !DIExpression()) #9, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2093, metadata !DIExpression()) #9, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2092, metadata !DIExpression()) #9, !dbg !3866
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3867
  %4 = load i32, i32* %3, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata i32 %4, metadata !2097, metadata !DIExpression()) #9, !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !2100, metadata !DIExpression()) #9, !dbg !3869
  %5 = icmp sgt i32 %4, 0, !dbg !3870
  br i1 %5, label %6, label %30, !dbg !3871

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3872
  br label %8, !dbg !3872

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2100, metadata !DIExpression()) #9, !dbg !3869
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3872
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3872
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3873
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3873
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3874
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2098, metadata !DIExpression()) #9, !dbg !3875
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3876
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2102, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3876
  call void @llvm.dbg.value(metadata i8** %15, metadata !2099, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !3877
  %16 = load i8*, i8** %15, align 8, !dbg !3878
  br label %17, !dbg !3879

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3878
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3880
  %20 = bitcast i8* %18 to i8**, !dbg !3880
  %21 = load i8*, i8** %20, align 8, !dbg !3880
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #9, !dbg !3880
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3880
  br i1 %22, label %27, label %23, !dbg !3879

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3878
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3878
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2099, metadata !DIExpression()) #9, !dbg !3877
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3881
  br i1 %26, label %75, label %17, !dbg !3882, !llvm.loop !2133

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3883
  call void @llvm.dbg.value(metadata i32 undef, metadata !2100, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !3869
  %29 = icmp slt i64 %28, %7, !dbg !3870
  br i1 %29, label %8, label %30, !dbg !3871, !llvm.loop !2136

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3884
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3889
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3890
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3890
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !3891
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1432, metadata !DIExpression()) #9, !dbg !3892
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1433, metadata !DIExpression()) #9, !dbg !3893
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1453, metadata !DIExpression()) #9, !dbg !3894
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !3896
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !3896
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !3897
  br i1 %38, label %51, label %39, !dbg !3898

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1434, metadata !DIExpression()) #9, !dbg !3899
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !3899
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !3899
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1434, metadata !DIExpression()) #9, !dbg !3899
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1433, metadata !DIExpression()) #9, !dbg !3893
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1465, metadata !DIExpression()) #9, !dbg !3901
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !3903
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !3903
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3904
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1474, metadata !DIExpression()) #9, !dbg !3905
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1479, metadata !DIExpression()) #9, !dbg !3907
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !3908
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3909
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !3910
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !3911
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1487, metadata !DIExpression()) #9, !dbg !3912
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3914
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !3914
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !3915
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !3915
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1433, metadata !DIExpression()) #9, !dbg !3893
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3858, metadata !DIExpression()), !dbg !3916
  %50 = icmp eq %struct.list_head** %40, null, !dbg !3917
  br i1 %50, label %51, label %72, !dbg !3919

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3920
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !3926
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !3927
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !3927
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !3928
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !3928
  %58 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3929
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3933
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3934
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3934
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !3935
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !3935
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !3936
  br i1 %64, label %84, label %65, !dbg !3937

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3938
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !3943
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !3944
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !3944
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !3945
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !3945
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3858, metadata !DIExpression()), !dbg !3916
  br label %72, !dbg !3946

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !3947
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3858, metadata !DIExpression()), !dbg !3916
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #11, !dbg !3948
  br label %84, !dbg !3949

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3950
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1465, metadata !DIExpression()) #9, !dbg !3951
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3953
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !3953
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !3954
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !3954
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1474, metadata !DIExpression()) #9, !dbg !3955
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1479, metadata !DIExpression()) #9, !dbg !3957
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !3958
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !3959
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !3960
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !3961
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1487, metadata !DIExpression()) #9, !dbg !3962
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !3964
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !3965
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !3966
  br label %84, !dbg !3967

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !3968
  ret i32 %85, !dbg !3969
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3970 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !3977, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i8* %1, metadata !3978, metadata !DIExpression()), !dbg !3980
  %3 = tail call zeroext i8 %0(i8* %1) #10, !dbg !3981
  %4 = icmp eq i8 %3, 0, !dbg !3981
  br i1 %4, label %7, label %5, !dbg !3983

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #11, !dbg !3984
  br label %7, !dbg !3986

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !3987
  ret i32 %8, !dbg !3988
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3989 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %2, metadata !3995, metadata !DIExpression()), !dbg !3998
  %4 = tail call zeroext i8 %1(i8* %2) #10, !dbg !3999
  %5 = icmp eq i8 %4, 0, !dbg !3999
  br i1 %5, label %8, label %6, !dbg !4001

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4002
  br label %8, !dbg !4004

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4005
  ret i32 %9, !dbg !4006
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4007 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4026
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4030
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4031
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4031
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4032
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4032
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4009, metadata !DIExpression()), !dbg !4033
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4034, !srcloc !4035
  call void @llvm.dbg.value(metadata i64 %8, metadata !4016, metadata !DIExpression()), !dbg !4036
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4037
  call void @llvm.dbg.value(metadata i8* %9, metadata !4017, metadata !DIExpression()), !dbg !4038
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4039
  call void @llvm.dbg.value(metadata i8* %10, metadata !4018, metadata !DIExpression()), !dbg !4040
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4041
  call void @llvm.dbg.value(metadata i8* %11, metadata !4019, metadata !DIExpression()), !dbg !4042
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4043
  call void @llvm.dbg.value(metadata i8* %12, metadata !4020, metadata !DIExpression()), !dbg !4044
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4045
  %14 = load i8*, i8** %13, align 8, !dbg !4045
  %15 = icmp ugt i8* %11, %14, !dbg !4047
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4048
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4049
  %19 = icmp ult i8* %11, %18, !dbg !4050
  %20 = and i1 %15, %19, !dbg !4051
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %21, metadata !4019, metadata !DIExpression()), !dbg !4042
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %22, metadata !4021, metadata !DIExpression()), !dbg !4053
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4054
  %24 = ptrtoint i8* %23 to i64, !dbg !4055
  %25 = ptrtoint i8* %12 to i64, !dbg !4055
  %26 = sub i64 %24, %25, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %26, metadata !4010, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4056
  %27 = ptrtoint i8* %10 to i64, !dbg !4057
  call void @llvm.dbg.value(metadata i64 undef, metadata !4012, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 72, metadata !4013, metadata !DIExpression()), !dbg !4059
  %28 = bitcast i8* %22 to i64*, !dbg !4060
  %29 = load i64, i64* %28, align 8, !dbg !4060
  %30 = sub i64 %29, %25, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %30, metadata !4014, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64 %17, metadata !4011, metadata !DIExpression()), !dbg !4063
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4064
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4064
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4022, metadata !DIExpression(DW_OP_deref)), !dbg !4065
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #11, !dbg !4066
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4067
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4022, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !1421, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !1422, metadata !DIExpression()), !dbg !4070
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4071
  %35 = load i64, i64* %34, align 8, !dbg !4072
  %36 = add i64 %35, -8, !dbg !4072
  store i64 %36, i64* %34, align 8, !dbg !4072
  %37 = inttoptr i64 %36 to i64*, !dbg !4073
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4074
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4022, metadata !DIExpression()), !dbg !4065
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4076
  %40 = load i8*, i8** %39, align 8, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %40, metadata !4015, metadata !DIExpression()), !dbg !4077
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4078
  %42 = sub i64 -16, %26, !dbg !4079
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4079
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #10, !dbg !4080
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4081
  %46 = ptrtoint i8* %45 to i64, !dbg !4082
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4022, metadata !DIExpression()), !dbg !4065
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4084
  store i64 %46, i64* %48, align 8, !dbg !4085
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4022, metadata !DIExpression()), !dbg !4065
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4087
  %51 = load i64, i64* %50, align 8, !dbg !4087
  %52 = add i64 %51, 64, !dbg !4088
  %53 = inttoptr i64 %52 to i8**, !dbg !4089
  call void @llvm.dbg.value(metadata i8** %53, metadata !4023, metadata !DIExpression()), !dbg !4090
  %54 = add i64 %30, %51, !dbg !4091
  %55 = inttoptr i64 %54 to i8*, !dbg !4092
  store i8* %55, i8** %53, align 8, !dbg !4093
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4094
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4022, metadata !DIExpression()), !dbg !4065
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4095
  %58 = load i64, i64* %57, align 8, !dbg !4095
  %59 = sub i64 8, %25, !dbg !4057
  %60 = add i64 %59, %27, !dbg !4096
  %61 = add i64 %60, %58, !dbg !4097
  %62 = inttoptr i64 %61 to i8**, !dbg !4098
  call void @llvm.dbg.value(metadata i8** %62, metadata !4024, metadata !DIExpression()), !dbg !4099
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4100
  call void @llvm.dbg.value(metadata i8** %63, metadata !4025, metadata !DIExpression()), !dbg !4101
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4102
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4102
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4103
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4022, metadata !DIExpression()), !dbg !4065
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4104
  %67 = load i64, i64* %66, align 8, !dbg !4104
  %68 = add i64 %67, 112, !dbg !4105
  %69 = inttoptr i64 %68 to i64*, !dbg !4106
  store i64 0, i64* %69, align 8, !dbg !4107
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4108
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4022, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1544, metadata !DIExpression()) #9, !dbg !4109
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()) #9, !dbg !4111
  %71 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4112
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1550, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !4117
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4118
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4118
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4118
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4118
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1550, metadata !DIExpression()) #9, !dbg !4117
  %77 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4119
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4123
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4124
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4124
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4125
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1551, metadata !DIExpression()) #9, !dbg !4126
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4127
  store i32 1, i32* %82, align 4, !dbg !4128
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4129
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1613, metadata !DIExpression()) #9, !dbg !4130
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1616, metadata !DIExpression()) #9, !dbg !4132
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4133
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4133
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1621, metadata !DIExpression()) #9, !dbg !4134
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1626, metadata !DIExpression()) #9, !dbg !4136
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1627, metadata !DIExpression()) #9, !dbg !4137
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4138
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4139
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4140
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4141
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4142
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4143
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4144
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4145
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4145
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4146
  br i1 %91, label %94, label %92, !dbg !4147

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #10, !dbg !4148
  br label %94, !dbg !4149

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4150
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4022, metadata !DIExpression()), !dbg !4065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4151
  ret %struct.nk_fiber* %95, !dbg !4152
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4153 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4155, metadata !DIExpression()), !dbg !4158
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4159
  br i1 %2, label %22, label %3, !dbg !4161

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4162
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4166
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4167
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4167
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4168
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4168
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4156, metadata !DIExpression()), !dbg !4169
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4157, metadata !DIExpression()), !dbg !4171
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1613, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1616, metadata !DIExpression()), !dbg !4175
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4176
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4176
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1621, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1626, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1627, metadata !DIExpression()), !dbg !4180
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4181
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4182
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4183
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4184
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4185
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4186
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4187
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4188
  %18 = load i32, i32* %17, align 8, !dbg !4189
  %19 = add i32 %18, 1, !dbg !4189
  store i32 %19, i32* %17, align 8, !dbg !4189
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4190
  store i32 3, i32* %20, align 4, !dbg !4191
  %21 = tail call i32 @nk_fiber_yield() #11, !dbg !4192
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !4193
  ret i32 %23, !dbg !4194
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
!576 = !{i32 -2147275506}
!577 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !575)
!578 = !DILocation(line: 452, column: 26, scope: !560, inlinedAt: !565)
!579 = !DILocation(line: 452, column: 6, scope: !560, inlinedAt: !565)
!580 = !DILocation(line: 453, column: 3, scope: !560, inlinedAt: !565)
!581 = !DILocation(line: 451, column: 15, scope: !560, inlinedAt: !565)
!582 = !DILocation(line: 454, column: 3, scope: !560, inlinedAt: !565)
!583 = !DILocation(line: 456, column: 1, scope: !560, inlinedAt: !565)
!584 = !DILocation(line: 536, column: 3, scope: !553)
!585 = distinct !DISubprogram(name: "fiber_routine3", scope: !3, file: !3, line: 310, type: !64, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !586)
!586 = !{!587, !588, !589, !590, !591}
!587 = !DILocalVariable(name: "i", arg: 1, scope: !585, file: !3, line: 310, type: !33)
!588 = !DILocalVariable(name: "o", arg: 2, scope: !585, file: !3, line: 310, type: !66)
!589 = !DILocalVariable(name: "a", scope: !585, file: !3, line: 313, type: !50)
!590 = !DILocalVariable(name: "f_new", scope: !585, file: !3, line: 314, type: !24)
!591 = !DILocalVariable(name: "curr", scope: !592, file: !3, line: 318, type: !24)
!592 = distinct !DILexicalBlock(scope: !585, file: !3, line: 315, column: 15)
!593 = !DILocation(line: 310, column: 27, scope: !585)
!594 = !DILocation(line: 310, column: 37, scope: !585)
!595 = !DILocation(line: 312, column: 19, scope: !585)
!596 = !DILocation(line: 312, column: 3, scope: !585)
!597 = !DILocation(line: 313, column: 7, scope: !585)
!598 = !DILocation(line: 316, column: 13, scope: !592)
!599 = !DILocation(line: 314, column: 15, scope: !585)
!600 = !DILocation(line: 318, column: 17, scope: !592)
!601 = !DILocation(line: 319, column: 5, scope: !592)
!602 = !DILocation(line: 322, column: 3, scope: !585)
!603 = !DILocation(line: 323, column: 1, scope: !585)
!604 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !605)
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "buf", arg: 1, scope: !604, file: !3, line: 526, type: !137)
!607 = !DILocalVariable(name: "priv", arg: 2, scope: !604, file: !3, line: 526, type: !33)
!608 = !DILocation(line: 526, column: 24, scope: !604)
!609 = !DILocation(line: 526, column: 36, scope: !604)
!610 = !DILocation(line: 442, column: 3, scope: !611, inlinedAt: !614)
!611 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !561, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!612 = !{!613}
!613 = !DILocalVariable(name: "f_orig", scope: !611, file: !3, line: 442, type: !24)
!614 = distinct !DILocation(line: 528, column: 3, scope: !604)
!615 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !616)
!616 = distinct !DILocation(line: 443, column: 8, scope: !611, inlinedAt: !614)
!617 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !616)
!618 = !DILocation(line: 443, column: 26, scope: !611, inlinedAt: !614)
!619 = !DILocation(line: 443, column: 6, scope: !611, inlinedAt: !614)
!620 = !DILocation(line: 444, column: 3, scope: !611, inlinedAt: !614)
!621 = !DILocation(line: 442, column: 15, scope: !611, inlinedAt: !614)
!622 = !DILocation(line: 445, column: 3, scope: !611, inlinedAt: !614)
!623 = !DILocation(line: 447, column: 1, scope: !611, inlinedAt: !614)
!624 = !DILocation(line: 529, column: 3, scope: !604)
!625 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!626 = !{!627, !628, !629, !630, !631, !633}
!627 = !DILocalVariable(name: "i", arg: 1, scope: !625, file: !3, line: 290, type: !33)
!628 = !DILocalVariable(name: "o", arg: 2, scope: !625, file: !3, line: 290, type: !66)
!629 = !DILocalVariable(name: "a", scope: !625, file: !3, line: 293, type: !50)
!630 = !DILocalVariable(name: "f_new", scope: !625, file: !3, line: 294, type: !24)
!631 = !DILocalVariable(name: "curr", scope: !632, file: !3, line: 298, type: !24)
!632 = distinct !DILexicalBlock(scope: !625, file: !3, line: 295, column: 15)
!633 = !DILocalVariable(name: "new", scope: !634, file: !3, line: 300, type: !24)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 299, column: 14)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 299, column: 8)
!636 = !DILocation(line: 290, column: 27, scope: !625)
!637 = !DILocation(line: 290, column: 37, scope: !625)
!638 = !DILocation(line: 292, column: 19, scope: !625)
!639 = !DILocation(line: 292, column: 3, scope: !625)
!640 = !DILocation(line: 293, column: 7, scope: !625)
!641 = !DILocation(line: 296, column: 13, scope: !632)
!642 = !DILocation(line: 294, column: 15, scope: !625)
!643 = !DILocation(line: 298, column: 17, scope: !632)
!644 = !DILocation(line: 299, column: 8, scope: !635)
!645 = !DILocation(line: 299, column: 8, scope: !632)
!646 = !DILocation(line: 300, column: 7, scope: !634)
!647 = !DILocation(line: 300, column: 19, scope: !634)
!648 = !DILocation(line: 301, column: 7, scope: !634)
!649 = !DILocation(line: 303, column: 5, scope: !635)
!650 = !DILocation(line: 304, column: 5, scope: !632)
!651 = !DILocation(line: 307, column: 3, scope: !625)
!652 = !DILocation(line: 308, column: 1, scope: !625)
!653 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "i", arg: 1, scope: !653, file: !3, line: 282, type: !33)
!656 = !DILocalVariable(name: "o", arg: 2, scope: !653, file: !3, line: 282, type: !66)
!657 = !DILocation(line: 282, column: 27, scope: !653)
!658 = !DILocation(line: 282, column: 37, scope: !653)
!659 = !DILocation(line: 284, column: 19, scope: !653)
!660 = !DILocation(line: 284, column: 3, scope: !653)
!661 = !DILocation(line: 286, column: 3, scope: !653)
!662 = !DILocation(line: 287, column: 1, scope: !653)
!663 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!664 = !{!665, !666}
!665 = !DILocalVariable(name: "buf", arg: 1, scope: !663, file: !3, line: 519, type: !137)
!666 = !DILocalVariable(name: "priv", arg: 2, scope: !663, file: !3, line: 519, type: !33)
!667 = !DILocation(line: 519, column: 24, scope: !663)
!668 = !DILocation(line: 519, column: 36, scope: !663)
!669 = !DILocation(line: 433, column: 3, scope: !670, inlinedAt: !673)
!670 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !561, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!671 = !{!672}
!672 = !DILocalVariable(name: "f_orig", scope: !670, file: !3, line: 433, type: !24)
!673 = distinct !DILocation(line: 521, column: 3, scope: !663)
!674 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !675)
!675 = distinct !DILocation(line: 434, column: 8, scope: !670, inlinedAt: !673)
!676 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !675)
!677 = !DILocation(line: 434, column: 26, scope: !670, inlinedAt: !673)
!678 = !DILocation(line: 434, column: 6, scope: !670, inlinedAt: !673)
!679 = !DILocation(line: 435, column: 3, scope: !670, inlinedAt: !673)
!680 = !DILocation(line: 433, column: 15, scope: !670, inlinedAt: !673)
!681 = !DILocation(line: 436, column: 3, scope: !670, inlinedAt: !673)
!682 = !DILocation(line: 438, column: 1, scope: !670, inlinedAt: !673)
!683 = !DILocation(line: 522, column: 3, scope: !663)
!684 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!685 = !{!686, !687, !688, !689, !690}
!686 = !DILocalVariable(name: "i", arg: 1, scope: !684, file: !3, line: 263, type: !33)
!687 = !DILocalVariable(name: "o", arg: 2, scope: !684, file: !3, line: 263, type: !66)
!688 = !DILocalVariable(name: "a", scope: !684, file: !3, line: 266, type: !50)
!689 = !DILocalVariable(name: "f_new", scope: !684, file: !3, line: 267, type: !24)
!690 = !DILocalVariable(name: "f_curr", scope: !684, file: !3, line: 274, type: !24)
!691 = !DILocation(line: 263, column: 28, scope: !684)
!692 = !DILocation(line: 263, column: 38, scope: !684)
!693 = !DILocation(line: 265, column: 19, scope: !684)
!694 = !DILocation(line: 265, column: 3, scope: !684)
!695 = !DILocation(line: 266, column: 7, scope: !684)
!696 = !DILocation(line: 268, column: 11, scope: !684)
!697 = !DILocation(line: 267, column: 15, scope: !684)
!698 = !DILocation(line: 269, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !684, file: !3, line: 269, column: 6)
!700 = !DILocation(line: 269, column: 6, scope: !684)
!701 = !DILocation(line: 270, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 269, column: 12)
!703 = !DILocation(line: 271, column: 3, scope: !702)
!704 = !DILocation(line: 274, column: 15, scope: !684)
!705 = !DILocation(line: 276, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !684, file: !3, line: 275, column: 15)
!707 = !DILocation(line: 279, column: 3, scope: !684)
!708 = !DILocation(line: 280, column: 1, scope: !684)
!709 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!710 = !{!711, !712}
!711 = !DILocalVariable(name: "buf", arg: 1, scope: !709, file: !3, line: 512, type: !137)
!712 = !DILocalVariable(name: "priv", arg: 2, scope: !709, file: !3, line: 512, type: !33)
!713 = !DILocation(line: 512, column: 24, scope: !709)
!714 = !DILocation(line: 512, column: 36, scope: !709)
!715 = !DILocation(line: 424, column: 3, scope: !716, inlinedAt: !719)
!716 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !561, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!717 = !{!718}
!718 = !DILocalVariable(name: "f_orig", scope: !716, file: !3, line: 424, type: !24)
!719 = distinct !DILocation(line: 514, column: 3, scope: !709)
!720 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !721)
!721 = distinct !DILocation(line: 425, column: 8, scope: !716, inlinedAt: !719)
!722 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !721)
!723 = !DILocation(line: 425, column: 26, scope: !716, inlinedAt: !719)
!724 = !DILocation(line: 425, column: 6, scope: !716, inlinedAt: !719)
!725 = !DILocation(line: 426, column: 3, scope: !716, inlinedAt: !719)
!726 = !DILocation(line: 424, column: 15, scope: !716, inlinedAt: !719)
!727 = !DILocation(line: 427, column: 3, scope: !716, inlinedAt: !719)
!728 = !DILocation(line: 429, column: 1, scope: !716, inlinedAt: !719)
!729 = !DILocation(line: 515, column: 3, scope: !709)
!730 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!731 = !{!732, !733, !734, !735}
!732 = !DILocalVariable(name: "i", arg: 1, scope: !730, file: !3, line: 249, type: !33)
!733 = !DILocalVariable(name: "o", arg: 2, scope: !730, file: !3, line: 249, type: !66)
!734 = !DILocalVariable(name: "a", scope: !730, file: !3, line: 252, type: !50)
!735 = !DILocalVariable(name: "f_new", scope: !730, file: !3, line: 253, type: !24)
!736 = !DILocation(line: 249, column: 23, scope: !730)
!737 = !DILocation(line: 249, column: 33, scope: !730)
!738 = !DILocation(line: 251, column: 19, scope: !730)
!739 = !DILocation(line: 251, column: 3, scope: !730)
!740 = !DILocation(line: 252, column: 7, scope: !730)
!741 = !DILocation(line: 254, column: 11, scope: !730)
!742 = !DILocation(line: 253, column: 15, scope: !730)
!743 = !DILocation(line: 257, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !730, file: !3, line: 255, column: 15)
!745 = !DILocation(line: 260, column: 3, scope: !730)
!746 = !DILocation(line: 261, column: 1, scope: !730)
!747 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!748 = !{!749, !750}
!749 = !DILocalVariable(name: "buf", arg: 1, scope: !747, file: !3, line: 505, type: !137)
!750 = !DILocalVariable(name: "priv", arg: 2, scope: !747, file: !3, line: 505, type: !33)
!751 = !DILocation(line: 505, column: 24, scope: !747)
!752 = !DILocation(line: 505, column: 36, scope: !747)
!753 = !DILocation(line: 415, column: 3, scope: !754, inlinedAt: !757)
!754 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !561, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!755 = !{!756}
!756 = !DILocalVariable(name: "f_outer_join", scope: !754, file: !3, line: 415, type: !24)
!757 = distinct !DILocation(line: 507, column: 3, scope: !747)
!758 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !759)
!759 = distinct !DILocation(line: 416, column: 8, scope: !754, inlinedAt: !757)
!760 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !759)
!761 = !DILocation(line: 416, column: 26, scope: !754, inlinedAt: !757)
!762 = !DILocation(line: 416, column: 6, scope: !754, inlinedAt: !757)
!763 = !DILocation(line: 417, column: 3, scope: !754, inlinedAt: !757)
!764 = !DILocation(line: 415, column: 15, scope: !754, inlinedAt: !757)
!765 = !DILocation(line: 418, column: 3, scope: !754, inlinedAt: !757)
!766 = !DILocation(line: 420, column: 1, scope: !754, inlinedAt: !757)
!767 = !DILocation(line: 508, column: 3, scope: !747)
!768 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "i", arg: 1, scope: !768, file: !3, line: 103, type: !33)
!771 = !DILocalVariable(name: "o", arg: 2, scope: !768, file: !3, line: 103, type: !66)
!772 = !DILocalVariable(name: "a", scope: !768, file: !3, line: 106, type: !50)
!773 = !DILocalVariable(name: "f_inner_join", scope: !774, file: !3, line: 109, type: !24)
!774 = distinct !DILexicalBlock(scope: !768, file: !3, line: 107, column: 15)
!775 = !DILocation(line: 103, column: 29, scope: !768)
!776 = !DILocation(line: 103, column: 39, scope: !768)
!777 = !DILocation(line: 105, column: 19, scope: !768)
!778 = !DILocation(line: 105, column: 3, scope: !768)
!779 = !DILocation(line: 106, column: 7, scope: !768)
!780 = !DILocation(line: 108, column: 5, scope: !774)
!781 = !DILocation(line: 109, column: 5, scope: !774)
!782 = !DILocation(line: 109, column: 17, scope: !774)
!783 = !DILocation(line: 110, column: 5, scope: !774)
!784 = !DILocation(line: 111, column: 19, scope: !774)
!785 = !DILocation(line: 111, column: 5, scope: !774)
!786 = !DILocation(line: 113, column: 3, scope: !768)
!787 = !DILocation(line: 114, column: 3, scope: !768)
!788 = !DILocation(line: 115, column: 1, scope: !768)
!789 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791, !792, !793}
!791 = !DILocalVariable(name: "i", arg: 1, scope: !789, file: !3, line: 92, type: !33)
!792 = !DILocalVariable(name: "o", arg: 2, scope: !789, file: !3, line: 92, type: !66)
!793 = !DILocalVariable(name: "a", scope: !789, file: !3, line: 95, type: !50)
!794 = !DILocation(line: 92, column: 29, scope: !789)
!795 = !DILocation(line: 92, column: 39, scope: !789)
!796 = !DILocation(line: 94, column: 19, scope: !789)
!797 = !DILocation(line: 94, column: 3, scope: !789)
!798 = !DILocation(line: 95, column: 7, scope: !789)
!799 = !DILocation(line: 97, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !789, file: !3, line: 96, column: 16)
!801 = !DILocation(line: 100, column: 3, scope: !789)
!802 = !DILocation(line: 101, column: 1, scope: !789)
!803 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!804 = !{!805, !806}
!805 = !DILocalVariable(name: "buf", arg: 1, scope: !803, file: !3, line: 497, type: !137)
!806 = !DILocalVariable(name: "priv", arg: 2, scope: !803, file: !3, line: 497, type: !33)
!807 = !DILocation(line: 497, column: 24, scope: !803)
!808 = !DILocation(line: 497, column: 36, scope: !803)
!809 = !DILocation(line: 499, column: 3, scope: !803)
!810 = !DILocation(line: 501, column: 3, scope: !803)
!811 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !561, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!812 = !{!813, !814, !815, !816}
!813 = !DILocalVariable(name: "f_first", scope: !811, file: !3, line: 391, type: !24)
!814 = !DILocalVariable(name: "f_second", scope: !811, file: !3, line: 392, type: !24)
!815 = !DILocalVariable(name: "f_third", scope: !811, file: !3, line: 393, type: !24)
!816 = !DILocalVariable(name: "f_fourth", scope: !811, file: !3, line: 394, type: !24)
!817 = !DILocation(line: 391, column: 3, scope: !811)
!818 = !DILocation(line: 392, column: 3, scope: !811)
!819 = !DILocation(line: 393, column: 3, scope: !811)
!820 = !DILocation(line: 394, column: 3, scope: !811)
!821 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !822)
!822 = distinct !DILocation(line: 395, column: 8, scope: !811)
!823 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !822)
!824 = !DILocation(line: 395, column: 26, scope: !811)
!825 = !DILocation(line: 395, column: 6, scope: !811)
!826 = !DILocation(line: 396, column: 3, scope: !811)
!827 = !DILocation(line: 394, column: 15, scope: !811)
!828 = !DILocation(line: 397, column: 3, scope: !811)
!829 = !DILocation(line: 391, column: 15, scope: !811)
!830 = !DILocation(line: 398, column: 3, scope: !811)
!831 = !DILocation(line: 393, column: 15, scope: !811)
!832 = !DILocation(line: 399, column: 3, scope: !811)
!833 = !DILocation(line: 392, column: 15, scope: !811)
!834 = !DILocation(line: 400, column: 3, scope: !811)
!835 = !DILocation(line: 402, column: 20, scope: !811)
!836 = !DILocation(line: 402, column: 3, scope: !811)
!837 = !DILocation(line: 402, column: 12, scope: !811)
!838 = !DILocation(line: 402, column: 18, scope: !811)
!839 = !DILocation(line: 403, column: 21, scope: !811)
!840 = !DILocation(line: 403, column: 3, scope: !811)
!841 = !DILocation(line: 403, column: 13, scope: !811)
!842 = !DILocation(line: 403, column: 19, scope: !811)
!843 = !DILocation(line: 404, column: 20, scope: !811)
!844 = !DILocation(line: 404, column: 3, scope: !811)
!845 = !DILocation(line: 404, column: 12, scope: !811)
!846 = !DILocation(line: 404, column: 18, scope: !811)
!847 = !DILocation(line: 405, column: 21, scope: !811)
!848 = !DILocation(line: 405, column: 3, scope: !811)
!849 = !DILocation(line: 405, column: 13, scope: !811)
!850 = !DILocation(line: 405, column: 19, scope: !811)
!851 = !DILocation(line: 406, column: 3, scope: !811)
!852 = !DILocation(line: 407, column: 16, scope: !811)
!853 = !DILocation(line: 407, column: 3, scope: !811)
!854 = !DILocation(line: 408, column: 16, scope: !811)
!855 = !DILocation(line: 408, column: 3, scope: !811)
!856 = !DILocation(line: 409, column: 16, scope: !811)
!857 = !DILocation(line: 409, column: 3, scope: !811)
!858 = !DILocation(line: 411, column: 1, scope: !811)
!859 = !DILocation(line: 410, column: 3, scope: !811)
!860 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DILocalVariable(name: "i", arg: 1, scope: !860, file: !3, line: 236, type: !33)
!863 = !DILocalVariable(name: "o", arg: 2, scope: !860, file: !3, line: 236, type: !66)
!864 = !DILocalVariable(name: "a", scope: !860, file: !3, line: 239, type: !50)
!865 = !DILocalVariable(name: "f_to", scope: !860, file: !3, line: 241, type: !24)
!866 = !DILocation(line: 236, column: 25, scope: !860)
!867 = !DILocation(line: 236, column: 35, scope: !860)
!868 = !DILocation(line: 238, column: 19, scope: !860)
!869 = !DILocation(line: 238, column: 3, scope: !860)
!870 = !DILocation(line: 239, column: 7, scope: !860)
!871 = !DILocation(line: 241, column: 22, scope: !860)
!872 = !DILocation(line: 241, column: 15, scope: !860)
!873 = !DILocation(line: 243, column: 5, scope: !874)
!874 = distinct !DILexicalBlock(scope: !860, file: !3, line: 242, column: 15)
!875 = !DILocation(line: 244, column: 5, scope: !874)
!876 = !DILocation(line: 246, column: 3, scope: !860)
!877 = !DILocation(line: 247, column: 1, scope: !860)
!878 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DILocalVariable(name: "i", arg: 1, scope: !878, file: !3, line: 198, type: !33)
!881 = !DILocalVariable(name: "o", arg: 2, scope: !878, file: !3, line: 198, type: !66)
!882 = !DILocalVariable(name: "a", scope: !878, file: !3, line: 201, type: !50)
!883 = !DILocalVariable(name: "f_to", scope: !878, file: !3, line: 202, type: !24)
!884 = !DILocation(line: 198, column: 24, scope: !878)
!885 = !DILocation(line: 198, column: 34, scope: !878)
!886 = !DILocation(line: 200, column: 19, scope: !878)
!887 = !DILocation(line: 200, column: 3, scope: !878)
!888 = !DILocation(line: 201, column: 7, scope: !878)
!889 = !DILocation(line: 202, column: 22, scope: !878)
!890 = !DILocation(line: 202, column: 15, scope: !878)
!891 = !DILocation(line: 204, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !878, file: !3, line: 203, column: 15)
!893 = !DILocation(line: 205, column: 5, scope: !892)
!894 = !DILocation(line: 207, column: 3, scope: !878)
!895 = !DILocation(line: 208, column: 1, scope: !878)
!896 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!897 = !{!898, !899, !900, !901}
!898 = !DILocalVariable(name: "i", arg: 1, scope: !896, file: !3, line: 223, type: !33)
!899 = !DILocalVariable(name: "o", arg: 2, scope: !896, file: !3, line: 223, type: !66)
!900 = !DILocalVariable(name: "a", scope: !896, file: !3, line: 226, type: !50)
!901 = !DILocalVariable(name: "f_to", scope: !896, file: !3, line: 228, type: !24)
!902 = !DILocation(line: 223, column: 24, scope: !896)
!903 = !DILocation(line: 223, column: 34, scope: !896)
!904 = !DILocation(line: 225, column: 19, scope: !896)
!905 = !DILocation(line: 225, column: 3, scope: !896)
!906 = !DILocation(line: 226, column: 7, scope: !896)
!907 = !DILocation(line: 228, column: 22, scope: !896)
!908 = !DILocation(line: 228, column: 15, scope: !896)
!909 = !DILocation(line: 230, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !896, file: !3, line: 229, column: 15)
!911 = !DILocation(line: 231, column: 5, scope: !910)
!912 = !DILocation(line: 233, column: 3, scope: !896)
!913 = !DILocation(line: 234, column: 1, scope: !896)
!914 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!915 = !{!916, !917, !918, !919}
!916 = !DILocalVariable(name: "i", arg: 1, scope: !914, file: !3, line: 211, type: !33)
!917 = !DILocalVariable(name: "o", arg: 2, scope: !914, file: !3, line: 211, type: !66)
!918 = !DILocalVariable(name: "a", scope: !914, file: !3, line: 214, type: !50)
!919 = !DILocalVariable(name: "f_to", scope: !914, file: !3, line: 215, type: !24)
!920 = !DILocation(line: 211, column: 25, scope: !914)
!921 = !DILocation(line: 211, column: 35, scope: !914)
!922 = !DILocation(line: 213, column: 19, scope: !914)
!923 = !DILocation(line: 213, column: 3, scope: !914)
!924 = !DILocation(line: 214, column: 7, scope: !914)
!925 = !DILocation(line: 215, column: 22, scope: !914)
!926 = !DILocation(line: 215, column: 15, scope: !914)
!927 = !DILocation(line: 217, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !914, file: !3, line: 216, column: 15)
!929 = !DILocation(line: 218, column: 5, scope: !928)
!930 = !DILocation(line: 220, column: 3, scope: !914)
!931 = !DILocation(line: 221, column: 1, scope: !914)
!932 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!933 = !{!934, !935}
!934 = !DILocalVariable(name: "buf", arg: 1, scope: !932, file: !3, line: 489, type: !137)
!935 = !DILocalVariable(name: "priv", arg: 2, scope: !932, file: !3, line: 489, type: !33)
!936 = !DILocation(line: 489, column: 24, scope: !932)
!937 = !DILocation(line: 489, column: 36, scope: !932)
!938 = !DILocation(line: 358, column: 3, scope: !939, inlinedAt: !943)
!939 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !561, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!940 = !{!941, !942}
!941 = !DILocalVariable(name: "even", scope: !939, file: !3, line: 358, type: !24)
!942 = !DILocalVariable(name: "odd", scope: !939, file: !3, line: 359, type: !24)
!943 = distinct !DILocation(line: 491, column: 3, scope: !932)
!944 = !DILocation(line: 359, column: 3, scope: !939, inlinedAt: !943)
!945 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !946)
!946 = distinct !DILocation(line: 360, column: 8, scope: !939, inlinedAt: !943)
!947 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !946)
!948 = !DILocation(line: 360, column: 26, scope: !939, inlinedAt: !943)
!949 = !DILocation(line: 360, column: 6, scope: !939, inlinedAt: !943)
!950 = !DILocation(line: 358, column: 15, scope: !939, inlinedAt: !943)
!951 = !DILocation(line: 361, column: 3, scope: !939, inlinedAt: !943)
!952 = !DILocation(line: 359, column: 15, scope: !939, inlinedAt: !943)
!953 = !DILocation(line: 362, column: 3, scope: !939, inlinedAt: !943)
!954 = !DILocation(line: 365, column: 1, scope: !939, inlinedAt: !943)
!955 = !DILocation(line: 493, column: 3, scope: !932)
!956 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !957)
!957 = !{!958, !959, !960}
!958 = !DILocalVariable(name: "i", arg: 1, scope: !956, file: !3, line: 172, type: !33)
!959 = !DILocalVariable(name: "o", arg: 2, scope: !956, file: !3, line: 172, type: !66)
!960 = !DILocalVariable(name: "i", scope: !961, file: !3, line: 174, type: !50)
!961 = distinct !DILexicalBlock(scope: !956, file: !3, line: 174, column: 3)
!962 = !DILocation(line: 172, column: 23, scope: !956)
!963 = !DILocation(line: 172, column: 33, scope: !956)
!964 = !DILocation(line: 173, column: 19, scope: !956)
!965 = !DILocation(line: 173, column: 3, scope: !956)
!966 = !DILocation(line: 174, column: 12, scope: !961)
!967 = !DILocation(line: 176, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 175, column: 22)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 175, column: 9)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 174, column: 31)
!971 = distinct !DILexicalBlock(scope: !961, file: !3, line: 174, column: 3)
!972 = !DILocation(line: 180, column: 3, scope: !956)
!973 = !DILocation(line: 182, column: 3, scope: !956)
!974 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !975)
!975 = !{!976, !977, !978}
!976 = !DILocalVariable(name: "i", arg: 1, scope: !974, file: !3, line: 185, type: !33)
!977 = !DILocalVariable(name: "o", arg: 2, scope: !974, file: !3, line: 185, type: !66)
!978 = !DILocalVariable(name: "i", scope: !979, file: !3, line: 187, type: !50)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 187, column: 3)
!980 = !DILocation(line: 185, column: 22, scope: !974)
!981 = !DILocation(line: 185, column: 32, scope: !974)
!982 = !DILocation(line: 186, column: 19, scope: !974)
!983 = !DILocation(line: 186, column: 3, scope: !974)
!984 = !DILocation(line: 187, column: 12, scope: !979)
!985 = !DILocation(line: 189, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 188, column: 22)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 188, column: 9)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 187, column: 31)
!989 = distinct !DILexicalBlock(scope: !979, file: !3, line: 187, column: 3)
!990 = !DILocation(line: 193, column: 3, scope: !974)
!991 = !DILocation(line: 195, column: 3, scope: !974)
!992 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "buf", arg: 1, scope: !992, file: !3, line: 481, type: !137)
!995 = !DILocalVariable(name: "priv", arg: 2, scope: !992, file: !3, line: 481, type: !33)
!996 = !DILocation(line: 481, column: 24, scope: !992)
!997 = !DILocation(line: 481, column: 36, scope: !992)
!998 = !DILocation(line: 369, column: 3, scope: !999, inlinedAt: !1002)
!999 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !561, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1000 = !{!1001}
!1001 = !DILocalVariable(name: "f_outer", scope: !999, file: !3, line: 369, type: !24)
!1002 = distinct !DILocation(line: 483, column: 3, scope: !992)
!1003 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 370, column: 8, scope: !999, inlinedAt: !1002)
!1005 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1004)
!1006 = !DILocation(line: 370, column: 26, scope: !999, inlinedAt: !1002)
!1007 = !DILocation(line: 370, column: 6, scope: !999, inlinedAt: !1002)
!1008 = !DILocation(line: 371, column: 3, scope: !999, inlinedAt: !1002)
!1009 = !DILocation(line: 369, column: 15, scope: !999, inlinedAt: !1002)
!1010 = !DILocation(line: 372, column: 3, scope: !999, inlinedAt: !1002)
!1011 = !DILocation(line: 374, column: 1, scope: !999, inlinedAt: !1002)
!1012 = !DILocation(line: 485, column: 3, scope: !992)
!1013 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017, !1018}
!1015 = !DILocalVariable(name: "i", arg: 1, scope: !1013, file: !3, line: 79, type: !33)
!1016 = !DILocalVariable(name: "o", arg: 2, scope: !1013, file: !3, line: 79, type: !66)
!1017 = !DILocalVariable(name: "a", scope: !1013, file: !3, line: 82, type: !50)
!1018 = !DILocalVariable(name: "f_inner", scope: !1019, file: !3, line: 85, type: !24)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 83, column: 15)
!1020 = !DILocation(line: 79, column: 24, scope: !1013)
!1021 = !DILocation(line: 79, column: 34, scope: !1013)
!1022 = !DILocation(line: 81, column: 19, scope: !1013)
!1023 = !DILocation(line: 81, column: 3, scope: !1013)
!1024 = !DILocation(line: 82, column: 7, scope: !1013)
!1025 = !DILocation(line: 84, column: 5, scope: !1019)
!1026 = !DILocation(line: 85, column: 5, scope: !1019)
!1027 = !DILocation(line: 85, column: 17, scope: !1019)
!1028 = !DILocation(line: 86, column: 5, scope: !1019)
!1029 = !DILocation(line: 88, column: 3, scope: !1013)
!1030 = !DILocation(line: 89, column: 3, scope: !1013)
!1031 = !DILocation(line: 90, column: 1, scope: !1013)
!1032 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DILocalVariable(name: "i", arg: 1, scope: !1032, file: !3, line: 68, type: !33)
!1035 = !DILocalVariable(name: "o", arg: 2, scope: !1032, file: !3, line: 68, type: !66)
!1036 = !DILocalVariable(name: "a", scope: !1032, file: !3, line: 71, type: !50)
!1037 = !DILocation(line: 68, column: 24, scope: !1032)
!1038 = !DILocation(line: 68, column: 34, scope: !1032)
!1039 = !DILocation(line: 70, column: 19, scope: !1032)
!1040 = !DILocation(line: 70, column: 3, scope: !1032)
!1041 = !DILocation(line: 71, column: 7, scope: !1032)
!1042 = !DILocation(line: 73, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 72, column: 16)
!1044 = !DILocation(line: 76, column: 3, scope: !1032)
!1045 = !DILocation(line: 77, column: 1, scope: !1032)
!1046 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1047 = !{!1048, !1049}
!1048 = !DILocalVariable(name: "buf", arg: 1, scope: !1046, file: !3, line: 540, type: !137)
!1049 = !DILocalVariable(name: "priv", arg: 2, scope: !1046, file: !3, line: 540, type: !33)
!1050 = !DILocation(line: 540, column: 25, scope: !1046)
!1051 = !DILocation(line: 540, column: 37, scope: !1046)
!1052 = !DILocation(line: 459, column: 3, scope: !1053, inlinedAt: !1057)
!1053 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !561, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1054 = !{!1055, !1056}
!1055 = !DILocalVariable(name: "first", scope: !1053, file: !3, line: 459, type: !24)
!1056 = !DILocalVariable(name: "second", scope: !1053, file: !3, line: 460, type: !24)
!1057 = distinct !DILocation(line: 542, column: 3, scope: !1046)
!1058 = !DILocation(line: 460, column: 3, scope: !1053, inlinedAt: !1057)
!1059 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 461, column: 8, scope: !1053, inlinedAt: !1057)
!1061 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1060)
!1062 = !DILocation(line: 461, column: 26, scope: !1053, inlinedAt: !1057)
!1063 = !DILocation(line: 461, column: 6, scope: !1053, inlinedAt: !1057)
!1064 = !DILocation(line: 459, column: 15, scope: !1053, inlinedAt: !1057)
!1065 = !DILocation(line: 463, column: 3, scope: !1053, inlinedAt: !1057)
!1066 = !DILocation(line: 460, column: 15, scope: !1053, inlinedAt: !1057)
!1067 = !DILocation(line: 464, column: 3, scope: !1053, inlinedAt: !1057)
!1068 = !DILocation(line: 467, column: 1, scope: !1053, inlinedAt: !1057)
!1069 = !DILocation(line: 543, column: 3, scope: !1046)
!1070 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076}
!1072 = !DILocalVariable(name: "i", arg: 1, scope: !1070, file: !3, line: 326, type: !33)
!1073 = !DILocalVariable(name: "o", arg: 2, scope: !1070, file: !3, line: 326, type: !66)
!1074 = !DILocalVariable(name: "a", scope: !1070, file: !3, line: 329, type: !50)
!1075 = !DILocalVariable(name: "start", scope: !1070, file: !3, line: 330, type: !29)
!1076 = !DILocalVariable(name: "end", scope: !1070, file: !3, line: 331, type: !29)
!1077 = !DILocation(line: 326, column: 24, scope: !1070)
!1078 = !DILocation(line: 326, column: 34, scope: !1070)
!1079 = !DILocation(line: 328, column: 19, scope: !1070)
!1080 = !DILocation(line: 328, column: 3, scope: !1070)
!1081 = !DILocation(line: 329, column: 7, scope: !1070)
!1082 = !DILocation(line: 330, column: 12, scope: !1070)
!1083 = !DILocation(line: 331, column: 12, scope: !1070)
!1084 = !DILocation(line: 332, column: 3, scope: !1070)
!1085 = !DILocation(line: 333, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 333, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 332, column: 15)
!1088 = !DILocation(line: 333, column: 9, scope: !1087)
!1089 = !DILocation(line: 268, column: 5, scope: !1090, inlinedAt: !1097)
!1090 = distinct !DISubprogram(name: "rdtsc", scope: !1091, file: !1091, line: 265, type: !1092, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1094)
!1091 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!29}
!1094 = !{!1095, !1096}
!1095 = !DILocalVariable(name: "lo", scope: !1090, file: !1091, line: 267, type: !43)
!1096 = !DILocalVariable(name: "hi", scope: !1090, file: !1091, line: 267, type: !43)
!1097 = distinct !DILocation(line: 334, column: 17, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 333, column: 17)
!1099 = !{i32 97052}
!1100 = !DILocation(line: 267, column: 14, scope: !1090, inlinedAt: !1097)
!1101 = !DILocation(line: 267, column: 18, scope: !1090, inlinedAt: !1097)
!1102 = !DILocation(line: 269, column: 12, scope: !1090, inlinedAt: !1097)
!1103 = !DILocation(line: 269, column: 18, scope: !1090, inlinedAt: !1097)
!1104 = !DILocation(line: 269, column: 33, scope: !1090, inlinedAt: !1097)
!1105 = !DILocation(line: 269, column: 15, scope: !1090, inlinedAt: !1097)
!1106 = !DILocation(line: 335, column: 5, scope: !1098)
!1107 = !DILocation(line: 0, scope: !1070)
!1108 = !DILocation(line: 337, column: 6, scope: !1087)
!1109 = !DILocation(line: 332, column: 11, scope: !1070)
!1110 = distinct !{!1110, !1084, !1111}
!1111 = !DILocation(line: 338, column: 3, scope: !1070)
!1112 = !DILocation(line: 268, column: 5, scope: !1090, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 339, column: 9, scope: !1070)
!1114 = !DILocation(line: 267, column: 14, scope: !1090, inlinedAt: !1113)
!1115 = !DILocation(line: 267, column: 18, scope: !1090, inlinedAt: !1113)
!1116 = !DILocation(line: 269, column: 12, scope: !1090, inlinedAt: !1113)
!1117 = !DILocation(line: 269, column: 18, scope: !1090, inlinedAt: !1113)
!1118 = !DILocation(line: 269, column: 33, scope: !1090, inlinedAt: !1113)
!1119 = !DILocation(line: 269, column: 15, scope: !1090, inlinedAt: !1113)
!1120 = !DILocation(line: 340, column: 104, scope: !1070)
!1121 = !DILocation(line: 340, column: 123, scope: !1070)
!1122 = !DILocation(line: 340, column: 3, scope: !1070)
!1123 = !DILocation(line: 341, column: 1, scope: !1070)
!1124 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DILocalVariable(name: "i", arg: 1, scope: !1124, file: !3, line: 343, type: !33)
!1127 = !DILocalVariable(name: "o", arg: 2, scope: !1124, file: !3, line: 343, type: !66)
!1128 = !DILocalVariable(name: "a", scope: !1124, file: !3, line: 346, type: !50)
!1129 = !DILocation(line: 343, column: 25, scope: !1124)
!1130 = !DILocation(line: 343, column: 35, scope: !1124)
!1131 = !DILocation(line: 345, column: 19, scope: !1124)
!1132 = !DILocation(line: 345, column: 3, scope: !1124)
!1133 = !DILocation(line: 346, column: 7, scope: !1124)
!1134 = !DILocation(line: 351, column: 3, scope: !1124)
!1135 = !DILocation(line: 352, column: 1, scope: !1124)
!1136 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1137 = !{!1138, !1139}
!1138 = !DILocalVariable(name: "buf", arg: 1, scope: !1136, file: !3, line: 473, type: !137)
!1139 = !DILocalVariable(name: "priv", arg: 2, scope: !1136, file: !3, line: 473, type: !33)
!1140 = !DILocation(line: 473, column: 23, scope: !1136)
!1141 = !DILocation(line: 473, column: 35, scope: !1136)
!1142 = !DILocation(line: 378, column: 3, scope: !1143, inlinedAt: !1148)
!1143 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !561, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DILocalVariable(name: "f1", scope: !1143, file: !3, line: 378, type: !24)
!1146 = !DILocalVariable(name: "f2", scope: !1143, file: !3, line: 379, type: !24)
!1147 = !DILocalVariable(name: "f3", scope: !1143, file: !3, line: 380, type: !24)
!1148 = distinct !DILocation(line: 475, column: 3, scope: !1136)
!1149 = !DILocation(line: 379, column: 3, scope: !1143, inlinedAt: !1148)
!1150 = !DILocation(line: 380, column: 3, scope: !1143, inlinedAt: !1148)
!1151 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 381, column: 8, scope: !1143, inlinedAt: !1148)
!1153 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1152)
!1154 = !DILocation(line: 381, column: 26, scope: !1143, inlinedAt: !1148)
!1155 = !DILocation(line: 381, column: 6, scope: !1143, inlinedAt: !1148)
!1156 = !DILocation(line: 382, column: 3, scope: !1143, inlinedAt: !1148)
!1157 = !DILocation(line: 378, column: 15, scope: !1143, inlinedAt: !1148)
!1158 = !DILocation(line: 383, column: 3, scope: !1143, inlinedAt: !1148)
!1159 = !DILocation(line: 379, column: 15, scope: !1143, inlinedAt: !1148)
!1160 = !DILocation(line: 384, column: 3, scope: !1143, inlinedAt: !1148)
!1161 = !DILocation(line: 380, column: 15, scope: !1143, inlinedAt: !1148)
!1162 = !DILocation(line: 385, column: 3, scope: !1143, inlinedAt: !1148)
!1163 = !DILocation(line: 387, column: 1, scope: !1143, inlinedAt: !1148)
!1164 = !DILocation(line: 477, column: 3, scope: !1136)
!1165 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1166 = !{!1167, !1168, !1169, !1170}
!1167 = !DILocalVariable(name: "i", arg: 1, scope: !1165, file: !3, line: 144, type: !33)
!1168 = !DILocalVariable(name: "o", arg: 2, scope: !1165, file: !3, line: 144, type: !66)
!1169 = !DILocalVariable(name: "a", scope: !1165, file: !3, line: 147, type: !50)
!1170 = !DILocalVariable(name: "f3", scope: !1165, file: !3, line: 154, type: !24)
!1171 = !DILocation(line: 144, column: 19, scope: !1165)
!1172 = !DILocation(line: 144, column: 29, scope: !1165)
!1173 = !DILocation(line: 146, column: 19, scope: !1165)
!1174 = !DILocation(line: 146, column: 3, scope: !1165)
!1175 = !DILocation(line: 147, column: 7, scope: !1165)
!1176 = !DILocation(line: 149, column: 5, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 148, column: 15)
!1178 = !DILocation(line: 150, column: 5, scope: !1177)
!1179 = !DILocation(line: 153, column: 3, scope: !1165)
!1180 = !DILocation(line: 154, column: 3, scope: !1165)
!1181 = !DILocation(line: 154, column: 15, scope: !1165)
!1182 = !DILocation(line: 155, column: 3, scope: !1165)
!1183 = !DILocation(line: 156, column: 1, scope: !1165)
!1184 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DILocalVariable(name: "i", arg: 1, scope: !1184, file: !3, line: 159, type: !33)
!1187 = !DILocalVariable(name: "o", arg: 2, scope: !1184, file: !3, line: 159, type: !66)
!1188 = !DILocalVariable(name: "a", scope: !1184, file: !3, line: 162, type: !50)
!1189 = !DILocalVariable(name: "f4", scope: !1184, file: !3, line: 168, type: !24)
!1190 = !DILocation(line: 159, column: 19, scope: !1184)
!1191 = !DILocation(line: 159, column: 29, scope: !1184)
!1192 = !DILocation(line: 161, column: 19, scope: !1184)
!1193 = !DILocation(line: 161, column: 3, scope: !1184)
!1194 = !DILocation(line: 162, column: 7, scope: !1184)
!1195 = !DILocation(line: 164, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 163, column: 16)
!1197 = !DILocation(line: 167, column: 3, scope: !1184)
!1198 = !DILocation(line: 168, column: 3, scope: !1184)
!1199 = !DILocation(line: 168, column: 15, scope: !1184)
!1200 = !DILocation(line: 169, column: 3, scope: !1184)
!1201 = !DILocation(line: 170, column: 1, scope: !1184)
!1202 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DILocalVariable(name: "i", arg: 1, scope: !1202, file: !3, line: 131, type: !33)
!1205 = !DILocalVariable(name: "o", arg: 2, scope: !1202, file: !3, line: 131, type: !66)
!1206 = !DILocalVariable(name: "a", scope: !1202, file: !3, line: 134, type: !50)
!1207 = !DILocalVariable(name: "f4", scope: !1202, file: !3, line: 140, type: !24)
!1208 = !DILocation(line: 131, column: 19, scope: !1202)
!1209 = !DILocation(line: 131, column: 29, scope: !1202)
!1210 = !DILocation(line: 133, column: 19, scope: !1202)
!1211 = !DILocation(line: 133, column: 3, scope: !1202)
!1212 = !DILocation(line: 134, column: 7, scope: !1202)
!1213 = !DILocation(line: 136, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 135, column: 15)
!1215 = !DILocation(line: 139, column: 3, scope: !1202)
!1216 = !DILocation(line: 140, column: 3, scope: !1202)
!1217 = !DILocation(line: 140, column: 15, scope: !1202)
!1218 = !DILocation(line: 141, column: 3, scope: !1202)
!1219 = !DILocation(line: 142, column: 1, scope: !1202)
!1220 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DILocalVariable(name: "i", arg: 1, scope: !1220, file: !3, line: 119, type: !33)
!1223 = !DILocalVariable(name: "o", arg: 2, scope: !1220, file: !3, line: 119, type: !66)
!1224 = !DILocalVariable(name: "a", scope: !1220, file: !3, line: 122, type: !50)
!1225 = !DILocation(line: 119, column: 19, scope: !1220)
!1226 = !DILocation(line: 119, column: 29, scope: !1220)
!1227 = !DILocation(line: 121, column: 19, scope: !1220)
!1228 = !DILocation(line: 121, column: 3, scope: !1220)
!1229 = !DILocation(line: 122, column: 7, scope: !1220)
!1230 = !DILocation(line: 124, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 123, column: 16)
!1232 = !DILocation(line: 127, column: 3, scope: !1220)
!1233 = !DILocation(line: 128, column: 1, scope: !1220)
!1234 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !1235, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!50, !50}
!1237 = !{!1238, !1239, !1240}
!1238 = !DILocalVariable(name: "a", arg: 1, scope: !1234, file: !3, line: 45, type: !50)
!1239 = !DILocalVariable(name: "i", scope: !1234, file: !3, line: 47, type: !50)
!1240 = !DILocalVariable(name: "b", scope: !1234, file: !3, line: 47, type: !50)
!1241 = !DILocation(line: 45, column: 18, scope: !1234)
!1242 = !DILocation(line: 47, column: 10, scope: !1234)
!1243 = !DILocation(line: 47, column: 7, scope: !1234)
!1244 = !DILocation(line: 49, column: 16, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 49, column: 3)
!1246 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 49, column: 3)
!1247 = !DILocation(line: 49, column: 3, scope: !1246)
!1248 = !DILocation(line: 51, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 50, column: 3)
!1250 = !DILocation(line: 49, column: 22, scope: !1245)
!1251 = distinct !{!1251, !1247, !1252}
!1252 = !DILocation(line: 53, column: 3, scope: !1246)
!1253 = !DILocation(line: 0, scope: !1234)
!1254 = !DILocation(line: 55, column: 3, scope: !1234)
!1255 = !DILocation(line: 358, column: 3, scope: !939)
!1256 = !DILocation(line: 359, column: 3, scope: !939)
!1257 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 360, column: 8, scope: !939)
!1259 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1258)
!1260 = !DILocation(line: 360, column: 26, scope: !939)
!1261 = !DILocation(line: 360, column: 6, scope: !939)
!1262 = !DILocation(line: 358, column: 15, scope: !939)
!1263 = !DILocation(line: 361, column: 3, scope: !939)
!1264 = !DILocation(line: 359, column: 15, scope: !939)
!1265 = !DILocation(line: 362, column: 3, scope: !939)
!1266 = !DILocation(line: 365, column: 1, scope: !939)
!1267 = !DILocation(line: 364, column: 3, scope: !939)
!1268 = !DILocation(line: 369, column: 3, scope: !999)
!1269 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 370, column: 8, scope: !999)
!1271 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1270)
!1272 = !DILocation(line: 370, column: 26, scope: !999)
!1273 = !DILocation(line: 370, column: 6, scope: !999)
!1274 = !DILocation(line: 371, column: 3, scope: !999)
!1275 = !DILocation(line: 369, column: 15, scope: !999)
!1276 = !DILocation(line: 372, column: 3, scope: !999)
!1277 = !DILocation(line: 374, column: 1, scope: !999)
!1278 = !DILocation(line: 373, column: 3, scope: !999)
!1279 = !DILocation(line: 378, column: 3, scope: !1143)
!1280 = !DILocation(line: 379, column: 3, scope: !1143)
!1281 = !DILocation(line: 380, column: 3, scope: !1143)
!1282 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 381, column: 8, scope: !1143)
!1284 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1283)
!1285 = !DILocation(line: 381, column: 26, scope: !1143)
!1286 = !DILocation(line: 381, column: 6, scope: !1143)
!1287 = !DILocation(line: 382, column: 3, scope: !1143)
!1288 = !DILocation(line: 378, column: 15, scope: !1143)
!1289 = !DILocation(line: 383, column: 3, scope: !1143)
!1290 = !DILocation(line: 379, column: 15, scope: !1143)
!1291 = !DILocation(line: 384, column: 3, scope: !1143)
!1292 = !DILocation(line: 380, column: 15, scope: !1143)
!1293 = !DILocation(line: 385, column: 3, scope: !1143)
!1294 = !DILocation(line: 387, column: 1, scope: !1143)
!1295 = !DILocation(line: 386, column: 3, scope: !1143)
!1296 = !DILocation(line: 415, column: 3, scope: !754)
!1297 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 416, column: 8, scope: !754)
!1299 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1298)
!1300 = !DILocation(line: 416, column: 26, scope: !754)
!1301 = !DILocation(line: 416, column: 6, scope: !754)
!1302 = !DILocation(line: 417, column: 3, scope: !754)
!1303 = !DILocation(line: 415, column: 15, scope: !754)
!1304 = !DILocation(line: 418, column: 3, scope: !754)
!1305 = !DILocation(line: 420, column: 1, scope: !754)
!1306 = !DILocation(line: 419, column: 3, scope: !754)
!1307 = !DILocation(line: 424, column: 3, scope: !716)
!1308 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 425, column: 8, scope: !716)
!1310 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1309)
!1311 = !DILocation(line: 425, column: 26, scope: !716)
!1312 = !DILocation(line: 425, column: 6, scope: !716)
!1313 = !DILocation(line: 426, column: 3, scope: !716)
!1314 = !DILocation(line: 424, column: 15, scope: !716)
!1315 = !DILocation(line: 427, column: 3, scope: !716)
!1316 = !DILocation(line: 429, column: 1, scope: !716)
!1317 = !DILocation(line: 428, column: 3, scope: !716)
!1318 = !DILocation(line: 433, column: 3, scope: !670)
!1319 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 434, column: 8, scope: !670)
!1321 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1320)
!1322 = !DILocation(line: 434, column: 26, scope: !670)
!1323 = !DILocation(line: 434, column: 6, scope: !670)
!1324 = !DILocation(line: 435, column: 3, scope: !670)
!1325 = !DILocation(line: 433, column: 15, scope: !670)
!1326 = !DILocation(line: 436, column: 3, scope: !670)
!1327 = !DILocation(line: 438, column: 1, scope: !670)
!1328 = !DILocation(line: 437, column: 3, scope: !670)
!1329 = !DILocation(line: 442, column: 3, scope: !611)
!1330 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 443, column: 8, scope: !611)
!1332 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1331)
!1333 = !DILocation(line: 443, column: 26, scope: !611)
!1334 = !DILocation(line: 443, column: 6, scope: !611)
!1335 = !DILocation(line: 444, column: 3, scope: !611)
!1336 = !DILocation(line: 442, column: 15, scope: !611)
!1337 = !DILocation(line: 445, column: 3, scope: !611)
!1338 = !DILocation(line: 447, column: 1, scope: !611)
!1339 = !DILocation(line: 446, column: 3, scope: !611)
!1340 = !DILocation(line: 451, column: 3, scope: !560)
!1341 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 452, column: 8, scope: !560)
!1343 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1342)
!1344 = !DILocation(line: 452, column: 26, scope: !560)
!1345 = !DILocation(line: 452, column: 6, scope: !560)
!1346 = !DILocation(line: 453, column: 3, scope: !560)
!1347 = !DILocation(line: 451, column: 15, scope: !560)
!1348 = !DILocation(line: 454, column: 3, scope: !560)
!1349 = !DILocation(line: 456, column: 1, scope: !560)
!1350 = !DILocation(line: 455, column: 3, scope: !560)
!1351 = !DILocation(line: 459, column: 3, scope: !1053)
!1352 = !DILocation(line: 460, column: 3, scope: !1053)
!1353 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 461, column: 8, scope: !1053)
!1355 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1354)
!1356 = !DILocation(line: 461, column: 26, scope: !1053)
!1357 = !DILocation(line: 461, column: 6, scope: !1053)
!1358 = !DILocation(line: 459, column: 15, scope: !1053)
!1359 = !DILocation(line: 463, column: 3, scope: !1053)
!1360 = !DILocation(line: 460, column: 15, scope: !1053)
!1361 = !DILocation(line: 464, column: 3, scope: !1053)
!1362 = !DILocation(line: 467, column: 1, scope: !1053)
!1363 = !DILocation(line: 466, column: 3, scope: !1053)
!1364 = distinct !DISubprogram(name: "_get_fiber_state", scope: !182, file: !182, line: 76, type: !1365, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !182, line: 66, baseType: !335)
!1369 = !{}
!1370 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1375)
!1371 = distinct !DISubprogram(name: "get_cpu", scope: !1372, file: !1372, line: 127, type: !1373, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1372 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!324}
!1375 = distinct !DILocation(line: 78, column: 10, scope: !1364)
!1376 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1375)
!1377 = !DILocation(line: 78, column: 21, scope: !1364)
!1378 = !DILocation(line: 78, column: 3, scope: !1364)
!1379 = distinct !DISubprogram(name: "nk_fiber_current", scope: !182, file: !182, line: 83, type: !1380, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!296}
!1382 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 85, column: 10, scope: !1379)
!1385 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1383)
!1386 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1384)
!1387 = !DILocation(line: 85, column: 30, scope: !1379)
!1388 = !DILocation(line: 85, column: 3, scope: !1379)
!1389 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !182, file: !182, line: 90, type: !1380, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1390 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 92, column: 10, scope: !1389)
!1393 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1391)
!1394 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1392)
!1395 = !DILocation(line: 92, column: 30, scope: !1389)
!1396 = !DILocation(line: 92, column: 3, scope: !1389)
!1397 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !182, file: !182, line: 96, type: !1398, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!339}
!1400 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 98, column: 10, scope: !1397)
!1403 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1401)
!1404 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1402)
!1405 = !DILocation(line: 98, column: 30, scope: !1397)
!1406 = !DILocation(line: 98, column: 3, scope: !1397)
!1407 = distinct !DISubprogram(name: "_get_sched_head", scope: !182, file: !182, line: 103, type: !1408, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!205}
!1410 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 105, column: 12, scope: !1407)
!1413 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1411)
!1414 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1412)
!1415 = !DILocation(line: 105, column: 32, scope: !1407)
!1416 = !DILocation(line: 105, column: 3, scope: !1407)
!1417 = distinct !DISubprogram(name: "_fiber_push", scope: !182, file: !182, line: 113, type: !1418, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !296, !29}
!1420 = !{!1421, !1422}
!1421 = !DILocalVariable(name: "f", arg: 1, scope: !1417, file: !182, line: 113, type: !296)
!1422 = !DILocalVariable(name: "x", arg: 2, scope: !1417, file: !182, line: 113, type: !29)
!1423 = !DILocation(line: 113, column: 31, scope: !1417)
!1424 = !DILocation(line: 113, column: 43, scope: !1417)
!1425 = !DILocation(line: 115, column: 8, scope: !1417)
!1426 = !DILocation(line: 115, column: 12, scope: !1417)
!1427 = !DILocation(line: 116, column: 6, scope: !1417)
!1428 = !DILocation(line: 116, column: 26, scope: !1417)
!1429 = !DILocation(line: 117, column: 1, scope: !1417)
!1430 = distinct !DISubprogram(name: "_rr_policy", scope: !182, file: !182, line: 119, type: !1380, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1431)
!1431 = !{!1432, !1433, !1434, !1438}
!1432 = !DILocalVariable(name: "fiber_sched_queue", scope: !1430, file: !182, line: 122, type: !205)
!1433 = !DILocalVariable(name: "fiber_to_schedule", scope: !1430, file: !182, line: 125, type: !296)
!1434 = !DILocalVariable(name: "first", scope: !1435, file: !182, line: 128, type: !296)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !182, line: 128, column: 25)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !182, line: 126, column: 40)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !182, line: 126, column: 7)
!1438 = !DILocalVariable(name: "__mptr", scope: !1439, file: !182, line: 128, type: !1442)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !182, line: 128, column: 25)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !182, line: 128, column: 25)
!1441 = distinct !DILexicalBlock(scope: !1435, file: !182, line: 128, column: 25)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!1444 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 122, column: 41, scope: !1430)
!1448 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1445)
!1449 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1446)
!1450 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !1447)
!1451 = !DILocation(line: 122, column: 21, scope: !1430)
!1452 = !DILocation(line: 125, column: 15, scope: !1430)
!1453 = !DILocalVariable(name: "head", arg: 1, scope: !1454, file: !53, line: 184, type: !1442)
!1454 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1455, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!50, !1442}
!1457 = !{!1453}
!1458 = !DILocation(line: 184, column: 54, scope: !1454, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 126, column: 9, scope: !1437)
!1460 = !DILocation(line: 186, column: 15, scope: !1454, inlinedAt: !1459)
!1461 = !DILocation(line: 186, column: 20, scope: !1454, inlinedAt: !1459)
!1462 = !DILocation(line: 126, column: 7, scope: !1430)
!1463 = !DILocation(line: 128, column: 25, scope: !1435)
!1464 = !DILocation(line: 131, column: 40, scope: !1436)
!1465 = !DILocalVariable(name: "entry", arg: 1, scope: !1466, file: !53, line: 151, type: !205)
!1466 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !1467, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !205}
!1469 = !{!1465}
!1470 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 131, column: 5, scope: !1436)
!1472 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !1471)
!1473 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !1471)
!1474 = !DILocalVariable(name: "prev", arg: 1, scope: !1475, file: !53, line: 128, type: !205)
!1475 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1476, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !205, !205}
!1478 = !{!1474, !1479}
!1479 = !DILocalVariable(name: "next", arg: 2, scope: !1475, file: !53, line: 128, type: !205)
!1480 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !1471)
!1482 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !1481)
!1483 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !1481)
!1484 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !1481)
!1485 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !1481)
!1486 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !1481)
!1487 = !DILocalVariable(name: "list", arg: 1, scope: !1488, file: !53, line: 73, type: !205)
!1488 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !1467, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1489)
!1489 = !{!1487}
!1490 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !1471)
!1492 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !1491)
!1493 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !1491)
!1494 = !DILocation(line: 132, column: 3, scope: !1436)
!1495 = !DILocation(line: 0, scope: !1430)
!1496 = !DILocation(line: 139, column: 3, scope: !1430)
!1497 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !182, file: !182, line: 144, type: !1498, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !296}
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1508}
!1501 = !DILocalVariable(name: "f", arg: 1, scope: !1497, file: !182, line: 144, type: !296)
!1502 = !DILocalVariable(name: "next", scope: !1497, file: !182, line: 149, type: !296)
!1503 = !DILocalVariable(name: "temp", scope: !1497, file: !182, line: 155, type: !296)
!1504 = !DILocalVariable(name: "waitq", scope: !1497, file: !182, line: 156, type: !205)
!1505 = !DILocalVariable(name: "first", scope: !1506, file: !182, line: 163, type: !296)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !182, line: 163, column: 12)
!1507 = distinct !DILexicalBlock(scope: !1497, file: !182, line: 160, column: 25)
!1508 = !DILocalVariable(name: "__mptr", scope: !1509, file: !182, line: 163, type: !1442)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !182, line: 163, column: 12)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !182, line: 163, column: 12)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !182, line: 163, column: 12)
!1512 = !DILocation(line: 144, column: 33, scope: !1497)
!1513 = !DILocation(line: 147, column: 6, scope: !1497)
!1514 = !DILocation(line: 147, column: 15, scope: !1497)
!1515 = !DILocation(line: 149, column: 15, scope: !1497)
!1516 = !DILocation(line: 156, column: 34, scope: !1497)
!1517 = !DILocation(line: 156, column: 21, scope: !1497)
!1518 = !DILocation(line: 160, column: 12, scope: !1497)
!1519 = !DILocation(line: 160, column: 21, scope: !1497)
!1520 = !DILocation(line: 160, column: 3, scope: !1497)
!1521 = !DILocation(line: 163, column: 12, scope: !1506)
!1522 = !DILocation(line: 163, column: 12, scope: !1511)
!1523 = !DILocation(line: 155, column: 15, scope: !1497)
!1524 = !DILocation(line: 164, column: 27, scope: !1507)
!1525 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 164, column: 5, scope: !1507)
!1527 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !1526)
!1528 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !1526)
!1529 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !1526)
!1531 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !1530)
!1532 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !1530)
!1533 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !1530)
!1534 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !1530)
!1535 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !1530)
!1536 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !1526)
!1538 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !1537)
!1539 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !1537)
!1540 = !DILocation(line: 165, column: 16, scope: !1507)
!1541 = !DILocation(line: 168, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1507, file: !182, line: 168, column: 9)
!1543 = !DILocation(line: 168, column: 9, scope: !1507)
!1544 = !DILocalVariable(name: "f", arg: 1, scope: !1545, file: !182, line: 663, type: !296)
!1545 = distinct !DISubprogram(name: "nk_fiber_run", scope: !182, file: !182, line: 663, type: !1546, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!50, !296, !70}
!1548 = !{!1544, !1549, !1550, !1551}
!1549 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1545, file: !182, line: 663, type: !70)
!1550 = !DILocalVariable(name: "curr_thread", scope: !1545, file: !182, line: 666, type: !339)
!1551 = !DILocalVariable(name: "fiber_sched_queue", scope: !1545, file: !182, line: 674, type: !205)
!1552 = !DILocation(line: 663, column: 30, scope: !1545, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 171, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1542, file: !182, line: 168, column: 14)
!1555 = !DILocation(line: 663, column: 41, scope: !1545, inlinedAt: !1553)
!1556 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 98, column: 10, scope: !1397, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 666, column: 30, scope: !1545, inlinedAt: !1553)
!1560 = !DILocation(line: 666, column: 16, scope: !1545, inlinedAt: !1553)
!1561 = !DILocation(line: 366, column: 29, scope: !1562, inlinedAt: !1569)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !182, line: 366, column: 29)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !182, line: 366, column: 29)
!1564 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !182, file: !182, line: 363, type: !561, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DILocalVariable(name: "sys", scope: !1564, file: !182, line: 366, type: !318)
!1567 = !DILocalVariable(name: "__r", scope: !1563, file: !182, line: 366, type: !318)
!1568 = !DILocalVariable(name: "__r", scope: !1562, file: !182, line: 366, type: !318)
!1569 = distinct !DILocation(line: 373, column: 20, scope: !1570, inlinedAt: !1578)
!1570 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !182, file: !182, line: 370, type: !1398, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1571)
!1571 = !{!1572, !1573, !1574, !1576}
!1572 = !DILocalVariable(name: "random_cpu", scope: !1570, file: !182, line: 373, type: !50)
!1573 = !DILocalVariable(name: "sys", scope: !1570, file: !182, line: 374, type: !318)
!1574 = !DILocalVariable(name: "__r", scope: !1575, file: !182, line: 374, type: !318)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !182, line: 374, column: 27)
!1576 = !DILocalVariable(name: "__r", scope: !1577, file: !182, line: 374, type: !318)
!1577 = distinct !DILexicalBlock(scope: !1575, file: !182, line: 374, column: 27)
!1578 = distinct !DILocation(line: 670, column: 19, scope: !1579, inlinedAt: !1553)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !182, line: 669, column: 23)
!1580 = distinct !DILexicalBlock(scope: !1545, file: !182, line: 669, column: 7)
!1581 = !{i32 -2147185111}
!1582 = !DILocation(line: 366, column: 29, scope: !1563, inlinedAt: !1569)
!1583 = !DILocation(line: 366, column: 23, scope: !1564, inlinedAt: !1569)
!1584 = !DILocation(line: 358, column: 5, scope: !1585, inlinedAt: !1588)
!1585 = distinct !DISubprogram(name: "_get_random", scope: !182, file: !182, line: 356, type: !1092, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1586)
!1586 = !{!1587}
!1587 = !DILocalVariable(name: "t", scope: !1585, file: !182, line: 358, type: !29)
!1588 = distinct !DILocation(line: 367, column: 18, scope: !1564, inlinedAt: !1569)
!1589 = !DILocation(line: 359, column: 5, scope: !1585, inlinedAt: !1588)
!1590 = !DILocation(line: 360, column: 12, scope: !1585, inlinedAt: !1588)
!1591 = !DILocation(line: 358, column: 14, scope: !1585, inlinedAt: !1588)
!1592 = !DILocation(line: 361, column: 1, scope: !1585, inlinedAt: !1588)
!1593 = !DILocation(line: 367, column: 39, scope: !1564, inlinedAt: !1569)
!1594 = !DILocation(line: 367, column: 34, scope: !1564, inlinedAt: !1569)
!1595 = !DILocation(line: 367, column: 32, scope: !1564, inlinedAt: !1569)
!1596 = !DILocation(line: 374, column: 27, scope: !1577, inlinedAt: !1578)
!1597 = !{i32 -2147182110}
!1598 = !DILocation(line: 374, column: 27, scope: !1575, inlinedAt: !1578)
!1599 = !DILocation(line: 374, column: 21, scope: !1570, inlinedAt: !1578)
!1600 = !DILocation(line: 375, column: 10, scope: !1570, inlinedAt: !1578)
!1601 = !DILocation(line: 0, scope: !1545, inlinedAt: !1553)
!1602 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 674, column: 41, scope: !1545, inlinedAt: !1553)
!1606 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1603)
!1607 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1604)
!1608 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !1605)
!1609 = !DILocation(line: 674, column: 21, scope: !1545, inlinedAt: !1553)
!1610 = !DILocation(line: 678, column: 6, scope: !1545, inlinedAt: !1553)
!1611 = !DILocation(line: 678, column: 15, scope: !1545, inlinedAt: !1553)
!1612 = !DILocation(line: 679, column: 22, scope: !1545, inlinedAt: !1553)
!1613 = !DILocalVariable(name: "nelm", arg: 1, scope: !1614, file: !53, line: 116, type: !205)
!1614 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1476, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1615)
!1615 = !{!1613, !1616}
!1616 = !DILocalVariable(name: "head", arg: 2, scope: !1614, file: !53, line: 116, type: !205)
!1617 = !DILocation(line: 116, column: 52, scope: !1614, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 679, column: 3, scope: !1545, inlinedAt: !1553)
!1619 = !DILocation(line: 116, column: 76, scope: !1614, inlinedAt: !1618)
!1620 = !DILocation(line: 118, column: 25, scope: !1614, inlinedAt: !1618)
!1621 = !DILocalVariable(name: "nelm", arg: 1, scope: !1622, file: !53, line: 85, type: !205)
!1622 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1623, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !205, !205, !205}
!1625 = !{!1621, !1626, !1627}
!1626 = !DILocalVariable(name: "prev", arg: 2, scope: !1622, file: !53, line: 86, type: !205)
!1627 = !DILocalVariable(name: "next", arg: 3, scope: !1622, file: !53, line: 87, type: !205)
!1628 = !DILocation(line: 85, column: 49, scope: !1622, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 118, column: 2, scope: !1614, inlinedAt: !1618)
!1630 = !DILocation(line: 86, column: 28, scope: !1622, inlinedAt: !1629)
!1631 = !DILocation(line: 87, column: 28, scope: !1622, inlinedAt: !1629)
!1632 = !DILocation(line: 89, column: 13, scope: !1622, inlinedAt: !1629)
!1633 = !DILocation(line: 90, column: 8, scope: !1622, inlinedAt: !1629)
!1634 = !DILocation(line: 90, column: 13, scope: !1622, inlinedAt: !1629)
!1635 = !DILocation(line: 91, column: 8, scope: !1622, inlinedAt: !1629)
!1636 = !DILocation(line: 91, column: 13, scope: !1622, inlinedAt: !1629)
!1637 = !DILocation(line: 92, column: 8, scope: !1622, inlinedAt: !1629)
!1638 = !DILocation(line: 92, column: 13, scope: !1622, inlinedAt: !1629)
!1639 = !DILocation(line: 683, column: 20, scope: !1640, inlinedAt: !1553)
!1640 = distinct !DILexicalBlock(scope: !1545, file: !182, line: 683, column: 7)
!1641 = !DILocation(line: 683, column: 7, scope: !1640, inlinedAt: !1553)
!1642 = !DILocation(line: 683, column: 7, scope: !1545, inlinedAt: !1553)
!1643 = !DILocation(line: 687, column: 5, scope: !1644, inlinedAt: !1553)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !182, line: 683, column: 26)
!1645 = !DILocation(line: 688, column: 3, scope: !1644, inlinedAt: !1553)
!1646 = distinct !{!1646, !1520, !1647}
!1647 = !DILocation(line: 173, column: 3, scope: !1497)
!1648 = !DILocation(line: 175, column: 6, scope: !1497)
!1649 = !DILocation(line: 175, column: 14, scope: !1497)
!1650 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 122, column: 41, scope: !1430, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 179, column: 10, scope: !1497)
!1655 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1651)
!1656 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1652)
!1657 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !1653)
!1658 = !DILocation(line: 122, column: 21, scope: !1430, inlinedAt: !1654)
!1659 = !DILocation(line: 125, column: 15, scope: !1430, inlinedAt: !1654)
!1660 = !DILocation(line: 184, column: 54, scope: !1454, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 126, column: 9, scope: !1437, inlinedAt: !1654)
!1662 = !DILocation(line: 186, column: 15, scope: !1454, inlinedAt: !1661)
!1663 = !DILocation(line: 186, column: 20, scope: !1454, inlinedAt: !1661)
!1664 = !DILocation(line: 126, column: 7, scope: !1430, inlinedAt: !1654)
!1665 = !DILocation(line: 128, column: 25, scope: !1435, inlinedAt: !1654)
!1666 = !DILocation(line: 131, column: 40, scope: !1436, inlinedAt: !1654)
!1667 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 131, column: 5, scope: !1436, inlinedAt: !1654)
!1669 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !1668)
!1670 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !1668)
!1671 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !1668)
!1673 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !1672)
!1674 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !1672)
!1675 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !1672)
!1676 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !1672)
!1677 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !1672)
!1678 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !1668)
!1680 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !1679)
!1681 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !1679)
!1682 = !DILocation(line: 180, column: 8, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1497, file: !182, line: 180, column: 7)
!1684 = !DILocation(line: 180, column: 7, scope: !1497)
!1685 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 181, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1683, file: !182, line: 180, column: 16)
!1690 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1686)
!1691 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1687)
!1692 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !1688)
!1693 = !DILocation(line: 182, column: 3, scope: !1689)
!1694 = !DILocation(line: 0, scope: !1497)
!1695 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 183, column: 3, scope: !1497)
!1698 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1696)
!1699 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1697)
!1700 = !DILocation(line: 183, column: 23, scope: !1497)
!1701 = !DILocation(line: 183, column: 34, scope: !1497)
!1702 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 186, column: 19, scope: !1497)
!1705 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1703)
!1706 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1704)
!1707 = !DILocation(line: 186, column: 39, scope: !1497)
!1708 = !DILocation(line: 186, column: 51, scope: !1497)
!1709 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 186, column: 3, scope: !1497)
!1711 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !1710)
!1712 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !1710)
!1713 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !1710)
!1715 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !1714)
!1716 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !1714)
!1717 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !1714)
!1718 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !1714)
!1719 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !1714)
!1720 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !1710)
!1722 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !1721)
!1723 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !1721)
!1724 = !DILocation(line: 189, column: 3, scope: !1497)
!1725 = !DILocation(line: 190, column: 3, scope: !1497)
!1726 = !DILocation(line: 193, column: 3, scope: !1497)
!1727 = !DILocation(line: 196, column: 1, scope: !1497)
!1728 = !DILocation(line: 663, column: 30, scope: !1545)
!1729 = !DILocation(line: 663, column: 41, scope: !1545)
!1730 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 98, column: 10, scope: !1397, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 666, column: 30, scope: !1545)
!1734 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1731)
!1735 = !DILocation(line: 666, column: 16, scope: !1545)
!1736 = !DILocation(line: 669, column: 7, scope: !1580)
!1737 = !DILocation(line: 669, column: 7, scope: !1545)
!1738 = !DILocation(line: 366, column: 29, scope: !1562, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 373, column: 20, scope: !1570, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 670, column: 19, scope: !1579)
!1741 = !DILocation(line: 366, column: 29, scope: !1563, inlinedAt: !1739)
!1742 = !DILocation(line: 366, column: 23, scope: !1564, inlinedAt: !1739)
!1743 = !DILocation(line: 358, column: 5, scope: !1585, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 367, column: 18, scope: !1564, inlinedAt: !1739)
!1745 = !DILocation(line: 359, column: 5, scope: !1585, inlinedAt: !1744)
!1746 = !DILocation(line: 360, column: 12, scope: !1585, inlinedAt: !1744)
!1747 = !DILocation(line: 358, column: 14, scope: !1585, inlinedAt: !1744)
!1748 = !DILocation(line: 361, column: 1, scope: !1585, inlinedAt: !1744)
!1749 = !DILocation(line: 367, column: 39, scope: !1564, inlinedAt: !1739)
!1750 = !DILocation(line: 367, column: 34, scope: !1564, inlinedAt: !1739)
!1751 = !DILocation(line: 367, column: 32, scope: !1564, inlinedAt: !1739)
!1752 = !DILocation(line: 374, column: 27, scope: !1577, inlinedAt: !1740)
!1753 = !DILocation(line: 374, column: 27, scope: !1575, inlinedAt: !1740)
!1754 = !DILocation(line: 374, column: 21, scope: !1570, inlinedAt: !1740)
!1755 = !DILocation(line: 375, column: 10, scope: !1570, inlinedAt: !1740)
!1756 = !DILocation(line: 671, column: 3, scope: !1579)
!1757 = !DILocation(line: 0, scope: !1545)
!1758 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 674, column: 41, scope: !1545)
!1762 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1759)
!1763 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1760)
!1764 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !1761)
!1765 = !DILocation(line: 674, column: 21, scope: !1545)
!1766 = !DILocation(line: 678, column: 6, scope: !1545)
!1767 = !DILocation(line: 678, column: 15, scope: !1545)
!1768 = !DILocation(line: 679, column: 22, scope: !1545)
!1769 = !DILocation(line: 116, column: 52, scope: !1614, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 679, column: 3, scope: !1545)
!1771 = !DILocation(line: 116, column: 76, scope: !1614, inlinedAt: !1770)
!1772 = !DILocation(line: 118, column: 25, scope: !1614, inlinedAt: !1770)
!1773 = !DILocation(line: 85, column: 49, scope: !1622, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 118, column: 2, scope: !1614, inlinedAt: !1770)
!1775 = !DILocation(line: 86, column: 28, scope: !1622, inlinedAt: !1774)
!1776 = !DILocation(line: 87, column: 28, scope: !1622, inlinedAt: !1774)
!1777 = !DILocation(line: 89, column: 13, scope: !1622, inlinedAt: !1774)
!1778 = !DILocation(line: 90, column: 8, scope: !1622, inlinedAt: !1774)
!1779 = !DILocation(line: 90, column: 13, scope: !1622, inlinedAt: !1774)
!1780 = !DILocation(line: 91, column: 8, scope: !1622, inlinedAt: !1774)
!1781 = !DILocation(line: 91, column: 13, scope: !1622, inlinedAt: !1774)
!1782 = !DILocation(line: 92, column: 8, scope: !1622, inlinedAt: !1774)
!1783 = !DILocation(line: 92, column: 13, scope: !1622, inlinedAt: !1774)
!1784 = !DILocation(line: 683, column: 20, scope: !1640)
!1785 = !DILocation(line: 683, column: 7, scope: !1640)
!1786 = !DILocation(line: 683, column: 7, scope: !1545)
!1787 = !DILocation(line: 687, column: 5, scope: !1644)
!1788 = !DILocation(line: 688, column: 3, scope: !1644)
!1789 = !DILocation(line: 690, column: 3, scope: !1545)
!1790 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !182, file: !182, line: 198, type: !1498, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1791)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "f_to", arg: 1, scope: !1790, file: !182, line: 198, type: !296)
!1793 = !DILocation(line: 198, column: 33, scope: !1790)
!1794 = !DILocation(line: 202, column: 9, scope: !1790)
!1795 = !DILocation(line: 202, column: 19, scope: !1790)
!1796 = !DILocation(line: 202, column: 32, scope: !1790)
!1797 = !DILocation(line: 202, column: 3, scope: !1790)
!1798 = !DILocation(line: 208, column: 3, scope: !1790)
!1799 = !DILocation(line: 210, column: 3, scope: !1790)
!1800 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !182, file: !182, line: 274, type: !1498, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1801)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "f", arg: 1, scope: !1800, file: !182, line: 274, type: !296)
!1803 = !DILocation(line: 274, column: 33, scope: !1800)
!1804 = !DILocation(line: 276, column: 26, scope: !1800)
!1805 = !DILocation(line: 276, column: 37, scope: !1800)
!1806 = !DILocation(line: 276, column: 6, scope: !1800)
!1807 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 277, column: 3, scope: !1800)
!1809 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1808)
!1810 = !DILocation(line: 276, column: 32, scope: !1800)
!1811 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1808)
!1812 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1808)
!1813 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1808)
!1814 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 278, column: 3, scope: !1800)
!1816 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1815)
!1817 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1815)
!1818 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1815)
!1819 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1815)
!1820 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 279, column: 3, scope: !1800)
!1822 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1821)
!1823 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1821)
!1824 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1821)
!1825 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1821)
!1826 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 280, column: 3, scope: !1800)
!1828 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1827)
!1829 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1827)
!1830 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1827)
!1831 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1827)
!1832 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 281, column: 3, scope: !1800)
!1834 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1833)
!1835 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1833)
!1836 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1833)
!1837 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1833)
!1838 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 282, column: 3, scope: !1800)
!1840 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1839)
!1841 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1839)
!1842 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1839)
!1843 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1839)
!1844 = !DILocation(line: 283, column: 18, scope: !1800)
!1845 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 283, column: 3, scope: !1800)
!1847 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1846)
!1848 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1846)
!1849 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1846)
!1850 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1846)
!1851 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 284, column: 3, scope: !1800)
!1853 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1852)
!1854 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1852)
!1855 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1852)
!1856 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1852)
!1857 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 285, column: 3, scope: !1800)
!1859 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1858)
!1860 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1858)
!1861 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1858)
!1862 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1858)
!1863 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 286, column: 3, scope: !1800)
!1865 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1864)
!1866 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1864)
!1867 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1864)
!1868 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1864)
!1869 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 287, column: 3, scope: !1800)
!1871 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1870)
!1872 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1870)
!1873 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1870)
!1874 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1870)
!1875 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 288, column: 3, scope: !1800)
!1877 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1876)
!1878 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1876)
!1879 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1876)
!1880 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1876)
!1881 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 289, column: 3, scope: !1800)
!1883 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1882)
!1884 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1882)
!1885 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1882)
!1886 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1882)
!1887 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 290, column: 3, scope: !1800)
!1889 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1888)
!1890 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1888)
!1891 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1888)
!1892 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1888)
!1893 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 291, column: 3, scope: !1800)
!1895 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1894)
!1896 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1894)
!1897 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1894)
!1898 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1894)
!1899 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 292, column: 3, scope: !1800)
!1901 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !1900)
!1902 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !1900)
!1903 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !1900)
!1904 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !1900)
!1905 = !DILocation(line: 294, column: 3, scope: !1800)
!1906 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !182, file: !182, line: 299, type: !1907, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!50, !296}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "f_to", arg: 1, scope: !1906, file: !182, line: 299, type: !296)
!1911 = !DILocalVariable(name: "f_from", scope: !1906, file: !182, line: 302, type: !296)
!1912 = !DILocalVariable(name: "fiber_sched_queue", scope: !1913, file: !182, line: 312, type: !205)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !182, line: 310, column: 63)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !182, line: 310, column: 7)
!1915 = !DILocation(line: 299, column: 36, scope: !1906)
!1916 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 302, column: 24, scope: !1906)
!1920 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1917)
!1921 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1918)
!1922 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !1919)
!1923 = !DILocation(line: 302, column: 15, scope: !1906)
!1924 = !DILocation(line: 305, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1906, file: !182, line: 305, column: 7)
!1926 = !DILocation(line: 305, column: 32, scope: !1925)
!1927 = !DILocation(line: 306, column: 22, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !182, line: 305, column: 61)
!1929 = !DILocation(line: 307, column: 3, scope: !1928)
!1930 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 310, column: 17, scope: !1914)
!1934 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1931)
!1935 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1932)
!1936 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !1933)
!1937 = !DILocation(line: 310, column: 14, scope: !1914)
!1938 = !DILocation(line: 310, column: 34, scope: !1914)
!1939 = !DILocation(line: 310, column: 45, scope: !1914)
!1940 = !DILocation(line: 310, column: 54, scope: !1914)
!1941 = !DILocation(line: 310, column: 7, scope: !1906)
!1942 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 312, column: 43, scope: !1913)
!1946 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1943)
!1947 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1944)
!1948 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !1945)
!1949 = !DILocation(line: 312, column: 23, scope: !1913)
!1950 = !DILocation(line: 318, column: 29, scope: !1913)
!1951 = !DILocation(line: 116, column: 52, scope: !1614, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 318, column: 5, scope: !1913)
!1953 = !DILocation(line: 116, column: 76, scope: !1614, inlinedAt: !1952)
!1954 = !DILocation(line: 118, column: 25, scope: !1614, inlinedAt: !1952)
!1955 = !DILocation(line: 85, column: 49, scope: !1622, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 118, column: 2, scope: !1614, inlinedAt: !1952)
!1957 = !DILocation(line: 86, column: 28, scope: !1622, inlinedAt: !1956)
!1958 = !DILocation(line: 87, column: 28, scope: !1622, inlinedAt: !1956)
!1959 = !DILocation(line: 89, column: 13, scope: !1622, inlinedAt: !1956)
!1960 = !DILocation(line: 90, column: 8, scope: !1622, inlinedAt: !1956)
!1961 = !DILocation(line: 90, column: 13, scope: !1622, inlinedAt: !1956)
!1962 = !DILocation(line: 91, column: 8, scope: !1622, inlinedAt: !1956)
!1963 = !DILocation(line: 91, column: 13, scope: !1622, inlinedAt: !1956)
!1964 = !DILocation(line: 92, column: 8, scope: !1622, inlinedAt: !1956)
!1965 = !DILocation(line: 92, column: 13, scope: !1622, inlinedAt: !1956)
!1966 = !DILocation(line: 319, column: 3, scope: !1913)
!1967 = !DILocation(line: 323, column: 16, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1906, file: !182, line: 323, column: 7)
!1969 = !DILocation(line: 323, column: 8, scope: !1968)
!1970 = !DILocation(line: 323, column: 7, scope: !1906)
!1971 = !DILocation(line: 324, column: 29, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !182, line: 323, column: 24)
!1973 = !DILocalVariable(name: "vc", arg: 1, scope: !1974, file: !182, line: 906, type: !47)
!1974 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !182, file: !182, line: 906, type: !1975, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !47}
!1977 = !{!1973, !1978}
!1978 = !DILocalVariable(name: "curr_fiber", scope: !1974, file: !182, line: 909, type: !296)
!1979 = !DILocation(line: 906, column: 49, scope: !1974, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 324, column: 5, scope: !1972)
!1981 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 909, column: 28, scope: !1974, inlinedAt: !1980)
!1985 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !1982)
!1986 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !1983)
!1987 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !1984)
!1988 = !DILocation(line: 909, column: 15, scope: !1974, inlinedAt: !1980)
!1989 = !DILocation(line: 912, column: 15, scope: !1974, inlinedAt: !1980)
!1990 = !DILocation(line: 912, column: 18, scope: !1974, inlinedAt: !1980)
!1991 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !1998)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !16, line: 258, column: 26)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !16, line: 258, column: 26)
!1994 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !1398, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1995)
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "__r", scope: !1993, file: !16, line: 258, type: !215)
!1997 = !DILocalVariable(name: "__r", scope: !1992, file: !16, line: 258, type: !215)
!1998 = distinct !DILocation(line: 913, column: 3, scope: !1974, inlinedAt: !1980)
!1999 = !{i32 -2147260791}
!2000 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !1998)
!2001 = !DILocation(line: 913, column: 21, scope: !1974, inlinedAt: !1980)
!2002 = !DILocation(line: 913, column: 24, scope: !1974, inlinedAt: !1980)
!2003 = !DILocation(line: 325, column: 3, scope: !1972)
!2004 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 328, column: 3, scope: !1906)
!2007 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2005)
!2008 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !2006)
!2009 = !DILocation(line: 328, column: 23, scope: !1906)
!2010 = !DILocation(line: 328, column: 34, scope: !1906)
!2011 = !DILocation(line: 329, column: 20, scope: !1906)
!2012 = !DILocation(line: 330, column: 9, scope: !1906)
!2013 = !DILocation(line: 330, column: 18, scope: !1906)
!2014 = !DILocation(line: 331, column: 3, scope: !1906)
!2015 = !DILocation(line: 333, column: 3, scope: !1906)
!2016 = !DILocation(line: 906, column: 49, scope: !1974)
!2017 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 909, column: 28, scope: !1974)
!2021 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2018)
!2022 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !2019)
!2023 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !2020)
!2024 = !DILocation(line: 909, column: 15, scope: !1974)
!2025 = !DILocation(line: 912, column: 15, scope: !1974)
!2026 = !DILocation(line: 912, column: 18, scope: !1974)
!2027 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 913, column: 3, scope: !1974)
!2029 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2028)
!2030 = !DILocation(line: 913, column: 21, scope: !1974)
!2031 = !DILocation(line: 913, column: 24, scope: !1974)
!2032 = !DILocation(line: 914, column: 1, scope: !1974)
!2033 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !182, file: !182, line: 336, type: !2034, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null}
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "curr", scope: !2033, file: !182, line: 338, type: !296)
!2038 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 338, column: 22, scope: !2033)
!2042 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2039)
!2043 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !2040)
!2044 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !2041)
!2045 = !DILocation(line: 338, column: 15, scope: !2033)
!2046 = !DILocation(line: 340, column: 3, scope: !2033)
!2047 = !DILocation(line: 341, column: 1, scope: !2033)
!2048 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !182, file: !182, line: 343, type: !2049, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!70, !296}
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "f", arg: 1, scope: !2048, file: !182, line: 343, type: !296)
!2053 = !DILocalVariable(name: "idle_fiber", scope: !2048, file: !182, line: 345, type: !296)
!2054 = !DILocalVariable(name: "result", scope: !2048, file: !182, line: 348, type: !70)
!2055 = !DILocation(line: 343, column: 36, scope: !2048)
!2056 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 345, column: 28, scope: !2048)
!2060 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2057)
!2061 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !2058)
!2062 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !2059)
!2063 = !DILocation(line: 345, column: 15, scope: !2048)
!2064 = !DILocation(line: 348, column: 11, scope: !2048)
!2065 = !DILocation(line: 349, column: 18, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2048, file: !182, line: 349, column: 7)
!2067 = !DILocation(line: 349, column: 7, scope: !2048)
!2068 = !DILocation(line: 353, column: 3, scope: !2048)
!2069 = !DILocation(line: 366, column: 29, scope: !1562, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 373, column: 20, scope: !1570)
!2071 = !DILocation(line: 366, column: 29, scope: !1563, inlinedAt: !2070)
!2072 = !DILocation(line: 366, column: 23, scope: !1564, inlinedAt: !2070)
!2073 = !DILocation(line: 358, column: 5, scope: !1585, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 367, column: 18, scope: !1564, inlinedAt: !2070)
!2075 = !DILocation(line: 359, column: 5, scope: !1585, inlinedAt: !2074)
!2076 = !DILocation(line: 360, column: 12, scope: !1585, inlinedAt: !2074)
!2077 = !DILocation(line: 358, column: 14, scope: !1585, inlinedAt: !2074)
!2078 = !DILocation(line: 361, column: 1, scope: !1585, inlinedAt: !2074)
!2079 = !DILocation(line: 367, column: 39, scope: !1564, inlinedAt: !2070)
!2080 = !DILocation(line: 367, column: 34, scope: !1564, inlinedAt: !2070)
!2081 = !DILocation(line: 367, column: 32, scope: !1564, inlinedAt: !2070)
!2082 = !DILocation(line: 374, column: 27, scope: !1577)
!2083 = !DILocation(line: 374, column: 27, scope: !1575)
!2084 = !DILocation(line: 374, column: 21, scope: !1570)
!2085 = !DILocation(line: 375, column: 10, scope: !1570)
!2086 = !DILocation(line: 375, column: 33, scope: !1570)
!2087 = !DILocation(line: 375, column: 42, scope: !1570)
!2088 = !DILocation(line: 375, column: 3, scope: !1570)
!2089 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !182, file: !182, line: 383, type: !1907, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093, !2095, !2097, !2098, !2099, !2100, !2102, !2107}
!2091 = !DILocalVariable(name: "to_del", arg: 1, scope: !2089, file: !182, line: 383, type: !296)
!2092 = !DILocalVariable(name: "sys", scope: !2089, file: !182, line: 386, type: !318)
!2093 = !DILocalVariable(name: "__r", scope: !2094, file: !182, line: 386, type: !318)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !182, line: 386, column: 26)
!2095 = !DILocalVariable(name: "__r", scope: !2096, file: !182, line: 386, type: !318)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !182, line: 386, column: 26)
!2097 = !DILocalVariable(name: "cpu_iter", scope: !2089, file: !182, line: 387, type: !50)
!2098 = !DILocalVariable(name: "temp", scope: !2089, file: !182, line: 390, type: !205)
!2099 = !DILocalVariable(name: "test", scope: !2089, file: !182, line: 391, type: !296)
!2100 = !DILocalVariable(name: "iter", scope: !2101, file: !182, line: 392, type: !50)
!2101 = distinct !DILexicalBlock(scope: !2089, file: !182, line: 392, column: 3)
!2102 = !DILocalVariable(name: "__mptr", scope: !2103, file: !182, line: 395, type: !1442)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !182, line: 395, column: 5)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !182, line: 395, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !182, line: 392, column: 46)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !182, line: 392, column: 3)
!2107 = !DILocalVariable(name: "__mptr", scope: !2108, file: !182, line: 395, type: !1442)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !182, line: 395, column: 5)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !182, line: 395, column: 5)
!2110 = !DILocation(line: 383, column: 42, scope: !2089)
!2111 = !DILocation(line: 386, column: 26, scope: !2096)
!2112 = !{i32 -2147179109}
!2113 = !DILocation(line: 386, column: 26, scope: !2094)
!2114 = !DILocation(line: 386, column: 20, scope: !2089)
!2115 = !DILocation(line: 387, column: 23, scope: !2089)
!2116 = !DILocation(line: 387, column: 7, scope: !2089)
!2117 = !DILocation(line: 392, column: 12, scope: !2101)
!2118 = !DILocation(line: 392, column: 27, scope: !2106)
!2119 = !DILocation(line: 392, column: 3, scope: !2101)
!2120 = !DILocation(line: 394, column: 14, scope: !2105)
!2121 = !DILocation(line: 394, column: 31, scope: !2105)
!2122 = !DILocation(line: 394, column: 40, scope: !2105)
!2123 = !DILocation(line: 390, column: 21, scope: !2089)
!2124 = !DILocation(line: 395, column: 5, scope: !2103)
!2125 = !DILocation(line: 391, column: 15, scope: !2089)
!2126 = !DILocation(line: 0, scope: !2104)
!2127 = !DILocation(line: 395, column: 5, scope: !2104)
!2128 = !DILocation(line: 395, column: 5, scope: !2109)
!2129 = !DILocation(line: 400, column: 16, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !182, line: 400, column: 11)
!2131 = distinct !DILexicalBlock(scope: !2109, file: !182, line: 395, column: 48)
!2132 = !DILocation(line: 400, column: 11, scope: !2131)
!2133 = distinct !{!2133, !2127, !2134}
!2134 = !DILocation(line: 404, column: 5, scope: !2104)
!2135 = !DILocation(line: 392, column: 43, scope: !2106)
!2136 = distinct !{!2136, !2119, !2137}
!2137 = !DILocation(line: 405, column: 3, scope: !2101)
!2138 = !DILocation(line: 401, column: 33, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2130, file: !182, line: 400, column: 26)
!2140 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 401, column: 9, scope: !2139)
!2142 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !2141)
!2143 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !2141)
!2144 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !2141)
!2146 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !2145)
!2147 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !2145)
!2148 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !2145)
!2149 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !2145)
!2150 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !2145)
!2151 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !2141)
!2153 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !2152)
!2154 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !2152)
!2155 = !DILocation(line: 408, column: 1, scope: !2089)
!2156 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !182, file: !182, line: 435, type: !561, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2157)
!2157 = !{!2158, !2159, !2161, !2163, !2164, !2170, !2171, !2176, !2178, !2181, !2183}
!2158 = !DILocalVariable(name: "id", scope: !2156, file: !182, line: 437, type: !345)
!2159 = !DILocalVariable(name: "__r", scope: !2160, file: !182, line: 437, type: !345)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !182, line: 437, column: 19)
!2161 = !DILocalVariable(name: "__r", scope: !2162, file: !182, line: 437, type: !345)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !182, line: 437, column: 19)
!2163 = !DILocalVariable(name: "my_cpu", scope: !2156, file: !182, line: 438, type: !324)
!2164 = !DILocalVariable(name: "_p", scope: !2165, file: !182, line: 444, type: !50)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !182, line: 444, column: 2)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !182, line: 444, column: 2)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !182, line: 444, column: 2)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !182, line: 443, column: 29)
!2169 = distinct !DILexicalBlock(scope: !2156, file: !182, line: 443, column: 9)
!2170 = !DILocalVariable(name: "_t", scope: !2165, file: !182, line: 444, type: !215)
!2171 = !DILocalVariable(name: "__r", scope: !2172, file: !182, line: 444, type: !345)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !182, line: 444, column: 2)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !182, line: 444, column: 2)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !182, line: 444, column: 2)
!2175 = distinct !DILexicalBlock(scope: !2165, file: !182, line: 444, column: 2)
!2176 = !DILocalVariable(name: "__r", scope: !2177, file: !182, line: 444, type: !345)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !182, line: 444, column: 2)
!2178 = !DILocalVariable(name: "__r", scope: !2179, file: !182, line: 444, type: !345)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !182, line: 444, column: 2)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !182, line: 444, column: 2)
!2181 = !DILocalVariable(name: "__r", scope: !2182, file: !182, line: 444, type: !345)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !182, line: 444, column: 2)
!2183 = !DILocalVariable(name: "_p", scope: !2184, file: !182, line: 444, type: !50)
!2184 = distinct !DILexicalBlock(scope: !2166, file: !182, line: 444, column: 2)
!2185 = !DILocation(line: 437, column: 19, scope: !2162)
!2186 = !{i32 -2147162346}
!2187 = !DILocation(line: 437, column: 19, scope: !2160)
!2188 = !DILocation(line: 437, column: 14, scope: !2156)
!2189 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 438, column: 27, scope: !2156)
!2191 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2190)
!2192 = !DILocation(line: 438, column: 18, scope: !2156)
!2193 = !DILocation(line: 442, column: 23, scope: !2156)
!2194 = !DILocation(line: 442, column: 13, scope: !2156)
!2195 = !DILocation(line: 442, column: 21, scope: !2156)
!2196 = !DILocation(line: 443, column: 10, scope: !2169)
!2197 = !DILocation(line: 443, column: 9, scope: !2156)
!2198 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2203)
!2199 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2200, file: !2200, line: 39, type: !2201, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!2200 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!33}
!2203 = distinct !DILocation(line: 444, column: 2, scope: !2166)
!2204 = !DILocation(line: 444, column: 2, scope: !2166)
!2205 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2210)
!2207 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2200, file: !2200, line: 82, type: !561, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2208)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "base", scope: !2207, file: !2200, line: 84, type: !33)
!2210 = distinct !DILocation(line: 0, scope: !2166)
!2211 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2210)
!2212 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2210)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !2200, line: 85, column: 9)
!2214 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2210)
!2215 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2210)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !2200, line: 85, column: 15)
!2217 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2210)
!2218 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2210)
!2219 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2210)
!2220 = !DILocation(line: 0, scope: !2213, inlinedAt: !2210)
!2221 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2226)
!2223 = distinct !DISubprogram(name: "preempt_disable", scope: !2200, file: !2200, line: 46, type: !2034, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "base", scope: !2223, file: !2200, line: 48, type: !33)
!2226 = distinct !DILocation(line: 0, scope: !2166)
!2227 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2226)
!2228 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2226)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !2200, line: 49, column: 9)
!2230 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2226)
!2231 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2226)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !2200, line: 49, column: 15)
!2233 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2226)
!2234 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2226)
!2235 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2226)
!2236 = !DILocation(line: 444, column: 2, scope: !2167)
!2237 = !DILocation(line: 444, column: 2, scope: !2165)
!2238 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 444, column: 2, scope: !2165)
!2240 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2239)
!2241 = !DILocation(line: 444, column: 2, scope: !2174)
!2242 = !DILocation(line: 0, scope: !2174)
!2243 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2250)
!2245 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2200, file: !2200, line: 94, type: !2246, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!35}
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "base", scope: !2245, file: !2200, line: 96, type: !33)
!2250 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2252)
!2251 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2200, file: !2200, line: 105, type: !561, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!2252 = distinct !DILocation(line: 0, scope: !2174)
!2253 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2250)
!2254 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2250)
!2255 = distinct !DILexicalBlock(scope: !2245, file: !2200, line: 97, column: 9)
!2256 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2250)
!2257 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2250)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !2200, line: 97, column: 15)
!2259 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2250)
!2260 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2250)
!2261 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2250)
!2262 = !DILocation(line: 444, column: 2, scope: !2175)
!2263 = !DILocation(line: 444, column: 2, scope: !2173)
!2264 = !DILocation(line: 444, column: 2, scope: !2180)
!2265 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2270)
!2267 = distinct !DISubprogram(name: "preempt_enable", scope: !2200, file: !2200, line: 57, type: !2034, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2268)
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "base", scope: !2267, file: !2200, line: 59, type: !33)
!2270 = distinct !DILocation(line: 444, column: 2, scope: !2165)
!2271 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2270)
!2272 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2270)
!2273 = distinct !DILexicalBlock(scope: !2267, file: !2200, line: 60, column: 9)
!2274 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2270)
!2275 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2270)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !2200, line: 60, column: 15)
!2277 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2270)
!2278 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2270)
!2279 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2270)
!2280 = !DILocation(line: 444, column: 2, scope: !2184)
!2281 = !DILocation(line: 444, column: 2, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !182, line: 444, column: 2)
!2283 = distinct !DILexicalBlock(scope: !2184, file: !182, line: 444, column: 2)
!2284 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 0, scope: !2282)
!2288 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2286)
!2289 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2286)
!2290 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2286)
!2291 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2286)
!2292 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2286)
!2293 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2286)
!2294 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2286)
!2295 = !DILocation(line: 0, scope: !2282)
!2296 = !DILocation(line: 444, column: 2, scope: !2283)
!2297 = !DILocation(line: 444, column: 2, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2282, file: !182, line: 444, column: 2)
!2299 = !DILocation(line: 444, column: 2, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2282, file: !182, line: 444, column: 2)
!2301 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 444, column: 2, scope: !2184)
!2304 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2303)
!2305 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2303)
!2306 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2303)
!2307 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2303)
!2308 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2303)
!2309 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2303)
!2310 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2303)
!2311 = !DILocation(line: 0, scope: !2156)
!2312 = !DILocation(line: 449, column: 1, scope: !2156)
!2313 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !182, file: !182, line: 410, type: !2314, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!334}
!2316 = !{!2317, !2318, !2320, !2322, !2324, !2330, !2331, !2336, !2338, !2341, !2343}
!2317 = !DILocalVariable(name: "state", scope: !2313, file: !182, line: 412, type: !334)
!2318 = !DILocalVariable(name: "p", scope: !2319, file: !182, line: 412, type: !33)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !182, line: 412, column: 74)
!2320 = !DILocalVariable(name: "__r", scope: !2321, file: !182, line: 412, type: !345)
!2321 = distinct !DILexicalBlock(scope: !2319, file: !182, line: 412, column: 74)
!2322 = !DILocalVariable(name: "__r", scope: !2323, file: !182, line: 412, type: !345)
!2323 = distinct !DILexicalBlock(scope: !2321, file: !182, line: 412, column: 74)
!2324 = !DILocalVariable(name: "_p", scope: !2325, file: !182, line: 415, type: !50)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !182, line: 415, column: 9)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !182, line: 415, column: 9)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !182, line: 415, column: 9)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !182, line: 414, column: 17)
!2329 = distinct !DILexicalBlock(scope: !2313, file: !182, line: 414, column: 9)
!2330 = !DILocalVariable(name: "_t", scope: !2325, file: !182, line: 415, type: !215)
!2331 = !DILocalVariable(name: "__r", scope: !2332, file: !182, line: 415, type: !345)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !182, line: 415, column: 9)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !182, line: 415, column: 9)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !182, line: 415, column: 9)
!2335 = distinct !DILexicalBlock(scope: !2325, file: !182, line: 415, column: 9)
!2336 = !DILocalVariable(name: "__r", scope: !2337, file: !182, line: 415, type: !345)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !182, line: 415, column: 9)
!2338 = !DILocalVariable(name: "__r", scope: !2339, file: !182, line: 415, type: !345)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !182, line: 415, column: 9)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !182, line: 415, column: 9)
!2341 = !DILocalVariable(name: "__r", scope: !2342, file: !182, line: 415, type: !345)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !182, line: 415, column: 9)
!2343 = !DILocalVariable(name: "_p", scope: !2344, file: !182, line: 415, type: !50)
!2344 = distinct !DILexicalBlock(scope: !2326, file: !182, line: 415, column: 9)
!2345 = !DILocation(line: 412, column: 74, scope: !2323)
!2346 = !{i32 -2147173855}
!2347 = !DILocation(line: 412, column: 74, scope: !2321)
!2348 = !DILocation(line: 412, column: 74, scope: !2319)
!2349 = !DILocation(line: 414, column: 10, scope: !2329)
!2350 = !DILocation(line: 414, column: 9, scope: !2313)
!2351 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 415, column: 9, scope: !2326)
!2353 = !DILocation(line: 415, column: 9, scope: !2326)
!2354 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 0, scope: !2326)
!2357 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2356)
!2358 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2356)
!2359 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2356)
!2360 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2356)
!2361 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2356)
!2362 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2356)
!2363 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2356)
!2364 = !DILocation(line: 0, scope: !2213, inlinedAt: !2356)
!2365 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 0, scope: !2326)
!2368 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2367)
!2369 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2367)
!2370 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2367)
!2371 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2367)
!2372 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2367)
!2373 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2367)
!2374 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2367)
!2375 = !DILocation(line: 415, column: 9, scope: !2327)
!2376 = !DILocation(line: 415, column: 9, scope: !2325)
!2377 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 415, column: 9, scope: !2325)
!2379 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2378)
!2380 = !DILocation(line: 415, column: 9, scope: !2334)
!2381 = !DILocation(line: 0, scope: !2334)
!2382 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 0, scope: !2334)
!2386 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2384)
!2387 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2384)
!2388 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2384)
!2389 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2384)
!2390 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2384)
!2391 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2384)
!2392 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2384)
!2393 = !DILocation(line: 415, column: 9, scope: !2335)
!2394 = !DILocation(line: 415, column: 9, scope: !2333)
!2395 = !DILocation(line: 415, column: 9, scope: !2340)
!2396 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 415, column: 9, scope: !2325)
!2399 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2398)
!2400 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2398)
!2401 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2398)
!2402 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2398)
!2403 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2398)
!2404 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2398)
!2405 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2398)
!2406 = !DILocation(line: 415, column: 9, scope: !2344)
!2407 = !DILocation(line: 415, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !182, line: 415, column: 9)
!2409 = distinct !DILexicalBlock(scope: !2344, file: !182, line: 415, column: 9)
!2410 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 0, scope: !2408)
!2414 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2412)
!2415 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2412)
!2416 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2412)
!2417 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2412)
!2418 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2412)
!2419 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2412)
!2420 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2412)
!2421 = !DILocation(line: 0, scope: !2408)
!2422 = !DILocation(line: 415, column: 9, scope: !2409)
!2423 = !DILocation(line: 415, column: 9, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2408, file: !182, line: 415, column: 9)
!2425 = !DILocation(line: 415, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2408, file: !182, line: 415, column: 9)
!2427 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 415, column: 9, scope: !2344)
!2430 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2429)
!2431 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2429)
!2432 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2429)
!2433 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2429)
!2434 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2429)
!2435 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2429)
!2436 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2429)
!2437 = !DILocation(line: 412, column: 43, scope: !2313)
!2438 = !DILocation(line: 412, column: 35, scope: !2313)
!2439 = !DILocation(line: 419, column: 2, scope: !2313)
!2440 = !DILocation(line: 421, column: 27, scope: !2313)
!2441 = !DILocation(line: 421, column: 5, scope: !2313)
!2442 = !DILocation(line: 424, column: 29, scope: !2313)
!2443 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 424, column: 5, scope: !2313)
!2445 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !2444)
!2446 = !DILocation(line: 76, column: 8, scope: !1488, inlinedAt: !2444)
!2447 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !2444)
!2448 = !DILocation(line: 426, column: 5, scope: !2313)
!2449 = !DILocation(line: 429, column: 5, scope: !2313)
!2450 = !DILocation(line: 431, column: 5, scope: !2313)
!2451 = !DILocation(line: 0, scope: !2313)
!2452 = !DILocation(line: 432, column: 1, scope: !2313)
!2453 = distinct !DISubprogram(name: "nk_fiber_init", scope: !182, file: !182, line: 452, type: !561, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2460, !2461, !2466, !2468, !2471, !2473, !2475, !2481, !2482, !2487, !2489, !2492, !2494}
!2455 = !DILocalVariable(name: "my_cpu", scope: !2453, file: !182, line: 454, type: !324)
!2456 = !DILocalVariable(name: "_p", scope: !2457, file: !182, line: 456, type: !50)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !182, line: 456, column: 5)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !182, line: 456, column: 5)
!2459 = distinct !DILexicalBlock(scope: !2453, file: !182, line: 456, column: 5)
!2460 = !DILocalVariable(name: "_t", scope: !2457, file: !182, line: 456, type: !215)
!2461 = !DILocalVariable(name: "__r", scope: !2462, file: !182, line: 456, type: !345)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !182, line: 456, column: 5)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !182, line: 456, column: 5)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !182, line: 456, column: 5)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !182, line: 456, column: 5)
!2466 = !DILocalVariable(name: "__r", scope: !2467, file: !182, line: 456, type: !345)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !182, line: 456, column: 5)
!2468 = !DILocalVariable(name: "__r", scope: !2469, file: !182, line: 456, type: !345)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !182, line: 456, column: 5)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !182, line: 456, column: 5)
!2471 = !DILocalVariable(name: "__r", scope: !2472, file: !182, line: 456, type: !345)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !182, line: 456, column: 5)
!2473 = !DILocalVariable(name: "_p", scope: !2474, file: !182, line: 456, type: !50)
!2474 = distinct !DILexicalBlock(scope: !2458, file: !182, line: 456, column: 5)
!2475 = !DILocalVariable(name: "_p", scope: !2476, file: !182, line: 464, type: !50)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !182, line: 464, column: 2)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !182, line: 464, column: 2)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !182, line: 464, column: 2)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !182, line: 463, column: 29)
!2480 = distinct !DILexicalBlock(scope: !2453, file: !182, line: 463, column: 9)
!2481 = !DILocalVariable(name: "_t", scope: !2476, file: !182, line: 464, type: !215)
!2482 = !DILocalVariable(name: "__r", scope: !2483, file: !182, line: 464, type: !345)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !182, line: 464, column: 2)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !182, line: 464, column: 2)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !182, line: 464, column: 2)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !182, line: 464, column: 2)
!2487 = !DILocalVariable(name: "__r", scope: !2488, file: !182, line: 464, type: !345)
!2488 = distinct !DILexicalBlock(scope: !2483, file: !182, line: 464, column: 2)
!2489 = !DILocalVariable(name: "__r", scope: !2490, file: !182, line: 464, type: !345)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !182, line: 464, column: 2)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !182, line: 464, column: 2)
!2492 = !DILocalVariable(name: "__r", scope: !2493, file: !182, line: 464, type: !345)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !182, line: 464, column: 2)
!2494 = !DILocalVariable(name: "_p", scope: !2495, file: !182, line: 464, type: !50)
!2495 = distinct !DILexicalBlock(scope: !2477, file: !182, line: 464, column: 2)
!2496 = !DILocation(line: 454, column: 88, scope: !2453)
!2497 = !DILocation(line: 454, column: 27, scope: !2453)
!2498 = !DILocation(line: 454, column: 18, scope: !2453)
!2499 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 456, column: 5, scope: !2458)
!2501 = !DILocation(line: 456, column: 5, scope: !2458)
!2502 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 0, scope: !2458)
!2505 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2504)
!2506 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2504)
!2507 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2504)
!2508 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2504)
!2509 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2504)
!2510 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2504)
!2511 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2504)
!2512 = !DILocation(line: 0, scope: !2213, inlinedAt: !2504)
!2513 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 0, scope: !2458)
!2516 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2515)
!2517 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2515)
!2518 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2515)
!2519 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2515)
!2520 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2515)
!2521 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2515)
!2522 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2515)
!2523 = !DILocation(line: 456, column: 5, scope: !2459)
!2524 = !DILocation(line: 456, column: 5, scope: !2457)
!2525 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 456, column: 5, scope: !2457)
!2527 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2526)
!2528 = !DILocation(line: 456, column: 5, scope: !2464)
!2529 = !DILocation(line: 0, scope: !2464)
!2530 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 0, scope: !2464)
!2534 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2532)
!2535 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2532)
!2536 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2532)
!2537 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2532)
!2538 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2532)
!2539 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2532)
!2540 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2532)
!2541 = !DILocation(line: 456, column: 5, scope: !2465)
!2542 = !DILocation(line: 456, column: 5, scope: !2463)
!2543 = !DILocation(line: 456, column: 5, scope: !2470)
!2544 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 456, column: 5, scope: !2457)
!2547 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2546)
!2548 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2546)
!2549 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2546)
!2550 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2546)
!2551 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2546)
!2552 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2546)
!2553 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2546)
!2554 = !DILocation(line: 456, column: 5, scope: !2474)
!2555 = !DILocation(line: 456, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !182, line: 456, column: 5)
!2557 = distinct !DILexicalBlock(scope: !2474, file: !182, line: 456, column: 5)
!2558 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 0, scope: !2556)
!2562 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2560)
!2563 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2560)
!2564 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2560)
!2565 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2560)
!2566 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2560)
!2567 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2560)
!2568 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2560)
!2569 = !DILocation(line: 0, scope: !2556)
!2570 = !DILocation(line: 456, column: 5, scope: !2557)
!2571 = !DILocation(line: 456, column: 5, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2556, file: !182, line: 456, column: 5)
!2573 = !DILocation(line: 456, column: 5, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2556, file: !182, line: 456, column: 5)
!2575 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 456, column: 5, scope: !2474)
!2578 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2577)
!2579 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2577)
!2580 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2577)
!2581 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2577)
!2582 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2577)
!2583 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2577)
!2584 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2577)
!2585 = !DILocation(line: 462, column: 23, scope: !2453)
!2586 = !DILocation(line: 462, column: 13, scope: !2453)
!2587 = !DILocation(line: 462, column: 21, scope: !2453)
!2588 = !DILocation(line: 463, column: 10, scope: !2480)
!2589 = !DILocation(line: 463, column: 9, scope: !2453)
!2590 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 464, column: 2, scope: !2477)
!2592 = !DILocation(line: 464, column: 2, scope: !2477)
!2593 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 0, scope: !2477)
!2596 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2595)
!2597 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2595)
!2598 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2595)
!2599 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2595)
!2600 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2595)
!2601 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2595)
!2602 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2595)
!2603 = !DILocation(line: 0, scope: !2213, inlinedAt: !2595)
!2604 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 0, scope: !2477)
!2607 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2606)
!2608 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2606)
!2609 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2606)
!2610 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2606)
!2611 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2606)
!2612 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2606)
!2613 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2606)
!2614 = !DILocation(line: 464, column: 2, scope: !2478)
!2615 = !DILocation(line: 464, column: 2, scope: !2476)
!2616 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 464, column: 2, scope: !2476)
!2618 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2617)
!2619 = !DILocation(line: 464, column: 2, scope: !2485)
!2620 = !DILocation(line: 0, scope: !2485)
!2621 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 0, scope: !2485)
!2625 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2623)
!2626 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2623)
!2627 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2623)
!2628 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2623)
!2629 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2623)
!2630 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2623)
!2631 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2623)
!2632 = !DILocation(line: 464, column: 2, scope: !2486)
!2633 = !DILocation(line: 464, column: 2, scope: !2484)
!2634 = !DILocation(line: 464, column: 2, scope: !2491)
!2635 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 464, column: 2, scope: !2476)
!2638 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2637)
!2639 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2637)
!2640 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2637)
!2641 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2637)
!2642 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2637)
!2643 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2637)
!2644 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2637)
!2645 = !DILocation(line: 464, column: 2, scope: !2495)
!2646 = !DILocation(line: 464, column: 2, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !182, line: 464, column: 2)
!2648 = distinct !DILexicalBlock(scope: !2495, file: !182, line: 464, column: 2)
!2649 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 0, scope: !2647)
!2653 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2651)
!2654 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2651)
!2655 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2651)
!2656 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2651)
!2657 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2651)
!2658 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2651)
!2659 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2651)
!2660 = !DILocation(line: 0, scope: !2647)
!2661 = !DILocation(line: 464, column: 2, scope: !2648)
!2662 = !DILocation(line: 464, column: 2, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2647, file: !182, line: 464, column: 2)
!2664 = !DILocation(line: 464, column: 2, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2647, file: !182, line: 464, column: 2)
!2666 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 464, column: 2, scope: !2495)
!2669 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2668)
!2670 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2668)
!2671 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2668)
!2672 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2668)
!2673 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2668)
!2674 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2668)
!2675 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2668)
!2676 = !DILocation(line: 0, scope: !2453)
!2677 = !DILocation(line: 469, column: 1, scope: !2453)
!2678 = distinct !DISubprogram(name: "__fiber_thread", scope: !182, file: !182, line: 511, type: !64, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2679)
!2679 = !{!2680, !2681, !2682, !2688, !2689, !2694, !2696, !2699, !2701, !2703, !2729, !2735, !2736, !2741, !2743, !2746, !2748, !2750, !2751, !2757, !2758, !2763, !2765, !2768, !2770, !2772, !2773, !2779, !2780, !2785, !2787, !2790, !2792}
!2680 = !DILocalVariable(name: "in", arg: 1, scope: !2678, file: !182, line: 511, type: !33)
!2681 = !DILocalVariable(name: "out", arg: 2, scope: !2678, file: !182, line: 511, type: !66)
!2682 = !DILocalVariable(name: "_p", scope: !2683, file: !182, line: 515, type: !50)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !182, line: 515, column: 5)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !182, line: 515, column: 5)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !182, line: 515, column: 5)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !182, line: 514, column: 51)
!2687 = distinct !DILexicalBlock(scope: !2678, file: !182, line: 514, column: 7)
!2688 = !DILocalVariable(name: "_t", scope: !2683, file: !182, line: 515, type: !215)
!2689 = !DILocalVariable(name: "__r", scope: !2690, file: !182, line: 515, type: !345)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !182, line: 515, column: 5)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !182, line: 515, column: 5)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !182, line: 515, column: 5)
!2693 = distinct !DILexicalBlock(scope: !2683, file: !182, line: 515, column: 5)
!2694 = !DILocalVariable(name: "__r", scope: !2695, file: !182, line: 515, type: !345)
!2695 = distinct !DILexicalBlock(scope: !2690, file: !182, line: 515, column: 5)
!2696 = !DILocalVariable(name: "__r", scope: !2697, file: !182, line: 515, type: !345)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !182, line: 515, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !182, line: 515, column: 5)
!2699 = !DILocalVariable(name: "__r", scope: !2700, file: !182, line: 515, type: !345)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !182, line: 515, column: 5)
!2701 = !DILocalVariable(name: "_p", scope: !2702, file: !182, line: 515, type: !50)
!2702 = distinct !DILexicalBlock(scope: !2684, file: !182, line: 515, column: 5)
!2703 = !DILocalVariable(name: "c", scope: !2678, file: !182, line: 520, type: !2704)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !112, line: 67, size: 320, elements: !2705)
!2705 = !{!2706, !2708, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2704, file: !112, line: 68, baseType: !2707, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !112, line: 66, baseType: !289)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2704, file: !112, line: 79, baseType: !70, size: 8, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, scope: !2704, file: !112, line: 80, baseType: !2710, size: 256, offset: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2704, file: !112, line: 80, size: 256, elements: !2711)
!2711 = !{!2712, !2718, !2725}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2710, file: !112, line: 81, baseType: !2713, size: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !112, line: 49, size: 192, elements: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2713, file: !112, line: 50, baseType: !29, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2713, file: !112, line: 51, baseType: !29, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2713, file: !112, line: 52, baseType: !29, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2710, file: !112, line: 82, baseType: !2719, size: 256)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !112, line: 55, size: 256, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2719, file: !112, line: 56, baseType: !29, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2719, file: !112, line: 57, baseType: !29, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2719, file: !112, line: 58, baseType: !29, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2719, file: !112, line: 59, baseType: !29, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2710, file: !112, line: 83, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !112, line: 62, size: 64, elements: !2727)
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2726, file: !112, line: 63, baseType: !29, size: 64)
!2729 = !DILocalVariable(name: "_p", scope: !2730, file: !182, line: 525, type: !50)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !182, line: 525, column: 5)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !182, line: 525, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !182, line: 525, column: 5)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !182, line: 524, column: 47)
!2734 = distinct !DILexicalBlock(scope: !2678, file: !182, line: 524, column: 7)
!2735 = !DILocalVariable(name: "_t", scope: !2730, file: !182, line: 525, type: !215)
!2736 = !DILocalVariable(name: "__r", scope: !2737, file: !182, line: 525, type: !345)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !182, line: 525, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !182, line: 525, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !182, line: 525, column: 5)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !182, line: 525, column: 5)
!2741 = !DILocalVariable(name: "__r", scope: !2742, file: !182, line: 525, type: !345)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !182, line: 525, column: 5)
!2743 = !DILocalVariable(name: "__r", scope: !2744, file: !182, line: 525, type: !345)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !182, line: 525, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !182, line: 525, column: 5)
!2746 = !DILocalVariable(name: "__r", scope: !2747, file: !182, line: 525, type: !345)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !182, line: 525, column: 5)
!2748 = !DILocalVariable(name: "_p", scope: !2749, file: !182, line: 525, type: !50)
!2749 = distinct !DILexicalBlock(scope: !2731, file: !182, line: 525, column: 5)
!2750 = !DILocalVariable(name: "state", scope: !2678, file: !182, line: 534, type: !1367)
!2751 = !DILocalVariable(name: "_p", scope: !2752, file: !182, line: 536, type: !50)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !182, line: 536, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !182, line: 536, column: 5)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !182, line: 536, column: 5)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !182, line: 535, column: 17)
!2756 = distinct !DILexicalBlock(scope: !2678, file: !182, line: 535, column: 7)
!2757 = !DILocalVariable(name: "_t", scope: !2752, file: !182, line: 536, type: !215)
!2758 = !DILocalVariable(name: "__r", scope: !2759, file: !182, line: 536, type: !345)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !182, line: 536, column: 5)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !182, line: 536, column: 5)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !182, line: 536, column: 5)
!2762 = distinct !DILexicalBlock(scope: !2752, file: !182, line: 536, column: 5)
!2763 = !DILocalVariable(name: "__r", scope: !2764, file: !182, line: 536, type: !345)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !182, line: 536, column: 5)
!2765 = !DILocalVariable(name: "__r", scope: !2766, file: !182, line: 536, type: !345)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !182, line: 536, column: 5)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !182, line: 536, column: 5)
!2768 = !DILocalVariable(name: "__r", scope: !2769, file: !182, line: 536, type: !345)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !182, line: 536, column: 5)
!2770 = !DILocalVariable(name: "_p", scope: !2771, file: !182, line: 536, type: !50)
!2771 = distinct !DILexicalBlock(scope: !2753, file: !182, line: 536, column: 5)
!2772 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2678, file: !182, line: 541, type: !296)
!2773 = !DILocalVariable(name: "_p", scope: !2774, file: !182, line: 543, type: !50)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !182, line: 543, column: 5)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !182, line: 543, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !182, line: 543, column: 5)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !182, line: 542, column: 71)
!2778 = distinct !DILexicalBlock(scope: !2678, file: !182, line: 542, column: 7)
!2779 = !DILocalVariable(name: "_t", scope: !2774, file: !182, line: 543, type: !215)
!2780 = !DILocalVariable(name: "__r", scope: !2781, file: !182, line: 543, type: !345)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !182, line: 543, column: 5)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !182, line: 543, column: 5)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !182, line: 543, column: 5)
!2784 = distinct !DILexicalBlock(scope: !2774, file: !182, line: 543, column: 5)
!2785 = !DILocalVariable(name: "__r", scope: !2786, file: !182, line: 543, type: !345)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !182, line: 543, column: 5)
!2787 = !DILocalVariable(name: "__r", scope: !2788, file: !182, line: 543, type: !345)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !182, line: 543, column: 5)
!2789 = distinct !DILexicalBlock(scope: !2783, file: !182, line: 543, column: 5)
!2790 = !DILocalVariable(name: "__r", scope: !2791, file: !182, line: 543, type: !345)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !182, line: 543, column: 5)
!2792 = !DILocalVariable(name: "_p", scope: !2793, file: !182, line: 543, type: !50)
!2793 = distinct !DILexicalBlock(scope: !2775, file: !182, line: 543, column: 5)
!2794 = !DILocation(line: 511, column: 27, scope: !2678)
!2795 = !DILocation(line: 511, column: 38, scope: !2678)
!2796 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 514, column: 22, scope: !2687)
!2798 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2797)
!2799 = !DILocation(line: 514, column: 22, scope: !2687)
!2800 = !DILocation(line: 514, column: 7, scope: !2687)
!2801 = !DILocation(line: 514, column: 7, scope: !2678)
!2802 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 515, column: 5, scope: !2684)
!2804 = !DILocation(line: 515, column: 5, scope: !2684)
!2805 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 0, scope: !2684)
!2808 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2807)
!2809 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2807)
!2810 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2807)
!2811 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2807)
!2812 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2807)
!2813 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2807)
!2814 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2807)
!2815 = !DILocation(line: 0, scope: !2213, inlinedAt: !2807)
!2816 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 0, scope: !2684)
!2819 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2818)
!2820 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2818)
!2821 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2818)
!2822 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2818)
!2823 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2818)
!2824 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2818)
!2825 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2818)
!2826 = !DILocation(line: 515, column: 5, scope: !2685)
!2827 = !DILocation(line: 515, column: 5, scope: !2683)
!2828 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 515, column: 5, scope: !2683)
!2830 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2829)
!2831 = !DILocation(line: 515, column: 5, scope: !2692)
!2832 = !DILocation(line: 0, scope: !2692)
!2833 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 0, scope: !2692)
!2837 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2835)
!2838 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2835)
!2839 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2835)
!2840 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2835)
!2841 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2835)
!2842 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2835)
!2843 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2835)
!2844 = !DILocation(line: 515, column: 5, scope: !2693)
!2845 = !DILocation(line: 515, column: 5, scope: !2691)
!2846 = !DILocation(line: 515, column: 5, scope: !2698)
!2847 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 515, column: 5, scope: !2683)
!2850 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2849)
!2851 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2849)
!2852 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2849)
!2853 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2849)
!2854 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2849)
!2855 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2849)
!2856 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2849)
!2857 = !DILocation(line: 515, column: 5, scope: !2702)
!2858 = !DILocation(line: 515, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !182, line: 515, column: 5)
!2860 = distinct !DILexicalBlock(scope: !2702, file: !182, line: 515, column: 5)
!2861 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 0, scope: !2859)
!2865 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2863)
!2866 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2863)
!2867 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2863)
!2868 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2863)
!2869 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2863)
!2870 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2863)
!2871 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2863)
!2872 = !DILocation(line: 0, scope: !2859)
!2873 = !DILocation(line: 515, column: 5, scope: !2860)
!2874 = !DILocation(line: 515, column: 5, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2859, file: !182, line: 515, column: 5)
!2876 = !DILocation(line: 515, column: 5, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2859, file: !182, line: 515, column: 5)
!2878 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 515, column: 5, scope: !2702)
!2881 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2880)
!2882 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2880)
!2883 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2880)
!2884 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2880)
!2885 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2880)
!2886 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2880)
!2887 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2880)
!2888 = !DILocation(line: 520, column: 3, scope: !2678)
!2889 = !DILocation(line: 520, column: 31, scope: !2678)
!2890 = !DILocation(line: 524, column: 7, scope: !2734)
!2891 = !DILocation(line: 0, scope: !2678)
!2892 = !DILocation(line: 524, column: 7, scope: !2678)
!2893 = !DILocation(line: 525, column: 5, scope: !2731)
!2894 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 0, scope: !2731)
!2897 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2896)
!2898 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2896)
!2899 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2896)
!2900 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2896)
!2901 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2896)
!2902 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2896)
!2903 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2896)
!2904 = !DILocation(line: 0, scope: !2213, inlinedAt: !2896)
!2905 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 0, scope: !2731)
!2908 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !2907)
!2909 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !2907)
!2910 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !2907)
!2911 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !2907)
!2912 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !2907)
!2913 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !2907)
!2914 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !2907)
!2915 = !DILocation(line: 525, column: 5, scope: !2732)
!2916 = !DILocation(line: 525, column: 5, scope: !2730)
!2917 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 525, column: 5, scope: !2730)
!2919 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !2918)
!2920 = !DILocation(line: 525, column: 5, scope: !2739)
!2921 = !DILocation(line: 0, scope: !2739)
!2922 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 0, scope: !2739)
!2926 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2924)
!2927 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2924)
!2928 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2924)
!2929 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2924)
!2930 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2924)
!2931 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2924)
!2932 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2924)
!2933 = !DILocation(line: 525, column: 5, scope: !2740)
!2934 = !DILocation(line: 525, column: 5, scope: !2738)
!2935 = !DILocation(line: 525, column: 5, scope: !2745)
!2936 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 525, column: 5, scope: !2730)
!2939 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2938)
!2940 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2938)
!2941 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2938)
!2942 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2938)
!2943 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2938)
!2944 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2938)
!2945 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2938)
!2946 = !DILocation(line: 525, column: 5, scope: !2749)
!2947 = !DILocation(line: 525, column: 5, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !182, line: 525, column: 5)
!2949 = distinct !DILexicalBlock(scope: !2749, file: !182, line: 525, column: 5)
!2950 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 0, scope: !2948)
!2954 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !2952)
!2955 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !2952)
!2956 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !2952)
!2957 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !2952)
!2958 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !2952)
!2959 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !2952)
!2960 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !2952)
!2961 = !DILocation(line: 0, scope: !2948)
!2962 = !DILocation(line: 525, column: 5, scope: !2949)
!2963 = !DILocation(line: 525, column: 5, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2948, file: !182, line: 525, column: 5)
!2965 = !DILocation(line: 525, column: 5, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2948, file: !182, line: 525, column: 5)
!2967 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 525, column: 5, scope: !2749)
!2970 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !2969)
!2971 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !2969)
!2972 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !2969)
!2973 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !2969)
!2974 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !2969)
!2975 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !2969)
!2976 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !2969)
!2977 = !DILocation(line: 526, column: 5, scope: !2733)
!2978 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 534, column: 24, scope: !2678)
!2981 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !2980)
!2982 = !DILocation(line: 534, column: 16, scope: !2678)
!2983 = !DILocation(line: 535, column: 8, scope: !2756)
!2984 = !DILocation(line: 535, column: 7, scope: !2678)
!2985 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 536, column: 5, scope: !2753)
!2987 = !DILocation(line: 536, column: 5, scope: !2753)
!2988 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 0, scope: !2753)
!2991 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !2990)
!2992 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !2990)
!2993 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !2990)
!2994 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !2990)
!2995 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !2990)
!2996 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !2990)
!2997 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !2990)
!2998 = !DILocation(line: 0, scope: !2213, inlinedAt: !2990)
!2999 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 0, scope: !2753)
!3002 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !3001)
!3003 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !3001)
!3004 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !3001)
!3005 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !3001)
!3006 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !3001)
!3007 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !3001)
!3008 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !3001)
!3009 = !DILocation(line: 536, column: 5, scope: !2754)
!3010 = !DILocation(line: 536, column: 5, scope: !2752)
!3011 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 536, column: 5, scope: !2752)
!3013 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3012)
!3014 = !DILocation(line: 536, column: 5, scope: !2761)
!3015 = !DILocation(line: 0, scope: !2761)
!3016 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 0, scope: !2761)
!3020 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3018)
!3021 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3018)
!3022 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3018)
!3023 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3018)
!3024 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3018)
!3025 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3018)
!3026 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3018)
!3027 = !DILocation(line: 536, column: 5, scope: !2762)
!3028 = !DILocation(line: 536, column: 5, scope: !2760)
!3029 = !DILocation(line: 536, column: 5, scope: !2767)
!3030 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 536, column: 5, scope: !2752)
!3033 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3032)
!3034 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3032)
!3035 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3032)
!3036 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3032)
!3037 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3032)
!3038 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3032)
!3039 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3032)
!3040 = !DILocation(line: 536, column: 5, scope: !2771)
!3041 = !DILocation(line: 536, column: 5, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !182, line: 536, column: 5)
!3043 = distinct !DILexicalBlock(scope: !2771, file: !182, line: 536, column: 5)
!3044 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 0, scope: !3042)
!3048 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3046)
!3049 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3046)
!3050 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3046)
!3051 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3046)
!3052 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3046)
!3053 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3046)
!3054 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3046)
!3055 = !DILocation(line: 0, scope: !3042)
!3056 = !DILocation(line: 536, column: 5, scope: !3043)
!3057 = !DILocation(line: 536, column: 5, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3042, file: !182, line: 536, column: 5)
!3059 = !DILocation(line: 536, column: 5, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3042, file: !182, line: 536, column: 5)
!3061 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 536, column: 5, scope: !2771)
!3064 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3063)
!3065 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3063)
!3066 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3063)
!3067 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3063)
!3068 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3063)
!3069 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3063)
!3070 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3063)
!3071 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 538, column: 25, scope: !2678)
!3073 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3072)
!3074 = !DILocation(line: 538, column: 10, scope: !2678)
!3075 = !DILocation(line: 538, column: 23, scope: !2678)
!3076 = !DILocation(line: 541, column: 3, scope: !2678)
!3077 = !DILocation(line: 541, column: 15, scope: !2678)
!3078 = !DILocation(line: 542, column: 7, scope: !2778)
!3079 = !DILocation(line: 542, column: 66, scope: !2778)
!3080 = !DILocation(line: 542, column: 7, scope: !2678)
!3081 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 543, column: 5, scope: !2775)
!3083 = !DILocation(line: 543, column: 5, scope: !2775)
!3084 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 0, scope: !2775)
!3087 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !3086)
!3088 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !3086)
!3089 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !3086)
!3090 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !3086)
!3091 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !3086)
!3092 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !3086)
!3093 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !3086)
!3094 = !DILocation(line: 0, scope: !2213, inlinedAt: !3086)
!3095 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 0, scope: !2775)
!3098 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !3097)
!3099 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !3097)
!3100 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !3097)
!3101 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !3097)
!3102 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !3097)
!3103 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !3097)
!3104 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !3097)
!3105 = !DILocation(line: 543, column: 5, scope: !2776)
!3106 = !DILocation(line: 543, column: 5, scope: !2774)
!3107 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 543, column: 5, scope: !2774)
!3109 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3108)
!3110 = !DILocation(line: 543, column: 5, scope: !2783)
!3111 = !DILocation(line: 0, scope: !2783)
!3112 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 0, scope: !2783)
!3116 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3114)
!3117 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3114)
!3118 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3114)
!3119 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3114)
!3120 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3114)
!3121 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3114)
!3122 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3114)
!3123 = !DILocation(line: 543, column: 5, scope: !2784)
!3124 = !DILocation(line: 543, column: 5, scope: !2782)
!3125 = !DILocation(line: 543, column: 5, scope: !2789)
!3126 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 543, column: 5, scope: !2774)
!3129 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3128)
!3130 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3128)
!3131 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3128)
!3132 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3128)
!3133 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3128)
!3134 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3128)
!3135 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3128)
!3136 = !DILocation(line: 543, column: 5, scope: !2793)
!3137 = !DILocation(line: 543, column: 5, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !182, line: 543, column: 5)
!3139 = distinct !DILexicalBlock(scope: !2793, file: !182, line: 543, column: 5)
!3140 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 0, scope: !3138)
!3144 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3142)
!3145 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3142)
!3146 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3142)
!3147 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3142)
!3148 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3142)
!3149 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3142)
!3150 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3142)
!3151 = !DILocation(line: 0, scope: !3138)
!3152 = !DILocation(line: 543, column: 5, scope: !3139)
!3153 = !DILocation(line: 543, column: 5, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3138, file: !182, line: 543, column: 5)
!3155 = !DILocation(line: 543, column: 5, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3138, file: !182, line: 543, column: 5)
!3157 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 543, column: 5, scope: !2793)
!3160 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3159)
!3161 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3159)
!3162 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3159)
!3163 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3159)
!3164 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3159)
!3165 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3159)
!3166 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3159)
!3167 = !DILocation(line: 547, column: 23, scope: !2678)
!3168 = !DILocation(line: 547, column: 10, scope: !2678)
!3169 = !DILocation(line: 547, column: 21, scope: !2678)
!3170 = !DILocation(line: 548, column: 10, scope: !2678)
!3171 = !DILocation(line: 548, column: 21, scope: !2678)
!3172 = !DILocation(line: 551, column: 3, scope: !2678)
!3173 = !DILocation(line: 551, column: 19, scope: !2678)
!3174 = !DILocation(line: 551, column: 27, scope: !2678)
!3175 = !DILocation(line: 198, column: 33, scope: !1790, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 554, column: 3, scope: !2678)
!3177 = !DILocation(line: 202, column: 9, scope: !1790, inlinedAt: !3176)
!3178 = !DILocation(line: 202, column: 19, scope: !1790, inlinedAt: !3176)
!3179 = !DILocation(line: 202, column: 32, scope: !1790, inlinedAt: !3176)
!3180 = !DILocation(line: 202, column: 3, scope: !1790, inlinedAt: !3176)
!3181 = !DILocation(line: 208, column: 3, scope: !1790, inlinedAt: !3176)
!3182 = !DILocation(line: 557, column: 1, scope: !2678)
!3183 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !182, file: !182, line: 479, type: !64, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3184)
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "in", arg: 1, scope: !3183, file: !182, line: 479, type: !33)
!3186 = !DILocalVariable(name: "out", arg: 2, scope: !3183, file: !182, line: 479, type: !66)
!3187 = !DILocation(line: 479, column: 35, scope: !3183)
!3188 = !DILocation(line: 479, column: 46, scope: !3183)
!3189 = !DILocation(line: 481, column: 3, scope: !3183)
!3190 = !DILocation(line: 489, column: 5, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3183, file: !182, line: 481, column: 13)
!3192 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 490, column: 28, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !182, line: 490, column: 9)
!3197 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3193)
!3198 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3194)
!3199 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !3195)
!3200 = !DILocalVariable(name: "head", arg: 1, scope: !3201, file: !53, line: 201, type: !1442)
!3201 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1455, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3202)
!3202 = !{!3200, !3203}
!3203 = !DILocalVariable(name: "next", scope: !3201, file: !53, line: 203, type: !205)
!3204 = !DILocation(line: 201, column: 62, scope: !3201, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 490, column: 9, scope: !3196)
!3206 = !DILocation(line: 203, column: 33, scope: !3201, inlinedAt: !3205)
!3207 = !DILocation(line: 203, column: 20, scope: !3201, inlinedAt: !3205)
!3208 = !DILocation(line: 204, column: 15, scope: !3201, inlinedAt: !3205)
!3209 = !DILocation(line: 204, column: 24, scope: !3201, inlinedAt: !3205)
!3210 = !DILocation(line: 204, column: 42, scope: !3201, inlinedAt: !3205)
!3211 = !DILocation(line: 204, column: 33, scope: !3201, inlinedAt: !3205)
!3212 = !DILocation(line: 490, column: 9, scope: !3191)
!3213 = distinct !{!3213, !3189, !3214}
!3214 = !DILocation(line: 508, column: 3, scope: !3183)
!3215 = !DILocation(line: 492, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3196, file: !182, line: 490, column: 47)
!3217 = !DILocation(line: 494, column: 5, scope: !3216)
!3218 = distinct !DISubprogram(name: "nk_fiber_create", scope: !182, file: !182, line: 602, type: !3219, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3222)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!50, !62, !33, !66, !38, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3232}
!3223 = !DILocalVariable(name: "fun", arg: 1, scope: !3218, file: !182, line: 602, type: !62)
!3224 = !DILocalVariable(name: "input", arg: 2, scope: !3218, file: !182, line: 602, type: !33)
!3225 = !DILocalVariable(name: "output", arg: 3, scope: !3218, file: !182, line: 602, type: !66)
!3226 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3218, file: !182, line: 602, type: !38)
!3227 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !3218, file: !182, line: 602, type: !3221)
!3228 = !DILocalVariable(name: "fiber", scope: !3218, file: !182, line: 605, type: !296)
!3229 = !DILocalVariable(name: "required_stack_size", scope: !3218, file: !182, line: 608, type: !38)
!3230 = !DILocalVariable(name: "p", scope: !3231, file: !182, line: 611, type: !33)
!3231 = distinct !DILexicalBlock(scope: !3218, file: !182, line: 611, column: 11)
!3232 = !DILocalVariable(name: "p", scope: !3233, file: !182, line: 628, type: !33)
!3233 = distinct !DILexicalBlock(scope: !3218, file: !182, line: 628, column: 26)
!3234 = !DILocation(line: 602, column: 36, scope: !3218)
!3235 = !DILocation(line: 602, column: 47, scope: !3218)
!3236 = !DILocation(line: 602, column: 61, scope: !3218)
!3237 = !DILocation(line: 602, column: 85, scope: !3218)
!3238 = !DILocation(line: 602, column: 110, scope: !3218)
!3239 = !DILocation(line: 605, column: 15, scope: !3218)
!3240 = !DILocation(line: 608, column: 41, scope: !3218)
!3241 = !DILocation(line: 608, column: 19, scope: !3218)
!3242 = !DILocation(line: 611, column: 11, scope: !3231)
!3243 = !DILocation(line: 614, column: 8, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3218, file: !182, line: 614, column: 7)
!3245 = !DILocation(line: 614, column: 7, scope: !3218)
!3246 = !DILocation(line: 620, column: 3, scope: !3218)
!3247 = !DILocation(line: 623, column: 10, scope: !3218)
!3248 = !DILocation(line: 623, column: 19, scope: !3218)
!3249 = !DILocation(line: 625, column: 10, scope: !3218)
!3250 = !DILocation(line: 625, column: 21, scope: !3218)
!3251 = !DILocation(line: 628, column: 26, scope: !3233)
!3252 = !DILocation(line: 628, column: 10, scope: !3218)
!3253 = !DILocation(line: 628, column: 16, scope: !3218)
!3254 = !DILocation(line: 631, column: 8, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3218, file: !182, line: 631, column: 7)
!3256 = !DILocation(line: 631, column: 7, scope: !3218)
!3257 = !DILocation(line: 634, column: 5, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !182, line: 631, column: 21)
!3259 = !DILocation(line: 635, column: 5, scope: !3258)
!3260 = !DILocation(line: 639, column: 10, scope: !3218)
!3261 = !DILocation(line: 639, column: 14, scope: !3218)
!3262 = !DILocation(line: 640, column: 10, scope: !3218)
!3263 = !DILocation(line: 640, column: 16, scope: !3218)
!3264 = !DILocation(line: 641, column: 10, scope: !3218)
!3265 = !DILocation(line: 641, column: 17, scope: !3218)
!3266 = !DILocation(line: 274, column: 33, scope: !1800, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 644, column: 3, scope: !3218)
!3268 = !DILocation(line: 276, column: 37, scope: !1800, inlinedAt: !3267)
!3269 = !DILocation(line: 276, column: 6, scope: !1800, inlinedAt: !3267)
!3270 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 277, column: 3, scope: !1800, inlinedAt: !3267)
!3272 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3271)
!3273 = !DILocation(line: 276, column: 32, scope: !1800, inlinedAt: !3267)
!3274 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3271)
!3275 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3271)
!3276 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3271)
!3277 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 278, column: 3, scope: !1800, inlinedAt: !3267)
!3279 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3278)
!3280 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3278)
!3281 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3278)
!3282 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3278)
!3283 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 279, column: 3, scope: !1800, inlinedAt: !3267)
!3285 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3284)
!3286 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3284)
!3287 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3284)
!3288 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3284)
!3289 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 280, column: 3, scope: !1800, inlinedAt: !3267)
!3291 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3290)
!3292 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3290)
!3293 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3290)
!3294 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3290)
!3295 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 281, column: 3, scope: !1800, inlinedAt: !3267)
!3297 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3296)
!3298 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3296)
!3299 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3296)
!3300 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3296)
!3301 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 282, column: 3, scope: !1800, inlinedAt: !3267)
!3303 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3302)
!3304 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3302)
!3305 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3302)
!3306 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3302)
!3307 = !DILocation(line: 283, column: 18, scope: !1800, inlinedAt: !3267)
!3308 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 283, column: 3, scope: !1800, inlinedAt: !3267)
!3310 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3309)
!3311 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3309)
!3312 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3309)
!3313 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3309)
!3314 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 284, column: 3, scope: !1800, inlinedAt: !3267)
!3316 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3315)
!3317 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3315)
!3318 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3315)
!3319 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3315)
!3320 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 285, column: 3, scope: !1800, inlinedAt: !3267)
!3322 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3321)
!3323 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3321)
!3324 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3321)
!3325 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3321)
!3326 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 286, column: 3, scope: !1800, inlinedAt: !3267)
!3328 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3327)
!3329 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3327)
!3330 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3327)
!3331 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3327)
!3332 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 287, column: 3, scope: !1800, inlinedAt: !3267)
!3334 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3333)
!3335 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3333)
!3336 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3333)
!3337 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3333)
!3338 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 288, column: 3, scope: !1800, inlinedAt: !3267)
!3340 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3339)
!3341 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3339)
!3342 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3339)
!3343 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3339)
!3344 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 289, column: 3, scope: !1800, inlinedAt: !3267)
!3346 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3345)
!3347 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3345)
!3348 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3345)
!3349 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3345)
!3350 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 290, column: 3, scope: !1800, inlinedAt: !3267)
!3352 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3351)
!3353 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3351)
!3354 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3351)
!3355 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3351)
!3356 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 291, column: 3, scope: !1800, inlinedAt: !3267)
!3358 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3357)
!3359 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3357)
!3360 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3357)
!3361 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3357)
!3362 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 292, column: 3, scope: !1800, inlinedAt: !3267)
!3364 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !3363)
!3365 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !3363)
!3366 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !3363)
!3367 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !3363)
!3368 = !DILocation(line: 647, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3218, file: !182, line: 647, column: 7)
!3370 = !DILocation(line: 647, column: 7, scope: !3218)
!3371 = !DILocation(line: 648, column: 19, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !182, line: 647, column: 20)
!3373 = !DILocation(line: 649, column: 3, scope: !3372)
!3374 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 650, column: 15, scope: !3218)
!3376 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3375)
!3377 = !DILocation(line: 650, column: 33, scope: !3218)
!3378 = !DILocation(line: 650, column: 10, scope: !3218)
!3379 = !DILocation(line: 650, column: 13, scope: !3218)
!3380 = !DILocation(line: 653, column: 27, scope: !3218)
!3381 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 653, column: 3, scope: !3218)
!3383 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3382)
!3384 = !DILocation(line: 76, column: 8, scope: !1488, inlinedAt: !3382)
!3385 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3382)
!3386 = !DILocation(line: 656, column: 10, scope: !3218)
!3387 = !DILocation(line: 656, column: 19, scope: !3218)
!3388 = !DILocation(line: 657, column: 27, scope: !3218)
!3389 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 657, column: 3, scope: !3218)
!3391 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3390)
!3392 = !DILocation(line: 76, column: 8, scope: !1488, inlinedAt: !3390)
!3393 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3390)
!3394 = !DILocation(line: 658, column: 27, scope: !3218)
!3395 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 658, column: 3, scope: !3218)
!3397 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3396)
!3398 = !DILocation(line: 76, column: 8, scope: !1488, inlinedAt: !3396)
!3399 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3396)
!3400 = !DILocation(line: 660, column: 3, scope: !3218)
!3401 = !DILocation(line: 0, scope: !3218)
!3402 = !DILocation(line: 661, column: 1, scope: !3218)
!3403 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !182, file: !182, line: 702, type: !561, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3404)
!3404 = !{!3405}
!3405 = !DILocalVariable(name: "f_to", scope: !3403, file: !182, line: 708, type: !296)
!3406 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 98, column: 10, scope: !1397, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 704, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3403, file: !182, line: 704, column: 7)
!3411 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3407)
!3412 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3408)
!3413 = !DILocation(line: 98, column: 30, scope: !1397, inlinedAt: !3409)
!3414 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 704, column: 30, scope: !3410)
!3416 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3415)
!3417 = !DILocation(line: 704, column: 27, scope: !3410)
!3418 = !DILocation(line: 704, column: 7, scope: !3403)
!3419 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 122, column: 41, scope: !1430, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 708, column: 22, scope: !3403)
!3424 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3420)
!3425 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3421)
!3426 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !3422)
!3427 = !DILocation(line: 122, column: 21, scope: !1430, inlinedAt: !3423)
!3428 = !DILocation(line: 125, column: 15, scope: !1430, inlinedAt: !3423)
!3429 = !DILocation(line: 184, column: 54, scope: !1454, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 126, column: 9, scope: !1437, inlinedAt: !3423)
!3431 = !DILocation(line: 186, column: 15, scope: !1454, inlinedAt: !3430)
!3432 = !DILocation(line: 186, column: 20, scope: !1454, inlinedAt: !3430)
!3433 = !DILocation(line: 126, column: 7, scope: !1430, inlinedAt: !3423)
!3434 = !DILocation(line: 128, column: 25, scope: !1435, inlinedAt: !3423)
!3435 = !DILocation(line: 131, column: 40, scope: !1436, inlinedAt: !3423)
!3436 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 131, column: 5, scope: !1436, inlinedAt: !3423)
!3438 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !3437)
!3439 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !3437)
!3440 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !3437)
!3442 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !3441)
!3443 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !3441)
!3444 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !3441)
!3445 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !3441)
!3446 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !3441)
!3447 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !3437)
!3449 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3448)
!3450 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3448)
!3451 = !DILocation(line: 708, column: 15, scope: !3403)
!3452 = !DILocation(line: 718, column: 12, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3403, file: !182, line: 718, column: 7)
!3454 = !DILocation(line: 718, column: 7, scope: !3403)
!3455 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 719, column: 9, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !182, line: 719, column: 9)
!3460 = distinct !DILexicalBlock(scope: !3453, file: !182, line: 718, column: 21)
!3461 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3456)
!3462 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3457)
!3463 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !3458)
!3464 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 719, column: 31, scope: !3459)
!3468 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3465)
!3469 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3466)
!3470 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !3467)
!3471 = !DILocation(line: 719, column: 28, scope: !3459)
!3472 = !DILocation(line: 719, column: 9, scope: !3460)
!3473 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 723, column: 16, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3459, file: !182, line: 722, column: 12)
!3478 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3474)
!3479 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3475)
!3480 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !3476)
!3481 = !DILocation(line: 725, column: 3, scope: !3460)
!3482 = !DILocation(line: 0, scope: !3403)
!3483 = !DILocation(line: 727, column: 10, scope: !3403)
!3484 = !DILocation(line: 727, column: 3, scope: !3403)
!3485 = !DILocation(line: 728, column: 1, scope: !3403)
!3486 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !182, file: !182, line: 570, type: !2034, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3487)
!3487 = !{!3488, !3489, !3493, !3494, !3499, !3501, !3504, !3506, !3508, !3514, !3515, !3520, !3522, !3525, !3527}
!3488 = !DILocalVariable(name: "my_cpu", scope: !3486, file: !182, line: 572, type: !324)
!3489 = !DILocalVariable(name: "_p", scope: !3490, file: !182, line: 573, type: !50)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !182, line: 573, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !182, line: 573, column: 5)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !182, line: 573, column: 5)
!3493 = !DILocalVariable(name: "_t", scope: !3490, file: !182, line: 573, type: !215)
!3494 = !DILocalVariable(name: "__r", scope: !3495, file: !182, line: 573, type: !345)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !182, line: 573, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !182, line: 573, column: 5)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !182, line: 573, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3490, file: !182, line: 573, column: 5)
!3499 = !DILocalVariable(name: "__r", scope: !3500, file: !182, line: 573, type: !345)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !182, line: 573, column: 5)
!3501 = !DILocalVariable(name: "__r", scope: !3502, file: !182, line: 573, type: !345)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !182, line: 573, column: 5)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !182, line: 573, column: 5)
!3504 = !DILocalVariable(name: "__r", scope: !3505, file: !182, line: 573, type: !345)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !182, line: 573, column: 5)
!3506 = !DILocalVariable(name: "_p", scope: !3507, file: !182, line: 573, type: !50)
!3507 = distinct !DILexicalBlock(scope: !3491, file: !182, line: 573, column: 5)
!3508 = !DILocalVariable(name: "_p", scope: !3509, file: !182, line: 575, type: !50)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !182, line: 575, column: 2)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !182, line: 575, column: 2)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !182, line: 575, column: 2)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !182, line: 574, column: 45)
!3513 = distinct !DILexicalBlock(scope: !3486, file: !182, line: 574, column: 9)
!3514 = !DILocalVariable(name: "_t", scope: !3509, file: !182, line: 575, type: !215)
!3515 = !DILocalVariable(name: "__r", scope: !3516, file: !182, line: 575, type: !345)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !182, line: 575, column: 2)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !182, line: 575, column: 2)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !182, line: 575, column: 2)
!3519 = distinct !DILexicalBlock(scope: !3509, file: !182, line: 575, column: 2)
!3520 = !DILocalVariable(name: "__r", scope: !3521, file: !182, line: 575, type: !345)
!3521 = distinct !DILexicalBlock(scope: !3516, file: !182, line: 575, column: 2)
!3522 = !DILocalVariable(name: "__r", scope: !3523, file: !182, line: 575, type: !345)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !182, line: 575, column: 2)
!3524 = distinct !DILexicalBlock(scope: !3518, file: !182, line: 575, column: 2)
!3525 = !DILocalVariable(name: "__r", scope: !3526, file: !182, line: 575, type: !345)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !182, line: 575, column: 2)
!3527 = !DILocalVariable(name: "_p", scope: !3528, file: !182, line: 575, type: !50)
!3528 = distinct !DILexicalBlock(scope: !3510, file: !182, line: 575, column: 2)
!3529 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 572, column: 26, scope: !3486)
!3531 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3530)
!3532 = !DILocation(line: 572, column: 17, scope: !3486)
!3533 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 573, column: 5, scope: !3491)
!3535 = !DILocation(line: 573, column: 5, scope: !3491)
!3536 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 0, scope: !3491)
!3539 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !3538)
!3540 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !3538)
!3541 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !3538)
!3542 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !3538)
!3543 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !3538)
!3544 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !3538)
!3545 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !3538)
!3546 = !DILocation(line: 0, scope: !2213, inlinedAt: !3538)
!3547 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 0, scope: !3491)
!3550 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !3549)
!3551 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !3549)
!3552 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !3549)
!3553 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !3549)
!3554 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !3549)
!3555 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !3549)
!3556 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !3549)
!3557 = !DILocation(line: 573, column: 5, scope: !3492)
!3558 = !DILocation(line: 573, column: 5, scope: !3490)
!3559 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 573, column: 5, scope: !3490)
!3561 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3560)
!3562 = !DILocation(line: 573, column: 5, scope: !3497)
!3563 = !DILocation(line: 0, scope: !3497)
!3564 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 0, scope: !3497)
!3568 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3566)
!3569 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3566)
!3570 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3566)
!3571 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3566)
!3572 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3566)
!3573 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3566)
!3574 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3566)
!3575 = !DILocation(line: 573, column: 5, scope: !3498)
!3576 = !DILocation(line: 573, column: 5, scope: !3496)
!3577 = !DILocation(line: 573, column: 5, scope: !3503)
!3578 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 573, column: 5, scope: !3490)
!3581 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3580)
!3582 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3580)
!3583 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3580)
!3584 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3580)
!3585 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3580)
!3586 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3580)
!3587 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3580)
!3588 = !DILocation(line: 573, column: 5, scope: !3507)
!3589 = !DILocation(line: 573, column: 5, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !182, line: 573, column: 5)
!3591 = distinct !DILexicalBlock(scope: !3507, file: !182, line: 573, column: 5)
!3592 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 0, scope: !3590)
!3596 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3594)
!3597 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3594)
!3598 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3594)
!3599 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3594)
!3600 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3594)
!3601 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3594)
!3602 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3594)
!3603 = !DILocation(line: 0, scope: !3590)
!3604 = !DILocation(line: 573, column: 5, scope: !3591)
!3605 = !DILocation(line: 573, column: 5, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3590, file: !182, line: 573, column: 5)
!3607 = !DILocation(line: 573, column: 5, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3590, file: !182, line: 573, column: 5)
!3609 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 573, column: 5, scope: !3507)
!3612 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3611)
!3613 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3611)
!3614 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3611)
!3615 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3611)
!3616 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3611)
!3617 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3611)
!3618 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3611)
!3619 = !DILocation(line: 561, column: 3, scope: !3620, inlinedAt: !3649)
!3620 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !182, file: !182, line: 559, type: !561, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3621)
!3621 = !{!3622, !3624, !3627, !3629, !3634, !3635, !3640, !3642, !3645, !3647}
!3622 = !DILocalVariable(name: "tid", scope: !3620, file: !182, line: 561, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !33)
!3624 = !DILocalVariable(name: "__r", scope: !3625, file: !182, line: 562, type: !345)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !182, line: 562, column: 79)
!3626 = distinct !DILexicalBlock(scope: !3620, file: !182, line: 562, column: 7)
!3627 = !DILocalVariable(name: "__r", scope: !3628, file: !182, line: 562, type: !345)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !182, line: 562, column: 79)
!3629 = !DILocalVariable(name: "_p", scope: !3630, file: !182, line: 563, type: !50)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !182, line: 563, column: 7)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !182, line: 563, column: 7)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !182, line: 563, column: 7)
!3633 = distinct !DILexicalBlock(scope: !3626, file: !182, line: 562, column: 93)
!3634 = !DILocalVariable(name: "_t", scope: !3630, file: !182, line: 563, type: !215)
!3635 = !DILocalVariable(name: "__r", scope: !3636, file: !182, line: 563, type: !345)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !182, line: 563, column: 7)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !182, line: 563, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !182, line: 563, column: 7)
!3639 = distinct !DILexicalBlock(scope: !3630, file: !182, line: 563, column: 7)
!3640 = !DILocalVariable(name: "__r", scope: !3641, file: !182, line: 563, type: !345)
!3641 = distinct !DILexicalBlock(scope: !3636, file: !182, line: 563, column: 7)
!3642 = !DILocalVariable(name: "__r", scope: !3643, file: !182, line: 563, type: !345)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !182, line: 563, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3638, file: !182, line: 563, column: 7)
!3645 = !DILocalVariable(name: "__r", scope: !3646, file: !182, line: 563, type: !345)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !182, line: 563, column: 7)
!3647 = !DILocalVariable(name: "_p", scope: !3648, file: !182, line: 563, type: !50)
!3648 = distinct !DILexicalBlock(scope: !3631, file: !182, line: 563, column: 7)
!3649 = distinct !DILocation(line: 574, column: 9, scope: !3513)
!3650 = !DILocation(line: 562, column: 79, scope: !3628, inlinedAt: !3649)
!3651 = !{i32 -2147099479}
!3652 = !DILocation(line: 562, column: 79, scope: !3625, inlinedAt: !3649)
!3653 = !DILocation(line: 561, column: 18, scope: !3620, inlinedAt: !3649)
!3654 = !DILocation(line: 562, column: 7, scope: !3626, inlinedAt: !3649)
!3655 = !DILocation(line: 562, column: 7, scope: !3620, inlinedAt: !3649)
!3656 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 563, column: 7, scope: !3631, inlinedAt: !3649)
!3658 = !DILocation(line: 563, column: 7, scope: !3631, inlinedAt: !3649)
!3659 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 0, scope: !3631, inlinedAt: !3649)
!3662 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !3661)
!3663 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !3661)
!3664 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !3661)
!3665 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !3661)
!3666 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !3661)
!3667 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !3661)
!3668 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !3661)
!3669 = !DILocation(line: 0, scope: !2213, inlinedAt: !3661)
!3670 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 0, scope: !3631, inlinedAt: !3649)
!3673 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !3672)
!3674 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !3672)
!3675 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !3672)
!3676 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !3672)
!3677 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !3672)
!3678 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !3672)
!3679 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !3672)
!3680 = !DILocation(line: 563, column: 7, scope: !3632, inlinedAt: !3649)
!3681 = !DILocation(line: 563, column: 7, scope: !3630, inlinedAt: !3649)
!3682 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 563, column: 7, scope: !3630, inlinedAt: !3649)
!3684 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3683)
!3685 = !DILocation(line: 563, column: 7, scope: !3638, inlinedAt: !3649)
!3686 = !DILocation(line: 0, scope: !3638, inlinedAt: !3649)
!3687 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 0, scope: !3638, inlinedAt: !3649)
!3691 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3689)
!3692 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3689)
!3693 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3689)
!3694 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3689)
!3695 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3689)
!3696 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3689)
!3697 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3689)
!3698 = !DILocation(line: 563, column: 7, scope: !3639, inlinedAt: !3649)
!3699 = !DILocation(line: 563, column: 7, scope: !3637, inlinedAt: !3649)
!3700 = !DILocation(line: 563, column: 7, scope: !3644, inlinedAt: !3649)
!3701 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 563, column: 7, scope: !3630, inlinedAt: !3649)
!3704 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3703)
!3705 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3703)
!3706 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3703)
!3707 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3703)
!3708 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3703)
!3709 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3703)
!3710 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3703)
!3711 = !DILocation(line: 563, column: 7, scope: !3648, inlinedAt: !3649)
!3712 = !DILocation(line: 563, column: 7, scope: !3713, inlinedAt: !3649)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !182, line: 563, column: 7)
!3714 = distinct !DILexicalBlock(scope: !3648, file: !182, line: 563, column: 7)
!3715 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 0, scope: !3713, inlinedAt: !3649)
!3719 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3717)
!3720 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3717)
!3721 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3717)
!3722 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3717)
!3723 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3717)
!3724 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3717)
!3725 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3717)
!3726 = !DILocation(line: 0, scope: !3713, inlinedAt: !3649)
!3727 = !DILocation(line: 563, column: 7, scope: !3714, inlinedAt: !3649)
!3728 = !DILocation(line: 563, column: 7, scope: !3729, inlinedAt: !3649)
!3729 = distinct !DILexicalBlock(scope: !3713, file: !182, line: 563, column: 7)
!3730 = !DILocation(line: 563, column: 7, scope: !3731, inlinedAt: !3649)
!3731 = distinct !DILexicalBlock(scope: !3713, file: !182, line: 563, column: 7)
!3732 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 563, column: 7, scope: !3648, inlinedAt: !3649)
!3735 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3734)
!3736 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3734)
!3737 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3734)
!3738 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3734)
!3739 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3734)
!3740 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3734)
!3741 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3734)
!3742 = !DILocation(line: 568, column: 1, scope: !3620, inlinedAt: !3649)
!3743 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 575, column: 2, scope: !3510)
!3745 = !DILocation(line: 575, column: 2, scope: !3510)
!3746 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 84, column: 18, scope: !2207, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 0, scope: !3510)
!3749 = !DILocation(line: 84, column: 11, scope: !2207, inlinedAt: !3748)
!3750 = !DILocation(line: 85, column: 9, scope: !2213, inlinedAt: !3748)
!3751 = !DILocation(line: 85, column: 9, scope: !2207, inlinedAt: !3748)
!3752 = !DILocation(line: 87, column: 57, scope: !2216, inlinedAt: !3748)
!3753 = !DILocation(line: 87, column: 30, scope: !2216, inlinedAt: !3748)
!3754 = !DILocation(line: 87, column: 9, scope: !2216, inlinedAt: !3748)
!3755 = !DILocation(line: 87, column: 2, scope: !2216, inlinedAt: !3748)
!3756 = !DILocation(line: 0, scope: !2213, inlinedAt: !3748)
!3757 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 48, column: 18, scope: !2223, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 0, scope: !3510)
!3760 = !DILocation(line: 48, column: 11, scope: !2223, inlinedAt: !3759)
!3761 = !DILocation(line: 49, column: 9, scope: !2229, inlinedAt: !3759)
!3762 = !DILocation(line: 49, column: 9, scope: !2223, inlinedAt: !3759)
!3763 = !DILocation(line: 51, column: 50, scope: !2232, inlinedAt: !3759)
!3764 = !DILocation(line: 51, column: 23, scope: !2232, inlinedAt: !3759)
!3765 = !DILocation(line: 51, column: 2, scope: !2232, inlinedAt: !3759)
!3766 = !DILocation(line: 52, column: 5, scope: !2232, inlinedAt: !3759)
!3767 = !DILocation(line: 575, column: 2, scope: !3511)
!3768 = !DILocation(line: 575, column: 2, scope: !3509)
!3769 = !DILocation(line: 258, column: 26, scope: !1992, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 575, column: 2, scope: !3509)
!3771 = !DILocation(line: 258, column: 26, scope: !1993, inlinedAt: !3770)
!3772 = !DILocation(line: 575, column: 2, scope: !3518)
!3773 = !DILocation(line: 0, scope: !3518)
!3774 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 0, scope: !3518)
!3778 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3776)
!3779 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3776)
!3780 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3776)
!3781 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3776)
!3782 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3776)
!3783 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3776)
!3784 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3776)
!3785 = !DILocation(line: 575, column: 2, scope: !3519)
!3786 = !DILocation(line: 575, column: 2, scope: !3517)
!3787 = !DILocation(line: 575, column: 2, scope: !3524)
!3788 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 575, column: 2, scope: !3509)
!3791 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3790)
!3792 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3790)
!3793 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3790)
!3794 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3790)
!3795 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3790)
!3796 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3790)
!3797 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3790)
!3798 = !DILocation(line: 575, column: 2, scope: !3528)
!3799 = !DILocation(line: 575, column: 2, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !182, line: 575, column: 2)
!3801 = distinct !DILexicalBlock(scope: !3528, file: !182, line: 575, column: 2)
!3802 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 96, column: 18, scope: !2245, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 107, column: 12, scope: !2251, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 96, column: 11, scope: !2245, inlinedAt: !3804)
!3807 = !DILocation(line: 97, column: 9, scope: !2255, inlinedAt: !3804)
!3808 = !DILocation(line: 97, column: 9, scope: !2245, inlinedAt: !3804)
!3809 = !DILocation(line: 98, column: 57, scope: !2258, inlinedAt: !3804)
!3810 = !DILocation(line: 98, column: 30, scope: !2258, inlinedAt: !3804)
!3811 = !DILocation(line: 98, column: 9, scope: !2258, inlinedAt: !3804)
!3812 = !DILocation(line: 98, column: 2, scope: !2258, inlinedAt: !3804)
!3813 = !DILocation(line: 0, scope: !3800)
!3814 = !DILocation(line: 575, column: 2, scope: !3801)
!3815 = !DILocation(line: 575, column: 2, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3800, file: !182, line: 575, column: 2)
!3817 = !DILocation(line: 575, column: 2, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3800, file: !182, line: 575, column: 2)
!3819 = !DILocation(line: 43, column: 21, scope: !2199, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 59, column: 18, scope: !2267, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 575, column: 2, scope: !3528)
!3822 = !DILocation(line: 59, column: 11, scope: !2267, inlinedAt: !3821)
!3823 = !DILocation(line: 60, column: 9, scope: !2273, inlinedAt: !3821)
!3824 = !DILocation(line: 60, column: 9, scope: !2267, inlinedAt: !3821)
!3825 = !DILocation(line: 62, column: 50, scope: !2276, inlinedAt: !3821)
!3826 = !DILocation(line: 62, column: 23, scope: !2276, inlinedAt: !3821)
!3827 = !DILocation(line: 62, column: 2, scope: !2276, inlinedAt: !3821)
!3828 = !DILocation(line: 63, column: 5, scope: !2276, inlinedAt: !3821)
!3829 = !DILocation(line: 576, column: 2, scope: !3512)
!3830 = !DILocation(line: 579, column: 1, scope: !3486)
!3831 = distinct !DISubprogram(name: "nk_fiber_start", scope: !182, file: !182, line: 693, type: !3832, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!50, !62, !33, !66, !38, !70, !3221}
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840}
!3835 = !DILocalVariable(name: "fun", arg: 1, scope: !3831, file: !182, line: 693, type: !62)
!3836 = !DILocalVariable(name: "input", arg: 2, scope: !3831, file: !182, line: 693, type: !33)
!3837 = !DILocalVariable(name: "output", arg: 3, scope: !3831, file: !182, line: 693, type: !66)
!3838 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3831, file: !182, line: 693, type: !38)
!3839 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3831, file: !182, line: 693, type: !70)
!3840 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3831, file: !182, line: 693, type: !3221)
!3841 = !DILocation(line: 693, column: 35, scope: !3831)
!3842 = !DILocation(line: 693, column: 46, scope: !3831)
!3843 = !DILocation(line: 693, column: 60, scope: !3831)
!3844 = !DILocation(line: 693, column: 84, scope: !3831)
!3845 = !DILocation(line: 693, column: 104, scope: !3831)
!3846 = !DILocation(line: 693, column: 134, scope: !3831)
!3847 = !DILocation(line: 695, column: 3, scope: !3831)
!3848 = !DILocation(line: 696, column: 16, scope: !3831)
!3849 = !DILocation(line: 696, column: 3, scope: !3831)
!3850 = !DILocation(line: 698, column: 3, scope: !3831)
!3851 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !182, file: !182, line: 730, type: !561, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1369)
!3852 = !DILocation(line: 732, column: 3, scope: !3851)
!3853 = !DILocation(line: 733, column: 10, scope: !3851)
!3854 = !DILocation(line: 733, column: 3, scope: !3851)
!3855 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !182, file: !182, line: 736, type: !1907, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3856)
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "f_to", arg: 1, scope: !3855, file: !182, line: 736, type: !296)
!3858 = !DILocalVariable(name: "new_to", scope: !3859, file: !182, line: 744, type: !296)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !182, line: 740, column: 38)
!3860 = distinct !DILexicalBlock(scope: !3855, file: !182, line: 740, column: 7)
!3861 = !DILocation(line: 736, column: 35, scope: !3855)
!3862 = !DILocation(line: 383, column: 42, scope: !2089, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 740, column: 7, scope: !3860)
!3864 = !DILocation(line: 386, column: 26, scope: !2096, inlinedAt: !3863)
!3865 = !DILocation(line: 386, column: 26, scope: !2094, inlinedAt: !3863)
!3866 = !DILocation(line: 386, column: 20, scope: !2089, inlinedAt: !3863)
!3867 = !DILocation(line: 387, column: 23, scope: !2089, inlinedAt: !3863)
!3868 = !DILocation(line: 387, column: 7, scope: !2089, inlinedAt: !3863)
!3869 = !DILocation(line: 392, column: 12, scope: !2101, inlinedAt: !3863)
!3870 = !DILocation(line: 392, column: 27, scope: !2106, inlinedAt: !3863)
!3871 = !DILocation(line: 392, column: 3, scope: !2101, inlinedAt: !3863)
!3872 = !DILocation(line: 394, column: 14, scope: !2105, inlinedAt: !3863)
!3873 = !DILocation(line: 394, column: 31, scope: !2105, inlinedAt: !3863)
!3874 = !DILocation(line: 394, column: 40, scope: !2105, inlinedAt: !3863)
!3875 = !DILocation(line: 390, column: 21, scope: !2089, inlinedAt: !3863)
!3876 = !DILocation(line: 395, column: 5, scope: !2103, inlinedAt: !3863)
!3877 = !DILocation(line: 391, column: 15, scope: !2089, inlinedAt: !3863)
!3878 = !DILocation(line: 0, scope: !2104, inlinedAt: !3863)
!3879 = !DILocation(line: 395, column: 5, scope: !2104, inlinedAt: !3863)
!3880 = !DILocation(line: 395, column: 5, scope: !2109, inlinedAt: !3863)
!3881 = !DILocation(line: 400, column: 16, scope: !2130, inlinedAt: !3863)
!3882 = !DILocation(line: 400, column: 11, scope: !2131, inlinedAt: !3863)
!3883 = !DILocation(line: 392, column: 43, scope: !2106, inlinedAt: !3863)
!3884 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 122, column: 41, scope: !1430, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 744, column: 26, scope: !3859)
!3889 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3885)
!3890 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3886)
!3891 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !3887)
!3892 = !DILocation(line: 122, column: 21, scope: !1430, inlinedAt: !3888)
!3893 = !DILocation(line: 125, column: 15, scope: !1430, inlinedAt: !3888)
!3894 = !DILocation(line: 184, column: 54, scope: !1454, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 126, column: 9, scope: !1437, inlinedAt: !3888)
!3896 = !DILocation(line: 186, column: 15, scope: !1454, inlinedAt: !3895)
!3897 = !DILocation(line: 186, column: 20, scope: !1454, inlinedAt: !3895)
!3898 = !DILocation(line: 126, column: 7, scope: !1430, inlinedAt: !3888)
!3899 = !DILocation(line: 128, column: 25, scope: !1435, inlinedAt: !3888)
!3900 = !DILocation(line: 131, column: 40, scope: !1436, inlinedAt: !3888)
!3901 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 131, column: 5, scope: !1436, inlinedAt: !3888)
!3903 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !3902)
!3904 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !3902)
!3905 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !3902)
!3907 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !3906)
!3908 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !3906)
!3909 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !3906)
!3910 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !3906)
!3911 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !3906)
!3912 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !3902)
!3914 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3913)
!3915 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3913)
!3916 = !DILocation(line: 744, column: 17, scope: !3859)
!3917 = !DILocation(line: 746, column: 16, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3859, file: !182, line: 746, column: 9)
!3919 = !DILocation(line: 746, column: 9, scope: !3859)
!3920 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 747, column: 11, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !182, line: 747, column: 11)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !182, line: 746, column: 25)
!3926 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3921)
!3927 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3922)
!3928 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !3923)
!3929 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 747, column: 33, scope: !3924)
!3933 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3930)
!3934 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3931)
!3935 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !3932)
!3936 = !DILocation(line: 747, column: 30, scope: !3924)
!3937 = !DILocation(line: 747, column: 11, scope: !3925)
!3938 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 92, column: 10, scope: !1389, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 751, column: 20, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3924, file: !182, line: 750, column: 14)
!3943 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !3939)
!3944 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !3940)
!3945 = !DILocation(line: 92, column: 30, scope: !1389, inlinedAt: !3941)
!3946 = !DILocation(line: 753, column: 5, scope: !3925)
!3947 = !DILocation(line: 0, scope: !3859)
!3948 = !DILocation(line: 756, column: 5, scope: !3859)
!3949 = !DILocation(line: 758, column: 5, scope: !3859)
!3950 = !DILocation(line: 401, column: 33, scope: !2139, inlinedAt: !3863)
!3951 = !DILocation(line: 151, column: 52, scope: !1466, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 401, column: 9, scope: !2139, inlinedAt: !3863)
!3953 = !DILocation(line: 153, column: 20, scope: !1466, inlinedAt: !3952)
!3954 = !DILocation(line: 153, column: 33, scope: !1466, inlinedAt: !3952)
!3955 = !DILocation(line: 128, column: 50, scope: !1475, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 153, column: 2, scope: !1466, inlinedAt: !3952)
!3957 = !DILocation(line: 128, column: 75, scope: !1475, inlinedAt: !3956)
!3958 = !DILocation(line: 130, column: 8, scope: !1475, inlinedAt: !3956)
!3959 = !DILocation(line: 130, column: 13, scope: !1475, inlinedAt: !3956)
!3960 = !DILocation(line: 131, column: 8, scope: !1475, inlinedAt: !3956)
!3961 = !DILocation(line: 131, column: 13, scope: !1475, inlinedAt: !3956)
!3962 = !DILocation(line: 73, column: 53, scope: !1488, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 154, column: 2, scope: !1466, inlinedAt: !3952)
!3964 = !DILocation(line: 75, column: 13, scope: !1488, inlinedAt: !3963)
!3965 = !DILocation(line: 76, column: 13, scope: !1488, inlinedAt: !3963)
!3966 = !DILocation(line: 762, column: 3, scope: !3855)
!3967 = !DILocation(line: 765, column: 3, scope: !3855)
!3968 = !DILocation(line: 0, scope: !3855)
!3969 = !DILocation(line: 766, column: 1, scope: !3855)
!3970 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !182, file: !182, line: 768, type: !3971, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3976)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!50, !3973, !33}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!70, !33}
!3976 = !{!3977, !3978}
!3977 = !DILocalVariable(name: "cond_function", arg: 1, scope: !3970, file: !182, line: 768, type: !3973)
!3978 = !DILocalVariable(name: "state", arg: 2, scope: !3970, file: !182, line: 768, type: !33)
!3979 = !DILocation(line: 768, column: 42, scope: !3970)
!3980 = !DILocation(line: 768, column: 77, scope: !3970)
!3981 = !DILocation(line: 770, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3970, file: !182, line: 770, column: 7)
!3983 = !DILocation(line: 770, column: 7, scope: !3970)
!3984 = !DILocation(line: 771, column: 12, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3982, file: !182, line: 770, column: 28)
!3986 = !DILocation(line: 771, column: 5, scope: !3985)
!3987 = !DILocation(line: 0, scope: !3970)
!3988 = !DILocation(line: 774, column: 1, scope: !3970)
!3989 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !182, file: !182, line: 776, type: !3990, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!50, !296, !3973, !33}
!3992 = !{!3993, !3994, !3995}
!3993 = !DILocalVariable(name: "fib", arg: 1, scope: !3989, file: !182, line: 776, type: !296)
!3994 = !DILocalVariable(name: "cond_function", arg: 2, scope: !3989, file: !182, line: 776, type: !3973)
!3995 = !DILocalVariable(name: "state", arg: 3, scope: !3989, file: !182, line: 776, type: !33)
!3996 = !DILocation(line: 776, column: 47, scope: !3989)
!3997 = !DILocation(line: 776, column: 62, scope: !3989)
!3998 = !DILocation(line: 776, column: 97, scope: !3989)
!3999 = !DILocation(line: 778, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3989, file: !182, line: 778, column: 7)
!4001 = !DILocation(line: 778, column: 7, scope: !3989)
!4002 = !DILocation(line: 779, column: 12, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4000, file: !182, line: 778, column: 28)
!4004 = !DILocation(line: 779, column: 5, scope: !4003)
!4005 = !DILocation(line: 0, scope: !3989)
!4006 = !DILocation(line: 782, column: 1, scope: !3989)
!4007 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !182, file: !182, line: 784, type: !1380, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025}
!4009 = !DILocalVariable(name: "curr", scope: !4007, file: !182, line: 787, type: !296)
!4010 = !DILocalVariable(name: "size", scope: !4007, file: !182, line: 790, type: !29)
!4011 = !DILocalVariable(name: "alloc_size", scope: !4007, file: !182, line: 790, type: !29)
!4012 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4007, file: !182, line: 791, type: !29)
!4013 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4007, file: !182, line: 792, type: !29)
!4014 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4007, file: !182, line: 793, type: !29)
!4015 = !DILocalVariable(name: "child_stack", scope: !4007, file: !182, line: 794, type: !33)
!4016 = !DILocalVariable(name: "rsp", scope: !4007, file: !182, line: 795, type: !29)
!4017 = !DILocalVariable(name: "rbp0", scope: !4007, file: !182, line: 800, type: !33)
!4018 = !DILocalVariable(name: "rbp1", scope: !4007, file: !182, line: 801, type: !33)
!4019 = !DILocalVariable(name: "rbp_tos", scope: !4007, file: !182, line: 802, type: !33)
!4020 = !DILocalVariable(name: "ret0_addr", scope: !4007, file: !182, line: 803, type: !33)
!4021 = !DILocalVariable(name: "rbp_stash_addr", scope: !4007, file: !182, line: 815, type: !33)
!4022 = !DILocalVariable(name: "new", scope: !4007, file: !182, line: 831, type: !296)
!4023 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4007, file: !182, line: 847, type: !66)
!4024 = !DILocalVariable(name: "rbp2_ptr", scope: !4007, file: !182, line: 851, type: !66)
!4025 = !DILocalVariable(name: "ret2_ptr", scope: !4007, file: !182, line: 852, type: !66)
!4026 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 787, column: 22, scope: !4007)
!4030 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !4027)
!4031 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !4028)
!4032 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !4029)
!4033 = !DILocation(line: 787, column: 15, scope: !4007)
!4034 = !DILocation(line: 798, column: 3, scope: !4007)
!4035 = !{i32 23631}
!4036 = !DILocation(line: 795, column: 16, scope: !4007)
!4037 = !DILocation(line: 800, column: 21, scope: !4007)
!4038 = !DILocation(line: 800, column: 9, scope: !4007)
!4039 = !DILocation(line: 801, column: 21, scope: !4007)
!4040 = !DILocation(line: 801, column: 9, scope: !4007)
!4041 = !DILocation(line: 802, column: 21, scope: !4007)
!4042 = !DILocation(line: 802, column: 9, scope: !4007)
!4043 = !DILocation(line: 803, column: 26, scope: !4007)
!4044 = !DILocation(line: 803, column: 9, scope: !4007)
!4045 = !DILocation(line: 805, column: 44, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4007, file: !182, line: 805, column: 7)
!4047 = !DILocation(line: 805, column: 25, scope: !4046)
!4048 = !DILocation(line: 0, scope: !4007)
!4049 = !DILocation(line: 806, column: 46, scope: !4046)
!4050 = !DILocation(line: 806, column: 20, scope: !4046)
!4051 = !DILocation(line: 805, column: 50, scope: !4046)
!4052 = !DILocation(line: 815, column: 36, scope: !4007)
!4053 = !DILocation(line: 815, column: 9, scope: !4007)
!4054 = !DILocation(line: 821, column: 19, scope: !4007)
!4055 = !DILocation(line: 821, column: 24, scope: !4007)
!4056 = !DILocation(line: 790, column: 12, scope: !4007)
!4057 = !DILocation(line: 822, column: 37, scope: !4007)
!4058 = !DILocation(line: 791, column: 16, scope: !4007)
!4059 = !DILocation(line: 792, column: 16, scope: !4007)
!4060 = !DILocation(line: 825, column: 32, scope: !4007)
!4061 = !DILocation(line: 825, column: 57, scope: !4007)
!4062 = !DILocation(line: 793, column: 16, scope: !4007)
!4063 = !DILocation(line: 790, column: 18, scope: !4007)
!4064 = !DILocation(line: 831, column: 3, scope: !4007)
!4065 = !DILocation(line: 831, column: 15, scope: !4007)
!4066 = !DILocation(line: 832, column: 3, scope: !4007)
!4067 = !DILocation(line: 835, column: 15, scope: !4007)
!4068 = !DILocation(line: 113, column: 31, scope: !1417, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 835, column: 3, scope: !4007)
!4070 = !DILocation(line: 113, column: 43, scope: !1417, inlinedAt: !4069)
!4071 = !DILocation(line: 115, column: 8, scope: !1417, inlinedAt: !4069)
!4072 = !DILocation(line: 115, column: 12, scope: !1417, inlinedAt: !4069)
!4073 = !DILocation(line: 116, column: 6, scope: !1417, inlinedAt: !4069)
!4074 = !DILocation(line: 116, column: 26, scope: !1417, inlinedAt: !4069)
!4075 = !DILocation(line: 837, column: 17, scope: !4007)
!4076 = !DILocation(line: 837, column: 22, scope: !4007)
!4077 = !DILocation(line: 794, column: 17, scope: !4007)
!4078 = !DILocation(line: 839, column: 22, scope: !4007)
!4079 = !DILocation(line: 839, column: 35, scope: !4007)
!4080 = !DILocation(line: 839, column: 3, scope: !4007)
!4081 = !DILocation(line: 840, column: 57, scope: !4007)
!4082 = !DILocation(line: 840, column: 14, scope: !4007)
!4083 = !DILocation(line: 840, column: 3, scope: !4007)
!4084 = !DILocation(line: 840, column: 8, scope: !4007)
!4085 = !DILocation(line: 840, column: 12, scope: !4007)
!4086 = !DILocation(line: 847, column: 35, scope: !4007)
!4087 = !DILocation(line: 847, column: 40, scope: !4007)
!4088 = !DILocation(line: 847, column: 78, scope: !4007)
!4089 = !DILocation(line: 847, column: 26, scope: !4007)
!4090 = !DILocation(line: 847, column: 10, scope: !4007)
!4091 = !DILocation(line: 848, column: 37, scope: !4007)
!4092 = !DILocation(line: 848, column: 20, scope: !4007)
!4093 = !DILocation(line: 848, column: 18, scope: !4007)
!4094 = !DILocation(line: 851, column: 30, scope: !4007)
!4095 = !DILocation(line: 851, column: 35, scope: !4007)
!4096 = !DILocation(line: 851, column: 39, scope: !4007)
!4097 = !DILocation(line: 851, column: 68, scope: !4007)
!4098 = !DILocation(line: 851, column: 21, scope: !4007)
!4099 = !DILocation(line: 851, column: 10, scope: !4007)
!4100 = !DILocation(line: 852, column: 29, scope: !4007)
!4101 = !DILocation(line: 852, column: 10, scope: !4007)
!4102 = !DILocation(line: 861, column: 13, scope: !4007)
!4103 = !DILocation(line: 868, column: 16, scope: !4007)
!4104 = !DILocation(line: 868, column: 21, scope: !4007)
!4105 = !DILocation(line: 868, column: 24, scope: !4007)
!4106 = !DILocation(line: 868, column: 4, scope: !4007)
!4107 = !DILocation(line: 868, column: 41, scope: !4007)
!4108 = !DILocation(line: 871, column: 16, scope: !4007)
!4109 = !DILocation(line: 663, column: 30, scope: !1545, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 871, column: 3, scope: !4007)
!4111 = !DILocation(line: 663, column: 41, scope: !1545, inlinedAt: !4110)
!4112 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 98, column: 10, scope: !1397, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 666, column: 30, scope: !1545, inlinedAt: !4110)
!4116 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !4113)
!4117 = !DILocation(line: 666, column: 16, scope: !1545, inlinedAt: !4110)
!4118 = !DILocation(line: 0, scope: !1545, inlinedAt: !4110)
!4119 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 105, column: 12, scope: !1407, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 674, column: 41, scope: !1545, inlinedAt: !4110)
!4123 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !4120)
!4124 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !4121)
!4125 = !DILocation(line: 105, column: 32, scope: !1407, inlinedAt: !4122)
!4126 = !DILocation(line: 674, column: 21, scope: !1545, inlinedAt: !4110)
!4127 = !DILocation(line: 678, column: 6, scope: !1545, inlinedAt: !4110)
!4128 = !DILocation(line: 678, column: 15, scope: !1545, inlinedAt: !4110)
!4129 = !DILocation(line: 679, column: 22, scope: !1545, inlinedAt: !4110)
!4130 = !DILocation(line: 116, column: 52, scope: !1614, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 679, column: 3, scope: !1545, inlinedAt: !4110)
!4132 = !DILocation(line: 116, column: 76, scope: !1614, inlinedAt: !4131)
!4133 = !DILocation(line: 118, column: 25, scope: !1614, inlinedAt: !4131)
!4134 = !DILocation(line: 85, column: 49, scope: !1622, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 118, column: 2, scope: !1614, inlinedAt: !4131)
!4136 = !DILocation(line: 86, column: 28, scope: !1622, inlinedAt: !4135)
!4137 = !DILocation(line: 87, column: 28, scope: !1622, inlinedAt: !4135)
!4138 = !DILocation(line: 89, column: 13, scope: !1622, inlinedAt: !4135)
!4139 = !DILocation(line: 90, column: 8, scope: !1622, inlinedAt: !4135)
!4140 = !DILocation(line: 90, column: 13, scope: !1622, inlinedAt: !4135)
!4141 = !DILocation(line: 91, column: 8, scope: !1622, inlinedAt: !4135)
!4142 = !DILocation(line: 91, column: 13, scope: !1622, inlinedAt: !4135)
!4143 = !DILocation(line: 92, column: 8, scope: !1622, inlinedAt: !4135)
!4144 = !DILocation(line: 92, column: 13, scope: !1622, inlinedAt: !4135)
!4145 = !DILocation(line: 683, column: 20, scope: !1640, inlinedAt: !4110)
!4146 = !DILocation(line: 683, column: 7, scope: !1640, inlinedAt: !4110)
!4147 = !DILocation(line: 683, column: 7, scope: !1545, inlinedAt: !4110)
!4148 = !DILocation(line: 687, column: 5, scope: !1644, inlinedAt: !4110)
!4149 = !DILocation(line: 688, column: 3, scope: !1644, inlinedAt: !4110)
!4150 = !DILocation(line: 873, column: 10, scope: !4007)
!4151 = !DILocation(line: 874, column: 1, scope: !4007)
!4152 = !DILocation(line: 873, column: 3, scope: !4007)
!4153 = distinct !DISubprogram(name: "nk_fiber_join", scope: !182, file: !182, line: 877, type: !1907, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4154)
!4154 = !{!4155, !4156, !4157}
!4155 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4153, file: !182, line: 877, type: !296)
!4156 = !DILocalVariable(name: "curr_fiber", scope: !4153, file: !182, line: 887, type: !296)
!4157 = !DILocalVariable(name: "wait_q", scope: !4153, file: !182, line: 896, type: !205)
!4158 = !DILocation(line: 877, column: 31, scope: !4153)
!4159 = !DILocation(line: 883, column: 8, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4153, file: !182, line: 883, column: 7)
!4161 = !DILocation(line: 883, column: 7, scope: !4153)
!4162 = !DILocation(line: 129, column: 25, scope: !1371, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 78, column: 10, scope: !1364, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 85, column: 10, scope: !1379, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 887, column: 28, scope: !4153)
!4166 = !DILocation(line: 129, column: 12, scope: !1371, inlinedAt: !4163)
!4167 = !DILocation(line: 78, column: 21, scope: !1364, inlinedAt: !4164)
!4168 = !DILocation(line: 85, column: 30, scope: !1379, inlinedAt: !4165)
!4169 = !DILocation(line: 887, column: 15, scope: !4153)
!4170 = !DILocation(line: 896, column: 41, scope: !4153)
!4171 = !DILocation(line: 896, column: 21, scope: !4153)
!4172 = !DILocation(line: 897, column: 31, scope: !4153)
!4173 = !DILocation(line: 116, column: 52, scope: !1614, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 897, column: 3, scope: !4153)
!4175 = !DILocation(line: 116, column: 76, scope: !1614, inlinedAt: !4174)
!4176 = !DILocation(line: 118, column: 25, scope: !1614, inlinedAt: !4174)
!4177 = !DILocation(line: 85, column: 49, scope: !1622, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 118, column: 2, scope: !1614, inlinedAt: !4174)
!4179 = !DILocation(line: 86, column: 28, scope: !1622, inlinedAt: !4178)
!4180 = !DILocation(line: 87, column: 28, scope: !1622, inlinedAt: !4178)
!4181 = !DILocation(line: 89, column: 13, scope: !1622, inlinedAt: !4178)
!4182 = !DILocation(line: 90, column: 8, scope: !1622, inlinedAt: !4178)
!4183 = !DILocation(line: 90, column: 13, scope: !1622, inlinedAt: !4178)
!4184 = !DILocation(line: 91, column: 8, scope: !1622, inlinedAt: !4178)
!4185 = !DILocation(line: 91, column: 13, scope: !1622, inlinedAt: !4178)
!4186 = !DILocation(line: 92, column: 8, scope: !1622, inlinedAt: !4178)
!4187 = !DILocation(line: 92, column: 13, scope: !1622, inlinedAt: !4178)
!4188 = !DILocation(line: 898, column: 12, scope: !4153)
!4189 = !DILocation(line: 898, column: 20, scope: !4153)
!4190 = !DILocation(line: 899, column: 15, scope: !4153)
!4191 = !DILocation(line: 899, column: 24, scope: !4153)
!4192 = !DILocation(line: 903, column: 10, scope: !4153)
!4193 = !DILocation(line: 0, scope: !4153)
!4194 = !DILocation(line: 904, column: 1, scope: !4153)
