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
@.str.16 = private unnamed_addr constant [23 x i8] c"Fiber odd is finished\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Fiber odd, counter = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Fiber even is finished\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Fiber even, counter = %d\0A\00", align 1
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
@.str.21.72 = private unnamed_addr constant [65 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.22.73 = private unnamed_addr constant [55 x i8] c"CPU ? (%s%s): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.29.74 = private unnamed_addr constant [79 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.30.75 = private unnamed_addr constant [69 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.23.76 = private unnamed_addr constant [85 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.24.77 = private unnamed_addr constant [75 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.25.78 = private unnamed_addr constant [53 x i8] c"PANIC at %s(%d): Cannot start fiber thread for CPU!\0A\00", align 1
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
  br label %4, !dbg !598

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !589, metadata !DIExpression()), !dbg !597
  %6 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !590, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !591, metadata !DIExpression()), !dbg !601
  %7 = add nuw nsw i32 %5, 1, !dbg !602
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0), i32 %5, %struct.nk_fiber* null) #10, !dbg !603
  call void @llvm.dbg.value(metadata i32 %7, metadata !589, metadata !DIExpression()), !dbg !597
  %9 = icmp eq i32 %7, 5, !dbg !604
  br i1 %9, label %10, label %4, !dbg !598, !llvm.loop !605

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 5, metadata !589, metadata !DIExpression()), !dbg !597
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.nk_fiber* @nk_fiber_fork(...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers8(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !609 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !611, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i8* %1, metadata !612, metadata !DIExpression()), !dbg !614
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !615
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !620, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !620
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !622
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !623
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !623
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !624
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !625
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !618, metadata !DIExpression(DW_OP_deref)) #9, !dbg !626
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !628
  ret i32 0, !dbg !629
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !630 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !632, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8** undef, metadata !633, metadata !DIExpression()), !dbg !642
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !643
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !644
  call void @llvm.dbg.value(metadata i32 0, metadata !634, metadata !DIExpression()), !dbg !645
  br label %5, !dbg !646

; <label>:5:                                      ; preds = %2, %12
  %6 = phi i32 [ 0, %2 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  %7 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !647
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !635, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !636, metadata !DIExpression()), !dbg !649
  %8 = icmp eq %struct.nk_fiber* %7, null, !dbg !650
  br i1 %8, label %12, label %9, !dbg !651

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %6, metadata !634, metadata !DIExpression()), !dbg !645
  %10 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !652
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !652
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !638, metadata !DIExpression(DW_OP_deref)), !dbg !653
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine2, i8* null, i8** null, i64 0, i8 zeroext 0, %struct.nk_fiber** nonnull %3) #10, !dbg !654
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !655
  br label %16

; <label>:12:                                     ; preds = %5
  %13 = add nuw nsw i32 %6, 1, !dbg !656
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 %6, %struct.nk_fiber* null) #10, !dbg !657
  call void @llvm.dbg.value(metadata i32 %13, metadata !634, metadata !DIExpression()), !dbg !645
  %15 = icmp ult i32 %13, 5, !dbg !658
  br i1 %15, label %5, label %16, !dbg !646

; <label>:16:                                     ; preds = %12, %9
  %17 = phi i32 [ %6, %9 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !634, metadata !DIExpression()), !dbg !645
  %18 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %17) #10, !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_routine2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !661 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i8** undef, metadata !664, metadata !DIExpression()), !dbg !666
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !667
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !668
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !669
  ret void, !dbg !670
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers7(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !671 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8* %1, metadata !674, metadata !DIExpression()), !dbg !676
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !677
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !682, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !682
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !684
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !685
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !685
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !686
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !687
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !680, metadata !DIExpression(DW_OP_deref)) #9, !dbg !688
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !689
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !690
  ret i32 0, !dbg !691
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !692 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !694, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8** undef, metadata !695, metadata !DIExpression()), !dbg !700
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !701
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !702
  call void @llvm.dbg.value(metadata i32 0, metadata !696, metadata !DIExpression()), !dbg !703
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !704
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !697, metadata !DIExpression()), !dbg !705
  %5 = icmp eq %struct.nk_fiber* %4, null, !dbg !706
  br i1 %5, label %8, label %6, !dbg !708

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @nk_fiber_join(%struct.nk_fiber* nonnull %4) #10, !dbg !709
  br label %8, !dbg !711

; <label>:8:                                      ; preds = %2, %6
  br label %9, !dbg !712

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %11, %9 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !696, metadata !DIExpression()), !dbg !703
  %11 = add nuw nsw i32 %10, 1, !dbg !712
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 %10, %struct.nk_fiber* null) #10, !dbg !714
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !715
  call void @llvm.dbg.value(metadata i32 %11, metadata !696, metadata !DIExpression()), !dbg !703
  %14 = icmp eq i32 %11, 5, !dbg !716
  br i1 %14, label %15, label %9, !dbg !717, !llvm.loop !718

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i32 5, metadata !696, metadata !DIExpression()), !dbg !703
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #10, !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !722 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !724, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8* %1, metadata !725, metadata !DIExpression()), !dbg !727
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !728
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !733, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !733
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !735
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !736
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !736
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !737
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !738
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !731, metadata !DIExpression(DW_OP_deref)) #9, !dbg !739
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !741
  ret i32 0, !dbg !742
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !743 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !745, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8** undef, metadata !746, metadata !DIExpression()), !dbg !750
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !751
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !752
  call void @llvm.dbg.value(metadata i32 0, metadata !747, metadata !DIExpression()), !dbg !753
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !754
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !748, metadata !DIExpression()), !dbg !755
  call void @llvm.dbg.value(metadata i32 0, metadata !747, metadata !DIExpression()), !dbg !753
  br label %5, !dbg !756

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !747, metadata !DIExpression()), !dbg !753
  %7 = add nuw nsw i32 %6, 1, !dbg !757
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 %6, %struct.nk_fiber* %4) #10, !dbg !759
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !760
  call void @llvm.dbg.value(metadata i32 %7, metadata !747, metadata !DIExpression()), !dbg !753
  %10 = icmp eq i32 %7, 5, !dbg !761
  br i1 %10, label %11, label %5, !dbg !756, !llvm.loop !762

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !747, metadata !DIExpression()), !dbg !753
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !766 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !768, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i8* %1, metadata !769, metadata !DIExpression()), !dbg !771
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !772
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !777, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !777
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !779
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !780
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !780
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !781
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !782
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !775, metadata !DIExpression(DW_OP_deref)) #9, !dbg !783
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !785
  ret i32 0, !dbg !786
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !787 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !789, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8** undef, metadata !790, metadata !DIExpression()), !dbg !795
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !796
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !797
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()), !dbg !798
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  br label %6, !dbg !799

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !791, metadata !DIExpression()), !dbg !798
  %8 = add nuw nsw i32 %7, 1, !dbg !800
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %7) #10, !dbg !801
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !802
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !792, metadata !DIExpression(DW_OP_deref)), !dbg !803
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !804
  %11 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !792, metadata !DIExpression()), !dbg !803
  %12 = call i32 @nk_fiber_join(%struct.nk_fiber* %11) #10, !dbg !806
  %13 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !807
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !808
  call void @llvm.dbg.value(metadata i32 %8, metadata !791, metadata !DIExpression()), !dbg !798
  %14 = icmp eq i32 %8, 3, !dbg !809
  br i1 %14, label %15, label %6, !dbg !799, !llvm.loop !810

; <label>:15:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i32 3, metadata !791, metadata !DIExpression()), !dbg !798
  %16 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !811
  ret void, !dbg !812
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !813 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !815, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8** undef, metadata !816, metadata !DIExpression()), !dbg !819
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !820
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !821
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !822
  br label %4, !dbg !823

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !817, metadata !DIExpression()), !dbg !822
  %6 = add nuw nsw i32 %5, 1, !dbg !824
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %5) #10, !dbg !826
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !827
  call void @llvm.dbg.value(metadata i32 %6, metadata !817, metadata !DIExpression()), !dbg !822
  %9 = icmp eq i32 %6, 10, !dbg !828
  br i1 %9, label %10, label %4, !dbg !823, !llvm.loop !829

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !817, metadata !DIExpression()), !dbg !822
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !831
  ret void, !dbg !832
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers4(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !835, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %1, metadata !836, metadata !DIExpression()), !dbg !838
  %3 = tail call i32 @test_yield_to() #11, !dbg !839
  ret i32 0, !dbg !840
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_yield_to() local_unnamed_addr #0 !dbg !841 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !847
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !848
  %7 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !849
  %8 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !850
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !851, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !851
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !853
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !854
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !854
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !855
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !856
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !846, metadata !DIExpression(DW_OP_deref)), !dbg !857
  %13 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_fourth, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !858
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !843, metadata !DIExpression(DW_OP_deref)), !dbg !859
  %14 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_first, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %1) #10, !dbg !860
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !845, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %15 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_third, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %3) #10, !dbg !862
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !844, metadata !DIExpression(DW_OP_deref)), !dbg !863
  %16 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @fiber_second, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %2) #10, !dbg !864
  %17 = bitcast %struct.nk_fiber** %2 to i64*, !dbg !865
  %18 = load i64, i64* %17, align 8, !dbg !865
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !844, metadata !DIExpression(DW_OP_deref)), !dbg !863
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !866
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %19, metadata !843, metadata !DIExpression()), !dbg !859
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %19, i64 0, i32 14, !dbg !867
  %21 = bitcast i8** %20 to i64*, !dbg !868
  store i64 %18, i64* %21, align 8, !dbg !868
  %22 = bitcast %struct.nk_fiber** %3 to i64*, !dbg !869
  %23 = load i64, i64* %22, align 8, !dbg !869
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !845, metadata !DIExpression(DW_OP_deref)), !dbg !861
  %24 = inttoptr i64 %18 to %struct.nk_fiber*, !dbg !870
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %24, metadata !844, metadata !DIExpression()), !dbg !863
  %25 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %24, i64 0, i32 14, !dbg !871
  %26 = bitcast i8** %25 to i64*, !dbg !872
  store i64 %23, i64* %26, align 8, !dbg !872
  %27 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !873
  %28 = load i64, i64* %27, align 8, !dbg !873
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !846, metadata !DIExpression(DW_OP_deref)), !dbg !857
  %29 = inttoptr i64 %23 to %struct.nk_fiber*, !dbg !874
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %29, metadata !845, metadata !DIExpression()), !dbg !861
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %29, i64 0, i32 14, !dbg !875
  %31 = bitcast i8** %30 to i64*, !dbg !876
  store i64 %28, i64* %31, align 8, !dbg !876
  %32 = ptrtoint %struct.nk_fiber* %19 to i64, !dbg !877
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !843, metadata !DIExpression(DW_OP_deref)), !dbg !859
  %33 = inttoptr i64 %28 to %struct.nk_fiber*, !dbg !878
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !846, metadata !DIExpression()), !dbg !857
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 14, !dbg !879
  %35 = bitcast i8** %34 to i64*, !dbg !880
  store i64 %32, i64* %35, align 8, !dbg !880
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !846, metadata !DIExpression()), !dbg !857
  %36 = call i32 @nk_fiber_run(%struct.nk_fiber* %33, i8 zeroext 1) #10, !dbg !881
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !882
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %37, metadata !843, metadata !DIExpression()), !dbg !859
  %38 = call i32 @nk_fiber_run(%struct.nk_fiber* %37, i8 zeroext 1) #10, !dbg !883
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !884
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %39, metadata !845, metadata !DIExpression()), !dbg !861
  %40 = call i32 @nk_fiber_run(%struct.nk_fiber* %39, i8 zeroext 1) #10, !dbg !885
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !886
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !844, metadata !DIExpression()), !dbg !863
  %42 = call i32 @nk_fiber_run(%struct.nk_fiber* %41, i8 zeroext 1) #10, !dbg !887
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !888
  ret i32 0, !dbg !889
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fourth(i8*, i8** nocapture readnone) #0 !dbg !890 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !892, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8** undef, metadata !893, metadata !DIExpression()), !dbg !897
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !898
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !899
  call void @llvm.dbg.value(metadata i32 0, metadata !894, metadata !DIExpression()), !dbg !900
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !901
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !895, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !894, metadata !DIExpression()), !dbg !900
  br label %5, !dbg !903

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !894, metadata !DIExpression()), !dbg !900
  %7 = add nuw nsw i32 %6, 1, !dbg !904
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 %6, i8* %0) #10, !dbg !906
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !907
  call void @llvm.dbg.value(metadata i32 %7, metadata !894, metadata !DIExpression()), !dbg !900
  %10 = icmp eq i32 %7, 5, !dbg !908
  br i1 %10, label %11, label %5, !dbg !903, !llvm.loop !909

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !894, metadata !DIExpression()), !dbg !900
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !911
  ret void, !dbg !912
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_first(i8*, i8** nocapture readnone) #0 !dbg !913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !915, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i8** undef, metadata !916, metadata !DIExpression()), !dbg !920
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !921
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !922
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !923
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !924
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !918, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !923
  br label %5, !dbg !926

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !917, metadata !DIExpression()), !dbg !923
  %7 = add nuw nsw i32 %6, 1, !dbg !927
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 %6, i8* %0) #10, !dbg !929
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !930
  call void @llvm.dbg.value(metadata i32 %7, metadata !917, metadata !DIExpression()), !dbg !923
  %10 = icmp eq i32 %7, 5, !dbg !931
  br i1 %10, label %11, label %5, !dbg !926, !llvm.loop !932

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !917, metadata !DIExpression()), !dbg !923
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !934
  ret void, !dbg !935
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_third(i8*, i8** nocapture readnone) #0 !dbg !936 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !938, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i8** undef, metadata !939, metadata !DIExpression()), !dbg !943
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !944
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !945
  call void @llvm.dbg.value(metadata i32 0, metadata !940, metadata !DIExpression()), !dbg !946
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !947
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !941, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i32 0, metadata !940, metadata !DIExpression()), !dbg !946
  br label %5, !dbg !949

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !940, metadata !DIExpression()), !dbg !946
  %7 = add nuw nsw i32 %6, 1, !dbg !950
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 %6, i8* %0) #10, !dbg !952
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !953
  call void @llvm.dbg.value(metadata i32 %7, metadata !940, metadata !DIExpression()), !dbg !946
  %10 = icmp eq i32 %7, 5, !dbg !954
  br i1 %10, label %11, label %5, !dbg !949, !llvm.loop !955

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !940, metadata !DIExpression()), !dbg !946
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !957
  ret void, !dbg !958
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_second(i8*, i8** nocapture readnone) #0 !dbg !959 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !961, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8** undef, metadata !962, metadata !DIExpression()), !dbg !966
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !967
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !968
  call void @llvm.dbg.value(metadata i32 0, metadata !963, metadata !DIExpression()), !dbg !969
  %4 = bitcast i8* %0 to %struct.nk_fiber*, !dbg !970
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !964, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !963, metadata !DIExpression()), !dbg !969
  br label %5, !dbg !972

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !963, metadata !DIExpression()), !dbg !969
  %7 = add nuw nsw i32 %6, 1, !dbg !973
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 %6, i8* %0) #10, !dbg !975
  %9 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %4) #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 %7, metadata !963, metadata !DIExpression()), !dbg !969
  %10 = icmp eq i32 %7, 5, !dbg !977
  br i1 %10, label %11, label %5, !dbg !972, !llvm.loop !978

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !963, metadata !DIExpression()), !dbg !969
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !980
  ret void, !dbg !981
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers3(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !982 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8* %1, metadata !985, metadata !DIExpression()), !dbg !987
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !988
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !988
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !994
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !994
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !995, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !995
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !997
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !998
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !998
  %10 = load i64, i64* %9, align 8, !dbg !998
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !999
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !991, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1000
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1001
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !992, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1002
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1003
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1004
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1004
  ret i32 0, !dbg !1005
}

; Function Attrs: noredzone nounwind
define dso_local void @print_even(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1006 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1008, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i8** undef, metadata !1009, metadata !DIExpression()), !dbg !1013
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1014
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1015
  call void @llvm.dbg.value(metadata i32 0, metadata !1010, metadata !DIExpression()), !dbg !1016
  br label %6, !dbg !1017

; <label>:4:                                      ; preds = %13
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1018
  ret void, !dbg !1019

; <label>:6:                                      ; preds = %13, %2
  %7 = phi i32 [ 0, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1010, metadata !DIExpression()), !dbg !1016
  %8 = and i32 %7, 1, !dbg !1020
  %9 = icmp eq i32 %8, 0, !dbg !1020
  br i1 %9, label %10, label %13, !dbg !1024

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %7) #10, !dbg !1025
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1027
  br label %13, !dbg !1028

; <label>:13:                                     ; preds = %6, %10
  %14 = add nuw nsw i32 %7, 1, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %14, metadata !1010, metadata !DIExpression()), !dbg !1016
  %15 = icmp eq i32 %14, 10, !dbg !1030
  br i1 %15, label %4, label %6, !dbg !1017, !llvm.loop !1031
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1033 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1035, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i8** undef, metadata !1036, metadata !DIExpression()), !dbg !1040
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1041
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1042
  call void @llvm.dbg.value(metadata i32 0, metadata !1037, metadata !DIExpression()), !dbg !1043
  br label %6, !dbg !1044

; <label>:4:                                      ; preds = %13
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1045
  ret void, !dbg !1046

; <label>:6:                                      ; preds = %13, %2
  %7 = phi i32 [ 0, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1037, metadata !DIExpression()), !dbg !1043
  %8 = and i32 %7, 1, !dbg !1047
  %9 = icmp eq i32 %8, 0, !dbg !1047
  br i1 %9, label %13, label %10, !dbg !1051

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %7) #10, !dbg !1052
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1054
  br label %13, !dbg !1055

; <label>:13:                                     ; preds = %6, %10
  %14 = add nuw nsw i32 %7, 1, !dbg !1056
  call void @llvm.dbg.value(metadata i32 %14, metadata !1037, metadata !DIExpression()), !dbg !1043
  %15 = icmp eq i32 %14, 10, !dbg !1057
  br i1 %15, label %4, label %6, !dbg !1044, !llvm.loop !1058
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1060 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1062, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i8* %1, metadata !1063, metadata !DIExpression()), !dbg !1065
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1066
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1071, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1073
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1074
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1074
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1075
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1069, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1077
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1079
  ret i32 0, !dbg !1080
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1081 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8** undef, metadata !1084, metadata !DIExpression()), !dbg !1089
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1090
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i32 0, metadata !1085, metadata !DIExpression()), !dbg !1092
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  br label %6, !dbg !1093

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i32 [ 0, %2 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !1085, metadata !DIExpression()), !dbg !1092
  %8 = add nuw nsw i32 %7, 1, !dbg !1094
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %7) #10, !dbg !1095
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1086, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1098
  %11 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %8, metadata !1085, metadata !DIExpression()), !dbg !1092
  %12 = icmp eq i32 %8, 3, !dbg !1101
  br i1 %12, label %13, label %6, !dbg !1093, !llvm.loop !1102

; <label>:13:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i32 3, metadata !1085, metadata !DIExpression()), !dbg !1092
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !1103
  ret void, !dbg !1104
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1105 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1107, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8** undef, metadata !1108, metadata !DIExpression()), !dbg !1111
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1112
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1114
  br label %4, !dbg !1115

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1109, metadata !DIExpression()), !dbg !1114
  %6 = add nuw nsw i32 %5, 1, !dbg !1116
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %5) #10, !dbg !1118
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %6, metadata !1109, metadata !DIExpression()), !dbg !1114
  %9 = icmp eq i32 %6, 10, !dbg !1120
  br i1 %9, label %10, label %4, !dbg !1115, !llvm.loop !1121

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !1109, metadata !DIExpression()), !dbg !1114
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !1123
  ret void, !dbg !1124
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1125 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1127, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %1, metadata !1128, metadata !DIExpression()), !dbg !1130
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1131
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1137
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1138, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1140
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1141
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1141
  %10 = load i64, i64* %9, align 8, !dbg !1141
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1142
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1134, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1143
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1135, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1145
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1147
  ret i32 0, !dbg !1148
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1149 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1151, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i8** undef, metadata !1152, metadata !DIExpression()), !dbg !1157
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1158
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1159
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i64 0, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1155, metadata !DIExpression()), !dbg !1162
  br label %4, !dbg !1163

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %6, metadata !1153, metadata !DIExpression()), !dbg !1160
  %7 = icmp eq i32 %6, 2, !dbg !1164
  br i1 %7, label %8, label %16, !dbg !1167

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1168, !srcloc !1178
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !1168
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %10, metadata !1174, metadata !DIExpression()) #9, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %11, metadata !1175, metadata !DIExpression()) #9, !dbg !1180
  %12 = zext i32 %10 to i64, !dbg !1181
  %13 = zext i32 %11 to i64, !dbg !1182
  %14 = shl nuw i64 %13, 32, !dbg !1183
  %15 = or i64 %14, %12, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %15, metadata !1154, metadata !DIExpression()), !dbg !1161
  br label %16, !dbg !1185

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !1186
  %18 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1187
  %19 = add nuw nsw i32 %6, 1, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %19, metadata !1153, metadata !DIExpression()), !dbg !1160
  %20 = icmp eq i32 %19, 100000, !dbg !1189
  br i1 %20, label %21, label %4, !dbg !1163, !llvm.loop !1190

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 100000, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i64 %17, metadata !1154, metadata !DIExpression()), !dbg !1161
  %22 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1192, !srcloc !1178
  %23 = extractvalue { i32, i32 } %22, 0, !dbg !1192
  %24 = extractvalue { i32, i32 } %22, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %23, metadata !1174, metadata !DIExpression()) #9, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %24, metadata !1175, metadata !DIExpression()) #9, !dbg !1195
  %25 = zext i32 %23 to i64, !dbg !1196
  %26 = zext i32 %24 to i64, !dbg !1197
  %27 = shl nuw i64 %26, 32, !dbg !1198
  %28 = or i64 %27, %25, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %28, metadata !1155, metadata !DIExpression()), !dbg !1162
  %29 = sub i64 %28, %17, !dbg !1200
  %30 = udiv i64 %29, 100000, !dbg !1201
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %29, i64 %30) #10, !dbg !1202
  ret void, !dbg !1203
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1204 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1206, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8** undef, metadata !1207, metadata !DIExpression()), !dbg !1210
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1211
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1212
  call void @llvm.dbg.value(metadata i32 0, metadata !1208, metadata !DIExpression()), !dbg !1213
  br label %4, !dbg !1214

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1208, metadata !DIExpression()), !dbg !1213
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1215
  %7 = add nuw nsw i32 %5, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %7, metadata !1208, metadata !DIExpression()), !dbg !1213
  %8 = icmp eq i32 %7, 100000, !dbg !1218
  br i1 %8, label %9, label %4, !dbg !1214, !llvm.loop !1219

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 100000, metadata !1208, metadata !DIExpression()), !dbg !1213
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #10, !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1223 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1225, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %1, metadata !1226, metadata !DIExpression()), !dbg !1228
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1229
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1229
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1236
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1236
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1237
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1238, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !1238
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !1240
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1241
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !1241
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !1242
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !1243
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1232, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1244
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1233, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1246
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !1234, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1248
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #10, !dbg !1249
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1250
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1250
  ret i32 0, !dbg !1251
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1252 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1254, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8** undef, metadata !1255, metadata !DIExpression()), !dbg !1259
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1260
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1261
  call void @llvm.dbg.value(metadata i32 0, metadata !1256, metadata !DIExpression()), !dbg !1262
  br label %5, !dbg !1263

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1256, metadata !DIExpression()), !dbg !1262
  %7 = add nuw nsw i32 %6, 1, !dbg !1264
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %6) #10, !dbg !1266
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %7, metadata !1256, metadata !DIExpression()), !dbg !1262
  %10 = icmp eq i32 %7, 5, !dbg !1268
  br i1 %10, label %11, label %5, !dbg !1263, !llvm.loop !1269

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 5, metadata !1256, metadata !DIExpression()), !dbg !1262
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !1271
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1272
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1257, metadata !DIExpression(DW_OP_deref)), !dbg !1273
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1275
  ret void, !dbg !1275
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1276 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8** undef, metadata !1279, metadata !DIExpression()), !dbg !1283
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1284
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1285
  call void @llvm.dbg.value(metadata i32 0, metadata !1280, metadata !DIExpression()), !dbg !1286
  br label %5, !dbg !1287

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1280, metadata !DIExpression()), !dbg !1286
  %7 = add nuw nsw i32 %6, 1, !dbg !1288
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %6) #10, !dbg !1290
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %7, metadata !1280, metadata !DIExpression()), !dbg !1286
  %10 = icmp eq i32 %7, 10, !dbg !1292
  br i1 %10, label %11, label %5, !dbg !1287, !llvm.loop !1293

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 10, metadata !1280, metadata !DIExpression()), !dbg !1286
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #10, !dbg !1295
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1281, metadata !DIExpression(DW_OP_deref)), !dbg !1297
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1299
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
  br label %5, !dbg !1311

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1304, metadata !DIExpression()), !dbg !1310
  %7 = add nuw nsw i32 %6, 1, !dbg !1312
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %6) #10, !dbg !1314
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %7, metadata !1304, metadata !DIExpression()), !dbg !1310
  %10 = icmp eq i32 %7, 2, !dbg !1316
  br i1 %10, label %11, label %5, !dbg !1311, !llvm.loop !1317

; <label>:11:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i32 2, metadata !1304, metadata !DIExpression()), !dbg !1310
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #10, !dbg !1319
  %13 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1320
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1305, metadata !DIExpression(DW_OP_deref)), !dbg !1321
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #9, !dbg !1323
  ret void, !dbg !1323
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1324 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8** undef, metadata !1327, metadata !DIExpression()), !dbg !1330
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1331
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i32 0, metadata !1328, metadata !DIExpression()), !dbg !1333
  br label %4, !dbg !1334

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1328, metadata !DIExpression()), !dbg !1333
  %6 = add nuw nsw i32 %5, 1, !dbg !1335
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %5) #10, !dbg !1337
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %6, metadata !1328, metadata !DIExpression()), !dbg !1333
  %9 = icmp eq i32 %6, 10, !dbg !1339
  br i1 %9, label %10, label %4, !dbg !1334, !llvm.loop !1340

; <label>:10:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i32 10, metadata !1328, metadata !DIExpression()), !dbg !1333
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #10, !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !1344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 0, metadata !1350, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1349, metadata !DIExpression()), !dbg !1353
  %2 = icmp sgt i32 %0, 0, !dbg !1354
  br i1 %2, label %3, label %8, !dbg !1357

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1349, metadata !DIExpression()), !dbg !1353
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #10, !dbg !1358
  %6 = add nuw nsw i32 %4, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %4, metadata !1350, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %6, metadata !1349, metadata !DIExpression()), !dbg !1353
  %7 = icmp eq i32 %6, %0, !dbg !1354
  br i1 %7, label %8, label %3, !dbg !1357, !llvm.loop !1361

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !1363
  call void @llvm.dbg.value(metadata i32 %9, metadata !1350, metadata !DIExpression()), !dbg !1352
  ret i32 %9, !dbg !1364
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !989 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1365
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1366
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1367, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1369
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1370
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1370
  %8 = load i64, i64* %7, align 8, !dbg !1370
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !991, metadata !DIExpression(DW_OP_deref)), !dbg !1372
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1373
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !992, metadata !DIExpression(DW_OP_deref)), !dbg !1374
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1375
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1376
  ret i32 0, !dbg !1377
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !1067 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1378
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1379, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1381
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1382
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1382
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1383
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1069, metadata !DIExpression(DW_OP_deref)), !dbg !1385
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1387
  ret i32 0, !dbg !1388
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !1230 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1389
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1390
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1391
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1392, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1392
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1394
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1395
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !1395
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !1396
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #10, !dbg !1397
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1232, metadata !DIExpression(DW_OP_deref)), !dbg !1398
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1233, metadata !DIExpression(DW_OP_deref)), !dbg !1400
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1234, metadata !DIExpression(DW_OP_deref)), !dbg !1402
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1404
  ret i32 0, !dbg !1405
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !773 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1406
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1407, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1409
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1410
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1410
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1411
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1412
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !1413
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1415
  ret i32 0, !dbg !1416
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !729 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1417
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1418, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1420
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1421
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1421
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1422
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1423
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !731, metadata !DIExpression(DW_OP_deref)), !dbg !1424
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1426
  ret i32 0, !dbg !1427
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !678 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1428
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1428
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1429, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1429
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1431
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1432
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1432
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1433
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1434
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !680, metadata !DIExpression(DW_OP_deref)), !dbg !1435
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1437
  ret i32 0, !dbg !1438
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !616 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1439
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1439
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1440, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1440
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1442
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1443
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1443
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1444
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !618, metadata !DIExpression(DW_OP_deref)), !dbg !1446
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1448
  ret i32 0, !dbg !1449
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !560 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1450
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1450
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1451, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1451
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1453
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1454
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1454
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1455
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1456
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !564, metadata !DIExpression(DW_OP_deref)), !dbg !1457
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1458
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1459
  ret i32 0, !dbg !1460
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !1132 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1461
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1461
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1462
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1463, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1463
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1465
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1466
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1466
  %8 = load i64, i64* %7, align 8, !dbg !1466
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1467
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1134, metadata !DIExpression(DW_OP_deref)), !dbg !1468
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1135, metadata !DIExpression(DW_OP_deref)), !dbg !1470
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1471
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1472
  ret i32 0, !dbg !1473
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1474 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1480
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1486
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1487
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1487
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1488
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1489 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1492
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1495
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1496
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1496
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1497
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1497
  ret %struct.nk_fiber* %6, !dbg !1498
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1499 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1500
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1503
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1504
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1504
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1505
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1505
  ret %struct.nk_fiber* %6, !dbg !1506
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1507 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1510
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1513
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1514
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1514
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1515
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1515
  ret %struct.nk_thread* %6, !dbg !1516
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1517 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1520
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1523
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1524
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1524
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1525
  ret %struct.list_head* %5, !dbg !1526
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !1527 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %1, metadata !1532, metadata !DIExpression()), !dbg !1534
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1535
  %4 = load i64, i64* %3, align 8, !dbg !1536
  %5 = add i64 %4, -8, !dbg !1536
  store i64 %5, i64* %3, align 8, !dbg !1536
  %6 = inttoptr i64 %5 to i64*, !dbg !1537
  store i64 %1, i64* %6, align 8, !dbg !1538
  ret void, !dbg !1539
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1540 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1554
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1558
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1559
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1559
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1542, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1543, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1563, metadata !DIExpression()), !dbg !1568
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1570
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1570
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1571
  br i1 %8, label %20, label %9, !dbg !1572

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()), !dbg !1573
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1573
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1573
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1544, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1543, metadata !DIExpression()), !dbg !1562
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1574
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1575, metadata !DIExpression()), !dbg !1580
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1582
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1582
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1584, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1589, metadata !DIExpression()), !dbg !1592
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1593
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1594
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1595
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1596
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1597, metadata !DIExpression()), !dbg !1600
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1602
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1602
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1603
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1603
  br label %20, !dbg !1604

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1605
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1543, metadata !DIExpression()), !dbg !1562
  ret %struct.nk_fiber* %21, !dbg !1606
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1607 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1611, metadata !DIExpression()), !dbg !1622
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1623
  store i32 4, i32* %3, align 4, !dbg !1624
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1612, metadata !DIExpression()), !dbg !1625
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1626
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1614, metadata !DIExpression()), !dbg !1627
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1628
  %6 = load i32, i32* %5, align 8, !dbg !1628
  %7 = icmp sgt i32 %6, 0, !dbg !1629
  br i1 %7, label %8, label %66, !dbg !1630

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1630

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1615, metadata !DIExpression()), !dbg !1631
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1632
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1632
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1631
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1631
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1615, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1613, metadata !DIExpression()), !dbg !1633
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1634
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1575, metadata !DIExpression()), !dbg !1635
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1637
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1637
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1638
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1584, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1589, metadata !DIExpression()), !dbg !1641
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1642
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1643
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1644
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1597, metadata !DIExpression()), !dbg !1646
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1648
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1649
  %24 = load i32, i32* %5, align 8, !dbg !1650
  %25 = add i32 %24, -1, !dbg !1650
  store i32 %25, i32* %5, align 8, !dbg !1650
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1651
  br i1 %26, label %63, label %27, !dbg !1653

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1654, metadata !DIExpression()) #9, !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1659, metadata !DIExpression()) #9, !dbg !1665
  %28 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %28, metadata !1660, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1670
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1671, !srcloc !1691
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1678, metadata !DIExpression()) #9, !dbg !1671
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1677, metadata !DIExpression()) #9, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1676, metadata !DIExpression()) #9, !dbg !1693
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1694
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #10, !dbg !1699
  %30 = load i64, i64* %2, align 8, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %30, metadata !1697, metadata !DIExpression()) #9, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1702
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1703
  %32 = load i32, i32* %31, align 8, !dbg !1703
  %33 = zext i32 %32 to i64, !dbg !1704
  %34 = urem i64 %30, %33, !dbg !1705
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1706, !srcloc !1707
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1686, metadata !DIExpression()) #9, !dbg !1706
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1684, metadata !DIExpression()) #9, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1683, metadata !DIExpression()) #9, !dbg !1709
  %36 = shl nuw i64 %34, 32, !dbg !1710
  %37 = ashr exact i64 %36, 32, !dbg !1710
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1710
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1710
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1660, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1670
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1711
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1711
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1711
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1660, metadata !DIExpression()) #9, !dbg !1670
  %44 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1712
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1716
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1717
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1717
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1661, metadata !DIExpression()) #9, !dbg !1719
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1720
  store i32 1, i32* %49, align 4, !dbg !1721
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1723, metadata !DIExpression()) #9, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1726, metadata !DIExpression()) #9, !dbg !1729
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1730
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1731, metadata !DIExpression()) #9, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1736, metadata !DIExpression()) #9, !dbg !1740
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1737, metadata !DIExpression()) #9, !dbg !1741
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1742
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1743
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1744
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1745
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1746
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1747
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1748
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1749
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1749
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1751
  br i1 %58, label %61, label %59, !dbg !1752

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #10, !dbg !1753
  br label %61, !dbg !1755

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1628
  br label %63, !dbg !1628

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1628
  %65 = icmp sgt i32 %64, 0, !dbg !1629
  br i1 %65, label %11, label %66, !dbg !1630, !llvm.loop !1756

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1758
  store i8 1, i8* %67, align 8, !dbg !1759
  %68 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1760
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1765
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1766
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1766
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1542, metadata !DIExpression()) #9, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1543, metadata !DIExpression()) #9, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1563, metadata !DIExpression()) #9, !dbg !1770
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1772
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1772
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1773
  br i1 %75, label %88, label %76, !dbg !1774

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !1775
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1775
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1544, metadata !DIExpression()) #9, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1543, metadata !DIExpression()) #9, !dbg !1769
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1575, metadata !DIExpression()) #9, !dbg !1777
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1779
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1779
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1584, metadata !DIExpression()) #9, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1589, metadata !DIExpression()) #9, !dbg !1783
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1784
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1785
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1786
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1787
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1597, metadata !DIExpression()) #9, !dbg !1788
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1790
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1790
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1791
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1543, metadata !DIExpression()) #9, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1612, metadata !DIExpression()), !dbg !1625
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1792
  br i1 %87, label %88, label %95, !dbg !1794

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1795
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1800
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1801
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1801
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1802
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1612, metadata !DIExpression()), !dbg !1625
  br label %95, !dbg !1803

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1804
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1612, metadata !DIExpression()), !dbg !1625
  %97 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1805
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1808
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1809
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1809
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1810
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1811
  %102 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1812
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1815
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1816
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1816
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1817
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1817
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1575, metadata !DIExpression()), !dbg !1819
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1821
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1821
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1822
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1822
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1584, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1589, metadata !DIExpression()), !dbg !1825
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1826
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1827
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1828
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1597, metadata !DIExpression()), !dbg !1830
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1832
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1833
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1834
  %116 = load i8*, i8** %115, align 8, !dbg !1834
  call void @kmem_free(i8* %116) #10, !dbg !1834
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1835
  call void @kmem_free(i8* %117) #10, !dbg !1835
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #10, !dbg !1836
  ret void, !dbg !1837
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
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1655 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1654, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %1, metadata !1659, metadata !DIExpression()), !dbg !1839
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1840
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1660, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1845
  %6 = icmp eq i8 %1, 0, !dbg !1846
  br i1 %6, label %20, label %7, !dbg !1847

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1848, !srcloc !1691
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1678, metadata !DIExpression()) #9, !dbg !1848
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1677, metadata !DIExpression()) #9, !dbg !1851
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1676, metadata !DIExpression()) #9, !dbg !1852
  %9 = bitcast i64* %3 to i8*, !dbg !1853
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1853
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #10, !dbg !1855
  %10 = load i64, i64* %3, align 8, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %10, metadata !1697, metadata !DIExpression()) #9, !dbg !1857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1858
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1859
  %12 = load i32, i32* %11, align 8, !dbg !1859
  %13 = zext i32 %12 to i64, !dbg !1860
  %14 = urem i64 %10, %13, !dbg !1861
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1862, !srcloc !1707
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1686, metadata !DIExpression()) #9, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1684, metadata !DIExpression()) #9, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1683, metadata !DIExpression()) #9, !dbg !1864
  %16 = shl nuw i64 %14, 32, !dbg !1865
  %17 = ashr exact i64 %16, 32, !dbg !1865
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1865
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1865
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1660, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1845
  br label %20, !dbg !1866

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1867
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1867
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1867
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1867
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1660, metadata !DIExpression()), !dbg !1845
  %26 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1868
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1872
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1873
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1873
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1661, metadata !DIExpression()), !dbg !1875
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1876
  store i32 1, i32* %31, align 4, !dbg !1877
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1878
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1723, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1726, metadata !DIExpression()), !dbg !1881
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1882
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1731, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1736, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1737, metadata !DIExpression()), !dbg !1886
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1887
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1888
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1889
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1890
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1891
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1892
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1893
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1894
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1894
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1895
  br i1 %40, label %43, label %41, !dbg !1896

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #10, !dbg !1897
  br label %43, !dbg !1898

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1899
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1900 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1904
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1904
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1905
  %5 = load i8*, i8** %4, align 8, !dbg !1905
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1906
  %7 = load i8**, i8*** %6, align 8, !dbg !1906
  tail call void %3(i8* %5, i8** %7) #10, !dbg !1907
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #11, !dbg !1908
  ret void, !dbg !1909
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1910 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1912, metadata !DIExpression()), !dbg !1913
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1914
  %3 = bitcast i8** %2 to i64*, !dbg !1914
  %4 = load i64, i64* %3, align 8, !dbg !1914
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1915
  %6 = load i64, i64* %5, align 8, !dbg !1915
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1532, metadata !DIExpression()), !dbg !1919
  %8 = add i64 %4, -8, !dbg !1920
  %9 = add i64 %8, %6, !dbg !1921
  store i64 %9, i64* %7, align 8, !dbg !1921
  %10 = inttoptr i64 %9 to i64*, !dbg !1922
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1926
  %11 = load i64, i64* %7, align 8, !dbg !1927
  %12 = add i64 %11, -8, !dbg !1927
  store i64 %12, i64* %7, align 8, !dbg !1927
  %13 = inttoptr i64 %12 to i64*, !dbg !1928
  store i64 0, i64* %13, align 8, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1932
  %14 = load i64, i64* %7, align 8, !dbg !1933
  %15 = add i64 %14, -8, !dbg !1933
  store i64 %15, i64* %7, align 8, !dbg !1933
  %16 = inttoptr i64 %15 to i64*, !dbg !1934
  store i64 0, i64* %16, align 8, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1938
  %17 = load i64, i64* %7, align 8, !dbg !1939
  %18 = add i64 %17, -8, !dbg !1939
  store i64 %18, i64* %7, align 8, !dbg !1939
  %19 = inttoptr i64 %18 to i64*, !dbg !1940
  store i64 0, i64* %19, align 8, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1944
  %20 = load i64, i64* %7, align 8, !dbg !1945
  %21 = add i64 %20, -8, !dbg !1945
  store i64 %21, i64* %7, align 8, !dbg !1945
  %22 = inttoptr i64 %21 to i64*, !dbg !1946
  store i64 0, i64* %22, align 8, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1950
  %23 = load i64, i64* %7, align 8, !dbg !1951
  %24 = add i64 %23, -8, !dbg !1951
  store i64 %24, i64* %7, align 8, !dbg !1951
  %25 = inttoptr i64 %24 to i64*, !dbg !1952
  store i64 0, i64* %25, align 8, !dbg !1953
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %26, metadata !1532, metadata !DIExpression()), !dbg !1957
  %27 = load i64, i64* %7, align 8, !dbg !1958
  %28 = add i64 %27, -8, !dbg !1958
  store i64 %28, i64* %7, align 8, !dbg !1958
  %29 = inttoptr i64 %28 to i64*, !dbg !1959
  store i64 %26, i64* %29, align 8, !dbg !1960
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1963
  %30 = load i64, i64* %7, align 8, !dbg !1964
  %31 = add i64 %30, -8, !dbg !1964
  store i64 %31, i64* %7, align 8, !dbg !1964
  %32 = inttoptr i64 %31 to i64*, !dbg !1965
  store i64 0, i64* %32, align 8, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1969
  %33 = load i64, i64* %7, align 8, !dbg !1970
  %34 = add i64 %33, -8, !dbg !1970
  store i64 %34, i64* %7, align 8, !dbg !1970
  %35 = inttoptr i64 %34 to i64*, !dbg !1971
  store i64 0, i64* %35, align 8, !dbg !1972
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1975
  %36 = load i64, i64* %7, align 8, !dbg !1976
  %37 = add i64 %36, -8, !dbg !1976
  store i64 %37, i64* %7, align 8, !dbg !1976
  %38 = inttoptr i64 %37 to i64*, !dbg !1977
  store i64 0, i64* %38, align 8, !dbg !1978
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1981
  %39 = load i64, i64* %7, align 8, !dbg !1982
  %40 = add i64 %39, -8, !dbg !1982
  store i64 %40, i64* %7, align 8, !dbg !1982
  %41 = inttoptr i64 %40 to i64*, !dbg !1983
  store i64 0, i64* %41, align 8, !dbg !1984
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1987
  %42 = load i64, i64* %7, align 8, !dbg !1988
  %43 = add i64 %42, -8, !dbg !1988
  store i64 %43, i64* %7, align 8, !dbg !1988
  %44 = inttoptr i64 %43 to i64*, !dbg !1989
  store i64 0, i64* %44, align 8, !dbg !1990
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1993
  %45 = load i64, i64* %7, align 8, !dbg !1994
  %46 = add i64 %45, -8, !dbg !1994
  store i64 %46, i64* %7, align 8, !dbg !1994
  %47 = inttoptr i64 %46 to i64*, !dbg !1995
  store i64 0, i64* %47, align 8, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1999
  %48 = load i64, i64* %7, align 8, !dbg !2000
  %49 = add i64 %48, -8, !dbg !2000
  store i64 %49, i64* %7, align 8, !dbg !2000
  %50 = inttoptr i64 %49 to i64*, !dbg !2001
  store i64 0, i64* %50, align 8, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !2005
  %51 = load i64, i64* %7, align 8, !dbg !2006
  %52 = add i64 %51, -8, !dbg !2006
  store i64 %52, i64* %7, align 8, !dbg !2006
  %53 = inttoptr i64 %52 to i64*, !dbg !2007
  store i64 0, i64* %53, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1531, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !2011
  %54 = load i64, i64* %7, align 8, !dbg !2012
  %55 = add i64 %54, -8, !dbg !2012
  store i64 %55, i64* %7, align 8, !dbg !2012
  %56 = inttoptr i64 %55 to i64*, !dbg !2013
  store i64 0, i64* %56, align 8, !dbg !2014
  ret void, !dbg !2015
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2016 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2020, metadata !DIExpression()), !dbg !2025
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2026
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2030
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2031
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2031
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2032
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2021, metadata !DIExpression()), !dbg !2033
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !2034
  %9 = load i32, i32* %8, align 4, !dbg !2034
  %10 = add i32 %9, -3, !dbg !2036
  %11 = icmp ult i32 %10, 2, !dbg !2036
  br i1 %11, label %13, label %12, !dbg !2036

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !2037
  br label %13, !dbg !2039

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2040
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !2044
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !2045
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !2045
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !2046
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !2046
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !2047
  br i1 %20, label %36, label %21, !dbg !2048

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !2049
  %23 = icmp eq i32 %22, 3, !dbg !2050
  br i1 %23, label %36, label %24, !dbg !2051

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2052
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2056
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2057
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2057
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2058
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !2022, metadata !DIExpression()), !dbg !2059
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2060
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1723, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1726, metadata !DIExpression()), !dbg !2063
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2064
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2064
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1731, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1736, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1737, metadata !DIExpression()), !dbg !2068
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2069
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2070
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2071
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2072
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2073
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2074
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2075
  br label %36, !dbg !2076

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2077
  %38 = load i32, i32* %37, align 8, !dbg !2077
  %39 = icmp eq i32 %38, 0, !dbg !2079
  br i1 %39, label %40, label %55, !dbg !2080

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2081
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2081
  %43 = load i64, i64* %42, align 8, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2083, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2089
  %44 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2091
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2095
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2096
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2096
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2097
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2088, metadata !DIExpression()) #9, !dbg !2098
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2099
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2100
  store i64 %43, i64* %51, align 8, !dbg !2100
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2101, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2107, metadata !DIExpression()) #9, !dbg !2101
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2106, metadata !DIExpression()) #9, !dbg !2110
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2111
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2112
  store i64 %43, i64* %54, align 8, !dbg !2112
  br label %55, !dbg !2113

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2114
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2117
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2118
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2118
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2119
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2120
  store i32 1, i32* %8, align 4, !dbg !2121
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2122
  store i32 5, i32* %61, align 4, !dbg !2123
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #10, !dbg !2124
  ret i32 0, !dbg !2125
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2084 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2083, metadata !DIExpression()), !dbg !2126
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2127
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2131
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2132
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2132
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2133
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2088, metadata !DIExpression()), !dbg !2134
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2135
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2136
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2137, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2107, metadata !DIExpression()) #9, !dbg !2137
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2106, metadata !DIExpression()) #9, !dbg !2139
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2140
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2141
  ret void, !dbg !2142
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2143 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2148
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2152
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2153
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2153
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2154
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2154
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2147, metadata !DIExpression()), !dbg !2155
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #11, !dbg !2156
  ret void, !dbg !2157
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2158 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2162, metadata !DIExpression()), !dbg !2165
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2166
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2170
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2171
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2171
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2172
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2163, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2164, metadata !DIExpression()), !dbg !2174
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2175
  %9 = zext i1 %8 to i8, !dbg !2177
  call void @llvm.dbg.value(metadata i8 %9, metadata !2164, metadata !DIExpression()), !dbg !2174
  ret i8 %9, !dbg !2178
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1680 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2179, !srcloc !1691
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1678, metadata !DIExpression()) #9, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1677, metadata !DIExpression()) #9, !dbg !2181
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1676, metadata !DIExpression()) #9, !dbg !2182
  %3 = bitcast i64* %1 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2183
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #10, !dbg !2185
  %4 = load i64, i64* %1, align 8, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %4, metadata !1697, metadata !DIExpression()) #9, !dbg !2187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2188
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2189
  %6 = load i32, i32* %5, align 8, !dbg !2189
  %7 = zext i32 %6 to i64, !dbg !2190
  %8 = urem i64 %4, %7, !dbg !2191
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2192, !srcloc !1707
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1686, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1684, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1683, metadata !DIExpression()), !dbg !2194
  %10 = shl nuw i64 %8, 32, !dbg !2195
  %11 = ashr exact i64 %10, 32, !dbg !2195
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2195
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2195
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2196
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2196
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2197
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2197
  ret %struct.nk_thread* %17, !dbg !2198
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2199 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2201, metadata !DIExpression()), !dbg !2220
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2221, !srcloc !2222
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2205, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2203, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2202, metadata !DIExpression()), !dbg !2224
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2225
  %4 = load i32, i32* %3, align 8, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %4, metadata !2207, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2227
  %5 = icmp sgt i32 %4, 0, !dbg !2228
  br i1 %5, label %6, label %38, !dbg !2229

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2230
  br label %8, !dbg !2230

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2210, metadata !DIExpression()), !dbg !2227
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2230
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2230
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2231
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2231
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2232
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2208, metadata !DIExpression()), !dbg !2233
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2234
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2212, metadata !DIExpression(DW_OP_deref)), !dbg !2234
  call void @llvm.dbg.value(metadata i8** %15, metadata !2209, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2235
  %16 = load i8*, i8** %15, align 8, !dbg !2236
  br label %17, !dbg !2237

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2236
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2238
  %20 = bitcast i8* %18 to i8**, !dbg !2238
  %21 = load i8*, i8** %20, align 8, !dbg !2238
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2238
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2238
  br i1 %22, label %27, label %23, !dbg !2237

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2236
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2209, metadata !DIExpression()), !dbg !2235
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2239
  br i1 %26, label %30, label %17, !dbg !2242, !llvm.loop !2243

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 undef, metadata !2210, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2227
  %29 = icmp slt i64 %28, %7, !dbg !2228
  br i1 %29, label %8, label %38, !dbg !2229, !llvm.loop !2246

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1575, metadata !DIExpression()), !dbg !2250
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2252
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2252
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2253
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1584, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1589, metadata !DIExpression()), !dbg !2256
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2257
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2258
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2259
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1597, metadata !DIExpression()), !dbg !2261
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2263
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2264
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2265
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2266 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2295, !srcloc !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2271, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression()), !dbg !2298
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2299
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2273, metadata !DIExpression()), !dbg !2302
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2303
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2304
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2305
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2306
  br i1 %6, label %7, label %109, !dbg !2307

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2308
  %9 = icmp eq i64 %8, 0, !dbg !2314
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %10, metadata !2319, metadata !DIExpression()) #9, !dbg !2321
  %11 = icmp eq i64 %10, 0, !dbg !2322
  br i1 %11, label %17, label %12, !dbg !2324

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2325
  %14 = inttoptr i64 %13 to i16*, !dbg !2327
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2328
  %16 = zext i16 %15 to i32, !dbg !2328
  br label %17, !dbg !2329

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2330
  %19 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %19, metadata !2335, metadata !DIExpression()) #9, !dbg !2337
  %20 = icmp eq i64 %19, 0, !dbg !2338
  br i1 %20, label %25, label %21, !dbg !2340

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2341
  %23 = inttoptr i64 %22 to i16*, !dbg !2343
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2344
  br label %25, !dbg !2345

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2346

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2274, metadata !DIExpression()), !dbg !2347
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2348, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2107, metadata !DIExpression()) #9, !dbg !2348
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2106, metadata !DIExpression()) #9, !dbg !2350
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2280, metadata !DIExpression()), !dbg !2347
  %28 = tail call i32 @nk_vc_is_active() #10, !dbg !2351
  %29 = icmp eq i32 %28, 0, !dbg !2351
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2352
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %31, metadata !2359, metadata !DIExpression()) #9, !dbg !2363
  %32 = icmp eq i64 %31, 0, !dbg !2364
  br i1 %32, label %38, label %33, !dbg !2366

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2367
  %35 = inttoptr i64 %34 to i16*, !dbg !2369
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2370
  %37 = icmp eq i16 %36, 0, !dbg !2371
  br i1 %37, label %38, label %39, !dbg !2352

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2352

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2352
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2352
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2352
  br i1 %29, label %60, label %44, !dbg !2372

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2373

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2373
  %47 = load i64, i64* %46, align 32, !dbg !2373
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2373
  %49 = load i8, i8* %48, align 8, !dbg !2373
  %50 = icmp eq i8 %49, 0, !dbg !2373
  br i1 %50, label %51, label %56, !dbg !2373

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2373
  %53 = load i8, i8* %52, align 64, !dbg !2373
  %54 = icmp eq i8 %53, 0, !dbg !2373
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52, !dbg !2373
  br label %56, !dbg !2373

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ], !dbg !2373
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2373
  br label %76, !dbg !2373

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2374

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2374
  %63 = load i64, i64* %62, align 32, !dbg !2374
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2374
  %65 = load i8, i8* %64, align 8, !dbg !2374
  %66 = icmp eq i8 %65, 0, !dbg !2374
  br i1 %66, label %67, label %72, !dbg !2374

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2374
  %69 = load i8, i8* %68, align 64, !dbg !2374
  %70 = icmp eq i8 %69, 0, !dbg !2374
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68, !dbg !2374
  br label %72, !dbg !2374

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ], !dbg !2374
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2374
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %77, metadata !2379, metadata !DIExpression()) #9, !dbg !2381
  %78 = icmp eq i64 %77, 0, !dbg !2382
  br i1 %78, label %109, label %79, !dbg !2384

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2385
  %81 = inttoptr i64 %80 to i16*, !dbg !2387
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2388
  br label %109, !dbg !2389

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2293, metadata !DIExpression()), !dbg !2390
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !2391
  %85 = icmp eq i32 %84, 0, !dbg !2391
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %86, metadata !2359, metadata !DIExpression()) #9, !dbg !2398
  %87 = icmp eq i64 %86, 0, !dbg !2399
  br i1 %87, label %93, label %88, !dbg !2400

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2401
  %90 = inttoptr i64 %89 to i16*, !dbg !2402
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2403
  %92 = icmp eq i16 %91, 0, !dbg !2404
  br i1 %92, label %93, label %94, !dbg !2405

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2405

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2405
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2405
  br i1 %85, label %100, label %98, !dbg !2406

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2407
  br label %102, !dbg !2407

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2409
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2411
  call void @llvm.dbg.value(metadata i64 %103, metadata !2379, metadata !DIExpression()) #9, !dbg !2414
  %104 = icmp eq i64 %103, 0, !dbg !2415
  br i1 %104, label %109, label %105, !dbg !2416

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2417
  %107 = inttoptr i64 %106 to i16*, !dbg !2418
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2419
  br label %109, !dbg !2420

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2421
  ret i32 %110, !dbg !2422
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2423 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2455, !srcloc !2456
  call void @llvm.dbg.value(metadata i32 %1, metadata !2432, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %1, metadata !2430, metadata !DIExpression()), !dbg !2457
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #10, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2428, metadata !DIExpression()), !dbg !2458
  %3 = icmp eq i8* %2, null, !dbg !2459
  br i1 %3, label %4, label %106, !dbg !2460

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2461
  %6 = icmp eq i64 %5, 0, !dbg !2463
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %7, metadata !2319, metadata !DIExpression()) #9, !dbg !2467
  %8 = icmp eq i64 %7, 0, !dbg !2468
  br i1 %8, label %14, label %9, !dbg !2469

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2470
  %11 = inttoptr i64 %10 to i16*, !dbg !2471
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2472
  %13 = zext i16 %12 to i32, !dbg !2472
  br label %14, !dbg !2473

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2474
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %16, metadata !2335, metadata !DIExpression()) #9, !dbg !2478
  %17 = icmp eq i64 %16, 0, !dbg !2479
  br i1 %17, label %22, label %18, !dbg !2480

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2481
  %20 = inttoptr i64 %19 to i16*, !dbg !2482
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2483
  br label %22, !dbg !2484

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2485

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2434, metadata !DIExpression()), !dbg !2486
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2487, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2107, metadata !DIExpression()) #9, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2106, metadata !DIExpression()) #9, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2440, metadata !DIExpression()), !dbg !2486
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2490
  %26 = icmp eq i32 %25, 0, !dbg !2490
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2491
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %28, metadata !2359, metadata !DIExpression()) #9, !dbg !2496
  %29 = icmp eq i64 %28, 0, !dbg !2497
  br i1 %29, label %35, label %30, !dbg !2498

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2499
  %32 = inttoptr i64 %31 to i16*, !dbg !2500
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2501
  %34 = icmp eq i16 %33, 0, !dbg !2502
  br i1 %34, label %35, label %36, !dbg !2491

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2491

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2491
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2491
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2491
  br i1 %26, label %57, label %41, !dbg !2503

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2504

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2504
  %44 = load i64, i64* %43, align 32, !dbg !2504
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2504
  %46 = load i8, i8* %45, align 8, !dbg !2504
  %47 = icmp eq i8 %46, 0, !dbg !2504
  br i1 %47, label %48, label %53, !dbg !2504

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2504
  %50 = load i8, i8* %49, align 64, !dbg !2504
  %51 = icmp eq i8 %50, 0, !dbg !2504
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2504
  br label %53, !dbg !2504

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2504
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2504
  br label %73, !dbg !2504

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2505

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2505
  %60 = load i64, i64* %59, align 32, !dbg !2505
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2505
  %62 = load i8, i8* %61, align 8, !dbg !2505
  %63 = icmp eq i8 %62, 0, !dbg !2505
  br i1 %63, label %64, label %69, !dbg !2505

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2505
  %66 = load i8, i8* %65, align 64, !dbg !2505
  %67 = icmp eq i8 %66, 0, !dbg !2505
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2505
  br label %69, !dbg !2505

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2505
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2505
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %74, metadata !2379, metadata !DIExpression()) #9, !dbg !2509
  %75 = icmp eq i64 %74, 0, !dbg !2510
  br i1 %75, label %114, label %76, !dbg !2511

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2512
  %78 = inttoptr i64 %77 to i16*, !dbg !2513
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2514
  br label %114, !dbg !2515

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2453, metadata !DIExpression()), !dbg !2516
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2517
  %82 = icmp eq i32 %81, 0, !dbg !2517
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %83, metadata !2359, metadata !DIExpression()) #9, !dbg !2524
  %84 = icmp eq i64 %83, 0, !dbg !2525
  br i1 %84, label %90, label %85, !dbg !2526

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2527
  %87 = inttoptr i64 %86 to i16*, !dbg !2528
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2529
  %89 = icmp eq i16 %88, 0, !dbg !2530
  br i1 %89, label %90, label %91, !dbg !2531

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2531

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2531
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2531
  br i1 %82, label %97, label %95, !dbg !2532

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2533
  br label %99, !dbg !2533

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2535
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %100, metadata !2379, metadata !DIExpression()) #9, !dbg !2540
  %101 = icmp eq i64 %100, 0, !dbg !2541
  br i1 %101, label %114, label %102, !dbg !2542

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2543
  %104 = inttoptr i64 %103 to i16*, !dbg !2544
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2545
  br label %114, !dbg !2546

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2427, metadata !DIExpression()), !dbg !2548
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #10, !dbg !2549
  %109 = bitcast i8* %2 to i32*, !dbg !2550
  tail call void @spinlock_init(i32* %109) #10, !dbg !2551
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %110, metadata !1597, metadata !DIExpression()), !dbg !2553
  %111 = bitcast i8* %110 to i8**, !dbg !2555
  store i8* %110, i8** %111, align 8, !dbg !2555
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2556
  %113 = bitcast i8* %112 to i8**, !dbg !2557
  store i8* %110, i8** %113, align 8, !dbg !2557
  br label %115, !dbg !2558

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #10, !dbg !2559
  br label %115, !dbg !2560

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2561
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2562
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2563 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2606
  %2 = zext i32 %1 to i64, !dbg !2607
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2607
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2565, metadata !DIExpression()), !dbg !2608
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2609
  %6 = icmp eq i64 %5, 0, !dbg !2611
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %7, metadata !2319, metadata !DIExpression()) #9, !dbg !2615
  %8 = icmp eq i64 %7, 0, !dbg !2616
  br i1 %8, label %14, label %9, !dbg !2617

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2618
  %11 = inttoptr i64 %10 to i16*, !dbg !2619
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2620
  %13 = zext i16 %12 to i32, !dbg !2620
  br label %14, !dbg !2621

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2622
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %16, metadata !2335, metadata !DIExpression()) #9, !dbg !2626
  %17 = icmp eq i64 %16, 0, !dbg !2627
  br i1 %17, label %22, label %18, !dbg !2628

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2629
  %20 = inttoptr i64 %19 to i16*, !dbg !2630
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2631
  br label %22, !dbg !2632

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2633

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2566, metadata !DIExpression()), !dbg !2634
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2635, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2107, metadata !DIExpression()) #9, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2106, metadata !DIExpression()) #9, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2570, metadata !DIExpression()), !dbg !2634
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2638
  %26 = icmp eq i32 %25, 0, !dbg !2638
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2639
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %28, metadata !2359, metadata !DIExpression()) #9, !dbg !2644
  %29 = icmp eq i64 %28, 0, !dbg !2645
  br i1 %29, label %35, label %30, !dbg !2646

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2647
  %32 = inttoptr i64 %31 to i16*, !dbg !2648
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2649
  %34 = icmp eq i16 %33, 0, !dbg !2650
  br i1 %34, label %35, label %36, !dbg !2639

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2639

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2639
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2639
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2639
  br i1 %26, label %57, label %41, !dbg !2651

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2652

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2652
  %44 = load i64, i64* %43, align 32, !dbg !2652
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2652
  %46 = load i8, i8* %45, align 8, !dbg !2652
  %47 = icmp eq i8 %46, 0, !dbg !2652
  br i1 %47, label %48, label %53, !dbg !2652

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2652
  %50 = load i8, i8* %49, align 64, !dbg !2652
  %51 = icmp eq i8 %50, 0, !dbg !2652
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2652
  br label %53, !dbg !2652

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2652
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #10, !dbg !2652
  br label %73, !dbg !2652

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2653

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2653
  %60 = load i64, i64* %59, align 32, !dbg !2653
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2653
  %62 = load i8, i8* %61, align 8, !dbg !2653
  %63 = icmp eq i8 %62, 0, !dbg !2653
  br i1 %63, label %64, label %69, !dbg !2653

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2653
  %66 = load i8, i8* %65, align 64, !dbg !2653
  %67 = icmp eq i8 %66, 0, !dbg !2653
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2653
  br label %69, !dbg !2653

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2653
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #10, !dbg !2653
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %74, metadata !2379, metadata !DIExpression()) #9, !dbg !2657
  %75 = icmp eq i64 %74, 0, !dbg !2658
  br i1 %75, label %106, label %76, !dbg !2659

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2660
  %78 = inttoptr i64 %77 to i16*, !dbg !2661
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2662
  br label %106, !dbg !2663

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2583, metadata !DIExpression()), !dbg !2664
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2665
  %82 = icmp eq i32 %81, 0, !dbg !2665
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %83, metadata !2359, metadata !DIExpression()) #9, !dbg !2672
  %84 = icmp eq i64 %83, 0, !dbg !2673
  br i1 %84, label %90, label %85, !dbg !2674

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2675
  %87 = inttoptr i64 %86 to i16*, !dbg !2676
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2677
  %89 = icmp eq i16 %88, 0, !dbg !2678
  br i1 %89, label %90, label %91, !dbg !2679

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2679

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2679
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2679
  br i1 %82, label %97, label %95, !dbg !2680

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2681
  br label %99, !dbg !2681

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2683
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %100, metadata !2379, metadata !DIExpression()) #9, !dbg !2688
  %101 = icmp eq i64 %100, 0, !dbg !2689
  br i1 %101, label %106, label %102, !dbg !2690

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2691
  %104 = inttoptr i64 %103 to i16*, !dbg !2692
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2693
  br label %106, !dbg !2694

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2695
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2696
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2697
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2698
  br i1 %109, label %110, label %212, !dbg !2699

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2700
  %112 = icmp eq i64 %111, 0, !dbg !2702
  %113 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %113, metadata !2319, metadata !DIExpression()) #9, !dbg !2706
  %114 = icmp eq i64 %113, 0, !dbg !2707
  br i1 %114, label %120, label %115, !dbg !2708

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2709
  %117 = inttoptr i64 %116 to i16*, !dbg !2710
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2711
  %119 = zext i16 %118 to i32, !dbg !2711
  br label %120, !dbg !2712

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2713
  %122 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %122, metadata !2335, metadata !DIExpression()) #9, !dbg !2717
  %123 = icmp eq i64 %122, 0, !dbg !2718
  br i1 %123, label %128, label %124, !dbg !2719

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2720
  %126 = inttoptr i64 %125 to i16*, !dbg !2721
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2722
  br label %128, !dbg !2723

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2724

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2585, metadata !DIExpression()), !dbg !2725
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2726, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2107, metadata !DIExpression()) #9, !dbg !2726
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2106, metadata !DIExpression()) #9, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2591, metadata !DIExpression()), !dbg !2725
  %131 = tail call i32 @nk_vc_is_active() #10, !dbg !2729
  %132 = icmp eq i32 %131, 0, !dbg !2729
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2730
  %134 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %134, metadata !2359, metadata !DIExpression()) #9, !dbg !2735
  %135 = icmp eq i64 %134, 0, !dbg !2736
  br i1 %135, label %141, label %136, !dbg !2737

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2738
  %138 = inttoptr i64 %137 to i16*, !dbg !2739
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2740
  %140 = icmp eq i16 %139, 0, !dbg !2741
  br i1 %140, label %141, label %142, !dbg !2730

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2730

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2730
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2730
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2730
  br i1 %132, label %163, label %147, !dbg !2742

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2743

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2743
  %150 = load i64, i64* %149, align 32, !dbg !2743
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2743
  %152 = load i8, i8* %151, align 8, !dbg !2743
  %153 = icmp eq i8 %152, 0, !dbg !2743
  br i1 %153, label %154, label %159, !dbg !2743

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2743
  %156 = load i8, i8* %155, align 64, !dbg !2743
  %157 = icmp eq i8 %156, 0, !dbg !2743
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155, !dbg !2743
  br label %159, !dbg !2743

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ], !dbg !2743
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2743
  br label %179, !dbg !2743

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2744

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2744
  %166 = load i64, i64* %165, align 32, !dbg !2744
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2744
  %168 = load i8, i8* %167, align 8, !dbg !2744
  %169 = icmp eq i8 %168, 0, !dbg !2744
  br i1 %169, label %170, label %175, !dbg !2744

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2744
  %172 = load i8, i8* %171, align 64, !dbg !2744
  %173 = icmp eq i8 %172, 0, !dbg !2744
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171, !dbg !2744
  br label %175, !dbg !2744

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ], !dbg !2744
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2744
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %180, metadata !2379, metadata !DIExpression()) #9, !dbg !2748
  %181 = icmp eq i64 %180, 0, !dbg !2749
  br i1 %181, label %212, label %182, !dbg !2750

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2751
  %184 = inttoptr i64 %183 to i16*, !dbg !2752
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2753
  br label %212, !dbg !2754

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2604, metadata !DIExpression()), !dbg !2755
  %187 = tail call i32 @nk_vc_is_active() #10, !dbg !2756
  %188 = icmp eq i32 %187, 0, !dbg !2756
  %189 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %189, metadata !2359, metadata !DIExpression()) #9, !dbg !2763
  %190 = icmp eq i64 %189, 0, !dbg !2764
  br i1 %190, label %196, label %191, !dbg !2765

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2766
  %193 = inttoptr i64 %192 to i16*, !dbg !2767
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2768
  %195 = icmp eq i16 %194, 0, !dbg !2769
  br i1 %195, label %196, label %197, !dbg !2770

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2770

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2770
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2770
  br i1 %188, label %203, label %201, !dbg !2771

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2772
  br label %205, !dbg !2772

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2774
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %206, metadata !2379, metadata !DIExpression()) #9, !dbg !2779
  %207 = icmp eq i64 %206, 0, !dbg !2780
  br i1 %207, label %212, label %208, !dbg !2781

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2782
  %210 = inttoptr i64 %209 to i16*, !dbg !2783
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2784
  br label %212, !dbg !2785

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2786
  ret i32 %213, !dbg !2787
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2788 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2790, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8** undef, metadata !2791, metadata !DIExpression()), !dbg !2905
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2906, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2107, metadata !DIExpression()) #9, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2106, metadata !DIExpression()) #9, !dbg !2908
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2909
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.58, i64 0, i64 0)) #10, !dbg !2910
  %8 = icmp eq i32 %7, 0, !dbg !2910
  br i1 %8, label %111, label %9, !dbg !2911

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2912
  %11 = icmp eq i64 %10, 0, !dbg !2914
  %12 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %12, metadata !2319, metadata !DIExpression()) #9, !dbg !2918
  %13 = icmp eq i64 %12, 0, !dbg !2919
  br i1 %13, label %19, label %14, !dbg !2920

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2921
  %16 = inttoptr i64 %15 to i16*, !dbg !2922
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2923
  %18 = zext i16 %17 to i32, !dbg !2923
  br label %19, !dbg !2924

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2925
  %21 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %21, metadata !2335, metadata !DIExpression()) #9, !dbg !2929
  %22 = icmp eq i64 %21, 0, !dbg !2930
  br i1 %22, label %27, label %23, !dbg !2931

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2932
  %25 = inttoptr i64 %24 to i16*, !dbg !2933
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2934
  br label %27, !dbg !2935

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2936

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2792, metadata !DIExpression()), !dbg !2937
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2938, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2107, metadata !DIExpression()) #9, !dbg !2938
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2106, metadata !DIExpression()) #9, !dbg !2940
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2798, metadata !DIExpression()), !dbg !2937
  %30 = tail call i32 @nk_vc_is_active() #10, !dbg !2941
  %31 = icmp eq i32 %30, 0, !dbg !2941
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2942
  %33 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %33, metadata !2359, metadata !DIExpression()) #9, !dbg !2947
  %34 = icmp eq i64 %33, 0, !dbg !2948
  br i1 %34, label %40, label %35, !dbg !2949

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2950
  %37 = inttoptr i64 %36 to i16*, !dbg !2951
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2952
  %39 = icmp eq i16 %38, 0, !dbg !2953
  br i1 %39, label %40, label %41, !dbg !2942

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2942

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2942
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2942
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2942
  br i1 %31, label %62, label %46, !dbg !2954

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2955

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2955
  %49 = load i64, i64* %48, align 32, !dbg !2955
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2955
  %51 = load i8, i8* %50, align 8, !dbg !2955
  %52 = icmp eq i8 %51, 0, !dbg !2955
  br i1 %52, label %53, label %58, !dbg !2955

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2955
  %55 = load i8, i8* %54, align 64, !dbg !2955
  %56 = icmp eq i8 %55, 0, !dbg !2955
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54, !dbg !2955
  br label %58, !dbg !2955

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ], !dbg !2955
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2955
  br label %78, !dbg !2955

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2956

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2956
  %65 = load i64, i64* %64, align 32, !dbg !2956
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2956
  %67 = load i8, i8* %66, align 8, !dbg !2956
  %68 = icmp eq i8 %67, 0, !dbg !2956
  br i1 %68, label %69, label %74, !dbg !2956

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2956
  %71 = load i8, i8* %70, align 64, !dbg !2956
  %72 = icmp eq i8 %71, 0, !dbg !2956
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70, !dbg !2956
  br label %74, !dbg !2956

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ], !dbg !2956
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2956
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %79, metadata !2379, metadata !DIExpression()) #9, !dbg !2960
  %80 = icmp eq i64 %79, 0, !dbg !2961
  br i1 %80, label %449, label %81, !dbg !2962

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2963
  %83 = inttoptr i64 %82 to i16*, !dbg !2964
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2965
  br label %449, !dbg !2966

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2811, metadata !DIExpression()), !dbg !2967
  %86 = tail call i32 @nk_vc_is_active() #10, !dbg !2968
  %87 = icmp eq i32 %86, 0, !dbg !2968
  %88 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %88, metadata !2359, metadata !DIExpression()) #9, !dbg !2975
  %89 = icmp eq i64 %88, 0, !dbg !2976
  br i1 %89, label %95, label %90, !dbg !2977

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2978
  %92 = inttoptr i64 %91 to i16*, !dbg !2979
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2980
  %94 = icmp eq i16 %93, 0, !dbg !2981
  br i1 %94, label %95, label %96, !dbg !2982

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2982

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2982
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2982
  br i1 %87, label %102, label %100, !dbg !2983

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2984
  br label %104, !dbg !2984

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2986
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %105, metadata !2379, metadata !DIExpression()) #9, !dbg !2991
  %106 = icmp eq i64 %105, 0, !dbg !2992
  br i1 %106, label %449, label %107, !dbg !2993

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2994
  %109 = inttoptr i64 %108 to i16*, !dbg !2995
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2996
  br label %449, !dbg !2997

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2998
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #9, !dbg !2998
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2999
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2999
  store i64 100000000, i64* %113, align 8, !dbg !2999
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2813, metadata !DIExpression(DW_OP_deref)), !dbg !2999
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #10, !dbg !3000
  %115 = icmp eq i32 %114, 0, !dbg !3000
  %116 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3001
  br i1 %115, label %219, label %117, !dbg !3002

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !3003
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %119, metadata !2319, metadata !DIExpression()) #9, !dbg !3007
  %120 = icmp eq i64 %119, 0, !dbg !3008
  br i1 %120, label %126, label %121, !dbg !3009

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !3010
  %123 = inttoptr i64 %122 to i16*, !dbg !3011
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3012
  %125 = zext i16 %124 to i32, !dbg !3012
  br label %126, !dbg !3013

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !3014
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %128, metadata !2335, metadata !DIExpression()) #9, !dbg !3018
  %129 = icmp eq i64 %128, 0, !dbg !3019
  br i1 %129, label %134, label %130, !dbg !3020

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3021
  %132 = inttoptr i64 %131 to i16*, !dbg !3022
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3023
  br label %134, !dbg !3024

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !3025

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2839, metadata !DIExpression()), !dbg !3026
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3027, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2107, metadata !DIExpression()) #9, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2106, metadata !DIExpression()) #9, !dbg !3029
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2845, metadata !DIExpression()), !dbg !3026
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3030
  %138 = icmp eq i32 %137, 0, !dbg !3030
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3031
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %140, metadata !2359, metadata !DIExpression()) #9, !dbg !3036
  %141 = icmp eq i64 %140, 0, !dbg !3037
  br i1 %141, label %147, label %142, !dbg !3038

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3039
  %144 = inttoptr i64 %143 to i16*, !dbg !3040
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3041
  %146 = icmp eq i16 %145, 0, !dbg !3042
  br i1 %146, label %147, label %148, !dbg !3031

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !3031

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3031
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3031
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3031
  br i1 %138, label %169, label %153, !dbg !3043

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3044

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3044
  %156 = load i64, i64* %155, align 32, !dbg !3044
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3044
  %158 = load i8, i8* %157, align 8, !dbg !3044
  %159 = icmp eq i8 %158, 0, !dbg !3044
  br i1 %159, label %160, label %165, !dbg !3044

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3044
  %162 = load i8, i8* %161, align 64, !dbg !3044
  %163 = icmp eq i8 %162, 0, !dbg !3044
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3044
  br label %165, !dbg !3044

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3044
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !3044
  br label %185, !dbg !3044

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3045

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3045
  %172 = load i64, i64* %171, align 32, !dbg !3045
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3045
  %174 = load i8, i8* %173, align 8, !dbg !3045
  %175 = icmp eq i8 %174, 0, !dbg !3045
  br i1 %175, label %176, label %181, !dbg !3045

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3045
  %178 = load i8, i8* %177, align 64, !dbg !3045
  %179 = icmp eq i8 %178, 0, !dbg !3045
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3045
  br label %181, !dbg !3045

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3045
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !3045
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %186, metadata !2379, metadata !DIExpression()) #9, !dbg !3049
  %187 = icmp eq i64 %186, 0, !dbg !3050
  br i1 %187, label %218, label %188, !dbg !3051

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3052
  %190 = inttoptr i64 %189 to i16*, !dbg !3053
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3054
  br label %218, !dbg !3055

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2858, metadata !DIExpression()), !dbg !3056
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3057
  %194 = icmp eq i32 %193, 0, !dbg !3057
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %195, metadata !2359, metadata !DIExpression()) #9, !dbg !3064
  %196 = icmp eq i64 %195, 0, !dbg !3065
  br i1 %196, label %202, label %197, !dbg !3066

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3067
  %199 = inttoptr i64 %198 to i16*, !dbg !3068
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3069
  %201 = icmp eq i16 %200, 0, !dbg !3070
  br i1 %201, label %202, label %203, !dbg !3071

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3071

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3071
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3071
  br i1 %194, label %209, label %207, !dbg !3072

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !3073
  br label %211, !dbg !3073

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !3075
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %212, metadata !2379, metadata !DIExpression()) #9, !dbg !3080
  %213 = icmp eq i64 %212, 0, !dbg !3081
  br i1 %213, label %218, label %214, !dbg !3082

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3083
  %216 = inttoptr i64 %215 to i16*, !dbg !3084
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3085
  br label %218, !dbg !3086

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 526) #12, !dbg !3087
  unreachable, !dbg !3087

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3088
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3091
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3091
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2860, metadata !DIExpression()), !dbg !3092
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3093
  br i1 %223, label %224, label %326, !dbg !3094

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3095
  %226 = icmp eq i64 %225, 0, !dbg !3097
  %227 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %227, metadata !2319, metadata !DIExpression()) #9, !dbg !3101
  %228 = icmp eq i64 %227, 0, !dbg !3102
  br i1 %228, label %234, label %229, !dbg !3103

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3104
  %231 = inttoptr i64 %230 to i16*, !dbg !3105
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3106
  %233 = zext i16 %232 to i32, !dbg !3106
  br label %234, !dbg !3107

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3108
  %236 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %236, metadata !2335, metadata !DIExpression()) #9, !dbg !3112
  %237 = icmp eq i64 %236, 0, !dbg !3113
  br i1 %237, label %242, label %238, !dbg !3114

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3115
  %240 = inttoptr i64 %239 to i16*, !dbg !3116
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3117
  br label %242, !dbg !3118

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3119

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2861, metadata !DIExpression()), !dbg !3120
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3121, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2107, metadata !DIExpression()) #9, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2106, metadata !DIExpression()) #9, !dbg !3123
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2867, metadata !DIExpression()), !dbg !3120
  %245 = call i32 @nk_vc_is_active() #10, !dbg !3124
  %246 = icmp eq i32 %245, 0, !dbg !3124
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3125
  %248 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %248, metadata !2359, metadata !DIExpression()) #9, !dbg !3130
  %249 = icmp eq i64 %248, 0, !dbg !3131
  br i1 %249, label %255, label %250, !dbg !3132

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3133
  %252 = inttoptr i64 %251 to i16*, !dbg !3134
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3135
  %254 = icmp eq i16 %253, 0, !dbg !3136
  br i1 %254, label %255, label %256, !dbg !3125

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3125

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3125
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3125
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3125
  br i1 %246, label %277, label %261, !dbg !3137

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3138

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3138
  %264 = load i64, i64* %263, align 32, !dbg !3138
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3138
  %266 = load i8, i8* %265, align 8, !dbg !3138
  %267 = icmp eq i8 %266, 0, !dbg !3138
  br i1 %267, label %268, label %273, !dbg !3138

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3138
  %270 = load i8, i8* %269, align 64, !dbg !3138
  %271 = icmp eq i8 %270, 0, !dbg !3138
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269, !dbg !3138
  br label %273, !dbg !3138

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ], !dbg !3138
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3138
  br label %293, !dbg !3138

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3139

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3139
  %280 = load i64, i64* %279, align 32, !dbg !3139
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3139
  %282 = load i8, i8* %281, align 8, !dbg !3139
  %283 = icmp eq i8 %282, 0, !dbg !3139
  br i1 %283, label %284, label %289, !dbg !3139

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3139
  %286 = load i8, i8* %285, align 64, !dbg !3139
  %287 = icmp eq i8 %286, 0, !dbg !3139
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285, !dbg !3139
  br label %289, !dbg !3139

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ], !dbg !3139
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3139
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %294, metadata !2379, metadata !DIExpression()) #9, !dbg !3143
  %295 = icmp eq i64 %294, 0, !dbg !3144
  br i1 %295, label %326, label %296, !dbg !3145

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3146
  %298 = inttoptr i64 %297 to i16*, !dbg !3147
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3148
  br label %326, !dbg !3149

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2880, metadata !DIExpression()), !dbg !3150
  %301 = call i32 @nk_vc_is_active() #10, !dbg !3151
  %302 = icmp eq i32 %301, 0, !dbg !3151
  %303 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %303, metadata !2359, metadata !DIExpression()) #9, !dbg !3158
  %304 = icmp eq i64 %303, 0, !dbg !3159
  br i1 %304, label %310, label %305, !dbg !3160

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3161
  %307 = inttoptr i64 %306 to i16*, !dbg !3162
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3163
  %309 = icmp eq i16 %308, 0, !dbg !3164
  br i1 %309, label %310, label %311, !dbg !3165

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3165

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3165
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3165
  br i1 %302, label %317, label %315, !dbg !3166

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3167
  br label %319, !dbg !3167

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3169
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %320, metadata !2379, metadata !DIExpression()) #9, !dbg !3174
  %321 = icmp eq i64 %320, 0, !dbg !3175
  br i1 %321, label %326, label %322, !dbg !3176

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3177
  %324 = inttoptr i64 %323 to i16*, !dbg !3178
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3179
  br label %326, !dbg !3180

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3181, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2107, metadata !DIExpression()) #9, !dbg !3181
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2106, metadata !DIExpression()) #9, !dbg !3183
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3184
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3185
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3186
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !3187
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #11, !dbg !3188
  %331 = icmp slt i32 %330, 0, !dbg !3189
  br i1 %331, label %332, label %434, !dbg !3190

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3191
  %334 = icmp eq i64 %333, 0, !dbg !3193
  %335 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %335, metadata !2319, metadata !DIExpression()) #9, !dbg !3197
  %336 = icmp eq i64 %335, 0, !dbg !3198
  br i1 %336, label %342, label %337, !dbg !3199

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3200
  %339 = inttoptr i64 %338 to i16*, !dbg !3201
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3202
  %341 = zext i16 %340 to i32, !dbg !3202
  br label %342, !dbg !3203

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3204
  %344 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %344, metadata !2335, metadata !DIExpression()) #9, !dbg !3208
  %345 = icmp eq i64 %344, 0, !dbg !3209
  br i1 %345, label %350, label %346, !dbg !3210

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3211
  %348 = inttoptr i64 %347 to i16*, !dbg !3212
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3213
  br label %350, !dbg !3214

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3215

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2883, metadata !DIExpression()), !dbg !3216
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3217, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2107, metadata !DIExpression()) #9, !dbg !3217
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2106, metadata !DIExpression()) #9, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2889, metadata !DIExpression()), !dbg !3216
  %353 = call i32 @nk_vc_is_active() #10, !dbg !3220
  %354 = icmp eq i32 %353, 0, !dbg !3220
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3221
  %356 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %356, metadata !2359, metadata !DIExpression()) #9, !dbg !3226
  %357 = icmp eq i64 %356, 0, !dbg !3227
  br i1 %357, label %363, label %358, !dbg !3228

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3229
  %360 = inttoptr i64 %359 to i16*, !dbg !3230
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3231
  %362 = icmp eq i16 %361, 0, !dbg !3232
  br i1 %362, label %363, label %364, !dbg !3221

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3221

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3221
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3221
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3221
  br i1 %354, label %385, label %369, !dbg !3233

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3234

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3234
  %372 = load i64, i64* %371, align 32, !dbg !3234
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3234
  %374 = load i8, i8* %373, align 8, !dbg !3234
  %375 = icmp eq i8 %374, 0, !dbg !3234
  br i1 %375, label %376, label %381, !dbg !3234

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3234
  %378 = load i8, i8* %377, align 64, !dbg !3234
  %379 = icmp eq i8 %378, 0, !dbg !3234
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377, !dbg !3234
  br label %381, !dbg !3234

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ], !dbg !3234
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3234
  br label %401, !dbg !3234

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3235

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3235
  %388 = load i64, i64* %387, align 32, !dbg !3235
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3235
  %390 = load i8, i8* %389, align 8, !dbg !3235
  %391 = icmp eq i8 %390, 0, !dbg !3235
  br i1 %391, label %392, label %397, !dbg !3235

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3235
  %394 = load i8, i8* %393, align 64, !dbg !3235
  %395 = icmp eq i8 %394, 0, !dbg !3235
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393, !dbg !3235
  br label %397, !dbg !3235

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ], !dbg !3235
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3235
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %402, metadata !2379, metadata !DIExpression()) #9, !dbg !3239
  %403 = icmp eq i64 %402, 0, !dbg !3240
  br i1 %403, label %434, label %404, !dbg !3241

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3242
  %406 = inttoptr i64 %405 to i16*, !dbg !3243
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3244
  br label %434, !dbg !3245

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2902, metadata !DIExpression()), !dbg !3246
  %409 = call i32 @nk_vc_is_active() #10, !dbg !3247
  %410 = icmp eq i32 %409, 0, !dbg !3247
  %411 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %411, metadata !2359, metadata !DIExpression()) #9, !dbg !3254
  %412 = icmp eq i64 %411, 0, !dbg !3255
  br i1 %412, label %418, label %413, !dbg !3256

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3257
  %415 = inttoptr i64 %414 to i16*, !dbg !3258
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3259
  %417 = icmp eq i16 %416, 0, !dbg !3260
  br i1 %417, label %418, label %419, !dbg !3261

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3261

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3261
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3261
  br i1 %410, label %425, label %423, !dbg !3262

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3263
  br label %427, !dbg !3263

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3265
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %428, metadata !2379, metadata !DIExpression()) #9, !dbg !3270
  %429 = icmp eq i64 %428, 0, !dbg !3271
  br i1 %429, label %434, label %430, !dbg !3272

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3273
  %432 = inttoptr i64 %431 to i16*, !dbg !3274
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3275
  br label %434, !dbg !3276

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3277
  %436 = load i64, i64* %435, align 8, !dbg !3277
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !3187
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3278
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3279
  store i64 %436, i64* %438, align 8, !dbg !3279
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !3187
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3280
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3281
  store i64 %436, i64* %440, align 8, !dbg !3281
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2882, metadata !DIExpression()), !dbg !3187
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3283
  store i32 1, i32* %442, align 8, !dbg !3284
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2882, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1902, metadata !DIExpression()) #9, !dbg !3285
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3287
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3287
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3288
  %446 = load i8*, i8** %445, align 8, !dbg !3288
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3289
  %448 = load i8**, i8*** %447, align 8, !dbg !3289
  call void %444(i8* %446, i8** %448) #10, !dbg !3290
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #10, !dbg !3291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #9, !dbg !3292
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3292
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8** %1, metadata !3296, metadata !DIExpression()), !dbg !3298
  br label %3, !dbg !3299

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #11, !dbg !3300
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3302
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !3307
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !3308
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !3308
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !3309
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !3310, metadata !DIExpression()), !dbg !3314
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !3316
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !3313, metadata !DIExpression()), !dbg !3317
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !3318
  br i1 %12, label %13, label %17, !dbg !3319

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !3320
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !3320
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !3321
  br i1 %16, label %18, label %17, !dbg !3322

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !3300, !llvm.loop !3323

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #10, !dbg !3325
  br label %17, !dbg !3327
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3328 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3333, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3334, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8** %2, metadata !3335, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %3, metadata !3336, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3337, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !3338, metadata !DIExpression()), !dbg !3349
  %6 = icmp eq i64 %3, 0, !dbg !3350
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %7, metadata !3339, metadata !DIExpression()), !dbg !3351
  %8 = tail call i8* @kmem_malloc(i64 152) #10, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %8, metadata !3340, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %8, metadata !3338, metadata !DIExpression()), !dbg !3349
  %9 = icmp eq i8* %8, null, !dbg !3353
  br i1 %9, label %104, label %10, !dbg !3355

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #10, !dbg !3356
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3357
  %13 = bitcast i8* %12 to i32*, !dbg !3357
  store i32 0, i32* %13, align 4, !dbg !3358
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3359
  %15 = bitcast i8* %14 to i64*, !dbg !3359
  store i64 %7, i64* %15, align 8, !dbg !3360
  %16 = tail call i8* @kmem_malloc(i64 %7) #10, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %16, metadata !3342, metadata !DIExpression()), !dbg !3361
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3362
  %18 = bitcast i8* %17 to i8**, !dbg !3362
  store i8* %16, i8** %18, align 8, !dbg !3363
  %19 = icmp eq i8* %16, null, !dbg !3364
  br i1 %19, label %20, label %21, !dbg !3366

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #10, !dbg !3367
  br label %104, !dbg !3369

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3366
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3370
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3370
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3371
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3372
  %26 = bitcast i8* %25 to i8**, !dbg !3372
  store i8* %1, i8** %26, align 8, !dbg !3373
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3374
  %28 = bitcast i8* %27 to i8***, !dbg !3374
  store i8** %2, i8*** %28, align 8, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %8, metadata !1912, metadata !DIExpression()), !dbg !3376
  %29 = load i64, i64* %15, align 8, !dbg !3378
  %30 = bitcast i8* %8 to i64*, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1532, metadata !DIExpression()), !dbg !3382
  %31 = add i64 %22, -8, !dbg !3383
  %32 = add i64 %31, %29, !dbg !3384
  store i64 %32, i64* %30, align 8, !dbg !3384
  %33 = inttoptr i64 %32 to i64*, !dbg !3385
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3389
  %34 = load i64, i64* %30, align 8, !dbg !3390
  %35 = add i64 %34, -8, !dbg !3390
  store i64 %35, i64* %30, align 8, !dbg !3390
  %36 = inttoptr i64 %35 to i64*, !dbg !3391
  store i64 0, i64* %36, align 8, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3395
  %37 = load i64, i64* %30, align 8, !dbg !3396
  %38 = add i64 %37, -8, !dbg !3396
  store i64 %38, i64* %30, align 8, !dbg !3396
  %39 = inttoptr i64 %38 to i64*, !dbg !3397
  store i64 0, i64* %39, align 8, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3401
  %40 = load i64, i64* %30, align 8, !dbg !3402
  %41 = add i64 %40, -8, !dbg !3402
  store i64 %41, i64* %30, align 8, !dbg !3402
  %42 = inttoptr i64 %41 to i64*, !dbg !3403
  store i64 0, i64* %42, align 8, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3407
  %43 = load i64, i64* %30, align 8, !dbg !3408
  %44 = add i64 %43, -8, !dbg !3408
  store i64 %44, i64* %30, align 8, !dbg !3408
  %45 = inttoptr i64 %44 to i64*, !dbg !3409
  store i64 0, i64* %45, align 8, !dbg !3410
  call void @llvm.dbg.value(metadata i8* %8, metadata !1531, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3413
  %46 = load i64, i64* %30, align 8, !dbg !3414
  %47 = add i64 %46, -8, !dbg !3414
  store i64 %47, i64* %30, align 8, !dbg !3414
  %48 = inttoptr i64 %47 to i64*, !dbg !3415
  store i64 0, i64* %48, align 8, !dbg !3416
  %49 = ptrtoint i8* %8 to i64, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %49, metadata !1532, metadata !DIExpression()), !dbg !3420
  %50 = load i64, i64* %30, align 8, !dbg !3421
  %51 = add i64 %50, -8, !dbg !3421
  store i64 %51, i64* %30, align 8, !dbg !3421
  %52 = inttoptr i64 %51 to i64*, !dbg !3422
  store i64 %49, i64* %52, align 8, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3426
  %53 = load i64, i64* %30, align 8, !dbg !3427
  %54 = add i64 %53, -8, !dbg !3427
  store i64 %54, i64* %30, align 8, !dbg !3427
  %55 = inttoptr i64 %54 to i64*, !dbg !3428
  store i64 0, i64* %55, align 8, !dbg !3429
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3432
  %56 = load i64, i64* %30, align 8, !dbg !3433
  %57 = add i64 %56, -8, !dbg !3433
  store i64 %57, i64* %30, align 8, !dbg !3433
  %58 = inttoptr i64 %57 to i64*, !dbg !3434
  store i64 0, i64* %58, align 8, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3438
  %59 = load i64, i64* %30, align 8, !dbg !3439
  %60 = add i64 %59, -8, !dbg !3439
  store i64 %60, i64* %30, align 8, !dbg !3439
  %61 = inttoptr i64 %60 to i64*, !dbg !3440
  store i64 0, i64* %61, align 8, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3444
  %62 = load i64, i64* %30, align 8, !dbg !3445
  %63 = add i64 %62, -8, !dbg !3445
  store i64 %63, i64* %30, align 8, !dbg !3445
  %64 = inttoptr i64 %63 to i64*, !dbg !3446
  store i64 0, i64* %64, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3450
  %65 = load i64, i64* %30, align 8, !dbg !3451
  %66 = add i64 %65, -8, !dbg !3451
  store i64 %66, i64* %30, align 8, !dbg !3451
  %67 = inttoptr i64 %66 to i64*, !dbg !3452
  store i64 0, i64* %67, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3456
  %68 = load i64, i64* %30, align 8, !dbg !3457
  %69 = add i64 %68, -8, !dbg !3457
  store i64 %69, i64* %30, align 8, !dbg !3457
  %70 = inttoptr i64 %69 to i64*, !dbg !3458
  store i64 0, i64* %70, align 8, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3462
  %71 = load i64, i64* %30, align 8, !dbg !3463
  %72 = add i64 %71, -8, !dbg !3463
  store i64 %72, i64* %30, align 8, !dbg !3463
  %73 = inttoptr i64 %72 to i64*, !dbg !3464
  store i64 0, i64* %73, align 8, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3468
  %74 = load i64, i64* %30, align 8, !dbg !3469
  %75 = add i64 %74, -8, !dbg !3469
  store i64 %75, i64* %30, align 8, !dbg !3469
  %76 = inttoptr i64 %75 to i64*, !dbg !3470
  store i64 0, i64* %76, align 8, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %49, metadata !1531, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !3474
  %77 = load i64, i64* %30, align 8, !dbg !3475
  %78 = add i64 %77, -8, !dbg !3475
  store i64 %78, i64* %30, align 8, !dbg !3475
  %79 = inttoptr i64 %78 to i64*, !dbg !3476
  store i64 0, i64* %79, align 8, !dbg !3477
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3478
  br i1 %80, label %83, label %81, !dbg !3480

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3481
  store i8* %8, i8** %82, align 8, !dbg !3481
  br label %83, !dbg !3483

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3484, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2107, metadata !DIExpression()) #9, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2106, metadata !DIExpression()) #9, !dbg !3486
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3487
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3487
  %87 = load i64, i64* %86, align 8, !dbg !3487
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3488
  %89 = bitcast i8* %88 to i64*, !dbg !3489
  store i64 %87, i64* %89, align 8, !dbg !3489
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %90, metadata !1597, metadata !DIExpression()), !dbg !3491
  %91 = bitcast i8* %90 to i8**, !dbg !3493
  store i8* %90, i8** %91, align 8, !dbg !3493
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3494
  %93 = bitcast i8* %92 to i8**, !dbg !3495
  store i8* %90, i8** %93, align 8, !dbg !3495
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3496
  %95 = bitcast i8* %94 to i32*, !dbg !3496
  store i32 0, i32* %95, align 8, !dbg !3497
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %96, metadata !1597, metadata !DIExpression()), !dbg !3499
  %97 = bitcast i8* %96 to i8**, !dbg !3501
  store i8* %96, i8** %97, align 8, !dbg !3501
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3502
  %99 = bitcast i8* %98 to i8**, !dbg !3503
  store i8* %96, i8** %99, align 8, !dbg !3503
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %100, metadata !1597, metadata !DIExpression()), !dbg !3505
  %101 = bitcast i8* %100 to i8**, !dbg !3507
  store i8* %100, i8** %101, align 8, !dbg !3507
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3508
  %103 = bitcast i8* %102 to i8**, !dbg !3509
  store i8* %100, i8** %103, align 8, !dbg !3509
  br label %104, !dbg !3510

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3511
  ret i32 %105, !dbg !3512
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !3513 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3516
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3521
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3522
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3522
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3523
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3523
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3524, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2107, metadata !DIExpression()) #9, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2106, metadata !DIExpression()) #9, !dbg !3526
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3527
  br i1 %8, label %9, label %54, !dbg !3528

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3529
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3534
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3535
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3535
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1542, metadata !DIExpression()) #9, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1543, metadata !DIExpression()) #9, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1563, metadata !DIExpression()) #9, !dbg !3539
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3541
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3541
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3542
  br i1 %17, label %30, label %18, !dbg !3543

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !3544
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3544
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1544, metadata !DIExpression()) #9, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1543, metadata !DIExpression()) #9, !dbg !3538
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1575, metadata !DIExpression()) #9, !dbg !3546
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3548
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3548
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1584, metadata !DIExpression()) #9, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1589, metadata !DIExpression()) #9, !dbg !3552
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3553
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3554
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3555
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1597, metadata !DIExpression()) #9, !dbg !3557
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3559
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3559
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3560
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3560
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1543, metadata !DIExpression()) #9, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3515, metadata !DIExpression()), !dbg !3561
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3562
  br i1 %29, label %30, label %51, !dbg !3564

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3565
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3571
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3572
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3572
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3573
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3573
  %37 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3574
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3578
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3579
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3579
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3580
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3580
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3581
  br i1 %43, label %54, label %44, !dbg !3582

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3583
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3588
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3589
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3589
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3590
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3515, metadata !DIExpression()), !dbg !3561
  br label %51, !dbg !3591

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3592
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3515, metadata !DIExpression()), !dbg !3561
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #11, !dbg !3593
  br label %54, !dbg !3594

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3592
  ret i32 %55, !dbg !3595
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3596 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3639
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3641
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3598, metadata !DIExpression()), !dbg !3642
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3643
  %5 = icmp eq i64 %4, 0, !dbg !3645
  %6 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %6, metadata !2319, metadata !DIExpression()) #9, !dbg !3649
  %7 = icmp eq i64 %6, 0, !dbg !3650
  br i1 %7, label %13, label %8, !dbg !3651

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3652
  %10 = inttoptr i64 %9 to i16*, !dbg !3653
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3654
  %12 = zext i16 %11 to i32, !dbg !3654
  br label %13, !dbg !3655

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3656
  %15 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %15, metadata !2335, metadata !DIExpression()) #9, !dbg !3660
  %16 = icmp eq i64 %15, 0, !dbg !3661
  br i1 %16, label %21, label %17, !dbg !3662

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3663
  %19 = inttoptr i64 %18 to i16*, !dbg !3664
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3665
  br label %21, !dbg !3666

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3667

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3599, metadata !DIExpression()), !dbg !3668
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3669, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2107, metadata !DIExpression()) #9, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2106, metadata !DIExpression()) #9, !dbg !3671
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3603, metadata !DIExpression()), !dbg !3668
  %24 = tail call i32 @nk_vc_is_active() #10, !dbg !3672
  %25 = icmp eq i32 %24, 0, !dbg !3672
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3673
  %27 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %27, metadata !2359, metadata !DIExpression()) #9, !dbg !3678
  %28 = icmp eq i64 %27, 0, !dbg !3679
  br i1 %28, label %34, label %29, !dbg !3680

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3681
  %31 = inttoptr i64 %30 to i16*, !dbg !3682
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3683
  %33 = icmp eq i16 %32, 0, !dbg !3684
  br i1 %33, label %34, label %35, !dbg !3673

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3673

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3673
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3673
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3673
  br i1 %25, label %58, label %40, !dbg !3685

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3686

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3686
  %43 = load i64, i64* %42, align 32, !dbg !3686
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3686
  %45 = load i8, i8* %44, align 8, !dbg !3686
  %46 = icmp eq i8 %45, 0, !dbg !3686
  br i1 %46, label %47, label %52, !dbg !3686

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3686
  %49 = load i8, i8* %48, align 64, !dbg !3686
  %50 = icmp eq i8 %49, 0, !dbg !3686
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48, !dbg !3686
  br label %52, !dbg !3686

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ], !dbg !3686
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3686
  %56 = load i32, i32* %55, align 8, !dbg !3686
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.72, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #10, !dbg !3686
  br label %76, !dbg !3686

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3687

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3687
  %61 = load i64, i64* %60, align 32, !dbg !3687
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3687
  %63 = load i8, i8* %62, align 8, !dbg !3687
  %64 = icmp eq i8 %63, 0, !dbg !3687
  br i1 %64, label %65, label %70, !dbg !3687

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3687
  %67 = load i8, i8* %66, align 64, !dbg !3687
  %68 = icmp eq i8 %67, 0, !dbg !3687
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66, !dbg !3687
  br label %70, !dbg !3687

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ], !dbg !3687
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3687
  %74 = load i32, i32* %73, align 8, !dbg !3687
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.72, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #10, !dbg !3687
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %77, metadata !2379, metadata !DIExpression()) #9, !dbg !3691
  %78 = icmp eq i64 %77, 0, !dbg !3692
  br i1 %78, label %111, label %79, !dbg !3693

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3694
  %81 = inttoptr i64 %80 to i16*, !dbg !3695
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3696
  br label %111, !dbg !3697

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3616, metadata !DIExpression()), !dbg !3698
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !3699
  %85 = icmp eq i32 %84, 0, !dbg !3699
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %86, metadata !2359, metadata !DIExpression()) #9, !dbg !3706
  %87 = icmp eq i64 %86, 0, !dbg !3707
  br i1 %87, label %93, label %88, !dbg !3708

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3709
  %90 = inttoptr i64 %89 to i16*, !dbg !3710
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3711
  %92 = icmp eq i16 %91, 0, !dbg !3712
  br i1 %92, label %93, label %94, !dbg !3713

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3713

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3713
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3713
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3713
  %99 = load i32, i32* %98, align 8, !dbg !3713
  br i1 %85, label %102, label %100, !dbg !3714

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.73, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3715
  br label %104, !dbg !3715

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.73, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3717
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %105, metadata !2379, metadata !DIExpression()) #9, !dbg !3722
  %106 = icmp eq i64 %105, 0, !dbg !3723
  br i1 %106, label %111, label %107, !dbg !3724

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3725
  %109 = inttoptr i64 %108 to i16*, !dbg !3726
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3727
  br label %111, !dbg !3728

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3729
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3760, !srcloc !3761
  call void @llvm.dbg.value(metadata i32 %113, metadata !3737, metadata !DIExpression()) #9, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %113, metadata !3734, metadata !DIExpression()) #9, !dbg !3762
  call void @llvm.dbg.value(metadata i8** %1, metadata !3732, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3763
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #10, !dbg !3764
  %115 = icmp eq i32 %114, 0, !dbg !3764
  br i1 %115, label %321, label %116, !dbg !3765

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3766
  %118 = icmp eq i64 %117, 0, !dbg !3768
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %119, metadata !2319, metadata !DIExpression()) #9, !dbg !3772
  %120 = icmp eq i64 %119, 0, !dbg !3773
  br i1 %120, label %126, label %121, !dbg !3774

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3775
  %123 = inttoptr i64 %122 to i16*, !dbg !3776
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3777
  %125 = zext i16 %124 to i32, !dbg !3777
  br label %126, !dbg !3778

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3779
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %128, metadata !2335, metadata !DIExpression()) #9, !dbg !3783
  %129 = icmp eq i64 %128, 0, !dbg !3784
  br i1 %129, label %134, label %130, !dbg !3785

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3786
  %132 = inttoptr i64 %131 to i16*, !dbg !3787
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3788
  br label %134, !dbg !3789

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3790

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3739, metadata !DIExpression()) #9, !dbg !3791
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3792, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2107, metadata !DIExpression()) #9, !dbg !3792
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2106, metadata !DIExpression()) #9, !dbg !3794
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3744, metadata !DIExpression()) #9, !dbg !3791
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3795
  %138 = icmp eq i32 %137, 0, !dbg !3795
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3796
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3797
  call void @llvm.dbg.value(metadata i64 %140, metadata !2359, metadata !DIExpression()) #9, !dbg !3801
  %141 = icmp eq i64 %140, 0, !dbg !3802
  br i1 %141, label %147, label %142, !dbg !3803

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3804
  %144 = inttoptr i64 %143 to i16*, !dbg !3805
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3806
  %146 = icmp eq i16 %145, 0, !dbg !3807
  br i1 %146, label %147, label %148, !dbg !3796

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3796

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3796
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3796
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3796
  br i1 %138, label %169, label %153, !dbg !3808

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3809

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3809
  %156 = load i64, i64* %155, align 32, !dbg !3809
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3809
  %158 = load i8, i8* %157, align 8, !dbg !3809
  %159 = icmp eq i8 %158, 0, !dbg !3809
  br i1 %159, label %160, label %165, !dbg !3809

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3809
  %162 = load i8, i8* %161, align 64, !dbg !3809
  %163 = icmp eq i8 %162, 0, !dbg !3809
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3809
  br label %165, !dbg !3809

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3809
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.74, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3809
  br label %185, !dbg !3809

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3810

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3810
  %172 = load i64, i64* %171, align 32, !dbg !3810
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3810
  %174 = load i8, i8* %173, align 8, !dbg !3810
  %175 = icmp eq i8 %174, 0, !dbg !3810
  br i1 %175, label %176, label %181, !dbg !3810

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3810
  %178 = load i8, i8* %177, align 64, !dbg !3810
  %179 = icmp eq i8 %178, 0, !dbg !3810
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3810
  br label %181, !dbg !3810

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3810
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.74, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3810
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %186, metadata !2379, metadata !DIExpression()) #9, !dbg !3814
  %187 = icmp eq i64 %186, 0, !dbg !3815
  br i1 %187, label %218, label %188, !dbg !3816

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3817
  %190 = inttoptr i64 %189 to i16*, !dbg !3818
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3819
  br label %218, !dbg !3820

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3757, metadata !DIExpression()) #9, !dbg !3821
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3822
  %194 = icmp eq i32 %193, 0, !dbg !3822
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %195, metadata !2359, metadata !DIExpression()) #9, !dbg !3829
  %196 = icmp eq i64 %195, 0, !dbg !3830
  br i1 %196, label %202, label %197, !dbg !3831

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3832
  %199 = inttoptr i64 %198 to i16*, !dbg !3833
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3834
  %201 = icmp eq i16 %200, 0, !dbg !3835
  br i1 %201, label %202, label %203, !dbg !3836

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3836

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3836
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3836
  br i1 %194, label %209, label %207, !dbg !3837

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.75, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3838
  br label %211, !dbg !3838

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.75, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3840
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3842
  call void @llvm.dbg.value(metadata i64 %212, metadata !2379, metadata !DIExpression()) #9, !dbg !3845
  %213 = icmp eq i64 %212, 0, !dbg !3846
  br i1 %213, label %218, label %214, !dbg !3847

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3848
  %216 = inttoptr i64 %215 to i16*, !dbg !3849
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3850
  br label %218, !dbg !3851

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3852
  %219 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3853
  %220 = icmp eq i64 %219, 0, !dbg !3855
  %221 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3856
  call void @llvm.dbg.value(metadata i64 %221, metadata !2319, metadata !DIExpression()) #9, !dbg !3859
  %222 = icmp eq i64 %221, 0, !dbg !3860
  br i1 %222, label %228, label %223, !dbg !3861

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3862
  %225 = inttoptr i64 %224 to i16*, !dbg !3863
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3864
  %227 = zext i16 %226 to i32, !dbg !3864
  br label %228, !dbg !3865

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3866
  %230 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %230, metadata !2335, metadata !DIExpression()) #9, !dbg !3870
  %231 = icmp eq i64 %230, 0, !dbg !3871
  br i1 %231, label %236, label %232, !dbg !3872

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3873
  %234 = inttoptr i64 %233 to i16*, !dbg !3874
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3875
  br label %236, !dbg !3876

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3877

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3618, metadata !DIExpression()), !dbg !3878
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3879, !srcloc !2109
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2107, metadata !DIExpression()) #9, !dbg !3879
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2106, metadata !DIExpression()) #9, !dbg !3881
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3624, metadata !DIExpression()), !dbg !3878
  %239 = call i32 @nk_vc_is_active() #10, !dbg !3882
  %240 = icmp eq i32 %239, 0, !dbg !3882
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3883
  %242 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %242, metadata !2359, metadata !DIExpression()) #9, !dbg !3888
  %243 = icmp eq i64 %242, 0, !dbg !3889
  br i1 %243, label %249, label %244, !dbg !3890

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3891
  %246 = inttoptr i64 %245 to i16*, !dbg !3892
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3893
  %248 = icmp eq i16 %247, 0, !dbg !3894
  br i1 %248, label %249, label %250, !dbg !3883

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3883

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3883
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3883
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3883
  br i1 %240, label %271, label %255, !dbg !3895

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3896

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3896
  %258 = load i64, i64* %257, align 32, !dbg !3896
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3896
  %260 = load i8, i8* %259, align 8, !dbg !3896
  %261 = icmp eq i8 %260, 0, !dbg !3896
  br i1 %261, label %262, label %267, !dbg !3896

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3896
  %264 = load i8, i8* %263, align 64, !dbg !3896
  %265 = icmp eq i8 %264, 0, !dbg !3896
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263, !dbg !3896
  br label %267, !dbg !3896

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ], !dbg !3896
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.76, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3896
  br label %287, !dbg !3896

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3897

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3897
  %274 = load i64, i64* %273, align 32, !dbg !3897
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3897
  %276 = load i8, i8* %275, align 8, !dbg !3897
  %277 = icmp eq i8 %276, 0, !dbg !3897
  br i1 %277, label %278, label %283, !dbg !3897

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3897
  %280 = load i8, i8* %279, align 64, !dbg !3897
  %281 = icmp eq i8 %280, 0, !dbg !3897
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279, !dbg !3897
  br label %283, !dbg !3897

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ], !dbg !3897
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.76, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3897
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %288, metadata !2379, metadata !DIExpression()) #9, !dbg !3901
  %289 = icmp eq i64 %288, 0, !dbg !3902
  br i1 %289, label %320, label %290, !dbg !3903

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3904
  %292 = inttoptr i64 %291 to i16*, !dbg !3905
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3906
  br label %320, !dbg !3907

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3637, metadata !DIExpression()), !dbg !3908
  %295 = call i32 @nk_vc_is_active() #10, !dbg !3909
  %296 = icmp eq i32 %295, 0, !dbg !3909
  %297 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %297, metadata !2359, metadata !DIExpression()) #9, !dbg !3916
  %298 = icmp eq i64 %297, 0, !dbg !3917
  br i1 %298, label %304, label %299, !dbg !3918

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3919
  %301 = inttoptr i64 %300 to i16*, !dbg !3920
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3921
  %303 = icmp eq i16 %302, 0, !dbg !3922
  br i1 %303, label %304, label %305, !dbg !3923

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3923

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3923
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3923
  br i1 %296, label %311, label %309, !dbg !3924

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.77, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3925
  br label %313, !dbg !3925

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.77, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3927
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3929
  call void @llvm.dbg.value(metadata i64 %314, metadata !2379, metadata !DIExpression()) #9, !dbg !3932
  %315 = icmp eq i64 %314, 0, !dbg !3933
  br i1 %315, label %320, label %316, !dbg !3934

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3935
  %318 = inttoptr i64 %317 to i16*, !dbg !3936
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3937
  br label %320, !dbg !3938

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.78, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 576) #12, !dbg !3939
  unreachable, !dbg !3939

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3852
  ret void, !dbg !3940
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3941 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3945, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i8* %1, metadata !3946, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8** %2, metadata !3947, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %3, metadata !3948, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8 %4, metadata !3949, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3950, metadata !DIExpression()), !dbg !3956
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #11, !dbg !3957
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3958
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #11, !dbg !3959
  ret i32 0, !dbg !3960
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3961 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.81, i64 0, i64 0)) #10, !dbg !3962
  %2 = tail call i32 @nk_fiber_yield() #11, !dbg !3963
  ret i32 %2, !dbg !3964
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3965 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2201, metadata !DIExpression()) #9, !dbg !3972
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !3974, !srcloc !2222
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2205, metadata !DIExpression()) #9, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2203, metadata !DIExpression()) #9, !dbg !3975
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2202, metadata !DIExpression()) #9, !dbg !3976
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3977
  %4 = load i32, i32* %3, align 8, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %4, metadata !2207, metadata !DIExpression()) #9, !dbg !3978
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()) #9, !dbg !3979
  %5 = icmp sgt i32 %4, 0, !dbg !3980
  br i1 %5, label %6, label %30, !dbg !3981

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3982
  br label %8, !dbg !3982

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2210, metadata !DIExpression()) #9, !dbg !3979
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3982
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3982
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3983
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3983
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3984
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2208, metadata !DIExpression()) #9, !dbg !3985
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3986
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2212, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3986
  call void @llvm.dbg.value(metadata i8** %15, metadata !2209, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !3987
  %16 = load i8*, i8** %15, align 8, !dbg !3988
  br label %17, !dbg !3989

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3988
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3990
  %20 = bitcast i8* %18 to i8**, !dbg !3990
  %21 = load i8*, i8** %20, align 8, !dbg !3990
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #9, !dbg !3990
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3990
  br i1 %22, label %27, label %23, !dbg !3989

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3988
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2209, metadata !DIExpression()) #9, !dbg !3987
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3991
  br i1 %26, label %75, label %17, !dbg !3992, !llvm.loop !2243

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3993
  call void @llvm.dbg.value(metadata i32 undef, metadata !2210, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !3979
  %29 = icmp slt i64 %28, %7, !dbg !3980
  br i1 %29, label %8, label %30, !dbg !3981, !llvm.loop !2246

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3994
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3999
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4000
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4000
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4001
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1542, metadata !DIExpression()) #9, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1543, metadata !DIExpression()) #9, !dbg !4003
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1563, metadata !DIExpression()) #9, !dbg !4004
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4006
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4006
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4007
  br i1 %38, label %51, label %39, !dbg !4008

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1544, metadata !DIExpression()) #9, !dbg !4009
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4009
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4009
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1544, metadata !DIExpression()) #9, !dbg !4009
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1543, metadata !DIExpression()) #9, !dbg !4003
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4010
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1575, metadata !DIExpression()) #9, !dbg !4011
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4013
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4013
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1584, metadata !DIExpression()) #9, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1589, metadata !DIExpression()) #9, !dbg !4017
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4018
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4019
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4020
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4021
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1597, metadata !DIExpression()) #9, !dbg !4022
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4024
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4024
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4025
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4025
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1543, metadata !DIExpression()) #9, !dbg !4003
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3968, metadata !DIExpression()), !dbg !4026
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4027
  br i1 %50, label %51, label %72, !dbg !4029

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4030
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4036
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4037
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4037
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4038
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4038
  %58 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4039
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4043
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4044
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4044
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4045
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4045
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4046
  br i1 %64, label %84, label %65, !dbg !4047

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4048
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4053
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4054
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4054
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4055
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4055
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3968, metadata !DIExpression()), !dbg !4026
  br label %72, !dbg !4056

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4057
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3968, metadata !DIExpression()), !dbg !4026
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #11, !dbg !4058
  br label %84, !dbg !4059

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4060
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1575, metadata !DIExpression()) #9, !dbg !4061
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4063
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4063
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4064
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4064
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1584, metadata !DIExpression()) #9, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1589, metadata !DIExpression()) #9, !dbg !4067
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4068
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4069
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4070
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1597, metadata !DIExpression()) #9, !dbg !4072
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4074
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4075
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4076
  br label %84, !dbg !4077

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4078
  ret i32 %85, !dbg !4079
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4080 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %1, metadata !4088, metadata !DIExpression()), !dbg !4090
  %3 = tail call zeroext i8 %0(i8* %1) #10, !dbg !4091
  %4 = icmp eq i8 %3, 0, !dbg !4091
  br i1 %4, label %7, label %5, !dbg !4093

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #11, !dbg !4094
  br label %7, !dbg !4096

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !4097
  ret i32 %8, !dbg !4098
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4099 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4103, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i8* %2, metadata !4105, metadata !DIExpression()), !dbg !4108
  %4 = tail call zeroext i8 %1(i8* %2) #10, !dbg !4109
  %5 = icmp eq i8 %4, 0, !dbg !4109
  br i1 %5, label %8, label %6, !dbg !4111

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4112
  br label %8, !dbg !4114

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4115
  ret i32 %9, !dbg !4116
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4117 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4136
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4140
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4141
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4141
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4142
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4142
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4119, metadata !DIExpression()), !dbg !4143
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4144, !srcloc !4145
  call void @llvm.dbg.value(metadata i64 %8, metadata !4126, metadata !DIExpression()), !dbg !4146
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4147
  call void @llvm.dbg.value(metadata i8* %9, metadata !4127, metadata !DIExpression()), !dbg !4148
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4149
  call void @llvm.dbg.value(metadata i8* %10, metadata !4128, metadata !DIExpression()), !dbg !4150
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4151
  call void @llvm.dbg.value(metadata i8* %11, metadata !4129, metadata !DIExpression()), !dbg !4152
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4153
  call void @llvm.dbg.value(metadata i8* %12, metadata !4130, metadata !DIExpression()), !dbg !4154
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4155
  %14 = load i8*, i8** %13, align 8, !dbg !4155
  %15 = icmp ugt i8* %11, %14, !dbg !4157
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4158
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4159
  %19 = icmp ult i8* %11, %18, !dbg !4160
  %20 = and i1 %15, %19, !dbg !4161
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4161
  call void @llvm.dbg.value(metadata i8* %21, metadata !4129, metadata !DIExpression()), !dbg !4152
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %22, metadata !4131, metadata !DIExpression()), !dbg !4163
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4164
  %24 = ptrtoint i8* %23 to i64, !dbg !4165
  %25 = ptrtoint i8* %12 to i64, !dbg !4165
  %26 = sub i64 %24, %25, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %26, metadata !4120, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4166
  %27 = ptrtoint i8* %10 to i64, !dbg !4167
  call void @llvm.dbg.value(metadata i64 undef, metadata !4122, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 72, metadata !4123, metadata !DIExpression()), !dbg !4169
  %28 = bitcast i8* %22 to i64*, !dbg !4170
  %29 = load i64, i64* %28, align 8, !dbg !4170
  %30 = sub i64 %29, %25, !dbg !4171
  call void @llvm.dbg.value(metadata i64 %30, metadata !4124, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %17, metadata !4121, metadata !DIExpression()), !dbg !4173
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4174
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4132, metadata !DIExpression(DW_OP_deref)), !dbg !4175
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #11, !dbg !4176
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4177
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4132, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !1531, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !1532, metadata !DIExpression()), !dbg !4180
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4181
  %35 = load i64, i64* %34, align 8, !dbg !4182
  %36 = add i64 %35, -8, !dbg !4182
  store i64 %36, i64* %34, align 8, !dbg !4182
  %37 = inttoptr i64 %36 to i64*, !dbg !4183
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4184
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4185
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4132, metadata !DIExpression()), !dbg !4175
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4186
  %40 = load i8*, i8** %39, align 8, !dbg !4186
  call void @llvm.dbg.value(metadata i8* %40, metadata !4125, metadata !DIExpression()), !dbg !4187
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4188
  %42 = sub i64 -16, %26, !dbg !4189
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4189
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #10, !dbg !4190
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4191
  %46 = ptrtoint i8* %45 to i64, !dbg !4192
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4193
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4132, metadata !DIExpression()), !dbg !4175
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4194
  store i64 %46, i64* %48, align 8, !dbg !4195
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4132, metadata !DIExpression()), !dbg !4175
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4197
  %51 = load i64, i64* %50, align 8, !dbg !4197
  %52 = add i64 %51, 64, !dbg !4198
  %53 = inttoptr i64 %52 to i8**, !dbg !4199
  call void @llvm.dbg.value(metadata i8** %53, metadata !4133, metadata !DIExpression()), !dbg !4200
  %54 = add i64 %30, %51, !dbg !4201
  %55 = inttoptr i64 %54 to i8*, !dbg !4202
  store i8* %55, i8** %53, align 8, !dbg !4203
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4204
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4132, metadata !DIExpression()), !dbg !4175
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4205
  %58 = load i64, i64* %57, align 8, !dbg !4205
  %59 = sub i64 8, %25, !dbg !4167
  %60 = add i64 %59, %27, !dbg !4206
  %61 = add i64 %60, %58, !dbg !4207
  %62 = inttoptr i64 %61 to i8**, !dbg !4208
  call void @llvm.dbg.value(metadata i8** %62, metadata !4134, metadata !DIExpression()), !dbg !4209
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4210
  call void @llvm.dbg.value(metadata i8** %63, metadata !4135, metadata !DIExpression()), !dbg !4211
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4212
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4212
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4213
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4132, metadata !DIExpression()), !dbg !4175
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4214
  %67 = load i64, i64* %66, align 8, !dbg !4214
  %68 = add i64 %67, 112, !dbg !4215
  %69 = inttoptr i64 %68 to i64*, !dbg !4216
  store i64 0, i64* %69, align 8, !dbg !4217
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4218
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4132, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1654, metadata !DIExpression()) #9, !dbg !4219
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()) #9, !dbg !4221
  %71 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4222
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4226
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1660, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !4227
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4228
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4228
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4228
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4228
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1660, metadata !DIExpression()) #9, !dbg !4227
  %77 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4229
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4233
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4234
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4234
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4235
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1661, metadata !DIExpression()) #9, !dbg !4236
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4237
  store i32 1, i32* %82, align 4, !dbg !4238
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4239
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1723, metadata !DIExpression()) #9, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1726, metadata !DIExpression()) #9, !dbg !4242
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4243
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4243
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1731, metadata !DIExpression()) #9, !dbg !4244
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1736, metadata !DIExpression()) #9, !dbg !4246
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1737, metadata !DIExpression()) #9, !dbg !4247
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4248
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4249
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4250
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4251
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4252
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4253
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4254
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4255
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4255
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4256
  br i1 %91, label %94, label %92, !dbg !4257

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #10, !dbg !4258
  br label %94, !dbg !4259

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4260
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4132, metadata !DIExpression()), !dbg !4175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4261
  ret %struct.nk_fiber* %95, !dbg !4262
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4263 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4265, metadata !DIExpression()), !dbg !4268
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4269
  br i1 %2, label %22, label %3, !dbg !4271

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4272
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4276
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4277
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4277
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4278
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4278
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4266, metadata !DIExpression()), !dbg !4279
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4280
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4267, metadata !DIExpression()), !dbg !4281
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4282
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1723, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1726, metadata !DIExpression()), !dbg !4285
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4286
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4286
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1731, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1736, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1737, metadata !DIExpression()), !dbg !4290
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4291
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4292
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4293
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4294
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4295
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4296
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4297
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4298
  %18 = load i32, i32* %17, align 8, !dbg !4299
  %19 = add i32 %18, 1, !dbg !4299
  store i32 %19, i32* %17, align 8, !dbg !4299
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4300
  store i32 3, i32* %20, align 4, !dbg !4301
  %21 = tail call i32 @nk_fiber_yield() #11, !dbg !4302
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !4303
  ret i32 %23, !dbg !4304
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
!576 = !{i32 -2147275531}
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
!598 = !DILocation(line: 315, column: 3, scope: !585)
!599 = !DILocation(line: 316, column: 13, scope: !592)
!600 = !DILocation(line: 314, column: 15, scope: !585)
!601 = !DILocation(line: 318, column: 17, scope: !592)
!602 = !DILocation(line: 319, column: 80, scope: !592)
!603 = !DILocation(line: 319, column: 5, scope: !592)
!604 = !DILocation(line: 315, column: 11, scope: !585)
!605 = distinct !{!605, !598, !606}
!606 = !DILocation(line: 320, column: 3, scope: !585)
!607 = !DILocation(line: 322, column: 3, scope: !585)
!608 = !DILocation(line: 323, column: 1, scope: !585)
!609 = distinct !DISubprogram(name: "handle_fibers8", scope: !3, file: !3, line: 526, type: !141, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "buf", arg: 1, scope: !609, file: !3, line: 526, type: !137)
!612 = !DILocalVariable(name: "priv", arg: 2, scope: !609, file: !3, line: 526, type: !33)
!613 = !DILocation(line: 526, column: 24, scope: !609)
!614 = !DILocation(line: 526, column: 36, scope: !609)
!615 = !DILocation(line: 442, column: 3, scope: !616, inlinedAt: !619)
!616 = distinct !DISubprogram(name: "test_fiber_routine", scope: !3, file: !3, line: 440, type: !561, scopeLine: 441, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!617 = !{!618}
!618 = !DILocalVariable(name: "f_orig", scope: !616, file: !3, line: 442, type: !24)
!619 = distinct !DILocation(line: 528, column: 3, scope: !609)
!620 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !621)
!621 = distinct !DILocation(line: 443, column: 8, scope: !616, inlinedAt: !619)
!622 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !621)
!623 = !DILocation(line: 443, column: 26, scope: !616, inlinedAt: !619)
!624 = !DILocation(line: 443, column: 6, scope: !616, inlinedAt: !619)
!625 = !DILocation(line: 444, column: 3, scope: !616, inlinedAt: !619)
!626 = !DILocation(line: 442, column: 15, scope: !616, inlinedAt: !619)
!627 = !DILocation(line: 445, column: 3, scope: !616, inlinedAt: !619)
!628 = !DILocation(line: 447, column: 1, scope: !616, inlinedAt: !619)
!629 = !DILocation(line: 529, column: 3, scope: !609)
!630 = distinct !DISubprogram(name: "fiber_routine1", scope: !3, file: !3, line: 290, type: !64, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!631 = !{!632, !633, !634, !635, !636, !638}
!632 = !DILocalVariable(name: "i", arg: 1, scope: !630, file: !3, line: 290, type: !33)
!633 = !DILocalVariable(name: "o", arg: 2, scope: !630, file: !3, line: 290, type: !66)
!634 = !DILocalVariable(name: "a", scope: !630, file: !3, line: 293, type: !50)
!635 = !DILocalVariable(name: "f_new", scope: !630, file: !3, line: 294, type: !24)
!636 = !DILocalVariable(name: "curr", scope: !637, file: !3, line: 298, type: !24)
!637 = distinct !DILexicalBlock(scope: !630, file: !3, line: 295, column: 15)
!638 = !DILocalVariable(name: "new", scope: !639, file: !3, line: 300, type: !24)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 299, column: 14)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 299, column: 8)
!641 = !DILocation(line: 290, column: 27, scope: !630)
!642 = !DILocation(line: 290, column: 37, scope: !630)
!643 = !DILocation(line: 292, column: 19, scope: !630)
!644 = !DILocation(line: 292, column: 3, scope: !630)
!645 = !DILocation(line: 293, column: 7, scope: !630)
!646 = !DILocation(line: 295, column: 3, scope: !630)
!647 = !DILocation(line: 296, column: 13, scope: !637)
!648 = !DILocation(line: 294, column: 15, scope: !630)
!649 = !DILocation(line: 298, column: 17, scope: !637)
!650 = !DILocation(line: 299, column: 8, scope: !640)
!651 = !DILocation(line: 299, column: 8, scope: !637)
!652 = !DILocation(line: 300, column: 7, scope: !639)
!653 = !DILocation(line: 300, column: 19, scope: !639)
!654 = !DILocation(line: 301, column: 7, scope: !639)
!655 = !DILocation(line: 303, column: 5, scope: !640)
!656 = !DILocation(line: 304, column: 80, scope: !637)
!657 = !DILocation(line: 304, column: 5, scope: !637)
!658 = !DILocation(line: 295, column: 11, scope: !630)
!659 = !DILocation(line: 307, column: 3, scope: !630)
!660 = !DILocation(line: 308, column: 1, scope: !630)
!661 = distinct !DISubprogram(name: "fiber_routine2", scope: !3, file: !3, line: 282, type: !64, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!662 = !{!663, !664}
!663 = !DILocalVariable(name: "i", arg: 1, scope: !661, file: !3, line: 282, type: !33)
!664 = !DILocalVariable(name: "o", arg: 2, scope: !661, file: !3, line: 282, type: !66)
!665 = !DILocation(line: 282, column: 27, scope: !661)
!666 = !DILocation(line: 282, column: 37, scope: !661)
!667 = !DILocation(line: 284, column: 19, scope: !661)
!668 = !DILocation(line: 284, column: 3, scope: !661)
!669 = !DILocation(line: 286, column: 3, scope: !661)
!670 = !DILocation(line: 287, column: 1, scope: !661)
!671 = distinct !DISubprogram(name: "handle_fibers7", scope: !3, file: !3, line: 519, type: !141, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "buf", arg: 1, scope: !671, file: !3, line: 519, type: !137)
!674 = !DILocalVariable(name: "priv", arg: 2, scope: !671, file: !3, line: 519, type: !33)
!675 = !DILocation(line: 519, column: 24, scope: !671)
!676 = !DILocation(line: 519, column: 36, scope: !671)
!677 = !DILocation(line: 433, column: 3, scope: !678, inlinedAt: !681)
!678 = distinct !DISubprogram(name: "test_fiber_fork_join", scope: !3, file: !3, line: 431, type: !561, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!679 = !{!680}
!680 = !DILocalVariable(name: "f_orig", scope: !678, file: !3, line: 433, type: !24)
!681 = distinct !DILocation(line: 521, column: 3, scope: !671)
!682 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !683)
!683 = distinct !DILocation(line: 434, column: 8, scope: !678, inlinedAt: !681)
!684 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !683)
!685 = !DILocation(line: 434, column: 26, scope: !678, inlinedAt: !681)
!686 = !DILocation(line: 434, column: 6, scope: !678, inlinedAt: !681)
!687 = !DILocation(line: 435, column: 3, scope: !678, inlinedAt: !681)
!688 = !DILocation(line: 433, column: 15, scope: !678, inlinedAt: !681)
!689 = !DILocation(line: 436, column: 3, scope: !678, inlinedAt: !681)
!690 = !DILocation(line: 438, column: 1, scope: !678, inlinedAt: !681)
!691 = !DILocation(line: 522, column: 3, scope: !671)
!692 = distinct !DISubprogram(name: "fiber_fork_join", scope: !3, file: !3, line: 263, type: !64, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!693 = !{!694, !695, !696, !697, !698}
!694 = !DILocalVariable(name: "i", arg: 1, scope: !692, file: !3, line: 263, type: !33)
!695 = !DILocalVariable(name: "o", arg: 2, scope: !692, file: !3, line: 263, type: !66)
!696 = !DILocalVariable(name: "a", scope: !692, file: !3, line: 266, type: !50)
!697 = !DILocalVariable(name: "f_new", scope: !692, file: !3, line: 267, type: !24)
!698 = !DILocalVariable(name: "f_curr", scope: !692, file: !3, line: 274, type: !24)
!699 = !DILocation(line: 263, column: 28, scope: !692)
!700 = !DILocation(line: 263, column: 38, scope: !692)
!701 = !DILocation(line: 265, column: 19, scope: !692)
!702 = !DILocation(line: 265, column: 3, scope: !692)
!703 = !DILocation(line: 266, column: 7, scope: !692)
!704 = !DILocation(line: 268, column: 11, scope: !692)
!705 = !DILocation(line: 267, column: 15, scope: !692)
!706 = !DILocation(line: 269, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !692, file: !3, line: 269, column: 6)
!708 = !DILocation(line: 269, column: 6, scope: !692)
!709 = !DILocation(line: 270, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 269, column: 12)
!711 = !DILocation(line: 271, column: 3, scope: !710)
!712 = !DILocation(line: 276, column: 81, scope: !713)
!713 = distinct !DILexicalBlock(scope: !692, file: !3, line: 275, column: 15)
!714 = !DILocation(line: 276, column: 5, scope: !713)
!715 = !DILocation(line: 277, column: 5, scope: !713)
!716 = !DILocation(line: 275, column: 11, scope: !692)
!717 = !DILocation(line: 275, column: 3, scope: !692)
!718 = distinct !{!718, !717, !719}
!719 = !DILocation(line: 278, column: 3, scope: !692)
!720 = !DILocation(line: 279, column: 3, scope: !692)
!721 = !DILocation(line: 280, column: 1, scope: !692)
!722 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "buf", arg: 1, scope: !722, file: !3, line: 512, type: !137)
!725 = !DILocalVariable(name: "priv", arg: 2, scope: !722, file: !3, line: 512, type: !33)
!726 = !DILocation(line: 512, column: 24, scope: !722)
!727 = !DILocation(line: 512, column: 36, scope: !722)
!728 = !DILocation(line: 424, column: 3, scope: !729, inlinedAt: !732)
!729 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !561, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731}
!731 = !DILocalVariable(name: "f_orig", scope: !729, file: !3, line: 424, type: !24)
!732 = distinct !DILocation(line: 514, column: 3, scope: !722)
!733 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !734)
!734 = distinct !DILocation(line: 425, column: 8, scope: !729, inlinedAt: !732)
!735 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !734)
!736 = !DILocation(line: 425, column: 26, scope: !729, inlinedAt: !732)
!737 = !DILocation(line: 425, column: 6, scope: !729, inlinedAt: !732)
!738 = !DILocation(line: 426, column: 3, scope: !729, inlinedAt: !732)
!739 = !DILocation(line: 424, column: 15, scope: !729, inlinedAt: !732)
!740 = !DILocation(line: 427, column: 3, scope: !729, inlinedAt: !732)
!741 = !DILocation(line: 429, column: 1, scope: !729, inlinedAt: !732)
!742 = !DILocation(line: 515, column: 3, scope: !722)
!743 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745, !746, !747, !748}
!745 = !DILocalVariable(name: "i", arg: 1, scope: !743, file: !3, line: 249, type: !33)
!746 = !DILocalVariable(name: "o", arg: 2, scope: !743, file: !3, line: 249, type: !66)
!747 = !DILocalVariable(name: "a", scope: !743, file: !3, line: 252, type: !50)
!748 = !DILocalVariable(name: "f_new", scope: !743, file: !3, line: 253, type: !24)
!749 = !DILocation(line: 249, column: 23, scope: !743)
!750 = !DILocation(line: 249, column: 33, scope: !743)
!751 = !DILocation(line: 251, column: 19, scope: !743)
!752 = !DILocation(line: 251, column: 3, scope: !743)
!753 = !DILocation(line: 252, column: 7, scope: !743)
!754 = !DILocation(line: 254, column: 11, scope: !743)
!755 = !DILocation(line: 253, column: 15, scope: !743)
!756 = !DILocation(line: 255, column: 3, scope: !743)
!757 = !DILocation(line: 257, column: 102, scope: !758)
!758 = distinct !DILexicalBlock(scope: !743, file: !3, line: 255, column: 15)
!759 = !DILocation(line: 257, column: 5, scope: !758)
!760 = !DILocation(line: 258, column: 5, scope: !758)
!761 = !DILocation(line: 255, column: 11, scope: !743)
!762 = distinct !{!762, !756, !763}
!763 = !DILocation(line: 259, column: 3, scope: !743)
!764 = !DILocation(line: 260, column: 3, scope: !743)
!765 = !DILocation(line: 261, column: 1, scope: !743)
!766 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!767 = !{!768, !769}
!768 = !DILocalVariable(name: "buf", arg: 1, scope: !766, file: !3, line: 505, type: !137)
!769 = !DILocalVariable(name: "priv", arg: 2, scope: !766, file: !3, line: 505, type: !33)
!770 = !DILocation(line: 505, column: 24, scope: !766)
!771 = !DILocation(line: 505, column: 36, scope: !766)
!772 = !DILocation(line: 415, column: 3, scope: !773, inlinedAt: !776)
!773 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !561, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!774 = !{!775}
!775 = !DILocalVariable(name: "f_outer_join", scope: !773, file: !3, line: 415, type: !24)
!776 = distinct !DILocation(line: 507, column: 3, scope: !766)
!777 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !778)
!778 = distinct !DILocation(line: 416, column: 8, scope: !773, inlinedAt: !776)
!779 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !778)
!780 = !DILocation(line: 416, column: 26, scope: !773, inlinedAt: !776)
!781 = !DILocation(line: 416, column: 6, scope: !773, inlinedAt: !776)
!782 = !DILocation(line: 417, column: 3, scope: !773, inlinedAt: !776)
!783 = !DILocation(line: 415, column: 15, scope: !773, inlinedAt: !776)
!784 = !DILocation(line: 418, column: 3, scope: !773, inlinedAt: !776)
!785 = !DILocation(line: 420, column: 1, scope: !773, inlinedAt: !776)
!786 = !DILocation(line: 508, column: 3, scope: !766)
!787 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!788 = !{!789, !790, !791, !792}
!789 = !DILocalVariable(name: "i", arg: 1, scope: !787, file: !3, line: 103, type: !33)
!790 = !DILocalVariable(name: "o", arg: 2, scope: !787, file: !3, line: 103, type: !66)
!791 = !DILocalVariable(name: "a", scope: !787, file: !3, line: 106, type: !50)
!792 = !DILocalVariable(name: "f_inner_join", scope: !793, file: !3, line: 109, type: !24)
!793 = distinct !DILexicalBlock(scope: !787, file: !3, line: 107, column: 15)
!794 = !DILocation(line: 103, column: 29, scope: !787)
!795 = !DILocation(line: 103, column: 39, scope: !787)
!796 = !DILocation(line: 105, column: 19, scope: !787)
!797 = !DILocation(line: 105, column: 3, scope: !787)
!798 = !DILocation(line: 106, column: 7, scope: !787)
!799 = !DILocation(line: 107, column: 3, scope: !787)
!800 = !DILocation(line: 108, column: 43, scope: !793)
!801 = !DILocation(line: 108, column: 5, scope: !793)
!802 = !DILocation(line: 109, column: 5, scope: !793)
!803 = !DILocation(line: 109, column: 17, scope: !793)
!804 = !DILocation(line: 110, column: 5, scope: !793)
!805 = !DILocation(line: 111, column: 19, scope: !793)
!806 = !DILocation(line: 111, column: 5, scope: !793)
!807 = !DILocation(line: 112, column: 5, scope: !793)
!808 = !DILocation(line: 113, column: 3, scope: !787)
!809 = !DILocation(line: 107, column: 11, scope: !787)
!810 = distinct !{!810, !799, !808}
!811 = !DILocation(line: 114, column: 3, scope: !787)
!812 = !DILocation(line: 115, column: 1, scope: !787)
!813 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!814 = !{!815, !816, !817}
!815 = !DILocalVariable(name: "i", arg: 1, scope: !813, file: !3, line: 92, type: !33)
!816 = !DILocalVariable(name: "o", arg: 2, scope: !813, file: !3, line: 92, type: !66)
!817 = !DILocalVariable(name: "a", scope: !813, file: !3, line: 95, type: !50)
!818 = !DILocation(line: 92, column: 29, scope: !813)
!819 = !DILocation(line: 92, column: 39, scope: !813)
!820 = !DILocation(line: 94, column: 19, scope: !813)
!821 = !DILocation(line: 94, column: 3, scope: !813)
!822 = !DILocation(line: 95, column: 7, scope: !813)
!823 = !DILocation(line: 96, column: 3, scope: !813)
!824 = !DILocation(line: 97, column: 43, scope: !825)
!825 = distinct !DILexicalBlock(scope: !813, file: !3, line: 96, column: 16)
!826 = !DILocation(line: 97, column: 5, scope: !825)
!827 = !DILocation(line: 98, column: 5, scope: !825)
!828 = !DILocation(line: 96, column: 11, scope: !813)
!829 = distinct !{!829, !823, !830}
!830 = !DILocation(line: 99, column: 3, scope: !813)
!831 = !DILocation(line: 100, column: 3, scope: !813)
!832 = !DILocation(line: 101, column: 1, scope: !813)
!833 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!834 = !{!835, !836}
!835 = !DILocalVariable(name: "buf", arg: 1, scope: !833, file: !3, line: 497, type: !137)
!836 = !DILocalVariable(name: "priv", arg: 2, scope: !833, file: !3, line: 497, type: !33)
!837 = !DILocation(line: 497, column: 24, scope: !833)
!838 = !DILocation(line: 497, column: 36, scope: !833)
!839 = !DILocation(line: 499, column: 3, scope: !833)
!840 = !DILocation(line: 501, column: 3, scope: !833)
!841 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !561, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!842 = !{!843, !844, !845, !846}
!843 = !DILocalVariable(name: "f_first", scope: !841, file: !3, line: 391, type: !24)
!844 = !DILocalVariable(name: "f_second", scope: !841, file: !3, line: 392, type: !24)
!845 = !DILocalVariable(name: "f_third", scope: !841, file: !3, line: 393, type: !24)
!846 = !DILocalVariable(name: "f_fourth", scope: !841, file: !3, line: 394, type: !24)
!847 = !DILocation(line: 391, column: 3, scope: !841)
!848 = !DILocation(line: 392, column: 3, scope: !841)
!849 = !DILocation(line: 393, column: 3, scope: !841)
!850 = !DILocation(line: 394, column: 3, scope: !841)
!851 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !852)
!852 = distinct !DILocation(line: 395, column: 8, scope: !841)
!853 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !852)
!854 = !DILocation(line: 395, column: 26, scope: !841)
!855 = !DILocation(line: 395, column: 6, scope: !841)
!856 = !DILocation(line: 396, column: 3, scope: !841)
!857 = !DILocation(line: 394, column: 15, scope: !841)
!858 = !DILocation(line: 397, column: 3, scope: !841)
!859 = !DILocation(line: 391, column: 15, scope: !841)
!860 = !DILocation(line: 398, column: 3, scope: !841)
!861 = !DILocation(line: 393, column: 15, scope: !841)
!862 = !DILocation(line: 399, column: 3, scope: !841)
!863 = !DILocation(line: 392, column: 15, scope: !841)
!864 = !DILocation(line: 400, column: 3, scope: !841)
!865 = !DILocation(line: 402, column: 20, scope: !841)
!866 = !DILocation(line: 402, column: 3, scope: !841)
!867 = !DILocation(line: 402, column: 12, scope: !841)
!868 = !DILocation(line: 402, column: 18, scope: !841)
!869 = !DILocation(line: 403, column: 21, scope: !841)
!870 = !DILocation(line: 403, column: 3, scope: !841)
!871 = !DILocation(line: 403, column: 13, scope: !841)
!872 = !DILocation(line: 403, column: 19, scope: !841)
!873 = !DILocation(line: 404, column: 20, scope: !841)
!874 = !DILocation(line: 404, column: 3, scope: !841)
!875 = !DILocation(line: 404, column: 12, scope: !841)
!876 = !DILocation(line: 404, column: 18, scope: !841)
!877 = !DILocation(line: 405, column: 21, scope: !841)
!878 = !DILocation(line: 405, column: 3, scope: !841)
!879 = !DILocation(line: 405, column: 13, scope: !841)
!880 = !DILocation(line: 405, column: 19, scope: !841)
!881 = !DILocation(line: 406, column: 3, scope: !841)
!882 = !DILocation(line: 407, column: 16, scope: !841)
!883 = !DILocation(line: 407, column: 3, scope: !841)
!884 = !DILocation(line: 408, column: 16, scope: !841)
!885 = !DILocation(line: 408, column: 3, scope: !841)
!886 = !DILocation(line: 409, column: 16, scope: !841)
!887 = !DILocation(line: 409, column: 3, scope: !841)
!888 = !DILocation(line: 411, column: 1, scope: !841)
!889 = !DILocation(line: 410, column: 3, scope: !841)
!890 = distinct !DISubprogram(name: "fiber_fourth", scope: !3, file: !3, line: 236, type: !64, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892, !893, !894, !895}
!892 = !DILocalVariable(name: "i", arg: 1, scope: !890, file: !3, line: 236, type: !33)
!893 = !DILocalVariable(name: "o", arg: 2, scope: !890, file: !3, line: 236, type: !66)
!894 = !DILocalVariable(name: "a", scope: !890, file: !3, line: 239, type: !50)
!895 = !DILocalVariable(name: "f_to", scope: !890, file: !3, line: 241, type: !24)
!896 = !DILocation(line: 236, column: 25, scope: !890)
!897 = !DILocation(line: 236, column: 35, scope: !890)
!898 = !DILocation(line: 238, column: 19, scope: !890)
!899 = !DILocation(line: 238, column: 3, scope: !890)
!900 = !DILocation(line: 239, column: 7, scope: !890)
!901 = !DILocation(line: 241, column: 22, scope: !890)
!902 = !DILocation(line: 241, column: 15, scope: !890)
!903 = !DILocation(line: 242, column: 3, scope: !890)
!904 = !DILocation(line: 243, column: 81, scope: !905)
!905 = distinct !DILexicalBlock(scope: !890, file: !3, line: 242, column: 15)
!906 = !DILocation(line: 243, column: 5, scope: !905)
!907 = !DILocation(line: 244, column: 5, scope: !905)
!908 = !DILocation(line: 242, column: 11, scope: !890)
!909 = distinct !{!909, !903, !910}
!910 = !DILocation(line: 245, column: 3, scope: !890)
!911 = !DILocation(line: 246, column: 3, scope: !890)
!912 = !DILocation(line: 247, column: 1, scope: !890)
!913 = distinct !DISubprogram(name: "fiber_first", scope: !3, file: !3, line: 198, type: !64, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!914 = !{!915, !916, !917, !918}
!915 = !DILocalVariable(name: "i", arg: 1, scope: !913, file: !3, line: 198, type: !33)
!916 = !DILocalVariable(name: "o", arg: 2, scope: !913, file: !3, line: 198, type: !66)
!917 = !DILocalVariable(name: "a", scope: !913, file: !3, line: 201, type: !50)
!918 = !DILocalVariable(name: "f_to", scope: !913, file: !3, line: 202, type: !24)
!919 = !DILocation(line: 198, column: 24, scope: !913)
!920 = !DILocation(line: 198, column: 34, scope: !913)
!921 = !DILocation(line: 200, column: 19, scope: !913)
!922 = !DILocation(line: 200, column: 3, scope: !913)
!923 = !DILocation(line: 201, column: 7, scope: !913)
!924 = !DILocation(line: 202, column: 22, scope: !913)
!925 = !DILocation(line: 202, column: 15, scope: !913)
!926 = !DILocation(line: 203, column: 3, scope: !913)
!927 = !DILocation(line: 204, column: 81, scope: !928)
!928 = distinct !DILexicalBlock(scope: !913, file: !3, line: 203, column: 15)
!929 = !DILocation(line: 204, column: 5, scope: !928)
!930 = !DILocation(line: 205, column: 5, scope: !928)
!931 = !DILocation(line: 203, column: 11, scope: !913)
!932 = distinct !{!932, !926, !933}
!933 = !DILocation(line: 206, column: 3, scope: !913)
!934 = !DILocation(line: 207, column: 3, scope: !913)
!935 = !DILocation(line: 208, column: 1, scope: !913)
!936 = distinct !DISubprogram(name: "fiber_third", scope: !3, file: !3, line: 223, type: !64, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!937 = !{!938, !939, !940, !941}
!938 = !DILocalVariable(name: "i", arg: 1, scope: !936, file: !3, line: 223, type: !33)
!939 = !DILocalVariable(name: "o", arg: 2, scope: !936, file: !3, line: 223, type: !66)
!940 = !DILocalVariable(name: "a", scope: !936, file: !3, line: 226, type: !50)
!941 = !DILocalVariable(name: "f_to", scope: !936, file: !3, line: 228, type: !24)
!942 = !DILocation(line: 223, column: 24, scope: !936)
!943 = !DILocation(line: 223, column: 34, scope: !936)
!944 = !DILocation(line: 225, column: 19, scope: !936)
!945 = !DILocation(line: 225, column: 3, scope: !936)
!946 = !DILocation(line: 226, column: 7, scope: !936)
!947 = !DILocation(line: 228, column: 22, scope: !936)
!948 = !DILocation(line: 228, column: 15, scope: !936)
!949 = !DILocation(line: 229, column: 3, scope: !936)
!950 = !DILocation(line: 230, column: 81, scope: !951)
!951 = distinct !DILexicalBlock(scope: !936, file: !3, line: 229, column: 15)
!952 = !DILocation(line: 230, column: 5, scope: !951)
!953 = !DILocation(line: 231, column: 5, scope: !951)
!954 = !DILocation(line: 229, column: 11, scope: !936)
!955 = distinct !{!955, !949, !956}
!956 = !DILocation(line: 232, column: 3, scope: !936)
!957 = !DILocation(line: 233, column: 3, scope: !936)
!958 = !DILocation(line: 234, column: 1, scope: !936)
!959 = distinct !DISubprogram(name: "fiber_second", scope: !3, file: !3, line: 211, type: !64, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DILocalVariable(name: "i", arg: 1, scope: !959, file: !3, line: 211, type: !33)
!962 = !DILocalVariable(name: "o", arg: 2, scope: !959, file: !3, line: 211, type: !66)
!963 = !DILocalVariable(name: "a", scope: !959, file: !3, line: 214, type: !50)
!964 = !DILocalVariable(name: "f_to", scope: !959, file: !3, line: 215, type: !24)
!965 = !DILocation(line: 211, column: 25, scope: !959)
!966 = !DILocation(line: 211, column: 35, scope: !959)
!967 = !DILocation(line: 213, column: 19, scope: !959)
!968 = !DILocation(line: 213, column: 3, scope: !959)
!969 = !DILocation(line: 214, column: 7, scope: !959)
!970 = !DILocation(line: 215, column: 22, scope: !959)
!971 = !DILocation(line: 215, column: 15, scope: !959)
!972 = !DILocation(line: 216, column: 3, scope: !959)
!973 = !DILocation(line: 217, column: 81, scope: !974)
!974 = distinct !DILexicalBlock(scope: !959, file: !3, line: 216, column: 15)
!975 = !DILocation(line: 217, column: 5, scope: !974)
!976 = !DILocation(line: 218, column: 5, scope: !974)
!977 = !DILocation(line: 216, column: 11, scope: !959)
!978 = distinct !{!978, !972, !979}
!979 = !DILocation(line: 219, column: 3, scope: !959)
!980 = !DILocation(line: 220, column: 3, scope: !959)
!981 = !DILocation(line: 221, column: 1, scope: !959)
!982 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!983 = !{!984, !985}
!984 = !DILocalVariable(name: "buf", arg: 1, scope: !982, file: !3, line: 489, type: !137)
!985 = !DILocalVariable(name: "priv", arg: 2, scope: !982, file: !3, line: 489, type: !33)
!986 = !DILocation(line: 489, column: 24, scope: !982)
!987 = !DILocation(line: 489, column: 36, scope: !982)
!988 = !DILocation(line: 358, column: 3, scope: !989, inlinedAt: !993)
!989 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !561, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!990 = !{!991, !992}
!991 = !DILocalVariable(name: "even", scope: !989, file: !3, line: 358, type: !24)
!992 = !DILocalVariable(name: "odd", scope: !989, file: !3, line: 359, type: !24)
!993 = distinct !DILocation(line: 491, column: 3, scope: !982)
!994 = !DILocation(line: 359, column: 3, scope: !989, inlinedAt: !993)
!995 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !996)
!996 = distinct !DILocation(line: 360, column: 8, scope: !989, inlinedAt: !993)
!997 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !996)
!998 = !DILocation(line: 360, column: 26, scope: !989, inlinedAt: !993)
!999 = !DILocation(line: 360, column: 6, scope: !989, inlinedAt: !993)
!1000 = !DILocation(line: 358, column: 15, scope: !989, inlinedAt: !993)
!1001 = !DILocation(line: 361, column: 3, scope: !989, inlinedAt: !993)
!1002 = !DILocation(line: 359, column: 15, scope: !989, inlinedAt: !993)
!1003 = !DILocation(line: 362, column: 3, scope: !989, inlinedAt: !993)
!1004 = !DILocation(line: 365, column: 1, scope: !989, inlinedAt: !993)
!1005 = !DILocation(line: 493, column: 3, scope: !982)
!1006 = distinct !DISubprogram(name: "print_even", scope: !3, file: !3, line: 172, type: !64, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DILocalVariable(name: "i", arg: 1, scope: !1006, file: !3, line: 172, type: !33)
!1009 = !DILocalVariable(name: "o", arg: 2, scope: !1006, file: !3, line: 172, type: !66)
!1010 = !DILocalVariable(name: "i", scope: !1011, file: !3, line: 174, type: !50)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 174, column: 3)
!1012 = !DILocation(line: 172, column: 23, scope: !1006)
!1013 = !DILocation(line: 172, column: 33, scope: !1006)
!1014 = !DILocation(line: 173, column: 19, scope: !1006)
!1015 = !DILocation(line: 173, column: 3, scope: !1006)
!1016 = !DILocation(line: 174, column: 12, scope: !1011)
!1017 = !DILocation(line: 174, column: 3, scope: !1011)
!1018 = !DILocation(line: 180, column: 3, scope: !1006)
!1019 = !DILocation(line: 182, column: 3, scope: !1006)
!1020 = !DILocation(line: 175, column: 17, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 175, column: 9)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 174, column: 31)
!1023 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 174, column: 3)
!1024 = !DILocation(line: 175, column: 9, scope: !1022)
!1025 = !DILocation(line: 176, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 175, column: 22)
!1027 = !DILocation(line: 177, column: 7, scope: !1026)
!1028 = !DILocation(line: 178, column: 5, scope: !1026)
!1029 = !DILocation(line: 174, column: 27, scope: !1023)
!1030 = !DILocation(line: 174, column: 21, scope: !1023)
!1031 = distinct !{!1031, !1017, !1032}
!1032 = !DILocation(line: 179, column: 3, scope: !1011)
!1033 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DILocalVariable(name: "i", arg: 1, scope: !1033, file: !3, line: 185, type: !33)
!1036 = !DILocalVariable(name: "o", arg: 2, scope: !1033, file: !3, line: 185, type: !66)
!1037 = !DILocalVariable(name: "i", scope: !1038, file: !3, line: 187, type: !50)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 187, column: 3)
!1039 = !DILocation(line: 185, column: 22, scope: !1033)
!1040 = !DILocation(line: 185, column: 32, scope: !1033)
!1041 = !DILocation(line: 186, column: 19, scope: !1033)
!1042 = !DILocation(line: 186, column: 3, scope: !1033)
!1043 = !DILocation(line: 187, column: 12, scope: !1038)
!1044 = !DILocation(line: 187, column: 3, scope: !1038)
!1045 = !DILocation(line: 193, column: 3, scope: !1033)
!1046 = !DILocation(line: 195, column: 3, scope: !1033)
!1047 = !DILocation(line: 188, column: 17, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 188, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 187, column: 31)
!1050 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 187, column: 3)
!1051 = !DILocation(line: 188, column: 9, scope: !1049)
!1052 = !DILocation(line: 189, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 188, column: 22)
!1054 = !DILocation(line: 190, column: 7, scope: !1053)
!1055 = !DILocation(line: 191, column: 5, scope: !1053)
!1056 = !DILocation(line: 187, column: 27, scope: !1050)
!1057 = !DILocation(line: 187, column: 21, scope: !1050)
!1058 = distinct !{!1058, !1044, !1059}
!1059 = !DILocation(line: 192, column: 3, scope: !1038)
!1060 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1061 = !{!1062, !1063}
!1062 = !DILocalVariable(name: "buf", arg: 1, scope: !1060, file: !3, line: 481, type: !137)
!1063 = !DILocalVariable(name: "priv", arg: 2, scope: !1060, file: !3, line: 481, type: !33)
!1064 = !DILocation(line: 481, column: 24, scope: !1060)
!1065 = !DILocation(line: 481, column: 36, scope: !1060)
!1066 = !DILocation(line: 369, column: 3, scope: !1067, inlinedAt: !1070)
!1067 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !561, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "f_outer", scope: !1067, file: !3, line: 369, type: !24)
!1070 = distinct !DILocation(line: 483, column: 3, scope: !1060)
!1071 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 370, column: 8, scope: !1067, inlinedAt: !1070)
!1073 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1072)
!1074 = !DILocation(line: 370, column: 26, scope: !1067, inlinedAt: !1070)
!1075 = !DILocation(line: 370, column: 6, scope: !1067, inlinedAt: !1070)
!1076 = !DILocation(line: 371, column: 3, scope: !1067, inlinedAt: !1070)
!1077 = !DILocation(line: 369, column: 15, scope: !1067, inlinedAt: !1070)
!1078 = !DILocation(line: 372, column: 3, scope: !1067, inlinedAt: !1070)
!1079 = !DILocation(line: 374, column: 1, scope: !1067, inlinedAt: !1070)
!1080 = !DILocation(line: 485, column: 3, scope: !1060)
!1081 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DILocalVariable(name: "i", arg: 1, scope: !1081, file: !3, line: 79, type: !33)
!1084 = !DILocalVariable(name: "o", arg: 2, scope: !1081, file: !3, line: 79, type: !66)
!1085 = !DILocalVariable(name: "a", scope: !1081, file: !3, line: 82, type: !50)
!1086 = !DILocalVariable(name: "f_inner", scope: !1087, file: !3, line: 85, type: !24)
!1087 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 83, column: 15)
!1088 = !DILocation(line: 79, column: 24, scope: !1081)
!1089 = !DILocation(line: 79, column: 34, scope: !1081)
!1090 = !DILocation(line: 81, column: 19, scope: !1081)
!1091 = !DILocation(line: 81, column: 3, scope: !1081)
!1092 = !DILocation(line: 82, column: 7, scope: !1081)
!1093 = !DILocation(line: 83, column: 3, scope: !1081)
!1094 = !DILocation(line: 84, column: 43, scope: !1087)
!1095 = !DILocation(line: 84, column: 5, scope: !1087)
!1096 = !DILocation(line: 85, column: 5, scope: !1087)
!1097 = !DILocation(line: 85, column: 17, scope: !1087)
!1098 = !DILocation(line: 86, column: 5, scope: !1087)
!1099 = !DILocation(line: 87, column: 5, scope: !1087)
!1100 = !DILocation(line: 88, column: 3, scope: !1081)
!1101 = !DILocation(line: 83, column: 11, scope: !1081)
!1102 = distinct !{!1102, !1093, !1100}
!1103 = !DILocation(line: 89, column: 3, scope: !1081)
!1104 = !DILocation(line: 90, column: 1, scope: !1081)
!1105 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "i", arg: 1, scope: !1105, file: !3, line: 68, type: !33)
!1108 = !DILocalVariable(name: "o", arg: 2, scope: !1105, file: !3, line: 68, type: !66)
!1109 = !DILocalVariable(name: "a", scope: !1105, file: !3, line: 71, type: !50)
!1110 = !DILocation(line: 68, column: 24, scope: !1105)
!1111 = !DILocation(line: 68, column: 34, scope: !1105)
!1112 = !DILocation(line: 70, column: 19, scope: !1105)
!1113 = !DILocation(line: 70, column: 3, scope: !1105)
!1114 = !DILocation(line: 71, column: 7, scope: !1105)
!1115 = !DILocation(line: 72, column: 3, scope: !1105)
!1116 = !DILocation(line: 73, column: 43, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 72, column: 16)
!1118 = !DILocation(line: 73, column: 5, scope: !1117)
!1119 = !DILocation(line: 74, column: 5, scope: !1117)
!1120 = !DILocation(line: 72, column: 11, scope: !1105)
!1121 = distinct !{!1121, !1115, !1122}
!1122 = !DILocation(line: 75, column: 3, scope: !1105)
!1123 = !DILocation(line: 76, column: 3, scope: !1105)
!1124 = !DILocation(line: 77, column: 1, scope: !1105)
!1125 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1126)
!1126 = !{!1127, !1128}
!1127 = !DILocalVariable(name: "buf", arg: 1, scope: !1125, file: !3, line: 540, type: !137)
!1128 = !DILocalVariable(name: "priv", arg: 2, scope: !1125, file: !3, line: 540, type: !33)
!1129 = !DILocation(line: 540, column: 25, scope: !1125)
!1130 = !DILocation(line: 540, column: 37, scope: !1125)
!1131 = !DILocation(line: 459, column: 3, scope: !1132, inlinedAt: !1136)
!1132 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !561, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1133 = !{!1134, !1135}
!1134 = !DILocalVariable(name: "first", scope: !1132, file: !3, line: 459, type: !24)
!1135 = !DILocalVariable(name: "second", scope: !1132, file: !3, line: 460, type: !24)
!1136 = distinct !DILocation(line: 542, column: 3, scope: !1125)
!1137 = !DILocation(line: 460, column: 3, scope: !1132, inlinedAt: !1136)
!1138 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 461, column: 8, scope: !1132, inlinedAt: !1136)
!1140 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1139)
!1141 = !DILocation(line: 461, column: 26, scope: !1132, inlinedAt: !1136)
!1142 = !DILocation(line: 461, column: 6, scope: !1132, inlinedAt: !1136)
!1143 = !DILocation(line: 459, column: 15, scope: !1132, inlinedAt: !1136)
!1144 = !DILocation(line: 463, column: 3, scope: !1132, inlinedAt: !1136)
!1145 = !DILocation(line: 460, column: 15, scope: !1132, inlinedAt: !1136)
!1146 = !DILocation(line: 464, column: 3, scope: !1132, inlinedAt: !1136)
!1147 = !DILocation(line: 467, column: 1, scope: !1132, inlinedAt: !1136)
!1148 = !DILocation(line: 543, column: 3, scope: !1125)
!1149 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155}
!1151 = !DILocalVariable(name: "i", arg: 1, scope: !1149, file: !3, line: 326, type: !33)
!1152 = !DILocalVariable(name: "o", arg: 2, scope: !1149, file: !3, line: 326, type: !66)
!1153 = !DILocalVariable(name: "a", scope: !1149, file: !3, line: 329, type: !50)
!1154 = !DILocalVariable(name: "start", scope: !1149, file: !3, line: 330, type: !29)
!1155 = !DILocalVariable(name: "end", scope: !1149, file: !3, line: 331, type: !29)
!1156 = !DILocation(line: 326, column: 24, scope: !1149)
!1157 = !DILocation(line: 326, column: 34, scope: !1149)
!1158 = !DILocation(line: 328, column: 19, scope: !1149)
!1159 = !DILocation(line: 328, column: 3, scope: !1149)
!1160 = !DILocation(line: 329, column: 7, scope: !1149)
!1161 = !DILocation(line: 330, column: 12, scope: !1149)
!1162 = !DILocation(line: 331, column: 12, scope: !1149)
!1163 = !DILocation(line: 332, column: 3, scope: !1149)
!1164 = !DILocation(line: 333, column: 11, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 333, column: 9)
!1166 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 332, column: 15)
!1167 = !DILocation(line: 333, column: 9, scope: !1166)
!1168 = !DILocation(line: 268, column: 5, scope: !1169, inlinedAt: !1176)
!1169 = distinct !DISubprogram(name: "rdtsc", scope: !1170, file: !1170, line: 265, type: !1171, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1170 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!29}
!1173 = !{!1174, !1175}
!1174 = !DILocalVariable(name: "lo", scope: !1169, file: !1170, line: 267, type: !43)
!1175 = !DILocalVariable(name: "hi", scope: !1169, file: !1170, line: 267, type: !43)
!1176 = distinct !DILocation(line: 334, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 333, column: 17)
!1178 = !{i32 97027}
!1179 = !DILocation(line: 267, column: 14, scope: !1169, inlinedAt: !1176)
!1180 = !DILocation(line: 267, column: 18, scope: !1169, inlinedAt: !1176)
!1181 = !DILocation(line: 269, column: 12, scope: !1169, inlinedAt: !1176)
!1182 = !DILocation(line: 269, column: 18, scope: !1169, inlinedAt: !1176)
!1183 = !DILocation(line: 269, column: 33, scope: !1169, inlinedAt: !1176)
!1184 = !DILocation(line: 269, column: 15, scope: !1169, inlinedAt: !1176)
!1185 = !DILocation(line: 335, column: 5, scope: !1177)
!1186 = !DILocation(line: 0, scope: !1149)
!1187 = !DILocation(line: 336, column: 5, scope: !1166)
!1188 = !DILocation(line: 337, column: 6, scope: !1166)
!1189 = !DILocation(line: 332, column: 11, scope: !1149)
!1190 = distinct !{!1190, !1163, !1191}
!1191 = !DILocation(line: 338, column: 3, scope: !1149)
!1192 = !DILocation(line: 268, column: 5, scope: !1169, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 339, column: 9, scope: !1149)
!1194 = !DILocation(line: 267, column: 14, scope: !1169, inlinedAt: !1193)
!1195 = !DILocation(line: 267, column: 18, scope: !1169, inlinedAt: !1193)
!1196 = !DILocation(line: 269, column: 12, scope: !1169, inlinedAt: !1193)
!1197 = !DILocation(line: 269, column: 18, scope: !1169, inlinedAt: !1193)
!1198 = !DILocation(line: 269, column: 33, scope: !1169, inlinedAt: !1193)
!1199 = !DILocation(line: 269, column: 15, scope: !1169, inlinedAt: !1193)
!1200 = !DILocation(line: 340, column: 104, scope: !1149)
!1201 = !DILocation(line: 340, column: 123, scope: !1149)
!1202 = !DILocation(line: 340, column: 3, scope: !1149)
!1203 = !DILocation(line: 341, column: 1, scope: !1149)
!1204 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1205 = !{!1206, !1207, !1208}
!1206 = !DILocalVariable(name: "i", arg: 1, scope: !1204, file: !3, line: 343, type: !33)
!1207 = !DILocalVariable(name: "o", arg: 2, scope: !1204, file: !3, line: 343, type: !66)
!1208 = !DILocalVariable(name: "a", scope: !1204, file: !3, line: 346, type: !50)
!1209 = !DILocation(line: 343, column: 25, scope: !1204)
!1210 = !DILocation(line: 343, column: 35, scope: !1204)
!1211 = !DILocation(line: 345, column: 19, scope: !1204)
!1212 = !DILocation(line: 345, column: 3, scope: !1204)
!1213 = !DILocation(line: 346, column: 7, scope: !1204)
!1214 = !DILocation(line: 347, column: 3, scope: !1204)
!1215 = !DILocation(line: 348, column: 5, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 347, column: 15)
!1217 = !DILocation(line: 349, column: 6, scope: !1216)
!1218 = !DILocation(line: 347, column: 11, scope: !1204)
!1219 = distinct !{!1219, !1214, !1220}
!1220 = !DILocation(line: 350, column: 3, scope: !1204)
!1221 = !DILocation(line: 351, column: 3, scope: !1204)
!1222 = !DILocation(line: 352, column: 1, scope: !1204)
!1223 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "buf", arg: 1, scope: !1223, file: !3, line: 473, type: !137)
!1226 = !DILocalVariable(name: "priv", arg: 2, scope: !1223, file: !3, line: 473, type: !33)
!1227 = !DILocation(line: 473, column: 23, scope: !1223)
!1228 = !DILocation(line: 473, column: 35, scope: !1223)
!1229 = !DILocation(line: 378, column: 3, scope: !1230, inlinedAt: !1235)
!1230 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !561, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DILocalVariable(name: "f1", scope: !1230, file: !3, line: 378, type: !24)
!1233 = !DILocalVariable(name: "f2", scope: !1230, file: !3, line: 379, type: !24)
!1234 = !DILocalVariable(name: "f3", scope: !1230, file: !3, line: 380, type: !24)
!1235 = distinct !DILocation(line: 475, column: 3, scope: !1223)
!1236 = !DILocation(line: 379, column: 3, scope: !1230, inlinedAt: !1235)
!1237 = !DILocation(line: 380, column: 3, scope: !1230, inlinedAt: !1235)
!1238 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 381, column: 8, scope: !1230, inlinedAt: !1235)
!1240 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1239)
!1241 = !DILocation(line: 381, column: 26, scope: !1230, inlinedAt: !1235)
!1242 = !DILocation(line: 381, column: 6, scope: !1230, inlinedAt: !1235)
!1243 = !DILocation(line: 382, column: 3, scope: !1230, inlinedAt: !1235)
!1244 = !DILocation(line: 378, column: 15, scope: !1230, inlinedAt: !1235)
!1245 = !DILocation(line: 383, column: 3, scope: !1230, inlinedAt: !1235)
!1246 = !DILocation(line: 379, column: 15, scope: !1230, inlinedAt: !1235)
!1247 = !DILocation(line: 384, column: 3, scope: !1230, inlinedAt: !1235)
!1248 = !DILocation(line: 380, column: 15, scope: !1230, inlinedAt: !1235)
!1249 = !DILocation(line: 385, column: 3, scope: !1230, inlinedAt: !1235)
!1250 = !DILocation(line: 387, column: 1, scope: !1230, inlinedAt: !1235)
!1251 = !DILocation(line: 477, column: 3, scope: !1223)
!1252 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DILocalVariable(name: "i", arg: 1, scope: !1252, file: !3, line: 144, type: !33)
!1255 = !DILocalVariable(name: "o", arg: 2, scope: !1252, file: !3, line: 144, type: !66)
!1256 = !DILocalVariable(name: "a", scope: !1252, file: !3, line: 147, type: !50)
!1257 = !DILocalVariable(name: "f3", scope: !1252, file: !3, line: 154, type: !24)
!1258 = !DILocation(line: 144, column: 19, scope: !1252)
!1259 = !DILocation(line: 144, column: 29, scope: !1252)
!1260 = !DILocation(line: 146, column: 19, scope: !1252)
!1261 = !DILocation(line: 146, column: 3, scope: !1252)
!1262 = !DILocation(line: 147, column: 7, scope: !1252)
!1263 = !DILocation(line: 148, column: 3, scope: !1252)
!1264 = !DILocation(line: 149, column: 39, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 148, column: 15)
!1266 = !DILocation(line: 149, column: 5, scope: !1265)
!1267 = !DILocation(line: 151, column: 5, scope: !1265)
!1268 = !DILocation(line: 148, column: 11, scope: !1252)
!1269 = distinct !{!1269, !1263, !1270}
!1270 = !DILocation(line: 152, column: 3, scope: !1252)
!1271 = !DILocation(line: 153, column: 3, scope: !1252)
!1272 = !DILocation(line: 154, column: 3, scope: !1252)
!1273 = !DILocation(line: 154, column: 15, scope: !1252)
!1274 = !DILocation(line: 155, column: 3, scope: !1252)
!1275 = !DILocation(line: 156, column: 1, scope: !1252)
!1276 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DILocalVariable(name: "i", arg: 1, scope: !1276, file: !3, line: 159, type: !33)
!1279 = !DILocalVariable(name: "o", arg: 2, scope: !1276, file: !3, line: 159, type: !66)
!1280 = !DILocalVariable(name: "a", scope: !1276, file: !3, line: 162, type: !50)
!1281 = !DILocalVariable(name: "f4", scope: !1276, file: !3, line: 168, type: !24)
!1282 = !DILocation(line: 159, column: 19, scope: !1276)
!1283 = !DILocation(line: 159, column: 29, scope: !1276)
!1284 = !DILocation(line: 161, column: 19, scope: !1276)
!1285 = !DILocation(line: 161, column: 3, scope: !1276)
!1286 = !DILocation(line: 162, column: 7, scope: !1276)
!1287 = !DILocation(line: 163, column: 3, scope: !1276)
!1288 = !DILocation(line: 164, column: 39, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 163, column: 16)
!1290 = !DILocation(line: 164, column: 5, scope: !1289)
!1291 = !DILocation(line: 165, column: 5, scope: !1289)
!1292 = !DILocation(line: 163, column: 11, scope: !1276)
!1293 = distinct !{!1293, !1287, !1294}
!1294 = !DILocation(line: 166, column: 3, scope: !1276)
!1295 = !DILocation(line: 167, column: 3, scope: !1276)
!1296 = !DILocation(line: 168, column: 3, scope: !1276)
!1297 = !DILocation(line: 168, column: 15, scope: !1276)
!1298 = !DILocation(line: 169, column: 3, scope: !1276)
!1299 = !DILocation(line: 170, column: 1, scope: !1276)
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
!1311 = !DILocation(line: 135, column: 3, scope: !1300)
!1312 = !DILocation(line: 136, column: 39, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 135, column: 15)
!1314 = !DILocation(line: 136, column: 5, scope: !1313)
!1315 = !DILocation(line: 137, column: 5, scope: !1313)
!1316 = !DILocation(line: 135, column: 11, scope: !1300)
!1317 = distinct !{!1317, !1311, !1318}
!1318 = !DILocation(line: 138, column: 3, scope: !1300)
!1319 = !DILocation(line: 139, column: 3, scope: !1300)
!1320 = !DILocation(line: 140, column: 3, scope: !1300)
!1321 = !DILocation(line: 140, column: 15, scope: !1300)
!1322 = !DILocation(line: 141, column: 3, scope: !1300)
!1323 = !DILocation(line: 142, column: 1, scope: !1300)
!1324 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DILocalVariable(name: "i", arg: 1, scope: !1324, file: !3, line: 119, type: !33)
!1327 = !DILocalVariable(name: "o", arg: 2, scope: !1324, file: !3, line: 119, type: !66)
!1328 = !DILocalVariable(name: "a", scope: !1324, file: !3, line: 122, type: !50)
!1329 = !DILocation(line: 119, column: 19, scope: !1324)
!1330 = !DILocation(line: 119, column: 29, scope: !1324)
!1331 = !DILocation(line: 121, column: 19, scope: !1324)
!1332 = !DILocation(line: 121, column: 3, scope: !1324)
!1333 = !DILocation(line: 122, column: 7, scope: !1324)
!1334 = !DILocation(line: 123, column: 3, scope: !1324)
!1335 = !DILocation(line: 124, column: 39, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 123, column: 16)
!1337 = !DILocation(line: 124, column: 5, scope: !1336)
!1338 = !DILocation(line: 125, column: 5, scope: !1336)
!1339 = !DILocation(line: 123, column: 11, scope: !1324)
!1340 = distinct !{!1340, !1334, !1341}
!1341 = !DILocation(line: 126, column: 3, scope: !1324)
!1342 = !DILocation(line: 127, column: 3, scope: !1324)
!1343 = !DILocation(line: 128, column: 1, scope: !1324)
!1344 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !1345, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!50, !50}
!1347 = !{!1348, !1349, !1350}
!1348 = !DILocalVariable(name: "a", arg: 1, scope: !1344, file: !3, line: 45, type: !50)
!1349 = !DILocalVariable(name: "i", scope: !1344, file: !3, line: 47, type: !50)
!1350 = !DILocalVariable(name: "b", scope: !1344, file: !3, line: 47, type: !50)
!1351 = !DILocation(line: 45, column: 18, scope: !1344)
!1352 = !DILocation(line: 47, column: 10, scope: !1344)
!1353 = !DILocation(line: 47, column: 7, scope: !1344)
!1354 = !DILocation(line: 49, column: 16, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 49, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 49, column: 3)
!1357 = !DILocation(line: 49, column: 3, scope: !1356)
!1358 = !DILocation(line: 51, column: 5, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 50, column: 3)
!1360 = !DILocation(line: 49, column: 22, scope: !1355)
!1361 = distinct !{!1361, !1357, !1362}
!1362 = !DILocation(line: 53, column: 3, scope: !1356)
!1363 = !DILocation(line: 0, scope: !1344)
!1364 = !DILocation(line: 55, column: 3, scope: !1344)
!1365 = !DILocation(line: 358, column: 3, scope: !989)
!1366 = !DILocation(line: 359, column: 3, scope: !989)
!1367 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 360, column: 8, scope: !989)
!1369 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1368)
!1370 = !DILocation(line: 360, column: 26, scope: !989)
!1371 = !DILocation(line: 360, column: 6, scope: !989)
!1372 = !DILocation(line: 358, column: 15, scope: !989)
!1373 = !DILocation(line: 361, column: 3, scope: !989)
!1374 = !DILocation(line: 359, column: 15, scope: !989)
!1375 = !DILocation(line: 362, column: 3, scope: !989)
!1376 = !DILocation(line: 365, column: 1, scope: !989)
!1377 = !DILocation(line: 364, column: 3, scope: !989)
!1378 = !DILocation(line: 369, column: 3, scope: !1067)
!1379 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 370, column: 8, scope: !1067)
!1381 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1380)
!1382 = !DILocation(line: 370, column: 26, scope: !1067)
!1383 = !DILocation(line: 370, column: 6, scope: !1067)
!1384 = !DILocation(line: 371, column: 3, scope: !1067)
!1385 = !DILocation(line: 369, column: 15, scope: !1067)
!1386 = !DILocation(line: 372, column: 3, scope: !1067)
!1387 = !DILocation(line: 374, column: 1, scope: !1067)
!1388 = !DILocation(line: 373, column: 3, scope: !1067)
!1389 = !DILocation(line: 378, column: 3, scope: !1230)
!1390 = !DILocation(line: 379, column: 3, scope: !1230)
!1391 = !DILocation(line: 380, column: 3, scope: !1230)
!1392 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 381, column: 8, scope: !1230)
!1394 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1393)
!1395 = !DILocation(line: 381, column: 26, scope: !1230)
!1396 = !DILocation(line: 381, column: 6, scope: !1230)
!1397 = !DILocation(line: 382, column: 3, scope: !1230)
!1398 = !DILocation(line: 378, column: 15, scope: !1230)
!1399 = !DILocation(line: 383, column: 3, scope: !1230)
!1400 = !DILocation(line: 379, column: 15, scope: !1230)
!1401 = !DILocation(line: 384, column: 3, scope: !1230)
!1402 = !DILocation(line: 380, column: 15, scope: !1230)
!1403 = !DILocation(line: 385, column: 3, scope: !1230)
!1404 = !DILocation(line: 387, column: 1, scope: !1230)
!1405 = !DILocation(line: 386, column: 3, scope: !1230)
!1406 = !DILocation(line: 415, column: 3, scope: !773)
!1407 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 416, column: 8, scope: !773)
!1409 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1408)
!1410 = !DILocation(line: 416, column: 26, scope: !773)
!1411 = !DILocation(line: 416, column: 6, scope: !773)
!1412 = !DILocation(line: 417, column: 3, scope: !773)
!1413 = !DILocation(line: 415, column: 15, scope: !773)
!1414 = !DILocation(line: 418, column: 3, scope: !773)
!1415 = !DILocation(line: 420, column: 1, scope: !773)
!1416 = !DILocation(line: 419, column: 3, scope: !773)
!1417 = !DILocation(line: 424, column: 3, scope: !729)
!1418 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 425, column: 8, scope: !729)
!1420 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1419)
!1421 = !DILocation(line: 425, column: 26, scope: !729)
!1422 = !DILocation(line: 425, column: 6, scope: !729)
!1423 = !DILocation(line: 426, column: 3, scope: !729)
!1424 = !DILocation(line: 424, column: 15, scope: !729)
!1425 = !DILocation(line: 427, column: 3, scope: !729)
!1426 = !DILocation(line: 429, column: 1, scope: !729)
!1427 = !DILocation(line: 428, column: 3, scope: !729)
!1428 = !DILocation(line: 433, column: 3, scope: !678)
!1429 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 434, column: 8, scope: !678)
!1431 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1430)
!1432 = !DILocation(line: 434, column: 26, scope: !678)
!1433 = !DILocation(line: 434, column: 6, scope: !678)
!1434 = !DILocation(line: 435, column: 3, scope: !678)
!1435 = !DILocation(line: 433, column: 15, scope: !678)
!1436 = !DILocation(line: 436, column: 3, scope: !678)
!1437 = !DILocation(line: 438, column: 1, scope: !678)
!1438 = !DILocation(line: 437, column: 3, scope: !678)
!1439 = !DILocation(line: 442, column: 3, scope: !616)
!1440 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 443, column: 8, scope: !616)
!1442 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1441)
!1443 = !DILocation(line: 443, column: 26, scope: !616)
!1444 = !DILocation(line: 443, column: 6, scope: !616)
!1445 = !DILocation(line: 444, column: 3, scope: !616)
!1446 = !DILocation(line: 442, column: 15, scope: !616)
!1447 = !DILocation(line: 445, column: 3, scope: !616)
!1448 = !DILocation(line: 447, column: 1, scope: !616)
!1449 = !DILocation(line: 446, column: 3, scope: !616)
!1450 = !DILocation(line: 451, column: 3, scope: !560)
!1451 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 452, column: 8, scope: !560)
!1453 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1452)
!1454 = !DILocation(line: 452, column: 26, scope: !560)
!1455 = !DILocation(line: 452, column: 6, scope: !560)
!1456 = !DILocation(line: 453, column: 3, scope: !560)
!1457 = !DILocation(line: 451, column: 15, scope: !560)
!1458 = !DILocation(line: 454, column: 3, scope: !560)
!1459 = !DILocation(line: 456, column: 1, scope: !560)
!1460 = !DILocation(line: 455, column: 3, scope: !560)
!1461 = !DILocation(line: 459, column: 3, scope: !1132)
!1462 = !DILocation(line: 460, column: 3, scope: !1132)
!1463 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 461, column: 8, scope: !1132)
!1465 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1464)
!1466 = !DILocation(line: 461, column: 26, scope: !1132)
!1467 = !DILocation(line: 461, column: 6, scope: !1132)
!1468 = !DILocation(line: 459, column: 15, scope: !1132)
!1469 = !DILocation(line: 463, column: 3, scope: !1132)
!1470 = !DILocation(line: 460, column: 15, scope: !1132)
!1471 = !DILocation(line: 464, column: 3, scope: !1132)
!1472 = !DILocation(line: 467, column: 1, scope: !1132)
!1473 = !DILocation(line: 466, column: 3, scope: !1132)
!1474 = distinct !DISubprogram(name: "_get_fiber_state", scope: !182, file: !182, line: 76, type: !1475, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !182, line: 66, baseType: !335)
!1479 = !{}
!1480 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1485)
!1481 = distinct !DISubprogram(name: "get_cpu", scope: !1482, file: !1482, line: 127, type: !1483, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1482 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!324}
!1485 = distinct !DILocation(line: 78, column: 10, scope: !1474)
!1486 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1485)
!1487 = !DILocation(line: 78, column: 21, scope: !1474)
!1488 = !DILocation(line: 78, column: 3, scope: !1474)
!1489 = distinct !DISubprogram(name: "nk_fiber_current", scope: !182, file: !182, line: 83, type: !1490, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!296}
!1492 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 85, column: 10, scope: !1489)
!1495 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1493)
!1496 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1494)
!1497 = !DILocation(line: 85, column: 30, scope: !1489)
!1498 = !DILocation(line: 85, column: 3, scope: !1489)
!1499 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !182, file: !182, line: 90, type: !1490, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1500 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 92, column: 10, scope: !1499)
!1503 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1501)
!1504 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1502)
!1505 = !DILocation(line: 92, column: 30, scope: !1499)
!1506 = !DILocation(line: 92, column: 3, scope: !1499)
!1507 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !182, file: !182, line: 96, type: !1508, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!339}
!1510 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 98, column: 10, scope: !1507)
!1513 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1511)
!1514 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1512)
!1515 = !DILocation(line: 98, column: 30, scope: !1507)
!1516 = !DILocation(line: 98, column: 3, scope: !1507)
!1517 = distinct !DISubprogram(name: "_get_sched_head", scope: !182, file: !182, line: 103, type: !1518, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!205}
!1520 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 105, column: 12, scope: !1517)
!1523 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1521)
!1524 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1522)
!1525 = !DILocation(line: 105, column: 32, scope: !1517)
!1526 = !DILocation(line: 105, column: 3, scope: !1517)
!1527 = distinct !DISubprogram(name: "_fiber_push", scope: !182, file: !182, line: 113, type: !1528, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !296, !29}
!1530 = !{!1531, !1532}
!1531 = !DILocalVariable(name: "f", arg: 1, scope: !1527, file: !182, line: 113, type: !296)
!1532 = !DILocalVariable(name: "x", arg: 2, scope: !1527, file: !182, line: 113, type: !29)
!1533 = !DILocation(line: 113, column: 31, scope: !1527)
!1534 = !DILocation(line: 113, column: 43, scope: !1527)
!1535 = !DILocation(line: 115, column: 8, scope: !1527)
!1536 = !DILocation(line: 115, column: 12, scope: !1527)
!1537 = !DILocation(line: 116, column: 6, scope: !1527)
!1538 = !DILocation(line: 116, column: 26, scope: !1527)
!1539 = !DILocation(line: 117, column: 1, scope: !1527)
!1540 = distinct !DISubprogram(name: "_rr_policy", scope: !182, file: !182, line: 119, type: !1490, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1541)
!1541 = !{!1542, !1543, !1544, !1548}
!1542 = !DILocalVariable(name: "fiber_sched_queue", scope: !1540, file: !182, line: 122, type: !205)
!1543 = !DILocalVariable(name: "fiber_to_schedule", scope: !1540, file: !182, line: 125, type: !296)
!1544 = !DILocalVariable(name: "first", scope: !1545, file: !182, line: 128, type: !296)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !182, line: 128, column: 25)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !182, line: 126, column: 40)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !182, line: 126, column: 7)
!1548 = !DILocalVariable(name: "__mptr", scope: !1549, file: !182, line: 128, type: !1552)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !182, line: 128, column: 25)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !182, line: 128, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !182, line: 128, column: 25)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!1554 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 122, column: 41, scope: !1540)
!1558 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1555)
!1559 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1556)
!1560 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !1557)
!1561 = !DILocation(line: 122, column: 21, scope: !1540)
!1562 = !DILocation(line: 125, column: 15, scope: !1540)
!1563 = !DILocalVariable(name: "head", arg: 1, scope: !1564, file: !53, line: 184, type: !1552)
!1564 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1565, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!50, !1552}
!1567 = !{!1563}
!1568 = !DILocation(line: 184, column: 54, scope: !1564, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 126, column: 9, scope: !1547)
!1570 = !DILocation(line: 186, column: 15, scope: !1564, inlinedAt: !1569)
!1571 = !DILocation(line: 186, column: 20, scope: !1564, inlinedAt: !1569)
!1572 = !DILocation(line: 126, column: 7, scope: !1540)
!1573 = !DILocation(line: 128, column: 25, scope: !1545)
!1574 = !DILocation(line: 131, column: 40, scope: !1546)
!1575 = !DILocalVariable(name: "entry", arg: 1, scope: !1576, file: !53, line: 151, type: !205)
!1576 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !1577, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !205}
!1579 = !{!1575}
!1580 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 131, column: 5, scope: !1546)
!1582 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !1581)
!1583 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !1581)
!1584 = !DILocalVariable(name: "prev", arg: 1, scope: !1585, file: !53, line: 128, type: !205)
!1585 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1586, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !205, !205}
!1588 = !{!1584, !1589}
!1589 = !DILocalVariable(name: "next", arg: 2, scope: !1585, file: !53, line: 128, type: !205)
!1590 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !1581)
!1592 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !1591)
!1593 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !1591)
!1594 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !1591)
!1595 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !1591)
!1596 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !1591)
!1597 = !DILocalVariable(name: "list", arg: 1, scope: !1598, file: !53, line: 73, type: !205)
!1598 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !1577, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1599)
!1599 = !{!1597}
!1600 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !1581)
!1602 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !1601)
!1603 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !1601)
!1604 = !DILocation(line: 132, column: 3, scope: !1546)
!1605 = !DILocation(line: 0, scope: !1540)
!1606 = !DILocation(line: 139, column: 3, scope: !1540)
!1607 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !182, file: !182, line: 144, type: !1608, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !296}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1618}
!1611 = !DILocalVariable(name: "f", arg: 1, scope: !1607, file: !182, line: 144, type: !296)
!1612 = !DILocalVariable(name: "next", scope: !1607, file: !182, line: 149, type: !296)
!1613 = !DILocalVariable(name: "temp", scope: !1607, file: !182, line: 155, type: !296)
!1614 = !DILocalVariable(name: "waitq", scope: !1607, file: !182, line: 156, type: !205)
!1615 = !DILocalVariable(name: "first", scope: !1616, file: !182, line: 163, type: !296)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !182, line: 163, column: 12)
!1617 = distinct !DILexicalBlock(scope: !1607, file: !182, line: 160, column: 25)
!1618 = !DILocalVariable(name: "__mptr", scope: !1619, file: !182, line: 163, type: !1552)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !182, line: 163, column: 12)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !182, line: 163, column: 12)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !182, line: 163, column: 12)
!1622 = !DILocation(line: 144, column: 33, scope: !1607)
!1623 = !DILocation(line: 147, column: 6, scope: !1607)
!1624 = !DILocation(line: 147, column: 15, scope: !1607)
!1625 = !DILocation(line: 149, column: 15, scope: !1607)
!1626 = !DILocation(line: 156, column: 34, scope: !1607)
!1627 = !DILocation(line: 156, column: 21, scope: !1607)
!1628 = !DILocation(line: 160, column: 12, scope: !1607)
!1629 = !DILocation(line: 160, column: 21, scope: !1607)
!1630 = !DILocation(line: 160, column: 3, scope: !1607)
!1631 = !DILocation(line: 163, column: 12, scope: !1616)
!1632 = !DILocation(line: 163, column: 12, scope: !1621)
!1633 = !DILocation(line: 155, column: 15, scope: !1607)
!1634 = !DILocation(line: 164, column: 27, scope: !1617)
!1635 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 164, column: 5, scope: !1617)
!1637 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !1636)
!1638 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !1636)
!1639 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !1636)
!1641 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !1640)
!1642 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !1640)
!1643 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !1640)
!1644 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !1640)
!1645 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !1640)
!1646 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !1636)
!1648 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !1647)
!1649 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !1647)
!1650 = !DILocation(line: 165, column: 16, scope: !1617)
!1651 = !DILocation(line: 168, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1617, file: !182, line: 168, column: 9)
!1653 = !DILocation(line: 168, column: 9, scope: !1617)
!1654 = !DILocalVariable(name: "f", arg: 1, scope: !1655, file: !182, line: 663, type: !296)
!1655 = distinct !DISubprogram(name: "nk_fiber_run", scope: !182, file: !182, line: 663, type: !1656, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!50, !296, !70}
!1658 = !{!1654, !1659, !1660, !1661}
!1659 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1655, file: !182, line: 663, type: !70)
!1660 = !DILocalVariable(name: "curr_thread", scope: !1655, file: !182, line: 666, type: !339)
!1661 = !DILocalVariable(name: "fiber_sched_queue", scope: !1655, file: !182, line: 674, type: !205)
!1662 = !DILocation(line: 663, column: 30, scope: !1655, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 171, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1652, file: !182, line: 168, column: 14)
!1665 = !DILocation(line: 663, column: 41, scope: !1655, inlinedAt: !1663)
!1666 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 98, column: 10, scope: !1507, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 666, column: 30, scope: !1655, inlinedAt: !1663)
!1670 = !DILocation(line: 666, column: 16, scope: !1655, inlinedAt: !1663)
!1671 = !DILocation(line: 366, column: 29, scope: !1672, inlinedAt: !1679)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !182, line: 366, column: 29)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !182, line: 366, column: 29)
!1674 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !182, file: !182, line: 363, type: !561, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DILocalVariable(name: "sys", scope: !1674, file: !182, line: 366, type: !318)
!1677 = !DILocalVariable(name: "__r", scope: !1673, file: !182, line: 366, type: !318)
!1678 = !DILocalVariable(name: "__r", scope: !1672, file: !182, line: 366, type: !318)
!1679 = distinct !DILocation(line: 373, column: 20, scope: !1680, inlinedAt: !1688)
!1680 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !182, file: !182, line: 370, type: !1508, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1681)
!1681 = !{!1682, !1683, !1684, !1686}
!1682 = !DILocalVariable(name: "random_cpu", scope: !1680, file: !182, line: 373, type: !50)
!1683 = !DILocalVariable(name: "sys", scope: !1680, file: !182, line: 374, type: !318)
!1684 = !DILocalVariable(name: "__r", scope: !1685, file: !182, line: 374, type: !318)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !182, line: 374, column: 27)
!1686 = !DILocalVariable(name: "__r", scope: !1687, file: !182, line: 374, type: !318)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !182, line: 374, column: 27)
!1688 = distinct !DILocation(line: 670, column: 19, scope: !1689, inlinedAt: !1663)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !182, line: 669, column: 23)
!1690 = distinct !DILexicalBlock(scope: !1655, file: !182, line: 669, column: 7)
!1691 = !{i32 -2147185111}
!1692 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !1679)
!1693 = !DILocation(line: 366, column: 23, scope: !1674, inlinedAt: !1679)
!1694 = !DILocation(line: 358, column: 5, scope: !1695, inlinedAt: !1698)
!1695 = distinct !DISubprogram(name: "_get_random", scope: !182, file: !182, line: 356, type: !1171, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1696)
!1696 = !{!1697}
!1697 = !DILocalVariable(name: "t", scope: !1695, file: !182, line: 358, type: !29)
!1698 = distinct !DILocation(line: 367, column: 18, scope: !1674, inlinedAt: !1679)
!1699 = !DILocation(line: 359, column: 5, scope: !1695, inlinedAt: !1698)
!1700 = !DILocation(line: 360, column: 12, scope: !1695, inlinedAt: !1698)
!1701 = !DILocation(line: 358, column: 14, scope: !1695, inlinedAt: !1698)
!1702 = !DILocation(line: 361, column: 1, scope: !1695, inlinedAt: !1698)
!1703 = !DILocation(line: 367, column: 39, scope: !1674, inlinedAt: !1679)
!1704 = !DILocation(line: 367, column: 34, scope: !1674, inlinedAt: !1679)
!1705 = !DILocation(line: 367, column: 32, scope: !1674, inlinedAt: !1679)
!1706 = !DILocation(line: 374, column: 27, scope: !1687, inlinedAt: !1688)
!1707 = !{i32 -2147182110}
!1708 = !DILocation(line: 374, column: 27, scope: !1685, inlinedAt: !1688)
!1709 = !DILocation(line: 374, column: 21, scope: !1680, inlinedAt: !1688)
!1710 = !DILocation(line: 375, column: 10, scope: !1680, inlinedAt: !1688)
!1711 = !DILocation(line: 0, scope: !1655, inlinedAt: !1663)
!1712 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 674, column: 41, scope: !1655, inlinedAt: !1663)
!1716 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1713)
!1717 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1714)
!1718 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !1715)
!1719 = !DILocation(line: 674, column: 21, scope: !1655, inlinedAt: !1663)
!1720 = !DILocation(line: 678, column: 6, scope: !1655, inlinedAt: !1663)
!1721 = !DILocation(line: 678, column: 15, scope: !1655, inlinedAt: !1663)
!1722 = !DILocation(line: 679, column: 22, scope: !1655, inlinedAt: !1663)
!1723 = !DILocalVariable(name: "nelm", arg: 1, scope: !1724, file: !53, line: 116, type: !205)
!1724 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1586, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1725)
!1725 = !{!1723, !1726}
!1726 = !DILocalVariable(name: "head", arg: 2, scope: !1724, file: !53, line: 116, type: !205)
!1727 = !DILocation(line: 116, column: 52, scope: !1724, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 679, column: 3, scope: !1655, inlinedAt: !1663)
!1729 = !DILocation(line: 116, column: 76, scope: !1724, inlinedAt: !1728)
!1730 = !DILocation(line: 118, column: 25, scope: !1724, inlinedAt: !1728)
!1731 = !DILocalVariable(name: "nelm", arg: 1, scope: !1732, file: !53, line: 85, type: !205)
!1732 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1733, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !205, !205, !205}
!1735 = !{!1731, !1736, !1737}
!1736 = !DILocalVariable(name: "prev", arg: 2, scope: !1732, file: !53, line: 86, type: !205)
!1737 = !DILocalVariable(name: "next", arg: 3, scope: !1732, file: !53, line: 87, type: !205)
!1738 = !DILocation(line: 85, column: 49, scope: !1732, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 118, column: 2, scope: !1724, inlinedAt: !1728)
!1740 = !DILocation(line: 86, column: 28, scope: !1732, inlinedAt: !1739)
!1741 = !DILocation(line: 87, column: 28, scope: !1732, inlinedAt: !1739)
!1742 = !DILocation(line: 89, column: 13, scope: !1732, inlinedAt: !1739)
!1743 = !DILocation(line: 90, column: 8, scope: !1732, inlinedAt: !1739)
!1744 = !DILocation(line: 90, column: 13, scope: !1732, inlinedAt: !1739)
!1745 = !DILocation(line: 91, column: 8, scope: !1732, inlinedAt: !1739)
!1746 = !DILocation(line: 91, column: 13, scope: !1732, inlinedAt: !1739)
!1747 = !DILocation(line: 92, column: 8, scope: !1732, inlinedAt: !1739)
!1748 = !DILocation(line: 92, column: 13, scope: !1732, inlinedAt: !1739)
!1749 = !DILocation(line: 683, column: 20, scope: !1750, inlinedAt: !1663)
!1750 = distinct !DILexicalBlock(scope: !1655, file: !182, line: 683, column: 7)
!1751 = !DILocation(line: 683, column: 7, scope: !1750, inlinedAt: !1663)
!1752 = !DILocation(line: 683, column: 7, scope: !1655, inlinedAt: !1663)
!1753 = !DILocation(line: 687, column: 5, scope: !1754, inlinedAt: !1663)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !182, line: 683, column: 26)
!1755 = !DILocation(line: 688, column: 3, scope: !1754, inlinedAt: !1663)
!1756 = distinct !{!1756, !1630, !1757}
!1757 = !DILocation(line: 173, column: 3, scope: !1607)
!1758 = !DILocation(line: 175, column: 6, scope: !1607)
!1759 = !DILocation(line: 175, column: 14, scope: !1607)
!1760 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 122, column: 41, scope: !1540, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 179, column: 10, scope: !1607)
!1765 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1761)
!1766 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1762)
!1767 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !1763)
!1768 = !DILocation(line: 122, column: 21, scope: !1540, inlinedAt: !1764)
!1769 = !DILocation(line: 125, column: 15, scope: !1540, inlinedAt: !1764)
!1770 = !DILocation(line: 184, column: 54, scope: !1564, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 126, column: 9, scope: !1547, inlinedAt: !1764)
!1772 = !DILocation(line: 186, column: 15, scope: !1564, inlinedAt: !1771)
!1773 = !DILocation(line: 186, column: 20, scope: !1564, inlinedAt: !1771)
!1774 = !DILocation(line: 126, column: 7, scope: !1540, inlinedAt: !1764)
!1775 = !DILocation(line: 128, column: 25, scope: !1545, inlinedAt: !1764)
!1776 = !DILocation(line: 131, column: 40, scope: !1546, inlinedAt: !1764)
!1777 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 131, column: 5, scope: !1546, inlinedAt: !1764)
!1779 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !1778)
!1780 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !1778)
!1781 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !1778)
!1783 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !1782)
!1784 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !1782)
!1785 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !1782)
!1786 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !1782)
!1787 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !1782)
!1788 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !1778)
!1790 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !1789)
!1791 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !1789)
!1792 = !DILocation(line: 180, column: 8, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1607, file: !182, line: 180, column: 7)
!1794 = !DILocation(line: 180, column: 7, scope: !1607)
!1795 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 181, column: 12, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1793, file: !182, line: 180, column: 16)
!1800 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1796)
!1801 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1797)
!1802 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !1798)
!1803 = !DILocation(line: 182, column: 3, scope: !1799)
!1804 = !DILocation(line: 0, scope: !1607)
!1805 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 183, column: 3, scope: !1607)
!1808 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1806)
!1809 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1807)
!1810 = !DILocation(line: 183, column: 23, scope: !1607)
!1811 = !DILocation(line: 183, column: 34, scope: !1607)
!1812 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 186, column: 19, scope: !1607)
!1815 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1813)
!1816 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1814)
!1817 = !DILocation(line: 186, column: 39, scope: !1607)
!1818 = !DILocation(line: 186, column: 51, scope: !1607)
!1819 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 186, column: 3, scope: !1607)
!1821 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !1820)
!1822 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !1820)
!1823 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !1820)
!1825 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !1824)
!1826 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !1824)
!1827 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !1824)
!1828 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !1824)
!1829 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !1824)
!1830 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !1820)
!1832 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !1831)
!1833 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !1831)
!1834 = !DILocation(line: 189, column: 3, scope: !1607)
!1835 = !DILocation(line: 190, column: 3, scope: !1607)
!1836 = !DILocation(line: 193, column: 3, scope: !1607)
!1837 = !DILocation(line: 196, column: 1, scope: !1607)
!1838 = !DILocation(line: 663, column: 30, scope: !1655)
!1839 = !DILocation(line: 663, column: 41, scope: !1655)
!1840 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 98, column: 10, scope: !1507, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 666, column: 30, scope: !1655)
!1844 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1841)
!1845 = !DILocation(line: 666, column: 16, scope: !1655)
!1846 = !DILocation(line: 669, column: 7, scope: !1690)
!1847 = !DILocation(line: 669, column: 7, scope: !1655)
!1848 = !DILocation(line: 366, column: 29, scope: !1672, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 373, column: 20, scope: !1680, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 670, column: 19, scope: !1689)
!1851 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !1849)
!1852 = !DILocation(line: 366, column: 23, scope: !1674, inlinedAt: !1849)
!1853 = !DILocation(line: 358, column: 5, scope: !1695, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 367, column: 18, scope: !1674, inlinedAt: !1849)
!1855 = !DILocation(line: 359, column: 5, scope: !1695, inlinedAt: !1854)
!1856 = !DILocation(line: 360, column: 12, scope: !1695, inlinedAt: !1854)
!1857 = !DILocation(line: 358, column: 14, scope: !1695, inlinedAt: !1854)
!1858 = !DILocation(line: 361, column: 1, scope: !1695, inlinedAt: !1854)
!1859 = !DILocation(line: 367, column: 39, scope: !1674, inlinedAt: !1849)
!1860 = !DILocation(line: 367, column: 34, scope: !1674, inlinedAt: !1849)
!1861 = !DILocation(line: 367, column: 32, scope: !1674, inlinedAt: !1849)
!1862 = !DILocation(line: 374, column: 27, scope: !1687, inlinedAt: !1850)
!1863 = !DILocation(line: 374, column: 27, scope: !1685, inlinedAt: !1850)
!1864 = !DILocation(line: 374, column: 21, scope: !1680, inlinedAt: !1850)
!1865 = !DILocation(line: 375, column: 10, scope: !1680, inlinedAt: !1850)
!1866 = !DILocation(line: 671, column: 3, scope: !1689)
!1867 = !DILocation(line: 0, scope: !1655)
!1868 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 674, column: 41, scope: !1655)
!1872 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !1869)
!1873 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !1870)
!1874 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !1871)
!1875 = !DILocation(line: 674, column: 21, scope: !1655)
!1876 = !DILocation(line: 678, column: 6, scope: !1655)
!1877 = !DILocation(line: 678, column: 15, scope: !1655)
!1878 = !DILocation(line: 679, column: 22, scope: !1655)
!1879 = !DILocation(line: 116, column: 52, scope: !1724, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 679, column: 3, scope: !1655)
!1881 = !DILocation(line: 116, column: 76, scope: !1724, inlinedAt: !1880)
!1882 = !DILocation(line: 118, column: 25, scope: !1724, inlinedAt: !1880)
!1883 = !DILocation(line: 85, column: 49, scope: !1732, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 118, column: 2, scope: !1724, inlinedAt: !1880)
!1885 = !DILocation(line: 86, column: 28, scope: !1732, inlinedAt: !1884)
!1886 = !DILocation(line: 87, column: 28, scope: !1732, inlinedAt: !1884)
!1887 = !DILocation(line: 89, column: 13, scope: !1732, inlinedAt: !1884)
!1888 = !DILocation(line: 90, column: 8, scope: !1732, inlinedAt: !1884)
!1889 = !DILocation(line: 90, column: 13, scope: !1732, inlinedAt: !1884)
!1890 = !DILocation(line: 91, column: 8, scope: !1732, inlinedAt: !1884)
!1891 = !DILocation(line: 91, column: 13, scope: !1732, inlinedAt: !1884)
!1892 = !DILocation(line: 92, column: 8, scope: !1732, inlinedAt: !1884)
!1893 = !DILocation(line: 92, column: 13, scope: !1732, inlinedAt: !1884)
!1894 = !DILocation(line: 683, column: 20, scope: !1750)
!1895 = !DILocation(line: 683, column: 7, scope: !1750)
!1896 = !DILocation(line: 683, column: 7, scope: !1655)
!1897 = !DILocation(line: 687, column: 5, scope: !1754)
!1898 = !DILocation(line: 688, column: 3, scope: !1754)
!1899 = !DILocation(line: 690, column: 3, scope: !1655)
!1900 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !182, file: !182, line: 198, type: !1608, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "f_to", arg: 1, scope: !1900, file: !182, line: 198, type: !296)
!1903 = !DILocation(line: 198, column: 33, scope: !1900)
!1904 = !DILocation(line: 202, column: 9, scope: !1900)
!1905 = !DILocation(line: 202, column: 19, scope: !1900)
!1906 = !DILocation(line: 202, column: 32, scope: !1900)
!1907 = !DILocation(line: 202, column: 3, scope: !1900)
!1908 = !DILocation(line: 208, column: 3, scope: !1900)
!1909 = !DILocation(line: 210, column: 3, scope: !1900)
!1910 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !182, file: !182, line: 274, type: !1608, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1911)
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "f", arg: 1, scope: !1910, file: !182, line: 274, type: !296)
!1913 = !DILocation(line: 274, column: 33, scope: !1910)
!1914 = !DILocation(line: 276, column: 26, scope: !1910)
!1915 = !DILocation(line: 276, column: 37, scope: !1910)
!1916 = !DILocation(line: 276, column: 6, scope: !1910)
!1917 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 277, column: 3, scope: !1910)
!1919 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1918)
!1920 = !DILocation(line: 276, column: 32, scope: !1910)
!1921 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1918)
!1922 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1918)
!1923 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1918)
!1924 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 278, column: 3, scope: !1910)
!1926 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1925)
!1927 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1925)
!1928 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1925)
!1929 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1925)
!1930 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 279, column: 3, scope: !1910)
!1932 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1931)
!1933 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1931)
!1934 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1931)
!1935 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1931)
!1936 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 280, column: 3, scope: !1910)
!1938 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1937)
!1939 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1937)
!1940 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1937)
!1941 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1937)
!1942 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 281, column: 3, scope: !1910)
!1944 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1943)
!1945 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1943)
!1946 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1943)
!1947 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1943)
!1948 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 282, column: 3, scope: !1910)
!1950 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1949)
!1951 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1949)
!1952 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1949)
!1953 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1949)
!1954 = !DILocation(line: 283, column: 18, scope: !1910)
!1955 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 283, column: 3, scope: !1910)
!1957 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1956)
!1958 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1956)
!1959 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1956)
!1960 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1956)
!1961 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 284, column: 3, scope: !1910)
!1963 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1962)
!1964 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1962)
!1965 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1962)
!1966 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1962)
!1967 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 285, column: 3, scope: !1910)
!1969 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1968)
!1970 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1968)
!1971 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1968)
!1972 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1968)
!1973 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 286, column: 3, scope: !1910)
!1975 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1974)
!1976 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1974)
!1977 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1974)
!1978 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1974)
!1979 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 287, column: 3, scope: !1910)
!1981 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1980)
!1982 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1980)
!1983 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1980)
!1984 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1980)
!1985 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 288, column: 3, scope: !1910)
!1987 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1986)
!1988 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1986)
!1989 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1986)
!1990 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1986)
!1991 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 289, column: 3, scope: !1910)
!1993 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1992)
!1994 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1992)
!1995 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1992)
!1996 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1992)
!1997 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 290, column: 3, scope: !1910)
!1999 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !1998)
!2000 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !1998)
!2001 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !1998)
!2002 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !1998)
!2003 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 291, column: 3, scope: !1910)
!2005 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !2004)
!2006 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !2004)
!2007 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !2004)
!2008 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !2004)
!2009 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 292, column: 3, scope: !1910)
!2011 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !2010)
!2012 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !2010)
!2013 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !2010)
!2014 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !2010)
!2015 = !DILocation(line: 294, column: 3, scope: !1910)
!2016 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !182, file: !182, line: 299, type: !2017, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!50, !296}
!2019 = !{!2020, !2021, !2022}
!2020 = !DILocalVariable(name: "f_to", arg: 1, scope: !2016, file: !182, line: 299, type: !296)
!2021 = !DILocalVariable(name: "f_from", scope: !2016, file: !182, line: 302, type: !296)
!2022 = !DILocalVariable(name: "fiber_sched_queue", scope: !2023, file: !182, line: 312, type: !205)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !182, line: 310, column: 63)
!2024 = distinct !DILexicalBlock(scope: !2016, file: !182, line: 310, column: 7)
!2025 = !DILocation(line: 299, column: 36, scope: !2016)
!2026 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 302, column: 24, scope: !2016)
!2030 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2027)
!2031 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2028)
!2032 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !2029)
!2033 = !DILocation(line: 302, column: 15, scope: !2016)
!2034 = !DILocation(line: 305, column: 15, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2016, file: !182, line: 305, column: 7)
!2036 = !DILocation(line: 305, column: 32, scope: !2035)
!2037 = !DILocation(line: 306, column: 22, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !182, line: 305, column: 61)
!2039 = !DILocation(line: 307, column: 3, scope: !2038)
!2040 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 310, column: 17, scope: !2024)
!2044 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2041)
!2045 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2042)
!2046 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !2043)
!2047 = !DILocation(line: 310, column: 14, scope: !2024)
!2048 = !DILocation(line: 310, column: 34, scope: !2024)
!2049 = !DILocation(line: 310, column: 45, scope: !2024)
!2050 = !DILocation(line: 310, column: 54, scope: !2024)
!2051 = !DILocation(line: 310, column: 7, scope: !2016)
!2052 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 312, column: 43, scope: !2023)
!2056 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2053)
!2057 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2054)
!2058 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !2055)
!2059 = !DILocation(line: 312, column: 23, scope: !2023)
!2060 = !DILocation(line: 318, column: 29, scope: !2023)
!2061 = !DILocation(line: 116, column: 52, scope: !1724, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 318, column: 5, scope: !2023)
!2063 = !DILocation(line: 116, column: 76, scope: !1724, inlinedAt: !2062)
!2064 = !DILocation(line: 118, column: 25, scope: !1724, inlinedAt: !2062)
!2065 = !DILocation(line: 85, column: 49, scope: !1732, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 118, column: 2, scope: !1724, inlinedAt: !2062)
!2067 = !DILocation(line: 86, column: 28, scope: !1732, inlinedAt: !2066)
!2068 = !DILocation(line: 87, column: 28, scope: !1732, inlinedAt: !2066)
!2069 = !DILocation(line: 89, column: 13, scope: !1732, inlinedAt: !2066)
!2070 = !DILocation(line: 90, column: 8, scope: !1732, inlinedAt: !2066)
!2071 = !DILocation(line: 90, column: 13, scope: !1732, inlinedAt: !2066)
!2072 = !DILocation(line: 91, column: 8, scope: !1732, inlinedAt: !2066)
!2073 = !DILocation(line: 91, column: 13, scope: !1732, inlinedAt: !2066)
!2074 = !DILocation(line: 92, column: 8, scope: !1732, inlinedAt: !2066)
!2075 = !DILocation(line: 92, column: 13, scope: !1732, inlinedAt: !2066)
!2076 = !DILocation(line: 319, column: 3, scope: !2023)
!2077 = !DILocation(line: 323, column: 16, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2016, file: !182, line: 323, column: 7)
!2079 = !DILocation(line: 323, column: 8, scope: !2078)
!2080 = !DILocation(line: 323, column: 7, scope: !2016)
!2081 = !DILocation(line: 324, column: 29, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !182, line: 323, column: 24)
!2083 = !DILocalVariable(name: "vc", arg: 1, scope: !2084, file: !182, line: 906, type: !47)
!2084 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !182, file: !182, line: 906, type: !2085, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !47}
!2087 = !{!2083, !2088}
!2088 = !DILocalVariable(name: "curr_fiber", scope: !2084, file: !182, line: 909, type: !296)
!2089 = !DILocation(line: 906, column: 49, scope: !2084, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 324, column: 5, scope: !2082)
!2091 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 909, column: 28, scope: !2084, inlinedAt: !2090)
!2095 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2092)
!2096 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2093)
!2097 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !2094)
!2098 = !DILocation(line: 909, column: 15, scope: !2084, inlinedAt: !2090)
!2099 = !DILocation(line: 912, column: 15, scope: !2084, inlinedAt: !2090)
!2100 = !DILocation(line: 912, column: 18, scope: !2084, inlinedAt: !2090)
!2101 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2108)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !16, line: 258, column: 26)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !16, line: 258, column: 26)
!2104 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !1508, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2105)
!2105 = !{!2106, !2107}
!2106 = !DILocalVariable(name: "__r", scope: !2103, file: !16, line: 258, type: !215)
!2107 = !DILocalVariable(name: "__r", scope: !2102, file: !16, line: 258, type: !215)
!2108 = distinct !DILocation(line: 913, column: 3, scope: !2084, inlinedAt: !2090)
!2109 = !{i32 -2147260791}
!2110 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2108)
!2111 = !DILocation(line: 913, column: 21, scope: !2084, inlinedAt: !2090)
!2112 = !DILocation(line: 913, column: 24, scope: !2084, inlinedAt: !2090)
!2113 = !DILocation(line: 325, column: 3, scope: !2082)
!2114 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 328, column: 3, scope: !2016)
!2117 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2115)
!2118 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2116)
!2119 = !DILocation(line: 328, column: 23, scope: !2016)
!2120 = !DILocation(line: 328, column: 34, scope: !2016)
!2121 = !DILocation(line: 329, column: 20, scope: !2016)
!2122 = !DILocation(line: 330, column: 9, scope: !2016)
!2123 = !DILocation(line: 330, column: 18, scope: !2016)
!2124 = !DILocation(line: 331, column: 3, scope: !2016)
!2125 = !DILocation(line: 333, column: 3, scope: !2016)
!2126 = !DILocation(line: 906, column: 49, scope: !2084)
!2127 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 909, column: 28, scope: !2084)
!2131 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2128)
!2132 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2129)
!2133 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !2130)
!2134 = !DILocation(line: 909, column: 15, scope: !2084)
!2135 = !DILocation(line: 912, column: 15, scope: !2084)
!2136 = !DILocation(line: 912, column: 18, scope: !2084)
!2137 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 913, column: 3, scope: !2084)
!2139 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2138)
!2140 = !DILocation(line: 913, column: 21, scope: !2084)
!2141 = !DILocation(line: 913, column: 24, scope: !2084)
!2142 = !DILocation(line: 914, column: 1, scope: !2084)
!2143 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !182, file: !182, line: 336, type: !2144, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null}
!2146 = !{!2147}
!2147 = !DILocalVariable(name: "curr", scope: !2143, file: !182, line: 338, type: !296)
!2148 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 338, column: 22, scope: !2143)
!2152 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2149)
!2153 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2150)
!2154 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !2151)
!2155 = !DILocation(line: 338, column: 15, scope: !2143)
!2156 = !DILocation(line: 340, column: 3, scope: !2143)
!2157 = !DILocation(line: 341, column: 1, scope: !2143)
!2158 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !182, file: !182, line: 343, type: !2159, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!70, !296}
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "f", arg: 1, scope: !2158, file: !182, line: 343, type: !296)
!2163 = !DILocalVariable(name: "idle_fiber", scope: !2158, file: !182, line: 345, type: !296)
!2164 = !DILocalVariable(name: "result", scope: !2158, file: !182, line: 348, type: !70)
!2165 = !DILocation(line: 343, column: 36, scope: !2158)
!2166 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 345, column: 28, scope: !2158)
!2170 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2167)
!2171 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !2168)
!2172 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !2169)
!2173 = !DILocation(line: 345, column: 15, scope: !2158)
!2174 = !DILocation(line: 348, column: 11, scope: !2158)
!2175 = !DILocation(line: 349, column: 18, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2158, file: !182, line: 349, column: 7)
!2177 = !DILocation(line: 349, column: 7, scope: !2158)
!2178 = !DILocation(line: 353, column: 3, scope: !2158)
!2179 = !DILocation(line: 366, column: 29, scope: !1672, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 373, column: 20, scope: !1680)
!2181 = !DILocation(line: 366, column: 29, scope: !1673, inlinedAt: !2180)
!2182 = !DILocation(line: 366, column: 23, scope: !1674, inlinedAt: !2180)
!2183 = !DILocation(line: 358, column: 5, scope: !1695, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 367, column: 18, scope: !1674, inlinedAt: !2180)
!2185 = !DILocation(line: 359, column: 5, scope: !1695, inlinedAt: !2184)
!2186 = !DILocation(line: 360, column: 12, scope: !1695, inlinedAt: !2184)
!2187 = !DILocation(line: 358, column: 14, scope: !1695, inlinedAt: !2184)
!2188 = !DILocation(line: 361, column: 1, scope: !1695, inlinedAt: !2184)
!2189 = !DILocation(line: 367, column: 39, scope: !1674, inlinedAt: !2180)
!2190 = !DILocation(line: 367, column: 34, scope: !1674, inlinedAt: !2180)
!2191 = !DILocation(line: 367, column: 32, scope: !1674, inlinedAt: !2180)
!2192 = !DILocation(line: 374, column: 27, scope: !1687)
!2193 = !DILocation(line: 374, column: 27, scope: !1685)
!2194 = !DILocation(line: 374, column: 21, scope: !1680)
!2195 = !DILocation(line: 375, column: 10, scope: !1680)
!2196 = !DILocation(line: 375, column: 33, scope: !1680)
!2197 = !DILocation(line: 375, column: 42, scope: !1680)
!2198 = !DILocation(line: 375, column: 3, scope: !1680)
!2199 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !182, file: !182, line: 383, type: !2017, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2200)
!2200 = !{!2201, !2202, !2203, !2205, !2207, !2208, !2209, !2210, !2212, !2217}
!2201 = !DILocalVariable(name: "to_del", arg: 1, scope: !2199, file: !182, line: 383, type: !296)
!2202 = !DILocalVariable(name: "sys", scope: !2199, file: !182, line: 386, type: !318)
!2203 = !DILocalVariable(name: "__r", scope: !2204, file: !182, line: 386, type: !318)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !182, line: 386, column: 26)
!2205 = !DILocalVariable(name: "__r", scope: !2206, file: !182, line: 386, type: !318)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !182, line: 386, column: 26)
!2207 = !DILocalVariable(name: "cpu_iter", scope: !2199, file: !182, line: 387, type: !50)
!2208 = !DILocalVariable(name: "temp", scope: !2199, file: !182, line: 390, type: !205)
!2209 = !DILocalVariable(name: "test", scope: !2199, file: !182, line: 391, type: !296)
!2210 = !DILocalVariable(name: "iter", scope: !2211, file: !182, line: 392, type: !50)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !182, line: 392, column: 3)
!2212 = !DILocalVariable(name: "__mptr", scope: !2213, file: !182, line: 395, type: !1552)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !182, line: 395, column: 5)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !182, line: 395, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !182, line: 392, column: 46)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !182, line: 392, column: 3)
!2217 = !DILocalVariable(name: "__mptr", scope: !2218, file: !182, line: 395, type: !1552)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !182, line: 395, column: 5)
!2219 = distinct !DILexicalBlock(scope: !2214, file: !182, line: 395, column: 5)
!2220 = !DILocation(line: 383, column: 42, scope: !2199)
!2221 = !DILocation(line: 386, column: 26, scope: !2206)
!2222 = !{i32 -2147179109}
!2223 = !DILocation(line: 386, column: 26, scope: !2204)
!2224 = !DILocation(line: 386, column: 20, scope: !2199)
!2225 = !DILocation(line: 387, column: 23, scope: !2199)
!2226 = !DILocation(line: 387, column: 7, scope: !2199)
!2227 = !DILocation(line: 392, column: 12, scope: !2211)
!2228 = !DILocation(line: 392, column: 27, scope: !2216)
!2229 = !DILocation(line: 392, column: 3, scope: !2211)
!2230 = !DILocation(line: 394, column: 14, scope: !2215)
!2231 = !DILocation(line: 394, column: 31, scope: !2215)
!2232 = !DILocation(line: 394, column: 40, scope: !2215)
!2233 = !DILocation(line: 390, column: 21, scope: !2199)
!2234 = !DILocation(line: 395, column: 5, scope: !2213)
!2235 = !DILocation(line: 391, column: 15, scope: !2199)
!2236 = !DILocation(line: 0, scope: !2214)
!2237 = !DILocation(line: 395, column: 5, scope: !2214)
!2238 = !DILocation(line: 395, column: 5, scope: !2219)
!2239 = !DILocation(line: 400, column: 16, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !182, line: 400, column: 11)
!2241 = distinct !DILexicalBlock(scope: !2219, file: !182, line: 395, column: 48)
!2242 = !DILocation(line: 400, column: 11, scope: !2241)
!2243 = distinct !{!2243, !2237, !2244}
!2244 = !DILocation(line: 404, column: 5, scope: !2214)
!2245 = !DILocation(line: 392, column: 43, scope: !2216)
!2246 = distinct !{!2246, !2229, !2247}
!2247 = !DILocation(line: 405, column: 3, scope: !2211)
!2248 = !DILocation(line: 401, column: 33, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !182, line: 400, column: 26)
!2250 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 401, column: 9, scope: !2249)
!2252 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !2251)
!2253 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !2251)
!2254 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !2251)
!2256 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !2255)
!2257 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !2255)
!2258 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !2255)
!2259 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !2255)
!2260 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !2255)
!2261 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !2251)
!2263 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !2262)
!2264 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !2262)
!2265 = !DILocation(line: 408, column: 1, scope: !2199)
!2266 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !182, file: !182, line: 435, type: !561, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2267)
!2267 = !{!2268, !2269, !2271, !2273, !2274, !2280, !2281, !2286, !2288, !2291, !2293}
!2268 = !DILocalVariable(name: "id", scope: !2266, file: !182, line: 437, type: !345)
!2269 = !DILocalVariable(name: "__r", scope: !2270, file: !182, line: 437, type: !345)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !182, line: 437, column: 19)
!2271 = !DILocalVariable(name: "__r", scope: !2272, file: !182, line: 437, type: !345)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !182, line: 437, column: 19)
!2273 = !DILocalVariable(name: "my_cpu", scope: !2266, file: !182, line: 438, type: !324)
!2274 = !DILocalVariable(name: "_p", scope: !2275, file: !182, line: 444, type: !50)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !182, line: 444, column: 2)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !182, line: 444, column: 2)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !182, line: 444, column: 2)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !182, line: 443, column: 29)
!2279 = distinct !DILexicalBlock(scope: !2266, file: !182, line: 443, column: 9)
!2280 = !DILocalVariable(name: "_t", scope: !2275, file: !182, line: 444, type: !215)
!2281 = !DILocalVariable(name: "__r", scope: !2282, file: !182, line: 444, type: !345)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !182, line: 444, column: 2)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !182, line: 444, column: 2)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !182, line: 444, column: 2)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !182, line: 444, column: 2)
!2286 = !DILocalVariable(name: "__r", scope: !2287, file: !182, line: 444, type: !345)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !182, line: 444, column: 2)
!2288 = !DILocalVariable(name: "__r", scope: !2289, file: !182, line: 444, type: !345)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !182, line: 444, column: 2)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !182, line: 444, column: 2)
!2291 = !DILocalVariable(name: "__r", scope: !2292, file: !182, line: 444, type: !345)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !182, line: 444, column: 2)
!2293 = !DILocalVariable(name: "_p", scope: !2294, file: !182, line: 444, type: !50)
!2294 = distinct !DILexicalBlock(scope: !2276, file: !182, line: 444, column: 2)
!2295 = !DILocation(line: 437, column: 19, scope: !2272)
!2296 = !{i32 -2147162346}
!2297 = !DILocation(line: 437, column: 19, scope: !2270)
!2298 = !DILocation(line: 437, column: 14, scope: !2266)
!2299 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 438, column: 27, scope: !2266)
!2301 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !2300)
!2302 = !DILocation(line: 438, column: 18, scope: !2266)
!2303 = !DILocation(line: 442, column: 23, scope: !2266)
!2304 = !DILocation(line: 442, column: 13, scope: !2266)
!2305 = !DILocation(line: 442, column: 21, scope: !2266)
!2306 = !DILocation(line: 443, column: 10, scope: !2279)
!2307 = !DILocation(line: 443, column: 9, scope: !2266)
!2308 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2313)
!2309 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2310, file: !2310, line: 39, type: !2311, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!2310 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!33}
!2313 = distinct !DILocation(line: 444, column: 2, scope: !2276)
!2314 = !DILocation(line: 444, column: 2, scope: !2276)
!2315 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !2320)
!2317 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2310, file: !2310, line: 82, type: !561, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2318)
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "base", scope: !2317, file: !2310, line: 84, type: !33)
!2320 = distinct !DILocation(line: 0, scope: !2276)
!2321 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !2320)
!2322 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !2320)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !2310, line: 85, column: 9)
!2324 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !2320)
!2325 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !2320)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !2310, line: 85, column: 15)
!2327 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !2320)
!2328 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !2320)
!2329 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !2320)
!2330 = !DILocation(line: 0, scope: !2323, inlinedAt: !2320)
!2331 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !2336)
!2333 = distinct !DISubprogram(name: "preempt_disable", scope: !2310, file: !2310, line: 46, type: !2144, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2334)
!2334 = !{!2335}
!2335 = !DILocalVariable(name: "base", scope: !2333, file: !2310, line: 48, type: !33)
!2336 = distinct !DILocation(line: 0, scope: !2276)
!2337 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !2336)
!2338 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !2336)
!2339 = distinct !DILexicalBlock(scope: !2333, file: !2310, line: 49, column: 9)
!2340 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !2336)
!2341 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !2336)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !2310, line: 49, column: 15)
!2343 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !2336)
!2344 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !2336)
!2345 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !2336)
!2346 = !DILocation(line: 444, column: 2, scope: !2277)
!2347 = !DILocation(line: 444, column: 2, scope: !2275)
!2348 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 444, column: 2, scope: !2275)
!2350 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2349)
!2351 = !DILocation(line: 444, column: 2, scope: !2284)
!2352 = !DILocation(line: 0, scope: !2284)
!2353 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2360)
!2355 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2310, file: !2310, line: 94, type: !2356, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!35}
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "base", scope: !2355, file: !2310, line: 96, type: !33)
!2360 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2362)
!2361 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2310, file: !2310, line: 105, type: !561, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!2362 = distinct !DILocation(line: 0, scope: !2284)
!2363 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2360)
!2364 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2360)
!2365 = distinct !DILexicalBlock(scope: !2355, file: !2310, line: 97, column: 9)
!2366 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2360)
!2367 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2360)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !2310, line: 97, column: 15)
!2369 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2360)
!2370 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2360)
!2371 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2360)
!2372 = !DILocation(line: 444, column: 2, scope: !2285)
!2373 = !DILocation(line: 444, column: 2, scope: !2283)
!2374 = !DILocation(line: 444, column: 2, scope: !2290)
!2375 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2380)
!2377 = distinct !DISubprogram(name: "preempt_enable", scope: !2310, file: !2310, line: 57, type: !2144, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2378)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "base", scope: !2377, file: !2310, line: 59, type: !33)
!2380 = distinct !DILocation(line: 444, column: 2, scope: !2275)
!2381 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2380)
!2382 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2380)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !2310, line: 60, column: 9)
!2384 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2380)
!2385 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2380)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !2310, line: 60, column: 15)
!2387 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2380)
!2388 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2380)
!2389 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2380)
!2390 = !DILocation(line: 444, column: 2, scope: !2294)
!2391 = !DILocation(line: 444, column: 2, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !182, line: 444, column: 2)
!2393 = distinct !DILexicalBlock(scope: !2294, file: !182, line: 444, column: 2)
!2394 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 0, scope: !2392)
!2398 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2396)
!2399 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2396)
!2400 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2396)
!2401 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2396)
!2402 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2396)
!2403 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2396)
!2404 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2396)
!2405 = !DILocation(line: 0, scope: !2392)
!2406 = !DILocation(line: 444, column: 2, scope: !2393)
!2407 = !DILocation(line: 444, column: 2, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2392, file: !182, line: 444, column: 2)
!2409 = !DILocation(line: 444, column: 2, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2392, file: !182, line: 444, column: 2)
!2411 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 444, column: 2, scope: !2294)
!2414 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2413)
!2415 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2413)
!2416 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2413)
!2417 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2413)
!2418 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2413)
!2419 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2413)
!2420 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2413)
!2421 = !DILocation(line: 0, scope: !2266)
!2422 = !DILocation(line: 449, column: 1, scope: !2266)
!2423 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !182, file: !182, line: 410, type: !2424, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!334}
!2426 = !{!2427, !2428, !2430, !2432, !2434, !2440, !2441, !2446, !2448, !2451, !2453}
!2427 = !DILocalVariable(name: "state", scope: !2423, file: !182, line: 412, type: !334)
!2428 = !DILocalVariable(name: "p", scope: !2429, file: !182, line: 412, type: !33)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !182, line: 412, column: 74)
!2430 = !DILocalVariable(name: "__r", scope: !2431, file: !182, line: 412, type: !345)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !182, line: 412, column: 74)
!2432 = !DILocalVariable(name: "__r", scope: !2433, file: !182, line: 412, type: !345)
!2433 = distinct !DILexicalBlock(scope: !2431, file: !182, line: 412, column: 74)
!2434 = !DILocalVariable(name: "_p", scope: !2435, file: !182, line: 415, type: !50)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !182, line: 415, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !182, line: 415, column: 9)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !182, line: 415, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !182, line: 414, column: 17)
!2439 = distinct !DILexicalBlock(scope: !2423, file: !182, line: 414, column: 9)
!2440 = !DILocalVariable(name: "_t", scope: !2435, file: !182, line: 415, type: !215)
!2441 = !DILocalVariable(name: "__r", scope: !2442, file: !182, line: 415, type: !345)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !182, line: 415, column: 9)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !182, line: 415, column: 9)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !182, line: 415, column: 9)
!2445 = distinct !DILexicalBlock(scope: !2435, file: !182, line: 415, column: 9)
!2446 = !DILocalVariable(name: "__r", scope: !2447, file: !182, line: 415, type: !345)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !182, line: 415, column: 9)
!2448 = !DILocalVariable(name: "__r", scope: !2449, file: !182, line: 415, type: !345)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !182, line: 415, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2444, file: !182, line: 415, column: 9)
!2451 = !DILocalVariable(name: "__r", scope: !2452, file: !182, line: 415, type: !345)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !182, line: 415, column: 9)
!2453 = !DILocalVariable(name: "_p", scope: !2454, file: !182, line: 415, type: !50)
!2454 = distinct !DILexicalBlock(scope: !2436, file: !182, line: 415, column: 9)
!2455 = !DILocation(line: 412, column: 74, scope: !2433)
!2456 = !{i32 -2147173855}
!2457 = !DILocation(line: 412, column: 74, scope: !2431)
!2458 = !DILocation(line: 412, column: 74, scope: !2429)
!2459 = !DILocation(line: 414, column: 10, scope: !2439)
!2460 = !DILocation(line: 414, column: 9, scope: !2423)
!2461 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 415, column: 9, scope: !2436)
!2463 = !DILocation(line: 415, column: 9, scope: !2436)
!2464 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 0, scope: !2436)
!2467 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !2466)
!2468 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !2466)
!2469 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !2466)
!2470 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !2466)
!2471 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !2466)
!2472 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !2466)
!2473 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !2466)
!2474 = !DILocation(line: 0, scope: !2323, inlinedAt: !2466)
!2475 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 0, scope: !2436)
!2478 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !2477)
!2479 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !2477)
!2480 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !2477)
!2481 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !2477)
!2482 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !2477)
!2483 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !2477)
!2484 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !2477)
!2485 = !DILocation(line: 415, column: 9, scope: !2437)
!2486 = !DILocation(line: 415, column: 9, scope: !2435)
!2487 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 415, column: 9, scope: !2435)
!2489 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2488)
!2490 = !DILocation(line: 415, column: 9, scope: !2444)
!2491 = !DILocation(line: 0, scope: !2444)
!2492 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 0, scope: !2444)
!2496 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2494)
!2497 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2494)
!2498 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2494)
!2499 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2494)
!2500 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2494)
!2501 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2494)
!2502 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2494)
!2503 = !DILocation(line: 415, column: 9, scope: !2445)
!2504 = !DILocation(line: 415, column: 9, scope: !2443)
!2505 = !DILocation(line: 415, column: 9, scope: !2450)
!2506 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 415, column: 9, scope: !2435)
!2509 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2508)
!2510 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2508)
!2511 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2508)
!2512 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2508)
!2513 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2508)
!2514 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2508)
!2515 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2508)
!2516 = !DILocation(line: 415, column: 9, scope: !2454)
!2517 = !DILocation(line: 415, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !182, line: 415, column: 9)
!2519 = distinct !DILexicalBlock(scope: !2454, file: !182, line: 415, column: 9)
!2520 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 0, scope: !2518)
!2524 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2522)
!2525 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2522)
!2526 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2522)
!2527 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2522)
!2528 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2522)
!2529 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2522)
!2530 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2522)
!2531 = !DILocation(line: 0, scope: !2518)
!2532 = !DILocation(line: 415, column: 9, scope: !2519)
!2533 = !DILocation(line: 415, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2518, file: !182, line: 415, column: 9)
!2535 = !DILocation(line: 415, column: 9, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2518, file: !182, line: 415, column: 9)
!2537 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 415, column: 9, scope: !2454)
!2540 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2539)
!2541 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2539)
!2542 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2539)
!2543 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2539)
!2544 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2539)
!2545 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2539)
!2546 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2539)
!2547 = !DILocation(line: 412, column: 43, scope: !2423)
!2548 = !DILocation(line: 412, column: 35, scope: !2423)
!2549 = !DILocation(line: 419, column: 2, scope: !2423)
!2550 = !DILocation(line: 421, column: 27, scope: !2423)
!2551 = !DILocation(line: 421, column: 5, scope: !2423)
!2552 = !DILocation(line: 424, column: 29, scope: !2423)
!2553 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 424, column: 5, scope: !2423)
!2555 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !2554)
!2556 = !DILocation(line: 76, column: 8, scope: !1598, inlinedAt: !2554)
!2557 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !2554)
!2558 = !DILocation(line: 426, column: 5, scope: !2423)
!2559 = !DILocation(line: 429, column: 5, scope: !2423)
!2560 = !DILocation(line: 431, column: 5, scope: !2423)
!2561 = !DILocation(line: 0, scope: !2423)
!2562 = !DILocation(line: 432, column: 1, scope: !2423)
!2563 = distinct !DISubprogram(name: "nk_fiber_init", scope: !182, file: !182, line: 452, type: !561, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2564)
!2564 = !{!2565, !2566, !2570, !2571, !2576, !2578, !2581, !2583, !2585, !2591, !2592, !2597, !2599, !2602, !2604}
!2565 = !DILocalVariable(name: "my_cpu", scope: !2563, file: !182, line: 454, type: !324)
!2566 = !DILocalVariable(name: "_p", scope: !2567, file: !182, line: 456, type: !50)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !182, line: 456, column: 5)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !182, line: 456, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !182, line: 456, column: 5)
!2570 = !DILocalVariable(name: "_t", scope: !2567, file: !182, line: 456, type: !215)
!2571 = !DILocalVariable(name: "__r", scope: !2572, file: !182, line: 456, type: !345)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !182, line: 456, column: 5)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !182, line: 456, column: 5)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !182, line: 456, column: 5)
!2575 = distinct !DILexicalBlock(scope: !2567, file: !182, line: 456, column: 5)
!2576 = !DILocalVariable(name: "__r", scope: !2577, file: !182, line: 456, type: !345)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !182, line: 456, column: 5)
!2578 = !DILocalVariable(name: "__r", scope: !2579, file: !182, line: 456, type: !345)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !182, line: 456, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !182, line: 456, column: 5)
!2581 = !DILocalVariable(name: "__r", scope: !2582, file: !182, line: 456, type: !345)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !182, line: 456, column: 5)
!2583 = !DILocalVariable(name: "_p", scope: !2584, file: !182, line: 456, type: !50)
!2584 = distinct !DILexicalBlock(scope: !2568, file: !182, line: 456, column: 5)
!2585 = !DILocalVariable(name: "_p", scope: !2586, file: !182, line: 464, type: !50)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !182, line: 464, column: 2)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !182, line: 464, column: 2)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !182, line: 464, column: 2)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !182, line: 463, column: 29)
!2590 = distinct !DILexicalBlock(scope: !2563, file: !182, line: 463, column: 9)
!2591 = !DILocalVariable(name: "_t", scope: !2586, file: !182, line: 464, type: !215)
!2592 = !DILocalVariable(name: "__r", scope: !2593, file: !182, line: 464, type: !345)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !182, line: 464, column: 2)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !182, line: 464, column: 2)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !182, line: 464, column: 2)
!2596 = distinct !DILexicalBlock(scope: !2586, file: !182, line: 464, column: 2)
!2597 = !DILocalVariable(name: "__r", scope: !2598, file: !182, line: 464, type: !345)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !182, line: 464, column: 2)
!2599 = !DILocalVariable(name: "__r", scope: !2600, file: !182, line: 464, type: !345)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !182, line: 464, column: 2)
!2601 = distinct !DILexicalBlock(scope: !2595, file: !182, line: 464, column: 2)
!2602 = !DILocalVariable(name: "__r", scope: !2603, file: !182, line: 464, type: !345)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !182, line: 464, column: 2)
!2604 = !DILocalVariable(name: "_p", scope: !2605, file: !182, line: 464, type: !50)
!2605 = distinct !DILexicalBlock(scope: !2587, file: !182, line: 464, column: 2)
!2606 = !DILocation(line: 454, column: 88, scope: !2563)
!2607 = !DILocation(line: 454, column: 27, scope: !2563)
!2608 = !DILocation(line: 454, column: 18, scope: !2563)
!2609 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 456, column: 5, scope: !2568)
!2611 = !DILocation(line: 456, column: 5, scope: !2568)
!2612 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 0, scope: !2568)
!2615 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !2614)
!2616 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !2614)
!2617 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !2614)
!2618 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !2614)
!2619 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !2614)
!2620 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !2614)
!2621 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !2614)
!2622 = !DILocation(line: 0, scope: !2323, inlinedAt: !2614)
!2623 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 0, scope: !2568)
!2626 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !2625)
!2627 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !2625)
!2628 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !2625)
!2629 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !2625)
!2630 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !2625)
!2631 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !2625)
!2632 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !2625)
!2633 = !DILocation(line: 456, column: 5, scope: !2569)
!2634 = !DILocation(line: 456, column: 5, scope: !2567)
!2635 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 456, column: 5, scope: !2567)
!2637 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2636)
!2638 = !DILocation(line: 456, column: 5, scope: !2574)
!2639 = !DILocation(line: 0, scope: !2574)
!2640 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 0, scope: !2574)
!2644 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2642)
!2645 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2642)
!2646 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2642)
!2647 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2642)
!2648 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2642)
!2649 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2642)
!2650 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2642)
!2651 = !DILocation(line: 456, column: 5, scope: !2575)
!2652 = !DILocation(line: 456, column: 5, scope: !2573)
!2653 = !DILocation(line: 456, column: 5, scope: !2580)
!2654 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 456, column: 5, scope: !2567)
!2657 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2656)
!2658 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2656)
!2659 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2656)
!2660 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2656)
!2661 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2656)
!2662 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2656)
!2663 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2656)
!2664 = !DILocation(line: 456, column: 5, scope: !2584)
!2665 = !DILocation(line: 456, column: 5, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !182, line: 456, column: 5)
!2667 = distinct !DILexicalBlock(scope: !2584, file: !182, line: 456, column: 5)
!2668 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2670)
!2673 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2670)
!2674 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2670)
!2675 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2670)
!2676 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2670)
!2677 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2670)
!2678 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2670)
!2679 = !DILocation(line: 0, scope: !2666)
!2680 = !DILocation(line: 456, column: 5, scope: !2667)
!2681 = !DILocation(line: 456, column: 5, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2666, file: !182, line: 456, column: 5)
!2683 = !DILocation(line: 456, column: 5, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2666, file: !182, line: 456, column: 5)
!2685 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 456, column: 5, scope: !2584)
!2688 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2687)
!2689 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2687)
!2690 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2687)
!2691 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2687)
!2692 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2687)
!2693 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2687)
!2694 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2687)
!2695 = !DILocation(line: 462, column: 23, scope: !2563)
!2696 = !DILocation(line: 462, column: 13, scope: !2563)
!2697 = !DILocation(line: 462, column: 21, scope: !2563)
!2698 = !DILocation(line: 463, column: 10, scope: !2590)
!2699 = !DILocation(line: 463, column: 9, scope: !2563)
!2700 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 464, column: 2, scope: !2587)
!2702 = !DILocation(line: 464, column: 2, scope: !2587)
!2703 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 0, scope: !2587)
!2706 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !2705)
!2707 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !2705)
!2708 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !2705)
!2709 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !2705)
!2710 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !2705)
!2711 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !2705)
!2712 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !2705)
!2713 = !DILocation(line: 0, scope: !2323, inlinedAt: !2705)
!2714 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 0, scope: !2587)
!2717 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !2716)
!2718 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !2716)
!2719 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !2716)
!2720 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !2716)
!2721 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !2716)
!2722 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !2716)
!2723 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !2716)
!2724 = !DILocation(line: 464, column: 2, scope: !2588)
!2725 = !DILocation(line: 464, column: 2, scope: !2586)
!2726 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 464, column: 2, scope: !2586)
!2728 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2727)
!2729 = !DILocation(line: 464, column: 2, scope: !2595)
!2730 = !DILocation(line: 0, scope: !2595)
!2731 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 0, scope: !2595)
!2735 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2733)
!2736 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2733)
!2737 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2733)
!2738 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2733)
!2739 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2733)
!2740 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2733)
!2741 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2733)
!2742 = !DILocation(line: 464, column: 2, scope: !2596)
!2743 = !DILocation(line: 464, column: 2, scope: !2594)
!2744 = !DILocation(line: 464, column: 2, scope: !2601)
!2745 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 464, column: 2, scope: !2586)
!2748 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2747)
!2749 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2747)
!2750 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2747)
!2751 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2747)
!2752 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2747)
!2753 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2747)
!2754 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2747)
!2755 = !DILocation(line: 464, column: 2, scope: !2605)
!2756 = !DILocation(line: 464, column: 2, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !182, line: 464, column: 2)
!2758 = distinct !DILexicalBlock(scope: !2605, file: !182, line: 464, column: 2)
!2759 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 0, scope: !2757)
!2763 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2761)
!2764 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2761)
!2765 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2761)
!2766 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2761)
!2767 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2761)
!2768 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2761)
!2769 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2761)
!2770 = !DILocation(line: 0, scope: !2757)
!2771 = !DILocation(line: 464, column: 2, scope: !2758)
!2772 = !DILocation(line: 464, column: 2, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2757, file: !182, line: 464, column: 2)
!2774 = !DILocation(line: 464, column: 2, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2757, file: !182, line: 464, column: 2)
!2776 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 464, column: 2, scope: !2605)
!2779 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2778)
!2780 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2778)
!2781 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2778)
!2782 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2778)
!2783 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2778)
!2784 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2778)
!2785 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2778)
!2786 = !DILocation(line: 0, scope: !2563)
!2787 = !DILocation(line: 469, column: 1, scope: !2563)
!2788 = distinct !DISubprogram(name: "__fiber_thread", scope: !182, file: !182, line: 511, type: !64, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2789)
!2789 = !{!2790, !2791, !2792, !2798, !2799, !2804, !2806, !2809, !2811, !2813, !2839, !2845, !2846, !2851, !2853, !2856, !2858, !2860, !2861, !2867, !2868, !2873, !2875, !2878, !2880, !2882, !2883, !2889, !2890, !2895, !2897, !2900, !2902}
!2790 = !DILocalVariable(name: "in", arg: 1, scope: !2788, file: !182, line: 511, type: !33)
!2791 = !DILocalVariable(name: "out", arg: 2, scope: !2788, file: !182, line: 511, type: !66)
!2792 = !DILocalVariable(name: "_p", scope: !2793, file: !182, line: 515, type: !50)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !182, line: 515, column: 5)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !182, line: 515, column: 5)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !182, line: 515, column: 5)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !182, line: 514, column: 51)
!2797 = distinct !DILexicalBlock(scope: !2788, file: !182, line: 514, column: 7)
!2798 = !DILocalVariable(name: "_t", scope: !2793, file: !182, line: 515, type: !215)
!2799 = !DILocalVariable(name: "__r", scope: !2800, file: !182, line: 515, type: !345)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !182, line: 515, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !182, line: 515, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !182, line: 515, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2793, file: !182, line: 515, column: 5)
!2804 = !DILocalVariable(name: "__r", scope: !2805, file: !182, line: 515, type: !345)
!2805 = distinct !DILexicalBlock(scope: !2800, file: !182, line: 515, column: 5)
!2806 = !DILocalVariable(name: "__r", scope: !2807, file: !182, line: 515, type: !345)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !182, line: 515, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !182, line: 515, column: 5)
!2809 = !DILocalVariable(name: "__r", scope: !2810, file: !182, line: 515, type: !345)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !182, line: 515, column: 5)
!2811 = !DILocalVariable(name: "_p", scope: !2812, file: !182, line: 515, type: !50)
!2812 = distinct !DILexicalBlock(scope: !2794, file: !182, line: 515, column: 5)
!2813 = !DILocalVariable(name: "c", scope: !2788, file: !182, line: 520, type: !2814)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !112, line: 67, size: 320, elements: !2815)
!2815 = !{!2816, !2818, !2819}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2814, file: !112, line: 68, baseType: !2817, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !112, line: 66, baseType: !289)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2814, file: !112, line: 79, baseType: !70, size: 8, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !112, line: 80, baseType: !2820, size: 256, offset: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2814, file: !112, line: 80, size: 256, elements: !2821)
!2821 = !{!2822, !2828, !2835}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2820, file: !112, line: 81, baseType: !2823, size: 192)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !112, line: 49, size: 192, elements: !2824)
!2824 = !{!2825, !2826, !2827}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2823, file: !112, line: 50, baseType: !29, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2823, file: !112, line: 51, baseType: !29, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2823, file: !112, line: 52, baseType: !29, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2820, file: !112, line: 82, baseType: !2829, size: 256)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !112, line: 55, size: 256, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2829, file: !112, line: 56, baseType: !29, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2829, file: !112, line: 57, baseType: !29, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2829, file: !112, line: 58, baseType: !29, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2829, file: !112, line: 59, baseType: !29, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2820, file: !112, line: 83, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !112, line: 62, size: 64, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2836, file: !112, line: 63, baseType: !29, size: 64)
!2839 = !DILocalVariable(name: "_p", scope: !2840, file: !182, line: 525, type: !50)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !182, line: 525, column: 5)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !182, line: 525, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !182, line: 525, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !182, line: 524, column: 47)
!2844 = distinct !DILexicalBlock(scope: !2788, file: !182, line: 524, column: 7)
!2845 = !DILocalVariable(name: "_t", scope: !2840, file: !182, line: 525, type: !215)
!2846 = !DILocalVariable(name: "__r", scope: !2847, file: !182, line: 525, type: !345)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !182, line: 525, column: 5)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !182, line: 525, column: 5)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !182, line: 525, column: 5)
!2850 = distinct !DILexicalBlock(scope: !2840, file: !182, line: 525, column: 5)
!2851 = !DILocalVariable(name: "__r", scope: !2852, file: !182, line: 525, type: !345)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !182, line: 525, column: 5)
!2853 = !DILocalVariable(name: "__r", scope: !2854, file: !182, line: 525, type: !345)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !182, line: 525, column: 5)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !182, line: 525, column: 5)
!2856 = !DILocalVariable(name: "__r", scope: !2857, file: !182, line: 525, type: !345)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !182, line: 525, column: 5)
!2858 = !DILocalVariable(name: "_p", scope: !2859, file: !182, line: 525, type: !50)
!2859 = distinct !DILexicalBlock(scope: !2841, file: !182, line: 525, column: 5)
!2860 = !DILocalVariable(name: "state", scope: !2788, file: !182, line: 534, type: !1477)
!2861 = !DILocalVariable(name: "_p", scope: !2862, file: !182, line: 536, type: !50)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !182, line: 536, column: 5)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !182, line: 536, column: 5)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !182, line: 536, column: 5)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !182, line: 535, column: 17)
!2866 = distinct !DILexicalBlock(scope: !2788, file: !182, line: 535, column: 7)
!2867 = !DILocalVariable(name: "_t", scope: !2862, file: !182, line: 536, type: !215)
!2868 = !DILocalVariable(name: "__r", scope: !2869, file: !182, line: 536, type: !345)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !182, line: 536, column: 5)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !182, line: 536, column: 5)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !182, line: 536, column: 5)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !182, line: 536, column: 5)
!2873 = !DILocalVariable(name: "__r", scope: !2874, file: !182, line: 536, type: !345)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !182, line: 536, column: 5)
!2875 = !DILocalVariable(name: "__r", scope: !2876, file: !182, line: 536, type: !345)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !182, line: 536, column: 5)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !182, line: 536, column: 5)
!2878 = !DILocalVariable(name: "__r", scope: !2879, file: !182, line: 536, type: !345)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !182, line: 536, column: 5)
!2880 = !DILocalVariable(name: "_p", scope: !2881, file: !182, line: 536, type: !50)
!2881 = distinct !DILexicalBlock(scope: !2863, file: !182, line: 536, column: 5)
!2882 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2788, file: !182, line: 541, type: !296)
!2883 = !DILocalVariable(name: "_p", scope: !2884, file: !182, line: 543, type: !50)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !182, line: 543, column: 5)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !182, line: 543, column: 5)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !182, line: 543, column: 5)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !182, line: 542, column: 71)
!2888 = distinct !DILexicalBlock(scope: !2788, file: !182, line: 542, column: 7)
!2889 = !DILocalVariable(name: "_t", scope: !2884, file: !182, line: 543, type: !215)
!2890 = !DILocalVariable(name: "__r", scope: !2891, file: !182, line: 543, type: !345)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !182, line: 543, column: 5)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !182, line: 543, column: 5)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !182, line: 543, column: 5)
!2894 = distinct !DILexicalBlock(scope: !2884, file: !182, line: 543, column: 5)
!2895 = !DILocalVariable(name: "__r", scope: !2896, file: !182, line: 543, type: !345)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !182, line: 543, column: 5)
!2897 = !DILocalVariable(name: "__r", scope: !2898, file: !182, line: 543, type: !345)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !182, line: 543, column: 5)
!2899 = distinct !DILexicalBlock(scope: !2893, file: !182, line: 543, column: 5)
!2900 = !DILocalVariable(name: "__r", scope: !2901, file: !182, line: 543, type: !345)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !182, line: 543, column: 5)
!2902 = !DILocalVariable(name: "_p", scope: !2903, file: !182, line: 543, type: !50)
!2903 = distinct !DILexicalBlock(scope: !2885, file: !182, line: 543, column: 5)
!2904 = !DILocation(line: 511, column: 27, scope: !2788)
!2905 = !DILocation(line: 511, column: 38, scope: !2788)
!2906 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 514, column: 22, scope: !2797)
!2908 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2907)
!2909 = !DILocation(line: 514, column: 22, scope: !2797)
!2910 = !DILocation(line: 514, column: 7, scope: !2797)
!2911 = !DILocation(line: 514, column: 7, scope: !2788)
!2912 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 515, column: 5, scope: !2794)
!2914 = !DILocation(line: 515, column: 5, scope: !2794)
!2915 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 0, scope: !2794)
!2918 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !2917)
!2919 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !2917)
!2920 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !2917)
!2921 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !2917)
!2922 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !2917)
!2923 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !2917)
!2924 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !2917)
!2925 = !DILocation(line: 0, scope: !2323, inlinedAt: !2917)
!2926 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 0, scope: !2794)
!2929 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !2928)
!2930 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !2928)
!2931 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !2928)
!2932 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !2928)
!2933 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !2928)
!2934 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !2928)
!2935 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !2928)
!2936 = !DILocation(line: 515, column: 5, scope: !2795)
!2937 = !DILocation(line: 515, column: 5, scope: !2793)
!2938 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 515, column: 5, scope: !2793)
!2940 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !2939)
!2941 = !DILocation(line: 515, column: 5, scope: !2802)
!2942 = !DILocation(line: 0, scope: !2802)
!2943 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 0, scope: !2802)
!2947 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2945)
!2948 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2945)
!2949 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2945)
!2950 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2945)
!2951 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2945)
!2952 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2945)
!2953 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2945)
!2954 = !DILocation(line: 515, column: 5, scope: !2803)
!2955 = !DILocation(line: 515, column: 5, scope: !2801)
!2956 = !DILocation(line: 515, column: 5, scope: !2808)
!2957 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 515, column: 5, scope: !2793)
!2960 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2959)
!2961 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2959)
!2962 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2959)
!2963 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2959)
!2964 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2959)
!2965 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2959)
!2966 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2959)
!2967 = !DILocation(line: 515, column: 5, scope: !2812)
!2968 = !DILocation(line: 515, column: 5, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !182, line: 515, column: 5)
!2970 = distinct !DILexicalBlock(scope: !2812, file: !182, line: 515, column: 5)
!2971 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 0, scope: !2969)
!2975 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !2973)
!2976 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !2973)
!2977 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !2973)
!2978 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !2973)
!2979 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !2973)
!2980 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !2973)
!2981 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !2973)
!2982 = !DILocation(line: 0, scope: !2969)
!2983 = !DILocation(line: 515, column: 5, scope: !2970)
!2984 = !DILocation(line: 515, column: 5, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2969, file: !182, line: 515, column: 5)
!2986 = !DILocation(line: 515, column: 5, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2969, file: !182, line: 515, column: 5)
!2988 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 515, column: 5, scope: !2812)
!2991 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !2990)
!2992 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !2990)
!2993 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !2990)
!2994 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !2990)
!2995 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !2990)
!2996 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !2990)
!2997 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !2990)
!2998 = !DILocation(line: 520, column: 3, scope: !2788)
!2999 = !DILocation(line: 520, column: 31, scope: !2788)
!3000 = !DILocation(line: 524, column: 7, scope: !2844)
!3001 = !DILocation(line: 0, scope: !2788)
!3002 = !DILocation(line: 524, column: 7, scope: !2788)
!3003 = !DILocation(line: 525, column: 5, scope: !2841)
!3004 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 0, scope: !2841)
!3007 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3006)
!3008 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3006)
!3009 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3006)
!3010 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3006)
!3011 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3006)
!3012 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3006)
!3013 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3006)
!3014 = !DILocation(line: 0, scope: !2323, inlinedAt: !3006)
!3015 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 0, scope: !2841)
!3018 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3017)
!3019 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3017)
!3020 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3017)
!3021 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3017)
!3022 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3017)
!3023 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3017)
!3024 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3017)
!3025 = !DILocation(line: 525, column: 5, scope: !2842)
!3026 = !DILocation(line: 525, column: 5, scope: !2840)
!3027 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 525, column: 5, scope: !2840)
!3029 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3028)
!3030 = !DILocation(line: 525, column: 5, scope: !2849)
!3031 = !DILocation(line: 0, scope: !2849)
!3032 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 0, scope: !2849)
!3036 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3034)
!3037 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3034)
!3038 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3034)
!3039 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3034)
!3040 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3034)
!3041 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3034)
!3042 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3034)
!3043 = !DILocation(line: 525, column: 5, scope: !2850)
!3044 = !DILocation(line: 525, column: 5, scope: !2848)
!3045 = !DILocation(line: 525, column: 5, scope: !2855)
!3046 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 525, column: 5, scope: !2840)
!3049 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3048)
!3050 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3048)
!3051 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3048)
!3052 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3048)
!3053 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3048)
!3054 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3048)
!3055 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3048)
!3056 = !DILocation(line: 525, column: 5, scope: !2859)
!3057 = !DILocation(line: 525, column: 5, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !182, line: 525, column: 5)
!3059 = distinct !DILexicalBlock(scope: !2859, file: !182, line: 525, column: 5)
!3060 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 0, scope: !3058)
!3064 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3062)
!3065 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3062)
!3066 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3062)
!3067 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3062)
!3068 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3062)
!3069 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3062)
!3070 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3062)
!3071 = !DILocation(line: 0, scope: !3058)
!3072 = !DILocation(line: 525, column: 5, scope: !3059)
!3073 = !DILocation(line: 525, column: 5, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3058, file: !182, line: 525, column: 5)
!3075 = !DILocation(line: 525, column: 5, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3058, file: !182, line: 525, column: 5)
!3077 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 525, column: 5, scope: !2859)
!3080 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3079)
!3081 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3079)
!3082 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3079)
!3083 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3079)
!3084 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3079)
!3085 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3079)
!3086 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3079)
!3087 = !DILocation(line: 526, column: 5, scope: !2843)
!3088 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 534, column: 24, scope: !2788)
!3091 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3090)
!3092 = !DILocation(line: 534, column: 16, scope: !2788)
!3093 = !DILocation(line: 535, column: 8, scope: !2866)
!3094 = !DILocation(line: 535, column: 7, scope: !2788)
!3095 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 536, column: 5, scope: !2863)
!3097 = !DILocation(line: 536, column: 5, scope: !2863)
!3098 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 0, scope: !2863)
!3101 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3100)
!3102 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3100)
!3103 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3100)
!3104 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3100)
!3105 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3100)
!3106 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3100)
!3107 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3100)
!3108 = !DILocation(line: 0, scope: !2323, inlinedAt: !3100)
!3109 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 0, scope: !2863)
!3112 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3111)
!3113 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3111)
!3114 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3111)
!3115 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3111)
!3116 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3111)
!3117 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3111)
!3118 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3111)
!3119 = !DILocation(line: 536, column: 5, scope: !2864)
!3120 = !DILocation(line: 536, column: 5, scope: !2862)
!3121 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 536, column: 5, scope: !2862)
!3123 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3122)
!3124 = !DILocation(line: 536, column: 5, scope: !2871)
!3125 = !DILocation(line: 0, scope: !2871)
!3126 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 0, scope: !2871)
!3130 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3128)
!3131 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3128)
!3132 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3128)
!3133 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3128)
!3134 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3128)
!3135 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3128)
!3136 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3128)
!3137 = !DILocation(line: 536, column: 5, scope: !2872)
!3138 = !DILocation(line: 536, column: 5, scope: !2870)
!3139 = !DILocation(line: 536, column: 5, scope: !2877)
!3140 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 536, column: 5, scope: !2862)
!3143 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3142)
!3144 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3142)
!3145 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3142)
!3146 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3142)
!3147 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3142)
!3148 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3142)
!3149 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3142)
!3150 = !DILocation(line: 536, column: 5, scope: !2881)
!3151 = !DILocation(line: 536, column: 5, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !182, line: 536, column: 5)
!3153 = distinct !DILexicalBlock(scope: !2881, file: !182, line: 536, column: 5)
!3154 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 0, scope: !3152)
!3158 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3156)
!3159 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3156)
!3160 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3156)
!3161 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3156)
!3162 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3156)
!3163 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3156)
!3164 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3156)
!3165 = !DILocation(line: 0, scope: !3152)
!3166 = !DILocation(line: 536, column: 5, scope: !3153)
!3167 = !DILocation(line: 536, column: 5, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3152, file: !182, line: 536, column: 5)
!3169 = !DILocation(line: 536, column: 5, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3152, file: !182, line: 536, column: 5)
!3171 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 536, column: 5, scope: !2881)
!3174 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3173)
!3175 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3173)
!3176 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3173)
!3177 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3173)
!3178 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3173)
!3179 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3173)
!3180 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3173)
!3181 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 538, column: 25, scope: !2788)
!3183 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3182)
!3184 = !DILocation(line: 538, column: 10, scope: !2788)
!3185 = !DILocation(line: 538, column: 23, scope: !2788)
!3186 = !DILocation(line: 541, column: 3, scope: !2788)
!3187 = !DILocation(line: 541, column: 15, scope: !2788)
!3188 = !DILocation(line: 542, column: 7, scope: !2888)
!3189 = !DILocation(line: 542, column: 66, scope: !2888)
!3190 = !DILocation(line: 542, column: 7, scope: !2788)
!3191 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 543, column: 5, scope: !2885)
!3193 = !DILocation(line: 543, column: 5, scope: !2885)
!3194 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 0, scope: !2885)
!3197 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3196)
!3198 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3196)
!3199 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3196)
!3200 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3196)
!3201 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3196)
!3202 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3196)
!3203 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3196)
!3204 = !DILocation(line: 0, scope: !2323, inlinedAt: !3196)
!3205 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 0, scope: !2885)
!3208 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3207)
!3209 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3207)
!3210 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3207)
!3211 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3207)
!3212 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3207)
!3213 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3207)
!3214 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3207)
!3215 = !DILocation(line: 543, column: 5, scope: !2886)
!3216 = !DILocation(line: 543, column: 5, scope: !2884)
!3217 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 543, column: 5, scope: !2884)
!3219 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3218)
!3220 = !DILocation(line: 543, column: 5, scope: !2893)
!3221 = !DILocation(line: 0, scope: !2893)
!3222 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 0, scope: !2893)
!3226 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3224)
!3227 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3224)
!3228 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3224)
!3229 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3224)
!3230 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3224)
!3231 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3224)
!3232 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3224)
!3233 = !DILocation(line: 543, column: 5, scope: !2894)
!3234 = !DILocation(line: 543, column: 5, scope: !2892)
!3235 = !DILocation(line: 543, column: 5, scope: !2899)
!3236 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 543, column: 5, scope: !2884)
!3239 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3238)
!3240 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3238)
!3241 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3238)
!3242 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3238)
!3243 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3238)
!3244 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3238)
!3245 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3238)
!3246 = !DILocation(line: 543, column: 5, scope: !2903)
!3247 = !DILocation(line: 543, column: 5, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !182, line: 543, column: 5)
!3249 = distinct !DILexicalBlock(scope: !2903, file: !182, line: 543, column: 5)
!3250 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 0, scope: !3248)
!3254 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3252)
!3255 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3252)
!3256 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3252)
!3257 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3252)
!3258 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3252)
!3259 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3252)
!3260 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3252)
!3261 = !DILocation(line: 0, scope: !3248)
!3262 = !DILocation(line: 543, column: 5, scope: !3249)
!3263 = !DILocation(line: 543, column: 5, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3248, file: !182, line: 543, column: 5)
!3265 = !DILocation(line: 543, column: 5, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3248, file: !182, line: 543, column: 5)
!3267 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 543, column: 5, scope: !2903)
!3270 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3269)
!3271 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3269)
!3272 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3269)
!3273 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3269)
!3274 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3269)
!3275 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3269)
!3276 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3269)
!3277 = !DILocation(line: 547, column: 23, scope: !2788)
!3278 = !DILocation(line: 547, column: 10, scope: !2788)
!3279 = !DILocation(line: 547, column: 21, scope: !2788)
!3280 = !DILocation(line: 548, column: 10, scope: !2788)
!3281 = !DILocation(line: 548, column: 21, scope: !2788)
!3282 = !DILocation(line: 551, column: 3, scope: !2788)
!3283 = !DILocation(line: 551, column: 19, scope: !2788)
!3284 = !DILocation(line: 551, column: 27, scope: !2788)
!3285 = !DILocation(line: 198, column: 33, scope: !1900, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 554, column: 3, scope: !2788)
!3287 = !DILocation(line: 202, column: 9, scope: !1900, inlinedAt: !3286)
!3288 = !DILocation(line: 202, column: 19, scope: !1900, inlinedAt: !3286)
!3289 = !DILocation(line: 202, column: 32, scope: !1900, inlinedAt: !3286)
!3290 = !DILocation(line: 202, column: 3, scope: !1900, inlinedAt: !3286)
!3291 = !DILocation(line: 208, column: 3, scope: !1900, inlinedAt: !3286)
!3292 = !DILocation(line: 557, column: 1, scope: !2788)
!3293 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !182, file: !182, line: 479, type: !64, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3294)
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "in", arg: 1, scope: !3293, file: !182, line: 479, type: !33)
!3296 = !DILocalVariable(name: "out", arg: 2, scope: !3293, file: !182, line: 479, type: !66)
!3297 = !DILocation(line: 479, column: 35, scope: !3293)
!3298 = !DILocation(line: 479, column: 46, scope: !3293)
!3299 = !DILocation(line: 481, column: 3, scope: !3293)
!3300 = !DILocation(line: 489, column: 5, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3293, file: !182, line: 481, column: 13)
!3302 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 490, column: 28, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !182, line: 490, column: 9)
!3307 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3303)
!3308 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3304)
!3309 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !3305)
!3310 = !DILocalVariable(name: "head", arg: 1, scope: !3311, file: !53, line: 201, type: !1552)
!3311 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1565, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3312)
!3312 = !{!3310, !3313}
!3313 = !DILocalVariable(name: "next", scope: !3311, file: !53, line: 203, type: !205)
!3314 = !DILocation(line: 201, column: 62, scope: !3311, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 490, column: 9, scope: !3306)
!3316 = !DILocation(line: 203, column: 33, scope: !3311, inlinedAt: !3315)
!3317 = !DILocation(line: 203, column: 20, scope: !3311, inlinedAt: !3315)
!3318 = !DILocation(line: 204, column: 15, scope: !3311, inlinedAt: !3315)
!3319 = !DILocation(line: 204, column: 24, scope: !3311, inlinedAt: !3315)
!3320 = !DILocation(line: 204, column: 42, scope: !3311, inlinedAt: !3315)
!3321 = !DILocation(line: 204, column: 33, scope: !3311, inlinedAt: !3315)
!3322 = !DILocation(line: 490, column: 9, scope: !3301)
!3323 = distinct !{!3323, !3299, !3324}
!3324 = !DILocation(line: 508, column: 3, scope: !3293)
!3325 = !DILocation(line: 492, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3306, file: !182, line: 490, column: 47)
!3327 = !DILocation(line: 494, column: 5, scope: !3326)
!3328 = distinct !DISubprogram(name: "nk_fiber_create", scope: !182, file: !182, line: 602, type: !3329, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3332)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!50, !62, !33, !66, !38, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342}
!3333 = !DILocalVariable(name: "fun", arg: 1, scope: !3328, file: !182, line: 602, type: !62)
!3334 = !DILocalVariable(name: "input", arg: 2, scope: !3328, file: !182, line: 602, type: !33)
!3335 = !DILocalVariable(name: "output", arg: 3, scope: !3328, file: !182, line: 602, type: !66)
!3336 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3328, file: !182, line: 602, type: !38)
!3337 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !3328, file: !182, line: 602, type: !3331)
!3338 = !DILocalVariable(name: "fiber", scope: !3328, file: !182, line: 605, type: !296)
!3339 = !DILocalVariable(name: "required_stack_size", scope: !3328, file: !182, line: 608, type: !38)
!3340 = !DILocalVariable(name: "p", scope: !3341, file: !182, line: 611, type: !33)
!3341 = distinct !DILexicalBlock(scope: !3328, file: !182, line: 611, column: 11)
!3342 = !DILocalVariable(name: "p", scope: !3343, file: !182, line: 628, type: !33)
!3343 = distinct !DILexicalBlock(scope: !3328, file: !182, line: 628, column: 26)
!3344 = !DILocation(line: 602, column: 36, scope: !3328)
!3345 = !DILocation(line: 602, column: 47, scope: !3328)
!3346 = !DILocation(line: 602, column: 61, scope: !3328)
!3347 = !DILocation(line: 602, column: 85, scope: !3328)
!3348 = !DILocation(line: 602, column: 110, scope: !3328)
!3349 = !DILocation(line: 605, column: 15, scope: !3328)
!3350 = !DILocation(line: 608, column: 41, scope: !3328)
!3351 = !DILocation(line: 608, column: 19, scope: !3328)
!3352 = !DILocation(line: 611, column: 11, scope: !3341)
!3353 = !DILocation(line: 614, column: 8, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3328, file: !182, line: 614, column: 7)
!3355 = !DILocation(line: 614, column: 7, scope: !3328)
!3356 = !DILocation(line: 620, column: 3, scope: !3328)
!3357 = !DILocation(line: 623, column: 10, scope: !3328)
!3358 = !DILocation(line: 623, column: 19, scope: !3328)
!3359 = !DILocation(line: 625, column: 10, scope: !3328)
!3360 = !DILocation(line: 625, column: 21, scope: !3328)
!3361 = !DILocation(line: 628, column: 26, scope: !3343)
!3362 = !DILocation(line: 628, column: 10, scope: !3328)
!3363 = !DILocation(line: 628, column: 16, scope: !3328)
!3364 = !DILocation(line: 631, column: 8, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3328, file: !182, line: 631, column: 7)
!3366 = !DILocation(line: 631, column: 7, scope: !3328)
!3367 = !DILocation(line: 634, column: 5, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !182, line: 631, column: 21)
!3369 = !DILocation(line: 635, column: 5, scope: !3368)
!3370 = !DILocation(line: 639, column: 10, scope: !3328)
!3371 = !DILocation(line: 639, column: 14, scope: !3328)
!3372 = !DILocation(line: 640, column: 10, scope: !3328)
!3373 = !DILocation(line: 640, column: 16, scope: !3328)
!3374 = !DILocation(line: 641, column: 10, scope: !3328)
!3375 = !DILocation(line: 641, column: 17, scope: !3328)
!3376 = !DILocation(line: 274, column: 33, scope: !1910, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 644, column: 3, scope: !3328)
!3378 = !DILocation(line: 276, column: 37, scope: !1910, inlinedAt: !3377)
!3379 = !DILocation(line: 276, column: 6, scope: !1910, inlinedAt: !3377)
!3380 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 277, column: 3, scope: !1910, inlinedAt: !3377)
!3382 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3381)
!3383 = !DILocation(line: 276, column: 32, scope: !1910, inlinedAt: !3377)
!3384 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3381)
!3385 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3381)
!3386 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3381)
!3387 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 278, column: 3, scope: !1910, inlinedAt: !3377)
!3389 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3388)
!3390 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3388)
!3391 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3388)
!3392 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3388)
!3393 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 279, column: 3, scope: !1910, inlinedAt: !3377)
!3395 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3394)
!3396 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3394)
!3397 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3394)
!3398 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3394)
!3399 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 280, column: 3, scope: !1910, inlinedAt: !3377)
!3401 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3400)
!3402 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3400)
!3403 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3400)
!3404 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3400)
!3405 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 281, column: 3, scope: !1910, inlinedAt: !3377)
!3407 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3406)
!3408 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3406)
!3409 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3406)
!3410 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3406)
!3411 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 282, column: 3, scope: !1910, inlinedAt: !3377)
!3413 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3412)
!3414 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3412)
!3415 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3412)
!3416 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3412)
!3417 = !DILocation(line: 283, column: 18, scope: !1910, inlinedAt: !3377)
!3418 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 283, column: 3, scope: !1910, inlinedAt: !3377)
!3420 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3419)
!3421 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3419)
!3422 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3419)
!3423 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3419)
!3424 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 284, column: 3, scope: !1910, inlinedAt: !3377)
!3426 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3425)
!3427 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3425)
!3428 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3425)
!3429 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3425)
!3430 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 285, column: 3, scope: !1910, inlinedAt: !3377)
!3432 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3431)
!3433 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3431)
!3434 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3431)
!3435 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3431)
!3436 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 286, column: 3, scope: !1910, inlinedAt: !3377)
!3438 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3437)
!3439 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3437)
!3440 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3437)
!3441 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3437)
!3442 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 287, column: 3, scope: !1910, inlinedAt: !3377)
!3444 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3443)
!3445 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3443)
!3446 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3443)
!3447 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3443)
!3448 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 288, column: 3, scope: !1910, inlinedAt: !3377)
!3450 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3449)
!3451 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3449)
!3452 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3449)
!3453 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3449)
!3454 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 289, column: 3, scope: !1910, inlinedAt: !3377)
!3456 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3455)
!3457 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3455)
!3458 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3455)
!3459 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3455)
!3460 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 290, column: 3, scope: !1910, inlinedAt: !3377)
!3462 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3461)
!3463 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3461)
!3464 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3461)
!3465 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3461)
!3466 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 291, column: 3, scope: !1910, inlinedAt: !3377)
!3468 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3467)
!3469 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3467)
!3470 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3467)
!3471 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3467)
!3472 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 292, column: 3, scope: !1910, inlinedAt: !3377)
!3474 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !3473)
!3475 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !3473)
!3476 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !3473)
!3477 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !3473)
!3478 = !DILocation(line: 647, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3328, file: !182, line: 647, column: 7)
!3480 = !DILocation(line: 647, column: 7, scope: !3328)
!3481 = !DILocation(line: 648, column: 19, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !182, line: 647, column: 20)
!3483 = !DILocation(line: 649, column: 3, scope: !3482)
!3484 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 650, column: 15, scope: !3328)
!3486 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3485)
!3487 = !DILocation(line: 650, column: 33, scope: !3328)
!3488 = !DILocation(line: 650, column: 10, scope: !3328)
!3489 = !DILocation(line: 650, column: 13, scope: !3328)
!3490 = !DILocation(line: 653, column: 27, scope: !3328)
!3491 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 653, column: 3, scope: !3328)
!3493 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !3492)
!3494 = !DILocation(line: 76, column: 8, scope: !1598, inlinedAt: !3492)
!3495 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !3492)
!3496 = !DILocation(line: 656, column: 10, scope: !3328)
!3497 = !DILocation(line: 656, column: 19, scope: !3328)
!3498 = !DILocation(line: 657, column: 27, scope: !3328)
!3499 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 657, column: 3, scope: !3328)
!3501 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !3500)
!3502 = !DILocation(line: 76, column: 8, scope: !1598, inlinedAt: !3500)
!3503 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !3500)
!3504 = !DILocation(line: 658, column: 27, scope: !3328)
!3505 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 658, column: 3, scope: !3328)
!3507 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !3506)
!3508 = !DILocation(line: 76, column: 8, scope: !1598, inlinedAt: !3506)
!3509 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !3506)
!3510 = !DILocation(line: 660, column: 3, scope: !3328)
!3511 = !DILocation(line: 0, scope: !3328)
!3512 = !DILocation(line: 661, column: 1, scope: !3328)
!3513 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !182, file: !182, line: 702, type: !561, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3514)
!3514 = !{!3515}
!3515 = !DILocalVariable(name: "f_to", scope: !3513, file: !182, line: 708, type: !296)
!3516 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 98, column: 10, scope: !1507, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 704, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3513, file: !182, line: 704, column: 7)
!3521 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3517)
!3522 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3518)
!3523 = !DILocation(line: 98, column: 30, scope: !1507, inlinedAt: !3519)
!3524 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 704, column: 30, scope: !3520)
!3526 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3525)
!3527 = !DILocation(line: 704, column: 27, scope: !3520)
!3528 = !DILocation(line: 704, column: 7, scope: !3513)
!3529 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 122, column: 41, scope: !1540, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 708, column: 22, scope: !3513)
!3534 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3530)
!3535 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3531)
!3536 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !3532)
!3537 = !DILocation(line: 122, column: 21, scope: !1540, inlinedAt: !3533)
!3538 = !DILocation(line: 125, column: 15, scope: !1540, inlinedAt: !3533)
!3539 = !DILocation(line: 184, column: 54, scope: !1564, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 126, column: 9, scope: !1547, inlinedAt: !3533)
!3541 = !DILocation(line: 186, column: 15, scope: !1564, inlinedAt: !3540)
!3542 = !DILocation(line: 186, column: 20, scope: !1564, inlinedAt: !3540)
!3543 = !DILocation(line: 126, column: 7, scope: !1540, inlinedAt: !3533)
!3544 = !DILocation(line: 128, column: 25, scope: !1545, inlinedAt: !3533)
!3545 = !DILocation(line: 131, column: 40, scope: !1546, inlinedAt: !3533)
!3546 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 131, column: 5, scope: !1546, inlinedAt: !3533)
!3548 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !3547)
!3549 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !3547)
!3550 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !3547)
!3552 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !3551)
!3553 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !3551)
!3554 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !3551)
!3555 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !3551)
!3556 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !3551)
!3557 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !3547)
!3559 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !3558)
!3560 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !3558)
!3561 = !DILocation(line: 708, column: 15, scope: !3513)
!3562 = !DILocation(line: 718, column: 12, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3513, file: !182, line: 718, column: 7)
!3564 = !DILocation(line: 718, column: 7, scope: !3513)
!3565 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 719, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !182, line: 719, column: 9)
!3570 = distinct !DILexicalBlock(scope: !3563, file: !182, line: 718, column: 21)
!3571 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3566)
!3572 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3567)
!3573 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !3568)
!3574 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 719, column: 31, scope: !3569)
!3578 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3575)
!3579 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3576)
!3580 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !3577)
!3581 = !DILocation(line: 719, column: 28, scope: !3569)
!3582 = !DILocation(line: 719, column: 9, scope: !3570)
!3583 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 723, column: 16, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3569, file: !182, line: 722, column: 12)
!3588 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3584)
!3589 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3585)
!3590 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !3586)
!3591 = !DILocation(line: 725, column: 3, scope: !3570)
!3592 = !DILocation(line: 0, scope: !3513)
!3593 = !DILocation(line: 727, column: 10, scope: !3513)
!3594 = !DILocation(line: 727, column: 3, scope: !3513)
!3595 = !DILocation(line: 728, column: 1, scope: !3513)
!3596 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !182, file: !182, line: 570, type: !2144, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3597)
!3597 = !{!3598, !3599, !3603, !3604, !3609, !3611, !3614, !3616, !3618, !3624, !3625, !3630, !3632, !3635, !3637}
!3598 = !DILocalVariable(name: "my_cpu", scope: !3596, file: !182, line: 572, type: !324)
!3599 = !DILocalVariable(name: "_p", scope: !3600, file: !182, line: 573, type: !50)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !182, line: 573, column: 5)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !182, line: 573, column: 5)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !182, line: 573, column: 5)
!3603 = !DILocalVariable(name: "_t", scope: !3600, file: !182, line: 573, type: !215)
!3604 = !DILocalVariable(name: "__r", scope: !3605, file: !182, line: 573, type: !345)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !182, line: 573, column: 5)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !182, line: 573, column: 5)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !182, line: 573, column: 5)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !182, line: 573, column: 5)
!3609 = !DILocalVariable(name: "__r", scope: !3610, file: !182, line: 573, type: !345)
!3610 = distinct !DILexicalBlock(scope: !3605, file: !182, line: 573, column: 5)
!3611 = !DILocalVariable(name: "__r", scope: !3612, file: !182, line: 573, type: !345)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !182, line: 573, column: 5)
!3613 = distinct !DILexicalBlock(scope: !3607, file: !182, line: 573, column: 5)
!3614 = !DILocalVariable(name: "__r", scope: !3615, file: !182, line: 573, type: !345)
!3615 = distinct !DILexicalBlock(scope: !3612, file: !182, line: 573, column: 5)
!3616 = !DILocalVariable(name: "_p", scope: !3617, file: !182, line: 573, type: !50)
!3617 = distinct !DILexicalBlock(scope: !3601, file: !182, line: 573, column: 5)
!3618 = !DILocalVariable(name: "_p", scope: !3619, file: !182, line: 575, type: !50)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !182, line: 575, column: 2)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !182, line: 575, column: 2)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !182, line: 575, column: 2)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !182, line: 574, column: 45)
!3623 = distinct !DILexicalBlock(scope: !3596, file: !182, line: 574, column: 9)
!3624 = !DILocalVariable(name: "_t", scope: !3619, file: !182, line: 575, type: !215)
!3625 = !DILocalVariable(name: "__r", scope: !3626, file: !182, line: 575, type: !345)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !182, line: 575, column: 2)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !182, line: 575, column: 2)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !182, line: 575, column: 2)
!3629 = distinct !DILexicalBlock(scope: !3619, file: !182, line: 575, column: 2)
!3630 = !DILocalVariable(name: "__r", scope: !3631, file: !182, line: 575, type: !345)
!3631 = distinct !DILexicalBlock(scope: !3626, file: !182, line: 575, column: 2)
!3632 = !DILocalVariable(name: "__r", scope: !3633, file: !182, line: 575, type: !345)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !182, line: 575, column: 2)
!3634 = distinct !DILexicalBlock(scope: !3628, file: !182, line: 575, column: 2)
!3635 = !DILocalVariable(name: "__r", scope: !3636, file: !182, line: 575, type: !345)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !182, line: 575, column: 2)
!3637 = !DILocalVariable(name: "_p", scope: !3638, file: !182, line: 575, type: !50)
!3638 = distinct !DILexicalBlock(scope: !3620, file: !182, line: 575, column: 2)
!3639 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 572, column: 26, scope: !3596)
!3641 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3640)
!3642 = !DILocation(line: 572, column: 17, scope: !3596)
!3643 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 573, column: 5, scope: !3601)
!3645 = !DILocation(line: 573, column: 5, scope: !3601)
!3646 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 0, scope: !3601)
!3649 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3648)
!3650 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3648)
!3651 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3648)
!3652 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3648)
!3653 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3648)
!3654 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3648)
!3655 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3648)
!3656 = !DILocation(line: 0, scope: !2323, inlinedAt: !3648)
!3657 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 0, scope: !3601)
!3660 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3659)
!3661 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3659)
!3662 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3659)
!3663 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3659)
!3664 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3659)
!3665 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3659)
!3666 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3659)
!3667 = !DILocation(line: 573, column: 5, scope: !3602)
!3668 = !DILocation(line: 573, column: 5, scope: !3600)
!3669 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 573, column: 5, scope: !3600)
!3671 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3670)
!3672 = !DILocation(line: 573, column: 5, scope: !3607)
!3673 = !DILocation(line: 0, scope: !3607)
!3674 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 0, scope: !3607)
!3678 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3676)
!3679 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3676)
!3680 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3676)
!3681 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3676)
!3682 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3676)
!3683 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3676)
!3684 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3676)
!3685 = !DILocation(line: 573, column: 5, scope: !3608)
!3686 = !DILocation(line: 573, column: 5, scope: !3606)
!3687 = !DILocation(line: 573, column: 5, scope: !3613)
!3688 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 573, column: 5, scope: !3600)
!3691 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3690)
!3692 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3690)
!3693 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3690)
!3694 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3690)
!3695 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3690)
!3696 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3690)
!3697 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3690)
!3698 = !DILocation(line: 573, column: 5, scope: !3617)
!3699 = !DILocation(line: 573, column: 5, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !182, line: 573, column: 5)
!3701 = distinct !DILexicalBlock(scope: !3617, file: !182, line: 573, column: 5)
!3702 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 0, scope: !3700)
!3706 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3704)
!3707 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3704)
!3708 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3704)
!3709 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3704)
!3710 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3704)
!3711 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3704)
!3712 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3704)
!3713 = !DILocation(line: 0, scope: !3700)
!3714 = !DILocation(line: 573, column: 5, scope: !3701)
!3715 = !DILocation(line: 573, column: 5, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3700, file: !182, line: 573, column: 5)
!3717 = !DILocation(line: 573, column: 5, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3700, file: !182, line: 573, column: 5)
!3719 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 573, column: 5, scope: !3617)
!3722 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3721)
!3723 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3721)
!3724 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3721)
!3725 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3721)
!3726 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3721)
!3727 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3721)
!3728 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3721)
!3729 = !DILocation(line: 561, column: 3, scope: !3730, inlinedAt: !3759)
!3730 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !182, file: !182, line: 559, type: !561, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3731)
!3731 = !{!3732, !3734, !3737, !3739, !3744, !3745, !3750, !3752, !3755, !3757}
!3732 = !DILocalVariable(name: "tid", scope: !3730, file: !182, line: 561, type: !3733)
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !33)
!3734 = !DILocalVariable(name: "__r", scope: !3735, file: !182, line: 562, type: !345)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !182, line: 562, column: 79)
!3736 = distinct !DILexicalBlock(scope: !3730, file: !182, line: 562, column: 7)
!3737 = !DILocalVariable(name: "__r", scope: !3738, file: !182, line: 562, type: !345)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !182, line: 562, column: 79)
!3739 = !DILocalVariable(name: "_p", scope: !3740, file: !182, line: 563, type: !50)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !182, line: 563, column: 7)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !182, line: 563, column: 7)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !182, line: 563, column: 7)
!3743 = distinct !DILexicalBlock(scope: !3736, file: !182, line: 562, column: 93)
!3744 = !DILocalVariable(name: "_t", scope: !3740, file: !182, line: 563, type: !215)
!3745 = !DILocalVariable(name: "__r", scope: !3746, file: !182, line: 563, type: !345)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !182, line: 563, column: 7)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !182, line: 563, column: 7)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !182, line: 563, column: 7)
!3749 = distinct !DILexicalBlock(scope: !3740, file: !182, line: 563, column: 7)
!3750 = !DILocalVariable(name: "__r", scope: !3751, file: !182, line: 563, type: !345)
!3751 = distinct !DILexicalBlock(scope: !3746, file: !182, line: 563, column: 7)
!3752 = !DILocalVariable(name: "__r", scope: !3753, file: !182, line: 563, type: !345)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !182, line: 563, column: 7)
!3754 = distinct !DILexicalBlock(scope: !3748, file: !182, line: 563, column: 7)
!3755 = !DILocalVariable(name: "__r", scope: !3756, file: !182, line: 563, type: !345)
!3756 = distinct !DILexicalBlock(scope: !3753, file: !182, line: 563, column: 7)
!3757 = !DILocalVariable(name: "_p", scope: !3758, file: !182, line: 563, type: !50)
!3758 = distinct !DILexicalBlock(scope: !3741, file: !182, line: 563, column: 7)
!3759 = distinct !DILocation(line: 574, column: 9, scope: !3623)
!3760 = !DILocation(line: 562, column: 79, scope: !3738, inlinedAt: !3759)
!3761 = !{i32 -2147099479}
!3762 = !DILocation(line: 562, column: 79, scope: !3735, inlinedAt: !3759)
!3763 = !DILocation(line: 561, column: 18, scope: !3730, inlinedAt: !3759)
!3764 = !DILocation(line: 562, column: 7, scope: !3736, inlinedAt: !3759)
!3765 = !DILocation(line: 562, column: 7, scope: !3730, inlinedAt: !3759)
!3766 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3759)
!3768 = !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3759)
!3769 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 0, scope: !3741, inlinedAt: !3759)
!3772 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3771)
!3773 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3771)
!3774 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3771)
!3775 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3771)
!3776 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3771)
!3777 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3771)
!3778 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3771)
!3779 = !DILocation(line: 0, scope: !2323, inlinedAt: !3771)
!3780 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 0, scope: !3741, inlinedAt: !3759)
!3783 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3782)
!3784 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3782)
!3785 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3782)
!3786 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3782)
!3787 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3782)
!3788 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3782)
!3789 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3782)
!3790 = !DILocation(line: 563, column: 7, scope: !3742, inlinedAt: !3759)
!3791 = !DILocation(line: 563, column: 7, scope: !3740, inlinedAt: !3759)
!3792 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 563, column: 7, scope: !3740, inlinedAt: !3759)
!3794 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3793)
!3795 = !DILocation(line: 563, column: 7, scope: !3748, inlinedAt: !3759)
!3796 = !DILocation(line: 0, scope: !3748, inlinedAt: !3759)
!3797 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 0, scope: !3748, inlinedAt: !3759)
!3801 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3799)
!3802 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3799)
!3803 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3799)
!3804 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3799)
!3805 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3799)
!3806 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3799)
!3807 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3799)
!3808 = !DILocation(line: 563, column: 7, scope: !3749, inlinedAt: !3759)
!3809 = !DILocation(line: 563, column: 7, scope: !3747, inlinedAt: !3759)
!3810 = !DILocation(line: 563, column: 7, scope: !3754, inlinedAt: !3759)
!3811 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 563, column: 7, scope: !3740, inlinedAt: !3759)
!3814 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3813)
!3815 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3813)
!3816 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3813)
!3817 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3813)
!3818 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3813)
!3819 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3813)
!3820 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3813)
!3821 = !DILocation(line: 563, column: 7, scope: !3758, inlinedAt: !3759)
!3822 = !DILocation(line: 563, column: 7, scope: !3823, inlinedAt: !3759)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !182, line: 563, column: 7)
!3824 = distinct !DILexicalBlock(scope: !3758, file: !182, line: 563, column: 7)
!3825 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 0, scope: !3823, inlinedAt: !3759)
!3829 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3827)
!3830 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3827)
!3831 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3827)
!3832 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3827)
!3833 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3827)
!3834 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3827)
!3835 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3827)
!3836 = !DILocation(line: 0, scope: !3823, inlinedAt: !3759)
!3837 = !DILocation(line: 563, column: 7, scope: !3824, inlinedAt: !3759)
!3838 = !DILocation(line: 563, column: 7, scope: !3839, inlinedAt: !3759)
!3839 = distinct !DILexicalBlock(scope: !3823, file: !182, line: 563, column: 7)
!3840 = !DILocation(line: 563, column: 7, scope: !3841, inlinedAt: !3759)
!3841 = distinct !DILexicalBlock(scope: !3823, file: !182, line: 563, column: 7)
!3842 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 563, column: 7, scope: !3758, inlinedAt: !3759)
!3845 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3844)
!3846 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3844)
!3847 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3844)
!3848 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3844)
!3849 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3844)
!3850 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3844)
!3851 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3844)
!3852 = !DILocation(line: 568, column: 1, scope: !3730, inlinedAt: !3759)
!3853 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 575, column: 2, scope: !3620)
!3855 = !DILocation(line: 575, column: 2, scope: !3620)
!3856 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 84, column: 18, scope: !2317, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 0, scope: !3620)
!3859 = !DILocation(line: 84, column: 11, scope: !2317, inlinedAt: !3858)
!3860 = !DILocation(line: 85, column: 9, scope: !2323, inlinedAt: !3858)
!3861 = !DILocation(line: 85, column: 9, scope: !2317, inlinedAt: !3858)
!3862 = !DILocation(line: 87, column: 57, scope: !2326, inlinedAt: !3858)
!3863 = !DILocation(line: 87, column: 30, scope: !2326, inlinedAt: !3858)
!3864 = !DILocation(line: 87, column: 9, scope: !2326, inlinedAt: !3858)
!3865 = !DILocation(line: 87, column: 2, scope: !2326, inlinedAt: !3858)
!3866 = !DILocation(line: 0, scope: !2323, inlinedAt: !3858)
!3867 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 48, column: 18, scope: !2333, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 0, scope: !3620)
!3870 = !DILocation(line: 48, column: 11, scope: !2333, inlinedAt: !3869)
!3871 = !DILocation(line: 49, column: 9, scope: !2339, inlinedAt: !3869)
!3872 = !DILocation(line: 49, column: 9, scope: !2333, inlinedAt: !3869)
!3873 = !DILocation(line: 51, column: 50, scope: !2342, inlinedAt: !3869)
!3874 = !DILocation(line: 51, column: 23, scope: !2342, inlinedAt: !3869)
!3875 = !DILocation(line: 51, column: 2, scope: !2342, inlinedAt: !3869)
!3876 = !DILocation(line: 52, column: 5, scope: !2342, inlinedAt: !3869)
!3877 = !DILocation(line: 575, column: 2, scope: !3621)
!3878 = !DILocation(line: 575, column: 2, scope: !3619)
!3879 = !DILocation(line: 258, column: 26, scope: !2102, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 575, column: 2, scope: !3619)
!3881 = !DILocation(line: 258, column: 26, scope: !2103, inlinedAt: !3880)
!3882 = !DILocation(line: 575, column: 2, scope: !3628)
!3883 = !DILocation(line: 0, scope: !3628)
!3884 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 0, scope: !3628)
!3888 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3886)
!3889 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3886)
!3890 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3886)
!3891 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3886)
!3892 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3886)
!3893 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3886)
!3894 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3886)
!3895 = !DILocation(line: 575, column: 2, scope: !3629)
!3896 = !DILocation(line: 575, column: 2, scope: !3627)
!3897 = !DILocation(line: 575, column: 2, scope: !3634)
!3898 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 575, column: 2, scope: !3619)
!3901 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3900)
!3902 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3900)
!3903 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3900)
!3904 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3900)
!3905 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3900)
!3906 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3900)
!3907 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3900)
!3908 = !DILocation(line: 575, column: 2, scope: !3638)
!3909 = !DILocation(line: 575, column: 2, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !182, line: 575, column: 2)
!3911 = distinct !DILexicalBlock(scope: !3638, file: !182, line: 575, column: 2)
!3912 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 96, column: 18, scope: !2355, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 107, column: 12, scope: !2361, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 0, scope: !3910)
!3916 = !DILocation(line: 96, column: 11, scope: !2355, inlinedAt: !3914)
!3917 = !DILocation(line: 97, column: 9, scope: !2365, inlinedAt: !3914)
!3918 = !DILocation(line: 97, column: 9, scope: !2355, inlinedAt: !3914)
!3919 = !DILocation(line: 98, column: 57, scope: !2368, inlinedAt: !3914)
!3920 = !DILocation(line: 98, column: 30, scope: !2368, inlinedAt: !3914)
!3921 = !DILocation(line: 98, column: 9, scope: !2368, inlinedAt: !3914)
!3922 = !DILocation(line: 98, column: 2, scope: !2368, inlinedAt: !3914)
!3923 = !DILocation(line: 0, scope: !3910)
!3924 = !DILocation(line: 575, column: 2, scope: !3911)
!3925 = !DILocation(line: 575, column: 2, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3910, file: !182, line: 575, column: 2)
!3927 = !DILocation(line: 575, column: 2, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3910, file: !182, line: 575, column: 2)
!3929 = !DILocation(line: 43, column: 21, scope: !2309, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 59, column: 18, scope: !2377, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 575, column: 2, scope: !3638)
!3932 = !DILocation(line: 59, column: 11, scope: !2377, inlinedAt: !3931)
!3933 = !DILocation(line: 60, column: 9, scope: !2383, inlinedAt: !3931)
!3934 = !DILocation(line: 60, column: 9, scope: !2377, inlinedAt: !3931)
!3935 = !DILocation(line: 62, column: 50, scope: !2386, inlinedAt: !3931)
!3936 = !DILocation(line: 62, column: 23, scope: !2386, inlinedAt: !3931)
!3937 = !DILocation(line: 62, column: 2, scope: !2386, inlinedAt: !3931)
!3938 = !DILocation(line: 63, column: 5, scope: !2386, inlinedAt: !3931)
!3939 = !DILocation(line: 576, column: 2, scope: !3622)
!3940 = !DILocation(line: 579, column: 1, scope: !3596)
!3941 = distinct !DISubprogram(name: "nk_fiber_start", scope: !182, file: !182, line: 693, type: !3942, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!50, !62, !33, !66, !38, !70, !3331}
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950}
!3945 = !DILocalVariable(name: "fun", arg: 1, scope: !3941, file: !182, line: 693, type: !62)
!3946 = !DILocalVariable(name: "input", arg: 2, scope: !3941, file: !182, line: 693, type: !33)
!3947 = !DILocalVariable(name: "output", arg: 3, scope: !3941, file: !182, line: 693, type: !66)
!3948 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3941, file: !182, line: 693, type: !38)
!3949 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3941, file: !182, line: 693, type: !70)
!3950 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3941, file: !182, line: 693, type: !3331)
!3951 = !DILocation(line: 693, column: 35, scope: !3941)
!3952 = !DILocation(line: 693, column: 46, scope: !3941)
!3953 = !DILocation(line: 693, column: 60, scope: !3941)
!3954 = !DILocation(line: 693, column: 84, scope: !3941)
!3955 = !DILocation(line: 693, column: 104, scope: !3941)
!3956 = !DILocation(line: 693, column: 134, scope: !3941)
!3957 = !DILocation(line: 695, column: 3, scope: !3941)
!3958 = !DILocation(line: 696, column: 16, scope: !3941)
!3959 = !DILocation(line: 696, column: 3, scope: !3941)
!3960 = !DILocation(line: 698, column: 3, scope: !3941)
!3961 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !182, file: !182, line: 730, type: !561, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1479)
!3962 = !DILocation(line: 732, column: 3, scope: !3961)
!3963 = !DILocation(line: 733, column: 10, scope: !3961)
!3964 = !DILocation(line: 733, column: 3, scope: !3961)
!3965 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !182, file: !182, line: 736, type: !2017, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3966)
!3966 = !{!3967, !3968}
!3967 = !DILocalVariable(name: "f_to", arg: 1, scope: !3965, file: !182, line: 736, type: !296)
!3968 = !DILocalVariable(name: "new_to", scope: !3969, file: !182, line: 744, type: !296)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !182, line: 740, column: 38)
!3970 = distinct !DILexicalBlock(scope: !3965, file: !182, line: 740, column: 7)
!3971 = !DILocation(line: 736, column: 35, scope: !3965)
!3972 = !DILocation(line: 383, column: 42, scope: !2199, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 740, column: 7, scope: !3970)
!3974 = !DILocation(line: 386, column: 26, scope: !2206, inlinedAt: !3973)
!3975 = !DILocation(line: 386, column: 26, scope: !2204, inlinedAt: !3973)
!3976 = !DILocation(line: 386, column: 20, scope: !2199, inlinedAt: !3973)
!3977 = !DILocation(line: 387, column: 23, scope: !2199, inlinedAt: !3973)
!3978 = !DILocation(line: 387, column: 7, scope: !2199, inlinedAt: !3973)
!3979 = !DILocation(line: 392, column: 12, scope: !2211, inlinedAt: !3973)
!3980 = !DILocation(line: 392, column: 27, scope: !2216, inlinedAt: !3973)
!3981 = !DILocation(line: 392, column: 3, scope: !2211, inlinedAt: !3973)
!3982 = !DILocation(line: 394, column: 14, scope: !2215, inlinedAt: !3973)
!3983 = !DILocation(line: 394, column: 31, scope: !2215, inlinedAt: !3973)
!3984 = !DILocation(line: 394, column: 40, scope: !2215, inlinedAt: !3973)
!3985 = !DILocation(line: 390, column: 21, scope: !2199, inlinedAt: !3973)
!3986 = !DILocation(line: 395, column: 5, scope: !2213, inlinedAt: !3973)
!3987 = !DILocation(line: 391, column: 15, scope: !2199, inlinedAt: !3973)
!3988 = !DILocation(line: 0, scope: !2214, inlinedAt: !3973)
!3989 = !DILocation(line: 395, column: 5, scope: !2214, inlinedAt: !3973)
!3990 = !DILocation(line: 395, column: 5, scope: !2219, inlinedAt: !3973)
!3991 = !DILocation(line: 400, column: 16, scope: !2240, inlinedAt: !3973)
!3992 = !DILocation(line: 400, column: 11, scope: !2241, inlinedAt: !3973)
!3993 = !DILocation(line: 392, column: 43, scope: !2216, inlinedAt: !3973)
!3994 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 122, column: 41, scope: !1540, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 744, column: 26, scope: !3969)
!3999 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !3995)
!4000 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !3996)
!4001 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !3997)
!4002 = !DILocation(line: 122, column: 21, scope: !1540, inlinedAt: !3998)
!4003 = !DILocation(line: 125, column: 15, scope: !1540, inlinedAt: !3998)
!4004 = !DILocation(line: 184, column: 54, scope: !1564, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 126, column: 9, scope: !1547, inlinedAt: !3998)
!4006 = !DILocation(line: 186, column: 15, scope: !1564, inlinedAt: !4005)
!4007 = !DILocation(line: 186, column: 20, scope: !1564, inlinedAt: !4005)
!4008 = !DILocation(line: 126, column: 7, scope: !1540, inlinedAt: !3998)
!4009 = !DILocation(line: 128, column: 25, scope: !1545, inlinedAt: !3998)
!4010 = !DILocation(line: 131, column: 40, scope: !1546, inlinedAt: !3998)
!4011 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 131, column: 5, scope: !1546, inlinedAt: !3998)
!4013 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !4012)
!4014 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !4012)
!4015 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !4012)
!4017 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !4016)
!4018 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !4016)
!4019 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !4016)
!4020 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !4016)
!4021 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !4016)
!4022 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !4012)
!4024 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !4023)
!4025 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !4023)
!4026 = !DILocation(line: 744, column: 17, scope: !3969)
!4027 = !DILocation(line: 746, column: 16, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3969, file: !182, line: 746, column: 9)
!4029 = !DILocation(line: 746, column: 9, scope: !3969)
!4030 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 747, column: 11, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !182, line: 747, column: 11)
!4035 = distinct !DILexicalBlock(scope: !4028, file: !182, line: 746, column: 25)
!4036 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4031)
!4037 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4032)
!4038 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !4033)
!4039 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 747, column: 33, scope: !4034)
!4043 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4040)
!4044 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4041)
!4045 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !4042)
!4046 = !DILocation(line: 747, column: 30, scope: !4034)
!4047 = !DILocation(line: 747, column: 11, scope: !4035)
!4048 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 92, column: 10, scope: !1499, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 751, column: 20, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4034, file: !182, line: 750, column: 14)
!4053 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4049)
!4054 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4050)
!4055 = !DILocation(line: 92, column: 30, scope: !1499, inlinedAt: !4051)
!4056 = !DILocation(line: 753, column: 5, scope: !4035)
!4057 = !DILocation(line: 0, scope: !3969)
!4058 = !DILocation(line: 756, column: 5, scope: !3969)
!4059 = !DILocation(line: 758, column: 5, scope: !3969)
!4060 = !DILocation(line: 401, column: 33, scope: !2249, inlinedAt: !3973)
!4061 = !DILocation(line: 151, column: 52, scope: !1576, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 401, column: 9, scope: !2249, inlinedAt: !3973)
!4063 = !DILocation(line: 153, column: 20, scope: !1576, inlinedAt: !4062)
!4064 = !DILocation(line: 153, column: 33, scope: !1576, inlinedAt: !4062)
!4065 = !DILocation(line: 128, column: 50, scope: !1585, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 153, column: 2, scope: !1576, inlinedAt: !4062)
!4067 = !DILocation(line: 128, column: 75, scope: !1585, inlinedAt: !4066)
!4068 = !DILocation(line: 130, column: 8, scope: !1585, inlinedAt: !4066)
!4069 = !DILocation(line: 130, column: 13, scope: !1585, inlinedAt: !4066)
!4070 = !DILocation(line: 131, column: 8, scope: !1585, inlinedAt: !4066)
!4071 = !DILocation(line: 131, column: 13, scope: !1585, inlinedAt: !4066)
!4072 = !DILocation(line: 73, column: 53, scope: !1598, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 154, column: 2, scope: !1576, inlinedAt: !4062)
!4074 = !DILocation(line: 75, column: 13, scope: !1598, inlinedAt: !4073)
!4075 = !DILocation(line: 76, column: 13, scope: !1598, inlinedAt: !4073)
!4076 = !DILocation(line: 762, column: 3, scope: !3965)
!4077 = !DILocation(line: 765, column: 3, scope: !3965)
!4078 = !DILocation(line: 0, scope: !3965)
!4079 = !DILocation(line: 766, column: 1, scope: !3965)
!4080 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !182, file: !182, line: 768, type: !4081, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4086)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!50, !4083, !33}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!70, !33}
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4080, file: !182, line: 768, type: !4083)
!4088 = !DILocalVariable(name: "state", arg: 2, scope: !4080, file: !182, line: 768, type: !33)
!4089 = !DILocation(line: 768, column: 42, scope: !4080)
!4090 = !DILocation(line: 768, column: 77, scope: !4080)
!4091 = !DILocation(line: 770, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4080, file: !182, line: 770, column: 7)
!4093 = !DILocation(line: 770, column: 7, scope: !4080)
!4094 = !DILocation(line: 771, column: 12, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !182, line: 770, column: 28)
!4096 = !DILocation(line: 771, column: 5, scope: !4095)
!4097 = !DILocation(line: 0, scope: !4080)
!4098 = !DILocation(line: 774, column: 1, scope: !4080)
!4099 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !182, file: !182, line: 776, type: !4100, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!50, !296, !4083, !33}
!4102 = !{!4103, !4104, !4105}
!4103 = !DILocalVariable(name: "fib", arg: 1, scope: !4099, file: !182, line: 776, type: !296)
!4104 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4099, file: !182, line: 776, type: !4083)
!4105 = !DILocalVariable(name: "state", arg: 3, scope: !4099, file: !182, line: 776, type: !33)
!4106 = !DILocation(line: 776, column: 47, scope: !4099)
!4107 = !DILocation(line: 776, column: 62, scope: !4099)
!4108 = !DILocation(line: 776, column: 97, scope: !4099)
!4109 = !DILocation(line: 778, column: 7, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4099, file: !182, line: 778, column: 7)
!4111 = !DILocation(line: 778, column: 7, scope: !4099)
!4112 = !DILocation(line: 779, column: 12, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !182, line: 778, column: 28)
!4114 = !DILocation(line: 779, column: 5, scope: !4113)
!4115 = !DILocation(line: 0, scope: !4099)
!4116 = !DILocation(line: 782, column: 1, scope: !4099)
!4117 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !182, file: !182, line: 784, type: !1490, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135}
!4119 = !DILocalVariable(name: "curr", scope: !4117, file: !182, line: 787, type: !296)
!4120 = !DILocalVariable(name: "size", scope: !4117, file: !182, line: 790, type: !29)
!4121 = !DILocalVariable(name: "alloc_size", scope: !4117, file: !182, line: 790, type: !29)
!4122 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4117, file: !182, line: 791, type: !29)
!4123 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4117, file: !182, line: 792, type: !29)
!4124 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4117, file: !182, line: 793, type: !29)
!4125 = !DILocalVariable(name: "child_stack", scope: !4117, file: !182, line: 794, type: !33)
!4126 = !DILocalVariable(name: "rsp", scope: !4117, file: !182, line: 795, type: !29)
!4127 = !DILocalVariable(name: "rbp0", scope: !4117, file: !182, line: 800, type: !33)
!4128 = !DILocalVariable(name: "rbp1", scope: !4117, file: !182, line: 801, type: !33)
!4129 = !DILocalVariable(name: "rbp_tos", scope: !4117, file: !182, line: 802, type: !33)
!4130 = !DILocalVariable(name: "ret0_addr", scope: !4117, file: !182, line: 803, type: !33)
!4131 = !DILocalVariable(name: "rbp_stash_addr", scope: !4117, file: !182, line: 815, type: !33)
!4132 = !DILocalVariable(name: "new", scope: !4117, file: !182, line: 831, type: !296)
!4133 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4117, file: !182, line: 847, type: !66)
!4134 = !DILocalVariable(name: "rbp2_ptr", scope: !4117, file: !182, line: 851, type: !66)
!4135 = !DILocalVariable(name: "ret2_ptr", scope: !4117, file: !182, line: 852, type: !66)
!4136 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 787, column: 22, scope: !4117)
!4140 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4137)
!4141 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4138)
!4142 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !4139)
!4143 = !DILocation(line: 787, column: 15, scope: !4117)
!4144 = !DILocation(line: 798, column: 3, scope: !4117)
!4145 = !{i32 23631}
!4146 = !DILocation(line: 795, column: 16, scope: !4117)
!4147 = !DILocation(line: 800, column: 21, scope: !4117)
!4148 = !DILocation(line: 800, column: 9, scope: !4117)
!4149 = !DILocation(line: 801, column: 21, scope: !4117)
!4150 = !DILocation(line: 801, column: 9, scope: !4117)
!4151 = !DILocation(line: 802, column: 21, scope: !4117)
!4152 = !DILocation(line: 802, column: 9, scope: !4117)
!4153 = !DILocation(line: 803, column: 26, scope: !4117)
!4154 = !DILocation(line: 803, column: 9, scope: !4117)
!4155 = !DILocation(line: 805, column: 44, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4117, file: !182, line: 805, column: 7)
!4157 = !DILocation(line: 805, column: 25, scope: !4156)
!4158 = !DILocation(line: 0, scope: !4117)
!4159 = !DILocation(line: 806, column: 46, scope: !4156)
!4160 = !DILocation(line: 806, column: 20, scope: !4156)
!4161 = !DILocation(line: 805, column: 50, scope: !4156)
!4162 = !DILocation(line: 815, column: 36, scope: !4117)
!4163 = !DILocation(line: 815, column: 9, scope: !4117)
!4164 = !DILocation(line: 821, column: 19, scope: !4117)
!4165 = !DILocation(line: 821, column: 24, scope: !4117)
!4166 = !DILocation(line: 790, column: 12, scope: !4117)
!4167 = !DILocation(line: 822, column: 37, scope: !4117)
!4168 = !DILocation(line: 791, column: 16, scope: !4117)
!4169 = !DILocation(line: 792, column: 16, scope: !4117)
!4170 = !DILocation(line: 825, column: 32, scope: !4117)
!4171 = !DILocation(line: 825, column: 57, scope: !4117)
!4172 = !DILocation(line: 793, column: 16, scope: !4117)
!4173 = !DILocation(line: 790, column: 18, scope: !4117)
!4174 = !DILocation(line: 831, column: 3, scope: !4117)
!4175 = !DILocation(line: 831, column: 15, scope: !4117)
!4176 = !DILocation(line: 832, column: 3, scope: !4117)
!4177 = !DILocation(line: 835, column: 15, scope: !4117)
!4178 = !DILocation(line: 113, column: 31, scope: !1527, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 835, column: 3, scope: !4117)
!4180 = !DILocation(line: 113, column: 43, scope: !1527, inlinedAt: !4179)
!4181 = !DILocation(line: 115, column: 8, scope: !1527, inlinedAt: !4179)
!4182 = !DILocation(line: 115, column: 12, scope: !1527, inlinedAt: !4179)
!4183 = !DILocation(line: 116, column: 6, scope: !1527, inlinedAt: !4179)
!4184 = !DILocation(line: 116, column: 26, scope: !1527, inlinedAt: !4179)
!4185 = !DILocation(line: 837, column: 17, scope: !4117)
!4186 = !DILocation(line: 837, column: 22, scope: !4117)
!4187 = !DILocation(line: 794, column: 17, scope: !4117)
!4188 = !DILocation(line: 839, column: 22, scope: !4117)
!4189 = !DILocation(line: 839, column: 35, scope: !4117)
!4190 = !DILocation(line: 839, column: 3, scope: !4117)
!4191 = !DILocation(line: 840, column: 57, scope: !4117)
!4192 = !DILocation(line: 840, column: 14, scope: !4117)
!4193 = !DILocation(line: 840, column: 3, scope: !4117)
!4194 = !DILocation(line: 840, column: 8, scope: !4117)
!4195 = !DILocation(line: 840, column: 12, scope: !4117)
!4196 = !DILocation(line: 847, column: 35, scope: !4117)
!4197 = !DILocation(line: 847, column: 40, scope: !4117)
!4198 = !DILocation(line: 847, column: 78, scope: !4117)
!4199 = !DILocation(line: 847, column: 26, scope: !4117)
!4200 = !DILocation(line: 847, column: 10, scope: !4117)
!4201 = !DILocation(line: 848, column: 37, scope: !4117)
!4202 = !DILocation(line: 848, column: 20, scope: !4117)
!4203 = !DILocation(line: 848, column: 18, scope: !4117)
!4204 = !DILocation(line: 851, column: 30, scope: !4117)
!4205 = !DILocation(line: 851, column: 35, scope: !4117)
!4206 = !DILocation(line: 851, column: 39, scope: !4117)
!4207 = !DILocation(line: 851, column: 68, scope: !4117)
!4208 = !DILocation(line: 851, column: 21, scope: !4117)
!4209 = !DILocation(line: 851, column: 10, scope: !4117)
!4210 = !DILocation(line: 852, column: 29, scope: !4117)
!4211 = !DILocation(line: 852, column: 10, scope: !4117)
!4212 = !DILocation(line: 861, column: 13, scope: !4117)
!4213 = !DILocation(line: 868, column: 16, scope: !4117)
!4214 = !DILocation(line: 868, column: 21, scope: !4117)
!4215 = !DILocation(line: 868, column: 24, scope: !4117)
!4216 = !DILocation(line: 868, column: 4, scope: !4117)
!4217 = !DILocation(line: 868, column: 41, scope: !4117)
!4218 = !DILocation(line: 871, column: 16, scope: !4117)
!4219 = !DILocation(line: 663, column: 30, scope: !1655, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 871, column: 3, scope: !4117)
!4221 = !DILocation(line: 663, column: 41, scope: !1655, inlinedAt: !4220)
!4222 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 98, column: 10, scope: !1507, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 666, column: 30, scope: !1655, inlinedAt: !4220)
!4226 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4223)
!4227 = !DILocation(line: 666, column: 16, scope: !1655, inlinedAt: !4220)
!4228 = !DILocation(line: 0, scope: !1655, inlinedAt: !4220)
!4229 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 105, column: 12, scope: !1517, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 674, column: 41, scope: !1655, inlinedAt: !4220)
!4233 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4230)
!4234 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4231)
!4235 = !DILocation(line: 105, column: 32, scope: !1517, inlinedAt: !4232)
!4236 = !DILocation(line: 674, column: 21, scope: !1655, inlinedAt: !4220)
!4237 = !DILocation(line: 678, column: 6, scope: !1655, inlinedAt: !4220)
!4238 = !DILocation(line: 678, column: 15, scope: !1655, inlinedAt: !4220)
!4239 = !DILocation(line: 679, column: 22, scope: !1655, inlinedAt: !4220)
!4240 = !DILocation(line: 116, column: 52, scope: !1724, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 679, column: 3, scope: !1655, inlinedAt: !4220)
!4242 = !DILocation(line: 116, column: 76, scope: !1724, inlinedAt: !4241)
!4243 = !DILocation(line: 118, column: 25, scope: !1724, inlinedAt: !4241)
!4244 = !DILocation(line: 85, column: 49, scope: !1732, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 118, column: 2, scope: !1724, inlinedAt: !4241)
!4246 = !DILocation(line: 86, column: 28, scope: !1732, inlinedAt: !4245)
!4247 = !DILocation(line: 87, column: 28, scope: !1732, inlinedAt: !4245)
!4248 = !DILocation(line: 89, column: 13, scope: !1732, inlinedAt: !4245)
!4249 = !DILocation(line: 90, column: 8, scope: !1732, inlinedAt: !4245)
!4250 = !DILocation(line: 90, column: 13, scope: !1732, inlinedAt: !4245)
!4251 = !DILocation(line: 91, column: 8, scope: !1732, inlinedAt: !4245)
!4252 = !DILocation(line: 91, column: 13, scope: !1732, inlinedAt: !4245)
!4253 = !DILocation(line: 92, column: 8, scope: !1732, inlinedAt: !4245)
!4254 = !DILocation(line: 92, column: 13, scope: !1732, inlinedAt: !4245)
!4255 = !DILocation(line: 683, column: 20, scope: !1750, inlinedAt: !4220)
!4256 = !DILocation(line: 683, column: 7, scope: !1750, inlinedAt: !4220)
!4257 = !DILocation(line: 683, column: 7, scope: !1655, inlinedAt: !4220)
!4258 = !DILocation(line: 687, column: 5, scope: !1754, inlinedAt: !4220)
!4259 = !DILocation(line: 688, column: 3, scope: !1754, inlinedAt: !4220)
!4260 = !DILocation(line: 873, column: 10, scope: !4117)
!4261 = !DILocation(line: 874, column: 1, scope: !4117)
!4262 = !DILocation(line: 873, column: 3, scope: !4117)
!4263 = distinct !DISubprogram(name: "nk_fiber_join", scope: !182, file: !182, line: 877, type: !2017, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4264)
!4264 = !{!4265, !4266, !4267}
!4265 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4263, file: !182, line: 877, type: !296)
!4266 = !DILocalVariable(name: "curr_fiber", scope: !4263, file: !182, line: 887, type: !296)
!4267 = !DILocalVariable(name: "wait_q", scope: !4263, file: !182, line: 896, type: !205)
!4268 = !DILocation(line: 877, column: 31, scope: !4263)
!4269 = !DILocation(line: 883, column: 8, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4263, file: !182, line: 883, column: 7)
!4271 = !DILocation(line: 883, column: 7, scope: !4263)
!4272 = !DILocation(line: 129, column: 25, scope: !1481, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 78, column: 10, scope: !1474, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 85, column: 10, scope: !1489, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 887, column: 28, scope: !4263)
!4276 = !DILocation(line: 129, column: 12, scope: !1481, inlinedAt: !4273)
!4277 = !DILocation(line: 78, column: 21, scope: !1474, inlinedAt: !4274)
!4278 = !DILocation(line: 85, column: 30, scope: !1489, inlinedAt: !4275)
!4279 = !DILocation(line: 887, column: 15, scope: !4263)
!4280 = !DILocation(line: 896, column: 41, scope: !4263)
!4281 = !DILocation(line: 896, column: 21, scope: !4263)
!4282 = !DILocation(line: 897, column: 31, scope: !4263)
!4283 = !DILocation(line: 116, column: 52, scope: !1724, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 897, column: 3, scope: !4263)
!4285 = !DILocation(line: 116, column: 76, scope: !1724, inlinedAt: !4284)
!4286 = !DILocation(line: 118, column: 25, scope: !1724, inlinedAt: !4284)
!4287 = !DILocation(line: 85, column: 49, scope: !1732, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 118, column: 2, scope: !1724, inlinedAt: !4284)
!4289 = !DILocation(line: 86, column: 28, scope: !1732, inlinedAt: !4288)
!4290 = !DILocation(line: 87, column: 28, scope: !1732, inlinedAt: !4288)
!4291 = !DILocation(line: 89, column: 13, scope: !1732, inlinedAt: !4288)
!4292 = !DILocation(line: 90, column: 8, scope: !1732, inlinedAt: !4288)
!4293 = !DILocation(line: 90, column: 13, scope: !1732, inlinedAt: !4288)
!4294 = !DILocation(line: 91, column: 8, scope: !1732, inlinedAt: !4288)
!4295 = !DILocation(line: 91, column: 13, scope: !1732, inlinedAt: !4288)
!4296 = !DILocation(line: 92, column: 8, scope: !1732, inlinedAt: !4288)
!4297 = !DILocation(line: 92, column: 13, scope: !1732, inlinedAt: !4288)
!4298 = !DILocation(line: 898, column: 12, scope: !4263)
!4299 = !DILocation(line: 898, column: 20, scope: !4263)
!4300 = !DILocation(line: 899, column: 15, scope: !4263)
!4301 = !DILocation(line: 899, column: 24, scope: !4263)
!4302 = !DILocation(line: 903, column: 10, scope: !4263)
!4303 = !DILocation(line: 0, scope: !4263)
!4304 = !DILocation(line: 904, column: 1, scope: !4263)
