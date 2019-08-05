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
  %10 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 1, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 1, metadata !688, metadata !DIExpression()), !dbg !695
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 1, %struct.nk_fiber* null) #10, !dbg !705
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 2, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 2, metadata !688, metadata !DIExpression()), !dbg !695
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 2, %struct.nk_fiber* null) #10, !dbg !705
  %14 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 3, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 3, metadata !688, metadata !DIExpression()), !dbg !695
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 3, %struct.nk_fiber* null) #10, !dbg !705
  %16 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 4, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 4, metadata !688, metadata !DIExpression()), !dbg !695
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0), i32 4, %struct.nk_fiber* null) #10, !dbg !705
  %18 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 5, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i32 5, metadata !688, metadata !DIExpression()), !dbg !695
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), %struct.nk_fiber* null, i32 5) #10, !dbg !708
  ret void, !dbg !709
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers6(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !710 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !712, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i8* %1, metadata !713, metadata !DIExpression()), !dbg !715
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !716
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !721, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !721
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !723
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !724
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !724
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !725
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !726
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !719, metadata !DIExpression(DW_OP_deref)) #9, !dbg !727
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !729
  ret i32 0, !dbg !730
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_fork(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !731 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8** undef, metadata !734, metadata !DIExpression()), !dbg !738
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !739
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !740
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !741
  %4 = tail call %struct.nk_fiber* (...) @nk_fiber_fork() #10, !dbg !742
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %4, metadata !736, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 0, metadata !735, metadata !DIExpression()), !dbg !741
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 0, %struct.nk_fiber* %4) #10, !dbg !744
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !746
  call void @llvm.dbg.value(metadata i32 1, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 1, metadata !735, metadata !DIExpression()), !dbg !741
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 1, %struct.nk_fiber* %4) #10, !dbg !744
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !746
  call void @llvm.dbg.value(metadata i32 2, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 2, metadata !735, metadata !DIExpression()), !dbg !741
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 2, %struct.nk_fiber* %4) #10, !dbg !744
  %10 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !746
  call void @llvm.dbg.value(metadata i32 3, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 3, metadata !735, metadata !DIExpression()), !dbg !741
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 3, %struct.nk_fiber* %4) #10, !dbg !744
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !746
  call void @llvm.dbg.value(metadata i32 4, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 4, metadata !735, metadata !DIExpression()), !dbg !741
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 4, %struct.nk_fiber* %4) #10, !dbg !744
  %14 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !746
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 5, metadata !735, metadata !DIExpression()), !dbg !741
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !747
  ret void, !dbg !748
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers5(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !749 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !751, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i8* %1, metadata !752, metadata !DIExpression()), !dbg !754
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !755
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !760, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !760
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !762
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !763
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !763
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !764
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !765
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !758, metadata !DIExpression(DW_OP_deref)) #9, !dbg !766
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !767
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !768
  ret i32 0, !dbg !769
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !770 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !772, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8** undef, metadata !773, metadata !DIExpression()), !dbg !778
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !779
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !780
  call void @llvm.dbg.value(metadata i32 0, metadata !774, metadata !DIExpression()), !dbg !781
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !774, metadata !DIExpression()), !dbg !781
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !783
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !784
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !785
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !786
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %8, metadata !775, metadata !DIExpression()), !dbg !784
  %9 = call i32 @nk_fiber_join(%struct.nk_fiber* %8) #10, !dbg !787
  %10 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !789
  call void @llvm.dbg.value(metadata i32 1, metadata !774, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 1, metadata !774, metadata !DIExpression()), !dbg !781
  %11 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !783
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !784
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !785
  %13 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !786
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %13, metadata !775, metadata !DIExpression()), !dbg !784
  %14 = call i32 @nk_fiber_join(%struct.nk_fiber* %13) #10, !dbg !787
  %15 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !789
  call void @llvm.dbg.value(metadata i32 2, metadata !774, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 2, metadata !774, metadata !DIExpression()), !dbg !781
  %16 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !782
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !783
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !775, metadata !DIExpression(DW_OP_deref)), !dbg !784
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !785
  %18 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !786
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %18, metadata !775, metadata !DIExpression()), !dbg !784
  %19 = call i32 @nk_fiber_join(%struct.nk_fiber* %18) #10, !dbg !787
  %20 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !789
  call void @llvm.dbg.value(metadata i32 3, metadata !774, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 3, metadata !774, metadata !DIExpression()), !dbg !781
  %21 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !790
  ret void, !dbg !791
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner_join(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !792 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !794, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8** undef, metadata !795, metadata !DIExpression()), !dbg !798
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !799
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !800
  call void @llvm.dbg.value(metadata i32 0, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 0, metadata !796, metadata !DIExpression()), !dbg !801
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !802
  %5 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 1, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 1, metadata !796, metadata !DIExpression()), !dbg !801
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !802
  %7 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 2, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 2, metadata !796, metadata !DIExpression()), !dbg !801
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !802
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 3, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 3, metadata !796, metadata !DIExpression()), !dbg !801
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !802
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 4, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 4, metadata !796, metadata !DIExpression()), !dbg !801
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !802
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 5, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 5, metadata !796, metadata !DIExpression()), !dbg !801
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !802
  %15 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 6, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 6, metadata !796, metadata !DIExpression()), !dbg !801
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !802
  %17 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 7, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 7, metadata !796, metadata !DIExpression()), !dbg !801
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !802
  %19 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 8, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 8, metadata !796, metadata !DIExpression()), !dbg !801
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !802
  %21 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 9, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 9, metadata !796, metadata !DIExpression()), !dbg !801
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !802
  %23 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 10, metadata !796, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 10, metadata !796, metadata !DIExpression()), !dbg !801
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !805
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
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !825, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !825
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !827
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !828
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !828
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !829
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !830
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
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !949, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !949
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !951
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
  %5 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 1, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 1, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 2, metadata !964, metadata !DIExpression()), !dbg !970
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 2) #10, !dbg !971
  %7 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 3, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 3, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 4, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 4, metadata !964, metadata !DIExpression()), !dbg !970
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 4) #10, !dbg !971
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 5, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 5, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 6, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 6, metadata !964, metadata !DIExpression()), !dbg !970
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 6) #10, !dbg !971
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 7, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 7, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 8, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 8, metadata !964, metadata !DIExpression()), !dbg !970
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 8) #10, !dbg !971
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !976
  call void @llvm.dbg.value(metadata i32 9, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 9, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 10, metadata !964, metadata !DIExpression()), !dbg !970
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !977
  ret void, !dbg !978
}

; Function Attrs: noredzone nounwind
define dso_local void @print_odd(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !979 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !981, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i8** undef, metadata !982, metadata !DIExpression()), !dbg !986
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !987
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !988
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 1, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 1, metadata !983, metadata !DIExpression()), !dbg !989
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 1) #10, !dbg !990
  %5 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !995
  call void @llvm.dbg.value(metadata i32 2, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 2, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 3, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 3, metadata !983, metadata !DIExpression()), !dbg !989
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 3) #10, !dbg !990
  %7 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !995
  call void @llvm.dbg.value(metadata i32 4, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 4, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 5, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 5, metadata !983, metadata !DIExpression()), !dbg !989
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !990
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !995
  call void @llvm.dbg.value(metadata i32 6, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 6, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 7, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 7, metadata !983, metadata !DIExpression()), !dbg !989
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 7) #10, !dbg !990
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !995
  call void @llvm.dbg.value(metadata i32 8, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 8, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 9, metadata !983, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 9, metadata !983, metadata !DIExpression()), !dbg !989
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 9) #10, !dbg !990
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !995
  call void @llvm.dbg.value(metadata i32 10, metadata !983, metadata !DIExpression()), !dbg !989
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !996
  ret void, !dbg !997
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !998 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1000, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %1, metadata !1001, metadata !DIExpression()), !dbg !1003
  %4 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1004
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1009, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1011
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1012
  %7 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %6, align 8, !dbg !1012
  store %struct.nk_virtual_console* %7, %struct.nk_virtual_console** @vc, align 8, !dbg !1013
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %7) #10, !dbg !1014
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1007, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1015
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1016
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1017
  ret i32 0, !dbg !1018
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_outer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1019 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i8** undef, metadata !1022, metadata !DIExpression()), !dbg !1027
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1028
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1029
  call void @llvm.dbg.value(metadata i32 0, metadata !1023, metadata !DIExpression()), !dbg !1030
  %5 = bitcast %struct.nk_fiber** %3 to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !1023, metadata !DIExpression()), !dbg !1030
  %6 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0) #10, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1024, metadata !DIExpression(DW_OP_deref)), !dbg !1033
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1034
  %8 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1036
  call void @llvm.dbg.value(metadata i32 1, metadata !1023, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 1, metadata !1023, metadata !DIExpression()), !dbg !1030
  %9 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 1) #10, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1024, metadata !DIExpression(DW_OP_deref)), !dbg !1033
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1034
  %11 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1036
  call void @llvm.dbg.value(metadata i32 2, metadata !1023, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 2, metadata !1023, metadata !DIExpression()), !dbg !1030
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 2) #10, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1024, metadata !DIExpression(DW_OP_deref)), !dbg !1033
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_inner, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1034
  %14 = call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1036
  call void @llvm.dbg.value(metadata i32 3, metadata !1023, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 3, metadata !1023, metadata !DIExpression()), !dbg !1030
  %15 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 3) #10, !dbg !1037
  ret void, !dbg !1038
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber_inner(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1039 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1041, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8** undef, metadata !1042, metadata !DIExpression()), !dbg !1045
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1046
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1047
  call void @llvm.dbg.value(metadata i32 0, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 0, metadata !1043, metadata !DIExpression()), !dbg !1048
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0) #10, !dbg !1049
  %5 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 1, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 1, metadata !1043, metadata !DIExpression()), !dbg !1048
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1) #10, !dbg !1049
  %7 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1048
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2) #10, !dbg !1049
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 3, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 3, metadata !1043, metadata !DIExpression()), !dbg !1048
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 3) #10, !dbg !1049
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 4, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 4, metadata !1043, metadata !DIExpression()), !dbg !1048
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4) #10, !dbg !1049
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 5, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 5, metadata !1043, metadata !DIExpression()), !dbg !1048
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1049
  %15 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 6, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 6, metadata !1043, metadata !DIExpression()), !dbg !1048
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 6) #10, !dbg !1049
  %17 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 7, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 7, metadata !1043, metadata !DIExpression()), !dbg !1048
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 7) #10, !dbg !1049
  %19 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 8, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 8, metadata !1043, metadata !DIExpression()), !dbg !1048
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 8) #10, !dbg !1049
  %21 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 9, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 9, metadata !1043, metadata !DIExpression()), !dbg !1048
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 9) #10, !dbg !1049
  %23 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1051
  call void @llvm.dbg.value(metadata i32 10, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 10, metadata !1043, metadata !DIExpression()), !dbg !1048
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 10) #10, !dbg !1052
  ret void, !dbg !1053
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers10(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1054 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %1, metadata !1057, metadata !DIExpression()), !dbg !1059
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1060
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1060
  %6 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1066
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1067, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1067
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1069
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1070
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !1070
  %10 = load i64, i64* %9, align 8, !dbg !1070
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1063, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1072
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1064, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1074
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1075
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1076
  ret i32 0, !dbg !1077
}

; Function Attrs: noredzone nounwind
define dso_local void @first_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1078 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1080, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8** undef, metadata !1081, metadata !DIExpression()), !dbg !1086
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1087
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1088
  call void @llvm.dbg.value(metadata i32 0, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 0, metadata !1084, metadata !DIExpression()), !dbg !1091
  br label %4, !dbg !1092

; <label>:4:                                      ; preds = %16, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %6, metadata !1082, metadata !DIExpression()), !dbg !1089
  %7 = icmp eq i32 %6, 2, !dbg !1093
  br i1 %7, label %8, label %16, !dbg !1096

; <label>:8:                                      ; preds = %4
  %9 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1097, !srcloc !1107
  %10 = extractvalue { i32, i32 } %9, 0, !dbg !1097
  %11 = extractvalue { i32, i32 } %9, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %10, metadata !1103, metadata !DIExpression()) #9, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %11, metadata !1104, metadata !DIExpression()) #9, !dbg !1109
  %12 = zext i32 %10 to i64, !dbg !1110
  %13 = zext i32 %11 to i64, !dbg !1111
  %14 = shl nuw i64 %13, 32, !dbg !1112
  %15 = or i64 %14, %12, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %15, metadata !1083, metadata !DIExpression()), !dbg !1090
  br label %16, !dbg !1114

; <label>:16:                                     ; preds = %8, %4
  %17 = phi i64 [ %15, %8 ], [ %5, %4 ], !dbg !1115
  %18 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1116
  %19 = add nuw nsw i32 %6, 1, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 %19, metadata !1082, metadata !DIExpression()), !dbg !1089
  %20 = icmp eq i32 %19, 100000, !dbg !1118
  br i1 %20, label %21, label %4, !dbg !1092, !llvm.loop !1119

; <label>:21:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 100000, metadata !1082, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %17, metadata !1083, metadata !DIExpression()), !dbg !1090
  %22 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1121, !srcloc !1107
  %23 = extractvalue { i32, i32 } %22, 0, !dbg !1121
  %24 = extractvalue { i32, i32 } %22, 1, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %23, metadata !1103, metadata !DIExpression()) #9, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %24, metadata !1104, metadata !DIExpression()) #9, !dbg !1124
  %25 = zext i32 %23 to i64, !dbg !1125
  %26 = zext i32 %24 to i64, !dbg !1126
  %27 = shl nuw i64 %26, 32, !dbg !1127
  %28 = or i64 %27, %25, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %28, metadata !1084, metadata !DIExpression()), !dbg !1091
  %29 = sub i64 %28, %17, !dbg !1129
  %30 = udiv i64 %29, 100000, !dbg !1130
  %31 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.31, i64 0, i64 0), i32 100000, i64 %29, i64 %30) #10, !dbg !1131
  ret void, !dbg !1132
}

; Function Attrs: noredzone nounwind
define dso_local void @second_timer(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1133 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1135, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata i8** undef, metadata !1136, metadata !DIExpression()), !dbg !1139
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1140
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1141
  call void @llvm.dbg.value(metadata i32 0, metadata !1137, metadata !DIExpression()), !dbg !1142
  br label %4, !dbg !1143

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1137, metadata !DIExpression()), !dbg !1142
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1144
  %7 = add nuw nsw i32 %5, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %7, metadata !1137, metadata !DIExpression()), !dbg !1142
  %8 = icmp eq i32 %7, 100000, !dbg !1147
  br i1 %8, label %9, label %4, !dbg !1143, !llvm.loop !1148

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 100000, metadata !1137, metadata !DIExpression()), !dbg !1142
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i32 100000) #10, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1152 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  %5 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i8* %1, metadata !1155, metadata !DIExpression()), !dbg !1157
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1158
  %7 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !1165
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1165
  %8 = bitcast %struct.nk_fiber** %5 to i8*, !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1166
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1167, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !574, metadata !DIExpression()) #9, !dbg !1167
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !573, metadata !DIExpression()) #9, !dbg !1169
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1170
  %11 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %10, align 8, !dbg !1170
  store %struct.nk_virtual_console* %11, %struct.nk_virtual_console** @vc, align 8, !dbg !1171
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %11) #10, !dbg !1172
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1161, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1173
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !1162, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1175
  %14 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %4) #10, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !1163, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1177
  %15 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %5) #10, !dbg !1178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !1179
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1179
  ret i32 0, !dbg !1180
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber1(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1181 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1183, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8** undef, metadata !1184, metadata !DIExpression()), !dbg !1188
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1189
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1190
  call void @llvm.dbg.value(metadata i32 0, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 0, metadata !1185, metadata !DIExpression()), !dbg !1191
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 0) #10, !dbg !1192
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1194
  call void @llvm.dbg.value(metadata i32 1, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 1, metadata !1185, metadata !DIExpression()), !dbg !1191
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1) #10, !dbg !1192
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1194
  call void @llvm.dbg.value(metadata i32 2, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 2, metadata !1185, metadata !DIExpression()), !dbg !1191
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 2) #10, !dbg !1192
  %10 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1194
  call void @llvm.dbg.value(metadata i32 3, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 3, metadata !1185, metadata !DIExpression()), !dbg !1191
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 3) #10, !dbg !1192
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1194
  call void @llvm.dbg.value(metadata i32 4, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 4, metadata !1185, metadata !DIExpression()), !dbg !1191
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 4) #10, !dbg !1192
  %14 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1194
  call void @llvm.dbg.value(metadata i32 5, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, metadata !1185, metadata !DIExpression()), !dbg !1191
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !1195
  %16 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1196
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1186, metadata !DIExpression(DW_OP_deref)), !dbg !1197
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #9, !dbg !1199
  ret void, !dbg !1199
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber2(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1200 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1202, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8** undef, metadata !1203, metadata !DIExpression()), !dbg !1207
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1208
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1210
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 0) #10, !dbg !1211
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()), !dbg !1210
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 1) #10, !dbg !1211
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 2, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 2, metadata !1204, metadata !DIExpression()), !dbg !1210
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 2) #10, !dbg !1211
  %10 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 3, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 3, metadata !1204, metadata !DIExpression()), !dbg !1210
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 3) #10, !dbg !1211
  %12 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 4, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 4, metadata !1204, metadata !DIExpression()), !dbg !1210
  %13 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 4) #10, !dbg !1211
  %14 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 5, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 5, metadata !1204, metadata !DIExpression()), !dbg !1210
  %15 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !1211
  %16 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 6, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 6, metadata !1204, metadata !DIExpression()), !dbg !1210
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 6) #10, !dbg !1211
  %18 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 7, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 7, metadata !1204, metadata !DIExpression()), !dbg !1210
  %19 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 7) #10, !dbg !1211
  %20 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 8, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 8, metadata !1204, metadata !DIExpression()), !dbg !1210
  %21 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 8) #10, !dbg !1211
  %22 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 9, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 9, metadata !1204, metadata !DIExpression()), !dbg !1210
  %23 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 9) #10, !dbg !1211
  %24 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1213
  call void @llvm.dbg.value(metadata i32 10, metadata !1204, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 10, metadata !1204, metadata !DIExpression()), !dbg !1210
  %25 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 10) #10, !dbg !1214
  %26 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #9, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1216
  %27 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1217
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #9, !dbg !1218
  ret void, !dbg !1218
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber3(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1219 {
  %3 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !1221, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8** undef, metadata !1222, metadata !DIExpression()), !dbg !1226
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1227
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #10, !dbg !1228
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 0, metadata !1223, metadata !DIExpression()), !dbg !1229
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #10, !dbg !1230
  %6 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1232
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()), !dbg !1229
  %7 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 1) #10, !dbg !1230
  %8 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 2, metadata !1223, metadata !DIExpression()), !dbg !1229
  %9 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 2) #10, !dbg !1233
  %10 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1224, metadata !DIExpression(DW_OP_deref)), !dbg !1235
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber4, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1237
  ret void, !dbg !1237
}

; Function Attrs: noredzone nounwind
define dso_local void @fiber4(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !1238 {
  call void @llvm.dbg.value(metadata i8* undef, metadata !1240, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i8** undef, metadata !1241, metadata !DIExpression()), !dbg !1244
  %3 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1245
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %3) #10, !dbg !1246
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1247
  %4 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0) #10, !dbg !1248
  %5 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 1, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 1, metadata !1242, metadata !DIExpression()), !dbg !1247
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1) #10, !dbg !1248
  %7 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 2, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 2, metadata !1242, metadata !DIExpression()), !dbg !1247
  %8 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2) #10, !dbg !1248
  %9 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 3, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 3, metadata !1242, metadata !DIExpression()), !dbg !1247
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 3) #10, !dbg !1248
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 4, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 4, metadata !1242, metadata !DIExpression()), !dbg !1247
  %12 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4) #10, !dbg !1248
  %13 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 5, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 5, metadata !1242, metadata !DIExpression()), !dbg !1247
  %14 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !1248
  %15 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 6, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 6, metadata !1242, metadata !DIExpression()), !dbg !1247
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 6) #10, !dbg !1248
  %17 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 7, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 7, metadata !1242, metadata !DIExpression()), !dbg !1247
  %18 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 7) #10, !dbg !1248
  %19 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 8, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 8, metadata !1242, metadata !DIExpression()), !dbg !1247
  %20 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 8) #10, !dbg !1248
  %21 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 9, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 9, metadata !1242, metadata !DIExpression()), !dbg !1247
  %22 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 9) #10, !dbg !1248
  %23 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #10, !dbg !1250
  call void @llvm.dbg.value(metadata i32 10, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 10, metadata !1242, metadata !DIExpression()), !dbg !1247
  %24 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 10) #10, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: noredzone nounwind
define dso_local i32 @souradip(i32) local_unnamed_addr #0 !dbg !1253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1257, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 0, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 0, metadata !1258, metadata !DIExpression()), !dbg !1262
  %2 = icmp sgt i32 %0, 0, !dbg !1263
  br i1 %2, label %3, label %8, !dbg !1266

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1258, metadata !DIExpression()), !dbg !1262
  %5 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4) #10, !dbg !1267
  %6 = add nuw nsw i32 %4, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %6, metadata !1258, metadata !DIExpression()), !dbg !1262
  %7 = icmp eq i32 %6, %0, !dbg !1263
  br i1 %7, label %8, label %3, !dbg !1266, !llvm.loop !1270

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %4, %3 ], !dbg !1272
  call void @llvm.dbg.value(metadata i32 %9, metadata !1259, metadata !DIExpression()), !dbg !1261
  ret i32 %9, !dbg !1273
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers_counter() local_unnamed_addr #0 !dbg !943 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1274
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1274
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1275
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1275
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1276, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1278
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1279
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1279
  %8 = load i64, i64* %7, align 8, !dbg !1279
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1280
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !945, metadata !DIExpression(DW_OP_deref)), !dbg !1281
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_even, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !946, metadata !DIExpression(DW_OP_deref)), !dbg !1283
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @print_odd, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1284
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1285
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1285
  ret i32 0, !dbg !1286
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_nested_fibers() local_unnamed_addr #0 !dbg !1005 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1287
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1287
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1288, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1288
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1290
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1291
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1291
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1292
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1293
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1007, metadata !DIExpression(DW_OP_deref)), !dbg !1294
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1296
  ret i32 0, !dbg !1297
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fibers() local_unnamed_addr #0 !dbg !1159 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1298
  %5 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1299
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1299
  %6 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1300
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1300
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1301, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !574, metadata !DIExpression()) #9, !dbg !1301
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !573, metadata !DIExpression()) #9, !dbg !1303
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !1304
  %9 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %8, align 8, !dbg !1304
  store %struct.nk_virtual_console* %9, %struct.nk_virtual_console** @vc, align 8, !dbg !1305
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), %struct.nk_virtual_console* %9) #10, !dbg !1306
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1161, metadata !DIExpression(DW_OP_deref)), !dbg !1307
  %11 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1162, metadata !DIExpression(DW_OP_deref)), !dbg !1309
  %12 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber2, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1163, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  %13 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #10, !dbg !1312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1313
  ret i32 0, !dbg !1314
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_join() local_unnamed_addr #0 !dbg !756 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1315
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1315
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1316, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1318
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1319
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1319
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1320
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1321
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !758, metadata !DIExpression(DW_OP_deref)), !dbg !1322
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_outer_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1323
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1324
  ret i32 0, !dbg !1325
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork() local_unnamed_addr #0 !dbg !717 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1326
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1327, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1329
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1330
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1330
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1331
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !719, metadata !DIExpression(DW_OP_deref)), !dbg !1333
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1334
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1335
  ret i32 0, !dbg !1336
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_fork_join() local_unnamed_addr #0 !dbg !670 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1337
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1338, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1338
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1340
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1341
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1341
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1342
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1343
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !672, metadata !DIExpression(DW_OP_deref)), !dbg !1344
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_fork_join, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1346
  ret i32 0, !dbg !1347
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine() local_unnamed_addr #0 !dbg !611 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1348
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1348
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1349, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1349
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1351
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1352
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1352
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1353
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1354
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !613, metadata !DIExpression(DW_OP_deref)), !dbg !1355
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine1, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1357
  ret i32 0, !dbg !1358
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_routine_2() local_unnamed_addr #0 !dbg !560 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1359
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1359
  %3 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1360, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !574, metadata !DIExpression()) #9, !dbg !1360
  call void @llvm.dbg.value(metadata %struct.nk_thread* %3, metadata !573, metadata !DIExpression()) #9, !dbg !1362
  %4 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %3, i64 0, i32 24, !dbg !1363
  %5 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** %4, align 8, !dbg !1363
  store %struct.nk_virtual_console* %5, %struct.nk_virtual_console** @vc, align 8, !dbg !1364
  %6 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), %struct.nk_virtual_console* %5) #10, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !564, metadata !DIExpression(DW_OP_deref)), !dbg !1366
  %7 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @fiber_routine3, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1368
  ret i32 0, !dbg !1369
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_fiber_timing() local_unnamed_addr #0 !dbg !1061 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1370
  %4 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !1371
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1371
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !1372, !srcloc !576
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !574, metadata !DIExpression()) #9, !dbg !1372
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !573, metadata !DIExpression()) #9, !dbg !1374
  %6 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %5, i64 0, i32 24, !dbg !1375
  %7 = bitcast %struct.nk_virtual_console** %6 to i64*, !dbg !1375
  %8 = load i64, i64* %7, align 8, !dbg !1375
  store i64 %8, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1376
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1063, metadata !DIExpression(DW_OP_deref)), !dbg !1377
  %9 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @first_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #10, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !1064, metadata !DIExpression(DW_OP_deref)), !dbg !1379
  %10 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @second_timer, i8* null, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #10, !dbg !1380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9, !dbg !1381
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !1381
  ret i32 0, !dbg !1382
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1383 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1389
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1395
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1396
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1396
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1397
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1398 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1401
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1404
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1405
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1405
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1406
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1406
  ret %struct.nk_fiber* %6, !dbg !1407
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1408 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1409
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1412
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1413
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1413
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1414
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1414
  ret %struct.nk_fiber* %6, !dbg !1415
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1416 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1419
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1422
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1423
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1423
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1424
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1424
  ret %struct.nk_thread* %6, !dbg !1425
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1426 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1429
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1432
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1433
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1433
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1434
  ret %struct.list_head* %5, !dbg !1435
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !1436 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %1, metadata !1441, metadata !DIExpression()), !dbg !1443
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1444
  %4 = load i64, i64* %3, align 8, !dbg !1445
  %5 = add i64 %4, -8, !dbg !1445
  store i64 %5, i64* %3, align 8, !dbg !1445
  %6 = inttoptr i64 %5 to i64*, !dbg !1446
  store i64 %1, i64* %6, align 8, !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1449 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1463
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1467
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1468
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1468
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1451, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1452, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1472, metadata !DIExpression()), !dbg !1477
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1479
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1479
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1480
  br i1 %8, label %20, label %9, !dbg !1481

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1453, metadata !DIExpression()), !dbg !1482
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1482
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1453, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1452, metadata !DIExpression()), !dbg !1471
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1484, metadata !DIExpression()), !dbg !1489
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1491
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1491
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1492
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1493, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1498, metadata !DIExpression()), !dbg !1501
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1502
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1503
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1504
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1505
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1506, metadata !DIExpression()), !dbg !1509
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1511
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1511
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1512
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1512
  br label %20, !dbg !1513

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1514
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1452, metadata !DIExpression()), !dbg !1471
  ret %struct.nk_fiber* %21, !dbg !1515
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1516 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1520, metadata !DIExpression()), !dbg !1531
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1532
  store i32 4, i32* %3, align 4, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1521, metadata !DIExpression()), !dbg !1534
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1535
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1523, metadata !DIExpression()), !dbg !1536
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1537
  %6 = load i32, i32* %5, align 8, !dbg !1537
  %7 = icmp sgt i32 %6, 0, !dbg !1538
  br i1 %7, label %8, label %66, !dbg !1539

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1539

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1524, metadata !DIExpression()), !dbg !1540
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1541
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1541
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1540
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1540
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1524, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1522, metadata !DIExpression()), !dbg !1542
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1543
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1484, metadata !DIExpression()), !dbg !1544
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1546
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1546
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1547
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1493, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1498, metadata !DIExpression()), !dbg !1550
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1551
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1552
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1553
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1554
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1506, metadata !DIExpression()), !dbg !1555
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1557
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1558
  %24 = load i32, i32* %5, align 8, !dbg !1559
  %25 = add i32 %24, -1, !dbg !1559
  store i32 %25, i32* %5, align 8, !dbg !1559
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1560
  br i1 %26, label %63, label %27, !dbg !1562

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1563, metadata !DIExpression()) #9, !dbg !1571
  call void @llvm.dbg.value(metadata i8 1, metadata !1568, metadata !DIExpression()) #9, !dbg !1574
  %28 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %28, metadata !1569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1579
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1580, !srcloc !1600
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1587, metadata !DIExpression()) #9, !dbg !1580
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1586, metadata !DIExpression()) #9, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1585, metadata !DIExpression()) #9, !dbg !1602
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1603
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #10, !dbg !1608
  %30 = load i64, i64* %2, align 8, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %30, metadata !1606, metadata !DIExpression()) #9, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !1611
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1612
  %32 = load i32, i32* %31, align 8, !dbg !1612
  %33 = zext i32 %32 to i64, !dbg !1613
  %34 = urem i64 %30, %33, !dbg !1614
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1615, !srcloc !1616
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1595, metadata !DIExpression()) #9, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1593, metadata !DIExpression()) #9, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1592, metadata !DIExpression()) #9, !dbg !1618
  %36 = shl nuw i64 %34, 32, !dbg !1619
  %37 = ashr exact i64 %36, 32, !dbg !1619
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1619
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !1579
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1620
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1620
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1620
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1569, metadata !DIExpression()) #9, !dbg !1579
  %44 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1621
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1625
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1626
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1626
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1627
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1570, metadata !DIExpression()) #9, !dbg !1628
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1629
  store i32 1, i32* %49, align 4, !dbg !1630
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1632, metadata !DIExpression()) #9, !dbg !1636
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1635, metadata !DIExpression()) #9, !dbg !1638
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1639
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1639
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1640, metadata !DIExpression()) #9, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1645, metadata !DIExpression()) #9, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1646, metadata !DIExpression()) #9, !dbg !1650
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1651
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1652
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1653
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1654
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1655
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1656
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1657
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1658
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1658
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1660
  br i1 %58, label %61, label %59, !dbg !1661

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #10, !dbg !1662
  br label %61, !dbg !1664

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1537
  br label %63, !dbg !1537

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1537
  %65 = icmp sgt i32 %64, 0, !dbg !1538
  br i1 %65, label %11, label %66, !dbg !1539, !llvm.loop !1665

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1667
  store i8 1, i8* %67, align 8, !dbg !1668
  %68 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1669
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1674
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1675
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1675
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1451, metadata !DIExpression()) #9, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1452, metadata !DIExpression()) #9, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1472, metadata !DIExpression()) #9, !dbg !1679
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1681
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1681
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1682
  br i1 %75, label %88, label %76, !dbg !1683

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1453, metadata !DIExpression()) #9, !dbg !1684
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1684
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1684
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1453, metadata !DIExpression()) #9, !dbg !1684
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1452, metadata !DIExpression()) #9, !dbg !1678
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1484, metadata !DIExpression()) #9, !dbg !1686
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1688
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1688
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1689
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1493, metadata !DIExpression()) #9, !dbg !1690
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1498, metadata !DIExpression()) #9, !dbg !1692
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1693
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1694
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1695
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1696
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1506, metadata !DIExpression()) #9, !dbg !1697
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1699
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1699
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1700
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1452, metadata !DIExpression()) #9, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1521, metadata !DIExpression()), !dbg !1534
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1701
  br i1 %87, label %88, label %95, !dbg !1703

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1704
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1709
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1710
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1710
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1711
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1521, metadata !DIExpression()), !dbg !1534
  br label %95, !dbg !1712

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1713
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1521, metadata !DIExpression()), !dbg !1534
  %97 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1714
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1717
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1718
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1718
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1719
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1720
  %102 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1721
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1724
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1725
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1725
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1726
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1726
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1484, metadata !DIExpression()), !dbg !1728
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1730
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1730
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1731
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1731
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1493, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1498, metadata !DIExpression()), !dbg !1734
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1735
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1736
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1737
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1506, metadata !DIExpression()), !dbg !1739
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1741
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1742
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1743
  %116 = load i8*, i8** %115, align 8, !dbg !1743
  call void @kmem_free(i8* %116) #10, !dbg !1743
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1744
  call void @kmem_free(i8* %117) #10, !dbg !1744
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #10, !dbg !1745
  ret void, !dbg !1746
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
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1564 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1563, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %1, metadata !1568, metadata !DIExpression()), !dbg !1748
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1749
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1753
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1754
  %6 = icmp eq i8 %1, 0, !dbg !1755
  br i1 %6, label %20, label %7, !dbg !1756

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1757, !srcloc !1600
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1587, metadata !DIExpression()) #9, !dbg !1757
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1586, metadata !DIExpression()) #9, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1585, metadata !DIExpression()) #9, !dbg !1761
  %9 = bitcast i64* %3 to i8*, !dbg !1762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1762
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #10, !dbg !1764
  %10 = load i64, i64* %3, align 8, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %10, metadata !1606, metadata !DIExpression()) #9, !dbg !1766
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9, !dbg !1767
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1768
  %12 = load i32, i32* %11, align 8, !dbg !1768
  %13 = zext i32 %12 to i64, !dbg !1769
  %14 = urem i64 %10, %13, !dbg !1770
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !1771, !srcloc !1616
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1595, metadata !DIExpression()) #9, !dbg !1771
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1593, metadata !DIExpression()) #9, !dbg !1772
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1592, metadata !DIExpression()) #9, !dbg !1773
  %16 = shl nuw i64 %14, 32, !dbg !1774
  %17 = ashr exact i64 %16, 32, !dbg !1774
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1774
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1754
  br label %20, !dbg !1775

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1776
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1776
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1776
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1569, metadata !DIExpression()), !dbg !1754
  %26 = call i64 @msr_read(i32 -1073741567) #10, !dbg !1777
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1781
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1782
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1782
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1783
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1570, metadata !DIExpression()), !dbg !1784
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1785
  store i32 1, i32* %31, align 4, !dbg !1786
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1787
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1632, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1635, metadata !DIExpression()), !dbg !1790
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1791
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1640, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1645, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1646, metadata !DIExpression()), !dbg !1795
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1796
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1797
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1798
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1799
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1800
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1801
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1802
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1803
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1803
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1804
  br i1 %40, label %43, label %41, !dbg !1805

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #10, !dbg !1806
  br label %43, !dbg !1807

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1808
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1809 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1811, metadata !DIExpression()), !dbg !1812
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1813
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1813
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1814
  %5 = load i8*, i8** %4, align 8, !dbg !1814
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1815
  %7 = load i8**, i8*** %6, align 8, !dbg !1815
  tail call void %3(i8* %5, i8** %7) #10, !dbg !1816
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #11, !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1819 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1821, metadata !DIExpression()), !dbg !1822
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1823
  %3 = bitcast i8** %2 to i64*, !dbg !1823
  %4 = load i64, i64* %3, align 8, !dbg !1823
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1824
  %6 = load i64, i64* %5, align 8, !dbg !1824
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1441, metadata !DIExpression()), !dbg !1828
  %8 = add i64 %4, -8, !dbg !1829
  %9 = add i64 %8, %6, !dbg !1830
  store i64 %9, i64* %7, align 8, !dbg !1830
  %10 = inttoptr i64 %9 to i64*, !dbg !1831
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1832
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1835
  %11 = load i64, i64* %7, align 8, !dbg !1836
  %12 = add i64 %11, -8, !dbg !1836
  store i64 %12, i64* %7, align 8, !dbg !1836
  %13 = inttoptr i64 %12 to i64*, !dbg !1837
  store i64 0, i64* %13, align 8, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1841
  %14 = load i64, i64* %7, align 8, !dbg !1842
  %15 = add i64 %14, -8, !dbg !1842
  store i64 %15, i64* %7, align 8, !dbg !1842
  %16 = inttoptr i64 %15 to i64*, !dbg !1843
  store i64 0, i64* %16, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1847
  %17 = load i64, i64* %7, align 8, !dbg !1848
  %18 = add i64 %17, -8, !dbg !1848
  store i64 %18, i64* %7, align 8, !dbg !1848
  %19 = inttoptr i64 %18 to i64*, !dbg !1849
  store i64 0, i64* %19, align 8, !dbg !1850
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1853
  %20 = load i64, i64* %7, align 8, !dbg !1854
  %21 = add i64 %20, -8, !dbg !1854
  store i64 %21, i64* %7, align 8, !dbg !1854
  %22 = inttoptr i64 %21 to i64*, !dbg !1855
  store i64 0, i64* %22, align 8, !dbg !1856
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1859
  %23 = load i64, i64* %7, align 8, !dbg !1860
  %24 = add i64 %23, -8, !dbg !1860
  store i64 %24, i64* %7, align 8, !dbg !1860
  %25 = inttoptr i64 %24 to i64*, !dbg !1861
  store i64 0, i64* %25, align 8, !dbg !1862
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %26, metadata !1441, metadata !DIExpression()), !dbg !1866
  %27 = load i64, i64* %7, align 8, !dbg !1867
  %28 = add i64 %27, -8, !dbg !1867
  store i64 %28, i64* %7, align 8, !dbg !1867
  %29 = inttoptr i64 %28 to i64*, !dbg !1868
  store i64 %26, i64* %29, align 8, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1872
  %30 = load i64, i64* %7, align 8, !dbg !1873
  %31 = add i64 %30, -8, !dbg !1873
  store i64 %31, i64* %7, align 8, !dbg !1873
  %32 = inttoptr i64 %31 to i64*, !dbg !1874
  store i64 0, i64* %32, align 8, !dbg !1875
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1878
  %33 = load i64, i64* %7, align 8, !dbg !1879
  %34 = add i64 %33, -8, !dbg !1879
  store i64 %34, i64* %7, align 8, !dbg !1879
  %35 = inttoptr i64 %34 to i64*, !dbg !1880
  store i64 0, i64* %35, align 8, !dbg !1881
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1884
  %36 = load i64, i64* %7, align 8, !dbg !1885
  %37 = add i64 %36, -8, !dbg !1885
  store i64 %37, i64* %7, align 8, !dbg !1885
  %38 = inttoptr i64 %37 to i64*, !dbg !1886
  store i64 0, i64* %38, align 8, !dbg !1887
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1890
  %39 = load i64, i64* %7, align 8, !dbg !1891
  %40 = add i64 %39, -8, !dbg !1891
  store i64 %40, i64* %7, align 8, !dbg !1891
  %41 = inttoptr i64 %40 to i64*, !dbg !1892
  store i64 0, i64* %41, align 8, !dbg !1893
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1896
  %42 = load i64, i64* %7, align 8, !dbg !1897
  %43 = add i64 %42, -8, !dbg !1897
  store i64 %43, i64* %7, align 8, !dbg !1897
  %44 = inttoptr i64 %43 to i64*, !dbg !1898
  store i64 0, i64* %44, align 8, !dbg !1899
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1902
  %45 = load i64, i64* %7, align 8, !dbg !1903
  %46 = add i64 %45, -8, !dbg !1903
  store i64 %46, i64* %7, align 8, !dbg !1903
  %47 = inttoptr i64 %46 to i64*, !dbg !1904
  store i64 0, i64* %47, align 8, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1908
  %48 = load i64, i64* %7, align 8, !dbg !1909
  %49 = add i64 %48, -8, !dbg !1909
  store i64 %49, i64* %7, align 8, !dbg !1909
  %50 = inttoptr i64 %49 to i64*, !dbg !1910
  store i64 0, i64* %50, align 8, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1914
  %51 = load i64, i64* %7, align 8, !dbg !1915
  %52 = add i64 %51, -8, !dbg !1915
  store i64 %52, i64* %7, align 8, !dbg !1915
  %53 = inttoptr i64 %52 to i64*, !dbg !1916
  store i64 0, i64* %53, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1440, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1920
  %54 = load i64, i64* %7, align 8, !dbg !1921
  %55 = add i64 %54, -8, !dbg !1921
  store i64 %55, i64* %7, align 8, !dbg !1921
  %56 = inttoptr i64 %55 to i64*, !dbg !1922
  store i64 0, i64* %56, align 8, !dbg !1923
  ret void, !dbg !1924
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1925 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1929, metadata !DIExpression()), !dbg !1934
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1935
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1939
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1940
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1940
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1941
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1930, metadata !DIExpression()), !dbg !1942
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1943
  %9 = load i32, i32* %8, align 4, !dbg !1943
  %10 = add i32 %9, -3, !dbg !1945
  %11 = icmp ult i32 %10, 2, !dbg !1945
  br i1 %11, label %13, label %12, !dbg !1945

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1946
  br label %13, !dbg !1948

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1949
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1953
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1954
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1954
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1955
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1955
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1956
  br i1 %20, label %36, label %21, !dbg !1957

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1958
  %23 = icmp eq i32 %22, 3, !dbg !1959
  br i1 %23, label %36, label %24, !dbg !1960

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !1961
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !1965
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !1966
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !1966
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1931, metadata !DIExpression()), !dbg !1968
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !1969
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1632, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1635, metadata !DIExpression()), !dbg !1972
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !1973
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !1973
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1640, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1645, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1646, metadata !DIExpression()), !dbg !1977
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !1978
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !1979
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !1980
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !1981
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !1982
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1983
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1984
  br label %36, !dbg !1985

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !1986
  %38 = load i32, i32* %37, align 8, !dbg !1986
  %39 = icmp eq i32 %38, 0, !dbg !1988
  br i1 %39, label %40, label %55, !dbg !1989

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1990
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !1990
  %43 = load i64, i64* %42, align 8, !dbg !1990
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !1992, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1998
  %44 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2000
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2004
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2005
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2005
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2006
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2006
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !1997, metadata !DIExpression()) #9, !dbg !2007
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2008
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2009
  store i64 %43, i64* %51, align 8, !dbg !2009
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2010, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2016, metadata !DIExpression()) #9, !dbg !2010
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !2015, metadata !DIExpression()) #9, !dbg !2019
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2020
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2021
  store i64 %43, i64* %54, align 8, !dbg !2021
  br label %55, !dbg !2022

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2023
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2026
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2027
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2027
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2028
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2029
  store i32 1, i32* %8, align 4, !dbg !2030
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2031
  store i32 5, i32* %61, align 4, !dbg !2032
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #10, !dbg !2033
  ret i32 0, !dbg !2034
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !1993 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !1992, metadata !DIExpression()), !dbg !2035
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2036
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2040
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2041
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2041
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2042
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1997, metadata !DIExpression()), !dbg !2043
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2044
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2045
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2046, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2016, metadata !DIExpression()) #9, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !2015, metadata !DIExpression()) #9, !dbg !2048
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2049
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2050
  ret void, !dbg !2051
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2052 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2057
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2061
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2062
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2062
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2063
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2063
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2056, metadata !DIExpression()), !dbg !2064
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #11, !dbg !2065
  ret void, !dbg !2066
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2067 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2071, metadata !DIExpression()), !dbg !2074
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2075
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2079
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2080
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2080
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2081
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2072, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2083
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2084
  %9 = zext i1 %8 to i8, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %9, metadata !2073, metadata !DIExpression()), !dbg !2083
  ret i8 %9, !dbg !2087
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1589 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2088, !srcloc !1600
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1587, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1586, metadata !DIExpression()) #9, !dbg !2090
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1585, metadata !DIExpression()) #9, !dbg !2091
  %3 = bitcast i64* %1 to i8*, !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2092
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #10, !dbg !2094
  %4 = load i64, i64* %1, align 8, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %4, metadata !1606, metadata !DIExpression()) #9, !dbg !2096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2097
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2098
  %6 = load i32, i32* %5, align 8, !dbg !2098
  %7 = zext i32 %6 to i64, !dbg !2099
  %8 = urem i64 %4, %7, !dbg !2100
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2101, !srcloc !1616
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1595, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1593, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1592, metadata !DIExpression()), !dbg !2103
  %10 = shl nuw i64 %8, 32, !dbg !2104
  %11 = ashr exact i64 %10, 32, !dbg !2104
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2104
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2104
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2105
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2105
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2106
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2106
  ret %struct.nk_thread* %17, !dbg !2107
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2108 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2110, metadata !DIExpression()), !dbg !2129
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !2130, !srcloc !2131
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2114, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2112, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2111, metadata !DIExpression()), !dbg !2133
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2134
  %4 = load i32, i32* %3, align 8, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %4, metadata !2116, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2136
  %5 = icmp sgt i32 %4, 0, !dbg !2137
  br i1 %5, label %6, label %38, !dbg !2138

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2139
  br label %8, !dbg !2139

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2119, metadata !DIExpression()), !dbg !2136
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2139
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2139
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2140
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2140
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2141
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2117, metadata !DIExpression()), !dbg !2142
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2143
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2121, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  call void @llvm.dbg.value(metadata i8** %15, metadata !2118, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2144
  %16 = load i8*, i8** %15, align 8, !dbg !2145
  br label %17, !dbg !2146

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2145
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2147
  %20 = bitcast i8* %18 to i8**, !dbg !2147
  %21 = load i8*, i8** %20, align 8, !dbg !2147
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2147
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2147
  br i1 %22, label %27, label %23, !dbg !2146

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2145
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2145
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2118, metadata !DIExpression()), !dbg !2144
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2148
  br i1 %26, label %30, label %17, !dbg !2151, !llvm.loop !2152

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i32 undef, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2136
  %29 = icmp slt i64 %28, %7, !dbg !2137
  br i1 %29, label %8, label %38, !dbg !2138, !llvm.loop !2155

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2157
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1484, metadata !DIExpression()), !dbg !2159
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2161
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2161
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2162
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1493, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1498, metadata !DIExpression()), !dbg !2165
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2166
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2167
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2168
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1506, metadata !DIExpression()), !dbg !2170
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2172
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2173
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2174
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2175 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2204, !srcloc !2205
  call void @llvm.dbg.value(metadata i32 %1, metadata !2180, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %1, metadata !2178, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %1, metadata !2177, metadata !DIExpression()), !dbg !2207
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2208
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2210
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2182, metadata !DIExpression()), !dbg !2211
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2212
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2213
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2214
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2215
  br i1 %6, label %7, label %109, !dbg !2216

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2217
  %9 = icmp eq i64 %8, 0, !dbg !2223
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %10, metadata !2228, metadata !DIExpression()) #9, !dbg !2230
  %11 = icmp eq i64 %10, 0, !dbg !2231
  br i1 %11, label %17, label %12, !dbg !2233

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2234
  %14 = inttoptr i64 %13 to i16*, !dbg !2236
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2237
  %16 = zext i16 %15 to i32, !dbg !2237
  br label %17, !dbg !2238

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2239
  %19 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %19, metadata !2244, metadata !DIExpression()) #9, !dbg !2246
  %20 = icmp eq i64 %19, 0, !dbg !2247
  br i1 %20, label %25, label %21, !dbg !2249

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2250
  %23 = inttoptr i64 %22 to i16*, !dbg !2252
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2253
  br label %25, !dbg !2254

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2255

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2183, metadata !DIExpression()), !dbg !2256
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2257, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2016, metadata !DIExpression()) #9, !dbg !2257
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2015, metadata !DIExpression()) #9, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2189, metadata !DIExpression()), !dbg !2256
  %28 = tail call i32 @nk_vc_is_active() #10, !dbg !2260
  %29 = icmp eq i32 %28, 0, !dbg !2260
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2261
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %31, metadata !2268, metadata !DIExpression()) #9, !dbg !2272
  %32 = icmp eq i64 %31, 0, !dbg !2273
  br i1 %32, label %38, label %33, !dbg !2275

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2276
  %35 = inttoptr i64 %34 to i16*, !dbg !2278
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2279
  %37 = icmp eq i16 %36, 0, !dbg !2280
  br i1 %37, label %38, label %39, !dbg !2261

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2261

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2261
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2261
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2261
  br i1 %29, label %60, label %44, !dbg !2281

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2282

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2282
  %47 = load i64, i64* %46, align 32, !dbg !2282
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2282
  %49 = load i8, i8* %48, align 8, !dbg !2282
  %50 = icmp eq i8 %49, 0, !dbg !2282
  br i1 %50, label %51, label %56, !dbg !2282

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2282
  %53 = load i8, i8* %52, align 64, !dbg !2282
  %54 = icmp eq i8 %53, 0, !dbg !2282
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %52, !dbg !2282
  br label %56, !dbg !2282

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %44 ], !dbg !2282
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2282
  br label %76, !dbg !2282

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2283

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2283
  %63 = load i64, i64* %62, align 32, !dbg !2283
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2283
  %65 = load i8, i8* %64, align 8, !dbg !2283
  %66 = icmp eq i8 %65, 0, !dbg !2283
  br i1 %66, label %67, label %72, !dbg !2283

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2283
  %69 = load i8, i8* %68, align 64, !dbg !2283
  %70 = icmp eq i8 %69, 0, !dbg !2283
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %68, !dbg !2283
  br label %72, !dbg !2283

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %60 ], !dbg !2283
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2283
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %77, metadata !2288, metadata !DIExpression()) #9, !dbg !2290
  %78 = icmp eq i64 %77, 0, !dbg !2291
  br i1 %78, label %109, label %79, !dbg !2293

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2294
  %81 = inttoptr i64 %80 to i16*, !dbg !2296
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2297
  br label %109, !dbg !2298

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2202, metadata !DIExpression()), !dbg !2299
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !2300
  %85 = icmp eq i32 %84, 0, !dbg !2300
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %86, metadata !2268, metadata !DIExpression()) #9, !dbg !2307
  %87 = icmp eq i64 %86, 0, !dbg !2308
  br i1 %87, label %93, label %88, !dbg !2309

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2310
  %90 = inttoptr i64 %89 to i16*, !dbg !2311
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2312
  %92 = icmp eq i16 %91, 0, !dbg !2313
  br i1 %92, label %93, label %94, !dbg !2314

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2314

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2314
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2314
  br i1 %85, label %100, label %98, !dbg !2315

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2316
  br label %102, !dbg !2316

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 444) #10, !dbg !2318
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %103, metadata !2288, metadata !DIExpression()) #9, !dbg !2323
  %104 = icmp eq i64 %103, 0, !dbg !2324
  br i1 %104, label %109, label %105, !dbg !2325

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2326
  %107 = inttoptr i64 %106 to i16*, !dbg !2327
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2328
  br label %109, !dbg !2329

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2330
  ret i32 %110, !dbg !2331
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2332 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2364, !srcloc !2365
  call void @llvm.dbg.value(metadata i32 %1, metadata !2341, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()), !dbg !2366
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %2, metadata !2337, metadata !DIExpression()), !dbg !2367
  %3 = icmp eq i8* %2, null, !dbg !2368
  br i1 %3, label %4, label %106, !dbg !2369

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2370
  %6 = icmp eq i64 %5, 0, !dbg !2372
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %7, metadata !2228, metadata !DIExpression()) #9, !dbg !2376
  %8 = icmp eq i64 %7, 0, !dbg !2377
  br i1 %8, label %14, label %9, !dbg !2378

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2379
  %11 = inttoptr i64 %10 to i16*, !dbg !2380
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2381
  %13 = zext i16 %12 to i32, !dbg !2381
  br label %14, !dbg !2382

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2383
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %16, metadata !2244, metadata !DIExpression()) #9, !dbg !2387
  %17 = icmp eq i64 %16, 0, !dbg !2388
  br i1 %17, label %22, label %18, !dbg !2389

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2390
  %20 = inttoptr i64 %19 to i16*, !dbg !2391
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2392
  br label %22, !dbg !2393

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2394

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2343, metadata !DIExpression()), !dbg !2395
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2396, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2016, metadata !DIExpression()) #9, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2015, metadata !DIExpression()) #9, !dbg !2398
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2349, metadata !DIExpression()), !dbg !2395
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2399
  %26 = icmp eq i32 %25, 0, !dbg !2399
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2400
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %28, metadata !2268, metadata !DIExpression()) #9, !dbg !2405
  %29 = icmp eq i64 %28, 0, !dbg !2406
  br i1 %29, label %35, label %30, !dbg !2407

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2408
  %32 = inttoptr i64 %31 to i16*, !dbg !2409
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2410
  %34 = icmp eq i16 %33, 0, !dbg !2411
  br i1 %34, label %35, label %36, !dbg !2400

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2400

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2400
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2400
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2400
  br i1 %26, label %57, label %41, !dbg !2412

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2413

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2413
  %44 = load i64, i64* %43, align 32, !dbg !2413
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2413
  %46 = load i8, i8* %45, align 8, !dbg !2413
  %47 = icmp eq i8 %46, 0, !dbg !2413
  br i1 %47, label %48, label %53, !dbg !2413

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2413
  %50 = load i8, i8* %49, align 64, !dbg !2413
  %51 = icmp eq i8 %50, 0, !dbg !2413
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2413
  br label %53, !dbg !2413

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2413
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2413
  br label %73, !dbg !2413

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2414

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2414
  %60 = load i64, i64* %59, align 32, !dbg !2414
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2414
  %62 = load i8, i8* %61, align 8, !dbg !2414
  %63 = icmp eq i8 %62, 0, !dbg !2414
  br i1 %63, label %64, label %69, !dbg !2414

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2414
  %66 = load i8, i8* %65, align 64, !dbg !2414
  %67 = icmp eq i8 %66, 0, !dbg !2414
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2414
  br label %69, !dbg !2414

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2414
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27.54, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2414
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %74, metadata !2288, metadata !DIExpression()) #9, !dbg !2418
  %75 = icmp eq i64 %74, 0, !dbg !2419
  br i1 %75, label %114, label %76, !dbg !2420

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2421
  %78 = inttoptr i64 %77 to i16*, !dbg !2422
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2423
  br label %114, !dbg !2424

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2362, metadata !DIExpression()), !dbg !2425
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2426
  %82 = icmp eq i32 %81, 0, !dbg !2426
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %83, metadata !2268, metadata !DIExpression()) #9, !dbg !2433
  %84 = icmp eq i64 %83, 0, !dbg !2434
  br i1 %84, label %90, label %85, !dbg !2435

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2436
  %87 = inttoptr i64 %86 to i16*, !dbg !2437
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2438
  %89 = icmp eq i16 %88, 0, !dbg !2439
  br i1 %89, label %90, label %91, !dbg !2440

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2440

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2440
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2440
  br i1 %82, label %97, label %95, !dbg !2441

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2442
  br label %99, !dbg !2442

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28.55, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 415) #10, !dbg !2444
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %100, metadata !2288, metadata !DIExpression()) #9, !dbg !2449
  %101 = icmp eq i64 %100, 0, !dbg !2450
  br i1 %101, label %114, label %102, !dbg !2451

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2452
  %104 = inttoptr i64 %103 to i16*, !dbg !2453
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2454
  br label %114, !dbg !2455

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2336, metadata !DIExpression()), !dbg !2457
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #10, !dbg !2458
  %109 = bitcast i8* %2 to i32*, !dbg !2459
  tail call void @spinlock_init(i32* %109) #10, !dbg !2460
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2461
  call void @llvm.dbg.value(metadata i8* %110, metadata !1506, metadata !DIExpression()), !dbg !2462
  %111 = bitcast i8* %110 to i8**, !dbg !2464
  store i8* %110, i8** %111, align 8, !dbg !2464
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2465
  %113 = bitcast i8* %112 to i8**, !dbg !2466
  store i8* %110, i8** %113, align 8, !dbg !2466
  br label %115, !dbg !2467

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #10, !dbg !2468
  br label %115, !dbg !2469

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2470
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2471
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2472 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2515
  %2 = zext i32 %1 to i64, !dbg !2516
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2516
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2474, metadata !DIExpression()), !dbg !2517
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2518
  %6 = icmp eq i64 %5, 0, !dbg !2520
  %7 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %7, metadata !2228, metadata !DIExpression()) #9, !dbg !2524
  %8 = icmp eq i64 %7, 0, !dbg !2525
  br i1 %8, label %14, label %9, !dbg !2526

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2527
  %11 = inttoptr i64 %10 to i16*, !dbg !2528
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2529
  %13 = zext i16 %12 to i32, !dbg !2529
  br label %14, !dbg !2530

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2531
  %16 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %16, metadata !2244, metadata !DIExpression()) #9, !dbg !2535
  %17 = icmp eq i64 %16, 0, !dbg !2536
  br i1 %17, label %22, label %18, !dbg !2537

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2538
  %20 = inttoptr i64 %19 to i16*, !dbg !2539
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2540
  br label %22, !dbg !2541

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2542

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2475, metadata !DIExpression()), !dbg !2543
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2544, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2016, metadata !DIExpression()) #9, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2015, metadata !DIExpression()) #9, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2479, metadata !DIExpression()), !dbg !2543
  %25 = tail call i32 @nk_vc_is_active() #10, !dbg !2547
  %26 = icmp eq i32 %25, 0, !dbg !2547
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2548
  %28 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %28, metadata !2268, metadata !DIExpression()) #9, !dbg !2553
  %29 = icmp eq i64 %28, 0, !dbg !2554
  br i1 %29, label %35, label %30, !dbg !2555

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2556
  %32 = inttoptr i64 %31 to i16*, !dbg !2557
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2558
  %34 = icmp eq i16 %33, 0, !dbg !2559
  br i1 %34, label %35, label %36, !dbg !2548

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2548

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2548
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2548
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2548
  br i1 %26, label %57, label %41, !dbg !2560

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2561

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2561
  %44 = load i64, i64* %43, align 32, !dbg !2561
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2561
  %46 = load i8, i8* %45, align 8, !dbg !2561
  %47 = icmp eq i8 %46, 0, !dbg !2561
  br i1 %47, label %48, label %53, !dbg !2561

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2561
  %50 = load i8, i8* %49, align 64, !dbg !2561
  %51 = icmp eq i8 %50, 0, !dbg !2561
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %49, !dbg !2561
  br label %53, !dbg !2561

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %41 ], !dbg !2561
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #10, !dbg !2561
  br label %73, !dbg !2561

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2562

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2562
  %60 = load i64, i64* %59, align 32, !dbg !2562
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2562
  %62 = load i8, i8* %61, align 8, !dbg !2562
  %63 = icmp eq i8 %62, 0, !dbg !2562
  br i1 %63, label %64, label %69, !dbg !2562

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2562
  %66 = load i8, i8* %65, align 64, !dbg !2562
  %67 = icmp eq i8 %66, 0, !dbg !2562
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %65, !dbg !2562
  br label %69, !dbg !2562

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %57 ], !dbg !2562
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.56, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #10, !dbg !2562
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %74, metadata !2288, metadata !DIExpression()) #9, !dbg !2566
  %75 = icmp eq i64 %74, 0, !dbg !2567
  br i1 %75, label %106, label %76, !dbg !2568

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2569
  %78 = inttoptr i64 %77 to i16*, !dbg !2570
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2571
  br label %106, !dbg !2572

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2492, metadata !DIExpression()), !dbg !2573
  %81 = tail call i32 @nk_vc_is_active() #10, !dbg !2574
  %82 = icmp eq i32 %81, 0, !dbg !2574
  %83 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %83, metadata !2268, metadata !DIExpression()) #9, !dbg !2581
  %84 = icmp eq i64 %83, 0, !dbg !2582
  br i1 %84, label %90, label %85, !dbg !2583

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2584
  %87 = inttoptr i64 %86 to i16*, !dbg !2585
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2586
  %89 = icmp eq i16 %88, 0, !dbg !2587
  br i1 %89, label %90, label %91, !dbg !2588

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2588

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2588
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2588
  br i1 %82, label %97, label %95, !dbg !2589

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2590
  br label %99, !dbg !2590

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10.57, i64 0, i64 0), i8* %92, i8* %94) #10, !dbg !2592
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %100, metadata !2288, metadata !DIExpression()) #9, !dbg !2597
  %101 = icmp eq i64 %100, 0, !dbg !2598
  br i1 %101, label %106, label %102, !dbg !2599

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2600
  %104 = inttoptr i64 %103 to i16*, !dbg !2601
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2602
  br label %106, !dbg !2603

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #11, !dbg !2604
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2605
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2606
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2607
  br i1 %109, label %110, label %212, !dbg !2608

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2609
  %112 = icmp eq i64 %111, 0, !dbg !2611
  %113 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %113, metadata !2228, metadata !DIExpression()) #9, !dbg !2615
  %114 = icmp eq i64 %113, 0, !dbg !2616
  br i1 %114, label %120, label %115, !dbg !2617

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2618
  %117 = inttoptr i64 %116 to i16*, !dbg !2619
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2620
  %119 = zext i16 %118 to i32, !dbg !2620
  br label %120, !dbg !2621

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2622
  %122 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %122, metadata !2244, metadata !DIExpression()) #9, !dbg !2626
  %123 = icmp eq i64 %122, 0, !dbg !2627
  br i1 %123, label %128, label %124, !dbg !2628

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2629
  %126 = inttoptr i64 %125 to i16*, !dbg !2630
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2631
  br label %128, !dbg !2632

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2633

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2494, metadata !DIExpression()), !dbg !2634
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2635, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2016, metadata !DIExpression()) #9, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2015, metadata !DIExpression()) #9, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2500, metadata !DIExpression()), !dbg !2634
  %131 = tail call i32 @nk_vc_is_active() #10, !dbg !2638
  %132 = icmp eq i32 %131, 0, !dbg !2638
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2639
  %134 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %134, metadata !2268, metadata !DIExpression()) #9, !dbg !2644
  %135 = icmp eq i64 %134, 0, !dbg !2645
  br i1 %135, label %141, label %136, !dbg !2646

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2647
  %138 = inttoptr i64 %137 to i16*, !dbg !2648
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2649
  %140 = icmp eq i16 %139, 0, !dbg !2650
  br i1 %140, label %141, label %142, !dbg !2639

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2639

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2639
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2639
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2639
  br i1 %132, label %163, label %147, !dbg !2651

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2652

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2652
  %150 = load i64, i64* %149, align 32, !dbg !2652
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2652
  %152 = load i8, i8* %151, align 8, !dbg !2652
  %153 = icmp eq i8 %152, 0, !dbg !2652
  br i1 %153, label %154, label %159, !dbg !2652

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2652
  %156 = load i8, i8* %155, align 64, !dbg !2652
  %157 = icmp eq i8 %156, 0, !dbg !2652
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %155, !dbg !2652
  br label %159, !dbg !2652

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %147 ], !dbg !2652
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2652
  br label %179, !dbg !2652

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2653

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2653
  %166 = load i64, i64* %165, align 32, !dbg !2653
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2653
  %168 = load i8, i8* %167, align 8, !dbg !2653
  %169 = icmp eq i8 %168, 0, !dbg !2653
  br i1 %169, label %170, label %175, !dbg !2653

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2653
  %172 = load i8, i8* %171, align 64, !dbg !2653
  %173 = icmp eq i8 %172, 0, !dbg !2653
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %171, !dbg !2653
  br label %175, !dbg !2653

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %163 ], !dbg !2653
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.51, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2653
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %180, metadata !2288, metadata !DIExpression()) #9, !dbg !2657
  %181 = icmp eq i64 %180, 0, !dbg !2658
  br i1 %181, label %212, label %182, !dbg !2659

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2660
  %184 = inttoptr i64 %183 to i16*, !dbg !2661
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2662
  br label %212, !dbg !2663

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2513, metadata !DIExpression()), !dbg !2664
  %187 = tail call i32 @nk_vc_is_active() #10, !dbg !2665
  %188 = icmp eq i32 %187, 0, !dbg !2665
  %189 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %189, metadata !2268, metadata !DIExpression()) #9, !dbg !2672
  %190 = icmp eq i64 %189, 0, !dbg !2673
  br i1 %190, label %196, label %191, !dbg !2674

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2675
  %193 = inttoptr i64 %192 to i16*, !dbg !2676
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2677
  %195 = icmp eq i16 %194, 0, !dbg !2678
  br i1 %195, label %196, label %197, !dbg !2679

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2679

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2679
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2679
  br i1 %188, label %203, label %201, !dbg !2680

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2681
  br label %205, !dbg !2681

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.53, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 464) #10, !dbg !2683
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %206, metadata !2288, metadata !DIExpression()) #9, !dbg !2688
  %207 = icmp eq i64 %206, 0, !dbg !2689
  br i1 %207, label %212, label %208, !dbg !2690

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2691
  %210 = inttoptr i64 %209 to i16*, !dbg !2692
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2693
  br label %212, !dbg !2694

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2695
  ret i32 %213, !dbg !2696
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2697 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2699, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8** undef, metadata !2700, metadata !DIExpression()), !dbg !2814
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2815, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2016, metadata !DIExpression()) #9, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !2015, metadata !DIExpression()) #9, !dbg !2817
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2818
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.58, i64 0, i64 0)) #10, !dbg !2819
  %8 = icmp eq i32 %7, 0, !dbg !2819
  br i1 %8, label %111, label %9, !dbg !2820

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2821
  %11 = icmp eq i64 %10, 0, !dbg !2823
  %12 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %12, metadata !2228, metadata !DIExpression()) #9, !dbg !2827
  %13 = icmp eq i64 %12, 0, !dbg !2828
  br i1 %13, label %19, label %14, !dbg !2829

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2830
  %16 = inttoptr i64 %15 to i16*, !dbg !2831
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2832
  %18 = zext i16 %17 to i32, !dbg !2832
  br label %19, !dbg !2833

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2834
  %21 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %21, metadata !2244, metadata !DIExpression()) #9, !dbg !2838
  %22 = icmp eq i64 %21, 0, !dbg !2839
  br i1 %22, label %27, label %23, !dbg !2840

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2841
  %25 = inttoptr i64 %24 to i16*, !dbg !2842
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2843
  br label %27, !dbg !2844

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2845

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2701, metadata !DIExpression()), !dbg !2846
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2847, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2016, metadata !DIExpression()) #9, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2015, metadata !DIExpression()) #9, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2707, metadata !DIExpression()), !dbg !2846
  %30 = tail call i32 @nk_vc_is_active() #10, !dbg !2850
  %31 = icmp eq i32 %30, 0, !dbg !2850
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2851
  %33 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %33, metadata !2268, metadata !DIExpression()) #9, !dbg !2856
  %34 = icmp eq i64 %33, 0, !dbg !2857
  br i1 %34, label %40, label %35, !dbg !2858

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2859
  %37 = inttoptr i64 %36 to i16*, !dbg !2860
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2861
  %39 = icmp eq i16 %38, 0, !dbg !2862
  br i1 %39, label %40, label %41, !dbg !2851

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2851

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2851
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2851
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2851
  br i1 %31, label %62, label %46, !dbg !2863

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2864

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2864
  %49 = load i64, i64* %48, align 32, !dbg !2864
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2864
  %51 = load i8, i8* %50, align 8, !dbg !2864
  %52 = icmp eq i8 %51, 0, !dbg !2864
  br i1 %52, label %53, label %58, !dbg !2864

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2864
  %55 = load i8, i8* %54, align 64, !dbg !2864
  %56 = icmp eq i8 %55, 0, !dbg !2864
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %54, !dbg !2864
  br label %58, !dbg !2864

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %46 ], !dbg !2864
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2864
  br label %78, !dbg !2864

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2865

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2865
  %65 = load i64, i64* %64, align 32, !dbg !2865
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2865
  %67 = load i8, i8* %66, align 8, !dbg !2865
  %68 = icmp eq i8 %67, 0, !dbg !2865
  br i1 %68, label %69, label %74, !dbg !2865

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2865
  %71 = load i8, i8* %70, align 64, !dbg !2865
  %72 = icmp eq i8 %71, 0, !dbg !2865
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %70, !dbg !2865
  br label %74, !dbg !2865

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %62 ], !dbg !2865
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12.59, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2865
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %79, metadata !2288, metadata !DIExpression()) #9, !dbg !2869
  %80 = icmp eq i64 %79, 0, !dbg !2870
  br i1 %80, label %449, label %81, !dbg !2871

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2872
  %83 = inttoptr i64 %82 to i16*, !dbg !2873
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2874
  br label %449, !dbg !2875

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2720, metadata !DIExpression()), !dbg !2876
  %86 = tail call i32 @nk_vc_is_active() #10, !dbg !2877
  %87 = icmp eq i32 %86, 0, !dbg !2877
  %88 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %88, metadata !2268, metadata !DIExpression()) #9, !dbg !2884
  %89 = icmp eq i64 %88, 0, !dbg !2885
  br i1 %89, label %95, label %90, !dbg !2886

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2887
  %92 = inttoptr i64 %91 to i16*, !dbg !2888
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2889
  %94 = icmp eq i16 %93, 0, !dbg !2890
  br i1 %94, label %95, label %96, !dbg !2891

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2891

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2891
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2891
  br i1 %87, label %102, label %100, !dbg !2892

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2893
  br label %104, !dbg !2893

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13.60, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 515) #10, !dbg !2895
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %105, metadata !2288, metadata !DIExpression()) #9, !dbg !2900
  %106 = icmp eq i64 %105, 0, !dbg !2901
  br i1 %106, label %449, label %107, !dbg !2902

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2903
  %109 = inttoptr i64 %108 to i16*, !dbg !2904
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2905
  br label %449, !dbg !2906

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2907
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #9, !dbg !2907
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2908
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2908
  store i64 100000000, i64* %113, align 8, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2722, metadata !DIExpression(DW_OP_deref)), !dbg !2908
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #10, !dbg !2909
  %115 = icmp eq i32 %114, 0, !dbg !2909
  %116 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2910
  br i1 %115, label %219, label %117, !dbg !2911

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2912
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %119, metadata !2228, metadata !DIExpression()) #9, !dbg !2916
  %120 = icmp eq i64 %119, 0, !dbg !2917
  br i1 %120, label %126, label %121, !dbg !2918

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2919
  %123 = inttoptr i64 %122 to i16*, !dbg !2920
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2921
  %125 = zext i16 %124 to i32, !dbg !2921
  br label %126, !dbg !2922

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2923
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %128, metadata !2244, metadata !DIExpression()) #9, !dbg !2927
  %129 = icmp eq i64 %128, 0, !dbg !2928
  br i1 %129, label %134, label %130, !dbg !2929

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2930
  %132 = inttoptr i64 %131 to i16*, !dbg !2931
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2932
  br label %134, !dbg !2933

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2934

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2748, metadata !DIExpression()), !dbg !2935
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !2936, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2016, metadata !DIExpression()) #9, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2015, metadata !DIExpression()) #9, !dbg !2938
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2754, metadata !DIExpression()), !dbg !2935
  %137 = call i32 @nk_vc_is_active() #10, !dbg !2939
  %138 = icmp eq i32 %137, 0, !dbg !2939
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !2940
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %140, metadata !2268, metadata !DIExpression()) #9, !dbg !2945
  %141 = icmp eq i64 %140, 0, !dbg !2946
  br i1 %141, label %147, label %142, !dbg !2947

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2948
  %144 = inttoptr i64 %143 to i16*, !dbg !2949
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2950
  %146 = icmp eq i16 %145, 0, !dbg !2951
  br i1 %146, label %147, label %148, !dbg !2940

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2940

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2940
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2940
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2940
  br i1 %138, label %169, label %153, !dbg !2952

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2953

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2953
  %156 = load i64, i64* %155, align 32, !dbg !2953
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2953
  %158 = load i8, i8* %157, align 8, !dbg !2953
  %159 = icmp eq i8 %158, 0, !dbg !2953
  br i1 %159, label %160, label %165, !dbg !2953

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2953
  %162 = load i8, i8* %161, align 64, !dbg !2953
  %163 = icmp eq i8 %162, 0, !dbg !2953
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !2953
  br label %165, !dbg !2953

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !2953
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2953
  br label %185, !dbg !2953

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2954

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2954
  %172 = load i64, i64* %171, align 32, !dbg !2954
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2954
  %174 = load i8, i8* %173, align 8, !dbg !2954
  %175 = icmp eq i8 %174, 0, !dbg !2954
  br i1 %175, label %176, label %181, !dbg !2954

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2954
  %178 = load i8, i8* %177, align 64, !dbg !2954
  %179 = icmp eq i8 %178, 0, !dbg !2954
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !2954
  br label %181, !dbg !2954

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !2954
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14.61, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2954
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %186, metadata !2288, metadata !DIExpression()) #9, !dbg !2958
  %187 = icmp eq i64 %186, 0, !dbg !2959
  br i1 %187, label %218, label %188, !dbg !2960

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2961
  %190 = inttoptr i64 %189 to i16*, !dbg !2962
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2963
  br label %218, !dbg !2964

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2767, metadata !DIExpression()), !dbg !2965
  %193 = call i32 @nk_vc_is_active() #10, !dbg !2966
  %194 = icmp eq i32 %193, 0, !dbg !2966
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %195, metadata !2268, metadata !DIExpression()) #9, !dbg !2973
  %196 = icmp eq i64 %195, 0, !dbg !2974
  br i1 %196, label %202, label %197, !dbg !2975

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !2976
  %199 = inttoptr i64 %198 to i16*, !dbg !2977
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !2978
  %201 = icmp eq i16 %200, 0, !dbg !2979
  br i1 %201, label %202, label %203, !dbg !2980

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !2980

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !2980
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !2980
  br i1 %194, label %209, label %207, !dbg !2981

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2982
  br label %211, !dbg !2982

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15.62, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 525) #10, !dbg !2984
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %212, metadata !2288, metadata !DIExpression()) #9, !dbg !2989
  %213 = icmp eq i64 %212, 0, !dbg !2990
  br i1 %213, label %218, label %214, !dbg !2991

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !2992
  %216 = inttoptr i64 %215 to i16*, !dbg !2993
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !2994
  br label %218, !dbg !2995

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16.63, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 526) #12, !dbg !2996
  unreachable, !dbg !2996

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !2997
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3000
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2769, metadata !DIExpression()), !dbg !3001
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3002
  br i1 %223, label %224, label %326, !dbg !3003

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3004
  %226 = icmp eq i64 %225, 0, !dbg !3006
  %227 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %227, metadata !2228, metadata !DIExpression()) #9, !dbg !3010
  %228 = icmp eq i64 %227, 0, !dbg !3011
  br i1 %228, label %234, label %229, !dbg !3012

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3013
  %231 = inttoptr i64 %230 to i16*, !dbg !3014
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3015
  %233 = zext i16 %232 to i32, !dbg !3015
  br label %234, !dbg !3016

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3017
  %236 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %236, metadata !2244, metadata !DIExpression()) #9, !dbg !3021
  %237 = icmp eq i64 %236, 0, !dbg !3022
  br i1 %237, label %242, label %238, !dbg !3023

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3024
  %240 = inttoptr i64 %239 to i16*, !dbg !3025
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3026
  br label %242, !dbg !3027

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3028

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2770, metadata !DIExpression()), !dbg !3029
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3030, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2016, metadata !DIExpression()) #9, !dbg !3030
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2015, metadata !DIExpression()) #9, !dbg !3032
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2776, metadata !DIExpression()), !dbg !3029
  %245 = call i32 @nk_vc_is_active() #10, !dbg !3033
  %246 = icmp eq i32 %245, 0, !dbg !3033
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3034
  %248 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %248, metadata !2268, metadata !DIExpression()) #9, !dbg !3039
  %249 = icmp eq i64 %248, 0, !dbg !3040
  br i1 %249, label %255, label %250, !dbg !3041

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3042
  %252 = inttoptr i64 %251 to i16*, !dbg !3043
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3044
  %254 = icmp eq i16 %253, 0, !dbg !3045
  br i1 %254, label %255, label %256, !dbg !3034

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3034

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3034
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3034
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3034
  br i1 %246, label %277, label %261, !dbg !3046

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3047

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3047
  %264 = load i64, i64* %263, align 32, !dbg !3047
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3047
  %266 = load i8, i8* %265, align 8, !dbg !3047
  %267 = icmp eq i8 %266, 0, !dbg !3047
  br i1 %267, label %268, label %273, !dbg !3047

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3047
  %270 = load i8, i8* %269, align 64, !dbg !3047
  %271 = icmp eq i8 %270, 0, !dbg !3047
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %269, !dbg !3047
  br label %273, !dbg !3047

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %261 ], !dbg !3047
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3047
  br label %293, !dbg !3047

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3048

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3048
  %280 = load i64, i64* %279, align 32, !dbg !3048
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3048
  %282 = load i8, i8* %281, align 8, !dbg !3048
  %283 = icmp eq i8 %282, 0, !dbg !3048
  br i1 %283, label %284, label %289, !dbg !3048

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3048
  %286 = load i8, i8* %285, align 64, !dbg !3048
  %287 = icmp eq i8 %286, 0, !dbg !3048
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %285, !dbg !3048
  br label %289, !dbg !3048

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %277 ], !dbg !3048
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17.64, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3048
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %294, metadata !2288, metadata !DIExpression()) #9, !dbg !3052
  %295 = icmp eq i64 %294, 0, !dbg !3053
  br i1 %295, label %326, label %296, !dbg !3054

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3055
  %298 = inttoptr i64 %297 to i16*, !dbg !3056
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3057
  br label %326, !dbg !3058

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2789, metadata !DIExpression()), !dbg !3059
  %301 = call i32 @nk_vc_is_active() #10, !dbg !3060
  %302 = icmp eq i32 %301, 0, !dbg !3060
  %303 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %303, metadata !2268, metadata !DIExpression()) #9, !dbg !3067
  %304 = icmp eq i64 %303, 0, !dbg !3068
  br i1 %304, label %310, label %305, !dbg !3069

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3070
  %307 = inttoptr i64 %306 to i16*, !dbg !3071
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3072
  %309 = icmp eq i16 %308, 0, !dbg !3073
  br i1 %309, label %310, label %311, !dbg !3074

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3074

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3074
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3074
  br i1 %302, label %317, label %315, !dbg !3075

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3076
  br label %319, !dbg !3076

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18.65, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 536) #10, !dbg !3078
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %320, metadata !2288, metadata !DIExpression()) #9, !dbg !3083
  %321 = icmp eq i64 %320, 0, !dbg !3084
  br i1 %321, label %326, label %322, !dbg !3085

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3086
  %324 = inttoptr i64 %323 to i16*, !dbg !3087
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3088
  br label %326, !dbg !3089

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3090, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2016, metadata !DIExpression()) #9, !dbg !3090
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !2015, metadata !DIExpression()) #9, !dbg !3092
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3093
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3094
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2791, metadata !DIExpression(DW_OP_deref)), !dbg !3096
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #11, !dbg !3097
  %331 = icmp slt i32 %330, 0, !dbg !3098
  br i1 %331, label %332, label %434, !dbg !3099

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3100
  %334 = icmp eq i64 %333, 0, !dbg !3102
  %335 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %335, metadata !2228, metadata !DIExpression()) #9, !dbg !3106
  %336 = icmp eq i64 %335, 0, !dbg !3107
  br i1 %336, label %342, label %337, !dbg !3108

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3109
  %339 = inttoptr i64 %338 to i16*, !dbg !3110
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3111
  %341 = zext i16 %340 to i32, !dbg !3111
  br label %342, !dbg !3112

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3113
  %344 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %344, metadata !2244, metadata !DIExpression()) #9, !dbg !3117
  %345 = icmp eq i64 %344, 0, !dbg !3118
  br i1 %345, label %350, label %346, !dbg !3119

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3120
  %348 = inttoptr i64 %347 to i16*, !dbg !3121
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3122
  br label %350, !dbg !3123

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3124

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2792, metadata !DIExpression()), !dbg !3125
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3126, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2016, metadata !DIExpression()) #9, !dbg !3126
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2015, metadata !DIExpression()) #9, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2798, metadata !DIExpression()), !dbg !3125
  %353 = call i32 @nk_vc_is_active() #10, !dbg !3129
  %354 = icmp eq i32 %353, 0, !dbg !3129
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3130
  %356 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %356, metadata !2268, metadata !DIExpression()) #9, !dbg !3135
  %357 = icmp eq i64 %356, 0, !dbg !3136
  br i1 %357, label %363, label %358, !dbg !3137

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3138
  %360 = inttoptr i64 %359 to i16*, !dbg !3139
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3140
  %362 = icmp eq i16 %361, 0, !dbg !3141
  br i1 %362, label %363, label %364, !dbg !3130

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3130

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3130
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3130
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3130
  br i1 %354, label %385, label %369, !dbg !3142

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3143

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3143
  %372 = load i64, i64* %371, align 32, !dbg !3143
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3143
  %374 = load i8, i8* %373, align 8, !dbg !3143
  %375 = icmp eq i8 %374, 0, !dbg !3143
  br i1 %375, label %376, label %381, !dbg !3143

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3143
  %378 = load i8, i8* %377, align 64, !dbg !3143
  %379 = icmp eq i8 %378, 0, !dbg !3143
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %377, !dbg !3143
  br label %381, !dbg !3143

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %369 ], !dbg !3143
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3143
  br label %401, !dbg !3143

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3144

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3144
  %388 = load i64, i64* %387, align 32, !dbg !3144
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3144
  %390 = load i8, i8* %389, align 8, !dbg !3144
  %391 = icmp eq i8 %390, 0, !dbg !3144
  br i1 %391, label %392, label %397, !dbg !3144

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3144
  %394 = load i8, i8* %393, align 64, !dbg !3144
  %395 = icmp eq i8 %394, 0, !dbg !3144
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %393, !dbg !3144
  br label %397, !dbg !3144

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %385 ], !dbg !3144
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19.68, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3144
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %402, metadata !2288, metadata !DIExpression()) #9, !dbg !3148
  %403 = icmp eq i64 %402, 0, !dbg !3149
  br i1 %403, label %434, label %404, !dbg !3150

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3151
  %406 = inttoptr i64 %405 to i16*, !dbg !3152
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3153
  br label %434, !dbg !3154

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2811, metadata !DIExpression()), !dbg !3155
  %409 = call i32 @nk_vc_is_active() #10, !dbg !3156
  %410 = icmp eq i32 %409, 0, !dbg !3156
  %411 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %411, metadata !2268, metadata !DIExpression()) #9, !dbg !3163
  %412 = icmp eq i64 %411, 0, !dbg !3164
  br i1 %412, label %418, label %413, !dbg !3165

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3166
  %415 = inttoptr i64 %414 to i16*, !dbg !3167
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3168
  %417 = icmp eq i16 %416, 0, !dbg !3169
  br i1 %417, label %418, label %419, !dbg !3170

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3170

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3170
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3170
  br i1 %410, label %425, label %423, !dbg !3171

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3172
  br label %427, !dbg !3172

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.69, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 543) #10, !dbg !3174
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %428, metadata !2288, metadata !DIExpression()) #9, !dbg !3179
  %429 = icmp eq i64 %428, 0, !dbg !3180
  br i1 %429, label %434, label %430, !dbg !3181

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3182
  %432 = inttoptr i64 %431 to i16*, !dbg !3183
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3184
  br label %434, !dbg !3185

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3186
  %436 = load i64, i64* %435, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2791, metadata !DIExpression(DW_OP_deref)), !dbg !3096
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3187
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3188
  store i64 %436, i64* %438, align 8, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2791, metadata !DIExpression(DW_OP_deref)), !dbg !3096
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3189
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3190
  store i64 %436, i64* %440, align 8, !dbg !3190
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2791, metadata !DIExpression()), !dbg !3096
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3192
  store i32 1, i32* %442, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2791, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1811, metadata !DIExpression()) #9, !dbg !3194
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3196
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3196
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3197
  %446 = load i8*, i8** %445, align 8, !dbg !3197
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3198
  %448 = load i8**, i8*** %447, align 8, !dbg !3198
  call void %444(i8* %446, i8** %448) #10, !dbg !3199
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #10, !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #9, !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #9, !dbg !3201
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3201
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8** %1, metadata !3205, metadata !DIExpression()), !dbg !3207
  br label %3, !dbg !3208

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #11, !dbg !3209
  %5 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3211
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !3216
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !3217
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !3217
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !3219, metadata !DIExpression()), !dbg !3223
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !3225
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !3222, metadata !DIExpression()), !dbg !3226
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !3227
  br i1 %12, label %13, label %17, !dbg !3228

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !3229
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !3229
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !3230
  br i1 %16, label %18, label %17, !dbg !3231

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !3209, !llvm.loop !3232

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #10, !dbg !3234
  br label %17, !dbg !3236
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3237 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3242, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8** %2, metadata !3244, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %3, metadata !3245, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !3246, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !3247, metadata !DIExpression()), !dbg !3258
  %6 = icmp eq i64 %3, 0, !dbg !3259
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %7, metadata !3248, metadata !DIExpression()), !dbg !3260
  %8 = tail call i8* @kmem_malloc(i64 152) #10, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %8, metadata !3249, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %8, metadata !3247, metadata !DIExpression()), !dbg !3258
  %9 = icmp eq i8* %8, null, !dbg !3262
  br i1 %9, label %104, label %10, !dbg !3264

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #10, !dbg !3265
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3266
  %13 = bitcast i8* %12 to i32*, !dbg !3266
  store i32 0, i32* %13, align 4, !dbg !3267
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3268
  %15 = bitcast i8* %14 to i64*, !dbg !3268
  store i64 %7, i64* %15, align 8, !dbg !3269
  %16 = tail call i8* @kmem_malloc(i64 %7) #10, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %16, metadata !3251, metadata !DIExpression()), !dbg !3270
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3271
  %18 = bitcast i8* %17 to i8**, !dbg !3271
  store i8* %16, i8** %18, align 8, !dbg !3272
  %19 = icmp eq i8* %16, null, !dbg !3273
  br i1 %19, label %20, label %21, !dbg !3275

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #10, !dbg !3276
  br label %104, !dbg !3278

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3275
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3279
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3279
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3280
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3281
  %26 = bitcast i8* %25 to i8**, !dbg !3281
  store i8* %1, i8** %26, align 8, !dbg !3282
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3283
  %28 = bitcast i8* %27 to i8***, !dbg !3283
  store i8** %2, i8*** %28, align 8, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %8, metadata !1821, metadata !DIExpression()), !dbg !3285
  %29 = load i64, i64* %15, align 8, !dbg !3287
  %30 = bitcast i8* %8 to i64*, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !1441, metadata !DIExpression()), !dbg !3291
  %31 = add i64 %22, -8, !dbg !3292
  %32 = add i64 %31, %29, !dbg !3293
  store i64 %32, i64* %30, align 8, !dbg !3293
  %33 = inttoptr i64 %32 to i64*, !dbg !3294
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3298
  %34 = load i64, i64* %30, align 8, !dbg !3299
  %35 = add i64 %34, -8, !dbg !3299
  store i64 %35, i64* %30, align 8, !dbg !3299
  %36 = inttoptr i64 %35 to i64*, !dbg !3300
  store i64 0, i64* %36, align 8, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3304
  %37 = load i64, i64* %30, align 8, !dbg !3305
  %38 = add i64 %37, -8, !dbg !3305
  store i64 %38, i64* %30, align 8, !dbg !3305
  %39 = inttoptr i64 %38 to i64*, !dbg !3306
  store i64 0, i64* %39, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3310
  %40 = load i64, i64* %30, align 8, !dbg !3311
  %41 = add i64 %40, -8, !dbg !3311
  store i64 %41, i64* %30, align 8, !dbg !3311
  %42 = inttoptr i64 %41 to i64*, !dbg !3312
  store i64 0, i64* %42, align 8, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3316
  %43 = load i64, i64* %30, align 8, !dbg !3317
  %44 = add i64 %43, -8, !dbg !3317
  store i64 %44, i64* %30, align 8, !dbg !3317
  %45 = inttoptr i64 %44 to i64*, !dbg !3318
  store i64 0, i64* %45, align 8, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %8, metadata !1440, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3322
  %46 = load i64, i64* %30, align 8, !dbg !3323
  %47 = add i64 %46, -8, !dbg !3323
  store i64 %47, i64* %30, align 8, !dbg !3323
  %48 = inttoptr i64 %47 to i64*, !dbg !3324
  store i64 0, i64* %48, align 8, !dbg !3325
  %49 = ptrtoint i8* %8 to i64, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %49, metadata !1441, metadata !DIExpression()), !dbg !3329
  %50 = load i64, i64* %30, align 8, !dbg !3330
  %51 = add i64 %50, -8, !dbg !3330
  store i64 %51, i64* %30, align 8, !dbg !3330
  %52 = inttoptr i64 %51 to i64*, !dbg !3331
  store i64 %49, i64* %52, align 8, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3335
  %53 = load i64, i64* %30, align 8, !dbg !3336
  %54 = add i64 %53, -8, !dbg !3336
  store i64 %54, i64* %30, align 8, !dbg !3336
  %55 = inttoptr i64 %54 to i64*, !dbg !3337
  store i64 0, i64* %55, align 8, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3341
  %56 = load i64, i64* %30, align 8, !dbg !3342
  %57 = add i64 %56, -8, !dbg !3342
  store i64 %57, i64* %30, align 8, !dbg !3342
  %58 = inttoptr i64 %57 to i64*, !dbg !3343
  store i64 0, i64* %58, align 8, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3347
  %59 = load i64, i64* %30, align 8, !dbg !3348
  %60 = add i64 %59, -8, !dbg !3348
  store i64 %60, i64* %30, align 8, !dbg !3348
  %61 = inttoptr i64 %60 to i64*, !dbg !3349
  store i64 0, i64* %61, align 8, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3353
  %62 = load i64, i64* %30, align 8, !dbg !3354
  %63 = add i64 %62, -8, !dbg !3354
  store i64 %63, i64* %30, align 8, !dbg !3354
  %64 = inttoptr i64 %63 to i64*, !dbg !3355
  store i64 0, i64* %64, align 8, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3359
  %65 = load i64, i64* %30, align 8, !dbg !3360
  %66 = add i64 %65, -8, !dbg !3360
  store i64 %66, i64* %30, align 8, !dbg !3360
  %67 = inttoptr i64 %66 to i64*, !dbg !3361
  store i64 0, i64* %67, align 8, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3365
  %68 = load i64, i64* %30, align 8, !dbg !3366
  %69 = add i64 %68, -8, !dbg !3366
  store i64 %69, i64* %30, align 8, !dbg !3366
  %70 = inttoptr i64 %69 to i64*, !dbg !3367
  store i64 0, i64* %70, align 8, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3371
  %71 = load i64, i64* %30, align 8, !dbg !3372
  %72 = add i64 %71, -8, !dbg !3372
  store i64 %72, i64* %30, align 8, !dbg !3372
  %73 = inttoptr i64 %72 to i64*, !dbg !3373
  store i64 0, i64* %73, align 8, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3377
  %74 = load i64, i64* %30, align 8, !dbg !3378
  %75 = add i64 %74, -8, !dbg !3378
  store i64 %75, i64* %30, align 8, !dbg !3378
  %76 = inttoptr i64 %75 to i64*, !dbg !3379
  store i64 0, i64* %76, align 8, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %49, metadata !1440, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !3383
  %77 = load i64, i64* %30, align 8, !dbg !3384
  %78 = add i64 %77, -8, !dbg !3384
  store i64 %78, i64* %30, align 8, !dbg !3384
  %79 = inttoptr i64 %78 to i64*, !dbg !3385
  store i64 0, i64* %79, align 8, !dbg !3386
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3387
  br i1 %80, label %83, label %81, !dbg !3389

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3390
  store i8* %8, i8** %82, align 8, !dbg !3390
  br label %83, !dbg !3392

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3393, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2016, metadata !DIExpression()) #9, !dbg !3393
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !2015, metadata !DIExpression()) #9, !dbg !3395
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3396
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3396
  %87 = load i64, i64* %86, align 8, !dbg !3396
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3397
  %89 = bitcast i8* %88 to i64*, !dbg !3398
  store i64 %87, i64* %89, align 8, !dbg !3398
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %90, metadata !1506, metadata !DIExpression()), !dbg !3400
  %91 = bitcast i8* %90 to i8**, !dbg !3402
  store i8* %90, i8** %91, align 8, !dbg !3402
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3403
  %93 = bitcast i8* %92 to i8**, !dbg !3404
  store i8* %90, i8** %93, align 8, !dbg !3404
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3405
  %95 = bitcast i8* %94 to i32*, !dbg !3405
  store i32 0, i32* %95, align 8, !dbg !3406
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3407
  call void @llvm.dbg.value(metadata i8* %96, metadata !1506, metadata !DIExpression()), !dbg !3408
  %97 = bitcast i8* %96 to i8**, !dbg !3410
  store i8* %96, i8** %97, align 8, !dbg !3410
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3411
  %99 = bitcast i8* %98 to i8**, !dbg !3412
  store i8* %96, i8** %99, align 8, !dbg !3412
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %100, metadata !1506, metadata !DIExpression()), !dbg !3414
  %101 = bitcast i8* %100 to i8**, !dbg !3416
  store i8* %100, i8** %101, align 8, !dbg !3416
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3417
  %103 = bitcast i8* %102 to i8**, !dbg !3418
  store i8* %100, i8** %103, align 8, !dbg !3418
  br label %104, !dbg !3419

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3420
  ret i32 %105, !dbg !3421
}

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !3422 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3425
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3430
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3431
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3431
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3432
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3432
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3433, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2016, metadata !DIExpression()) #9, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !2015, metadata !DIExpression()) #9, !dbg !3435
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3436
  br i1 %8, label %9, label %54, !dbg !3437

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3438
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3443
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3444
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3444
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1451, metadata !DIExpression()) #9, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1452, metadata !DIExpression()) #9, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1472, metadata !DIExpression()) #9, !dbg !3448
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3450
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3450
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3451
  br i1 %17, label %30, label %18, !dbg !3452

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1453, metadata !DIExpression()) #9, !dbg !3453
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3453
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1453, metadata !DIExpression()) #9, !dbg !3453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1452, metadata !DIExpression()) #9, !dbg !3447
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1484, metadata !DIExpression()) #9, !dbg !3455
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3457
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3457
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1493, metadata !DIExpression()) #9, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1498, metadata !DIExpression()) #9, !dbg !3461
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3462
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3463
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3464
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1506, metadata !DIExpression()) #9, !dbg !3466
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3468
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3468
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3469
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1452, metadata !DIExpression()) #9, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3424, metadata !DIExpression()), !dbg !3470
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3471
  br i1 %29, label %30, label %51, !dbg !3473

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3474
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3480
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3481
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3481
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3482
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3482
  %37 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3483
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3487
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3488
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3488
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3489
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3489
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3490
  br i1 %43, label %54, label %44, !dbg !3491

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3492
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3497
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3498
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3498
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3499
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3424, metadata !DIExpression()), !dbg !3470
  br label %51, !dbg !3500

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3501
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3424, metadata !DIExpression()), !dbg !3470
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #11, !dbg !3502
  br label %54, !dbg !3503

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3501
  ret i32 %55, !dbg !3504
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3505 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3548
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3507, metadata !DIExpression()), !dbg !3551
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3552
  %5 = icmp eq i64 %4, 0, !dbg !3554
  %6 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %6, metadata !2228, metadata !DIExpression()) #9, !dbg !3558
  %7 = icmp eq i64 %6, 0, !dbg !3559
  br i1 %7, label %13, label %8, !dbg !3560

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3561
  %10 = inttoptr i64 %9 to i16*, !dbg !3562
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3563
  %12 = zext i16 %11 to i32, !dbg !3563
  br label %13, !dbg !3564

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3565
  %15 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %15, metadata !2244, metadata !DIExpression()) #9, !dbg !3569
  %16 = icmp eq i64 %15, 0, !dbg !3570
  br i1 %16, label %21, label %17, !dbg !3571

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3572
  %19 = inttoptr i64 %18 to i16*, !dbg !3573
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3574
  br label %21, !dbg !3575

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3576

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3508, metadata !DIExpression()), !dbg !3577
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3578, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2016, metadata !DIExpression()) #9, !dbg !3578
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2015, metadata !DIExpression()) #9, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3512, metadata !DIExpression()), !dbg !3577
  %24 = tail call i32 @nk_vc_is_active() #10, !dbg !3581
  %25 = icmp eq i32 %24, 0, !dbg !3581
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3582
  %27 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %27, metadata !2268, metadata !DIExpression()) #9, !dbg !3587
  %28 = icmp eq i64 %27, 0, !dbg !3588
  br i1 %28, label %34, label %29, !dbg !3589

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3590
  %31 = inttoptr i64 %30 to i16*, !dbg !3591
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3592
  %33 = icmp eq i16 %32, 0, !dbg !3593
  br i1 %33, label %34, label %35, !dbg !3582

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3582

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3582
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3582
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3582
  br i1 %25, label %58, label %40, !dbg !3594

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3595

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3595
  %43 = load i64, i64* %42, align 32, !dbg !3595
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3595
  %45 = load i8, i8* %44, align 8, !dbg !3595
  %46 = icmp eq i8 %45, 0, !dbg !3595
  br i1 %46, label %47, label %52, !dbg !3595

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3595
  %49 = load i8, i8* %48, align 64, !dbg !3595
  %50 = icmp eq i8 %49, 0, !dbg !3595
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %48, !dbg !3595
  br label %52, !dbg !3595

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %40 ], !dbg !3595
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3595
  %56 = load i32, i32* %55, align 8, !dbg !3595
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.72, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #10, !dbg !3595
  br label %76, !dbg !3595

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3596

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3596
  %61 = load i64, i64* %60, align 32, !dbg !3596
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3596
  %63 = load i8, i8* %62, align 8, !dbg !3596
  %64 = icmp eq i8 %63, 0, !dbg !3596
  br i1 %64, label %65, label %70, !dbg !3596

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3596
  %67 = load i8, i8* %66, align 64, !dbg !3596
  %68 = icmp eq i8 %67, 0, !dbg !3596
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %66, !dbg !3596
  br label %70, !dbg !3596

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %58 ], !dbg !3596
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3596
  %74 = load i32, i32* %73, align 8, !dbg !3596
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21.72, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #10, !dbg !3596
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %77, metadata !2288, metadata !DIExpression()) #9, !dbg !3600
  %78 = icmp eq i64 %77, 0, !dbg !3601
  br i1 %78, label %111, label %79, !dbg !3602

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3603
  %81 = inttoptr i64 %80 to i16*, !dbg !3604
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3605
  br label %111, !dbg !3606

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3525, metadata !DIExpression()), !dbg !3607
  %84 = tail call i32 @nk_vc_is_active() #10, !dbg !3608
  %85 = icmp eq i32 %84, 0, !dbg !3608
  %86 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %86, metadata !2268, metadata !DIExpression()) #9, !dbg !3615
  %87 = icmp eq i64 %86, 0, !dbg !3616
  br i1 %87, label %93, label %88, !dbg !3617

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3618
  %90 = inttoptr i64 %89 to i16*, !dbg !3619
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3620
  %92 = icmp eq i16 %91, 0, !dbg !3621
  br i1 %92, label %93, label %94, !dbg !3622

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3622

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3622
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3622
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3622
  %99 = load i32, i32* %98, align 8, !dbg !3622
  br i1 %85, label %102, label %100, !dbg !3623

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.73, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3624
  br label %104, !dbg !3624

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22.73, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #10, !dbg !3626
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %105, metadata !2288, metadata !DIExpression()) #9, !dbg !3631
  %106 = icmp eq i64 %105, 0, !dbg !3632
  br i1 %106, label %111, label %107, !dbg !3633

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3634
  %109 = inttoptr i64 %108 to i16*, !dbg !3635
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3636
  br label %111, !dbg !3637

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3638
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3638
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3669, !srcloc !3670
  call void @llvm.dbg.value(metadata i32 %113, metadata !3646, metadata !DIExpression()) #9, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %113, metadata !3643, metadata !DIExpression()) #9, !dbg !3671
  call void @llvm.dbg.value(metadata i8** %1, metadata !3641, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3672
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #10, !dbg !3673
  %115 = icmp eq i32 %114, 0, !dbg !3673
  br i1 %115, label %321, label %116, !dbg !3674

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3675
  %118 = icmp eq i64 %117, 0, !dbg !3677
  %119 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %119, metadata !2228, metadata !DIExpression()) #9, !dbg !3681
  %120 = icmp eq i64 %119, 0, !dbg !3682
  br i1 %120, label %126, label %121, !dbg !3683

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3684
  %123 = inttoptr i64 %122 to i16*, !dbg !3685
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3686
  %125 = zext i16 %124 to i32, !dbg !3686
  br label %126, !dbg !3687

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3688
  %128 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %128, metadata !2244, metadata !DIExpression()) #9, !dbg !3692
  %129 = icmp eq i64 %128, 0, !dbg !3693
  br i1 %129, label %134, label %130, !dbg !3694

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3695
  %132 = inttoptr i64 %131 to i16*, !dbg !3696
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3697
  br label %134, !dbg !3698

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3699

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3648, metadata !DIExpression()) #9, !dbg !3700
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3701, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2016, metadata !DIExpression()) #9, !dbg !3701
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2015, metadata !DIExpression()) #9, !dbg !3703
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3653, metadata !DIExpression()) #9, !dbg !3700
  %137 = call i32 @nk_vc_is_active() #10, !dbg !3704
  %138 = icmp eq i32 %137, 0, !dbg !3704
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3705
  %140 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %140, metadata !2268, metadata !DIExpression()) #9, !dbg !3710
  %141 = icmp eq i64 %140, 0, !dbg !3711
  br i1 %141, label %147, label %142, !dbg !3712

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3713
  %144 = inttoptr i64 %143 to i16*, !dbg !3714
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3715
  %146 = icmp eq i16 %145, 0, !dbg !3716
  br i1 %146, label %147, label %148, !dbg !3705

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3705

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3705
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3705
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3705
  br i1 %138, label %169, label %153, !dbg !3717

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3718

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3718
  %156 = load i64, i64* %155, align 32, !dbg !3718
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3718
  %158 = load i8, i8* %157, align 8, !dbg !3718
  %159 = icmp eq i8 %158, 0, !dbg !3718
  br i1 %159, label %160, label %165, !dbg !3718

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3718
  %162 = load i8, i8* %161, align 64, !dbg !3718
  %163 = icmp eq i8 %162, 0, !dbg !3718
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %161, !dbg !3718
  br label %165, !dbg !3718

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %153 ], !dbg !3718
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.74, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3718
  br label %185, !dbg !3718

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3719

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3719
  %172 = load i64, i64* %171, align 32, !dbg !3719
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3719
  %174 = load i8, i8* %173, align 8, !dbg !3719
  %175 = icmp eq i8 %174, 0, !dbg !3719
  br i1 %175, label %176, label %181, !dbg !3719

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3719
  %178 = load i8, i8* %177, align 64, !dbg !3719
  %179 = icmp eq i8 %178, 0, !dbg !3719
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %177, !dbg !3719
  br label %181, !dbg !3719

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %169 ], !dbg !3719
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29.74, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3719
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %186, metadata !2288, metadata !DIExpression()) #9, !dbg !3723
  %187 = icmp eq i64 %186, 0, !dbg !3724
  br i1 %187, label %218, label %188, !dbg !3725

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3726
  %190 = inttoptr i64 %189 to i16*, !dbg !3727
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3728
  br label %218, !dbg !3729

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3666, metadata !DIExpression()) #9, !dbg !3730
  %193 = call i32 @nk_vc_is_active() #10, !dbg !3731
  %194 = icmp eq i32 %193, 0, !dbg !3731
  %195 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %195, metadata !2268, metadata !DIExpression()) #9, !dbg !3738
  %196 = icmp eq i64 %195, 0, !dbg !3739
  br i1 %196, label %202, label %197, !dbg !3740

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3741
  %199 = inttoptr i64 %198 to i16*, !dbg !3742
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3743
  %201 = icmp eq i16 %200, 0, !dbg !3744
  br i1 %201, label %202, label %203, !dbg !3745

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3745

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3745
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3745
  br i1 %194, label %209, label %207, !dbg !3746

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.75, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3747
  br label %211, !dbg !3747

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30.75, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 563) #10, !dbg !3749
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3751
  call void @llvm.dbg.value(metadata i64 %212, metadata !2288, metadata !DIExpression()) #9, !dbg !3754
  %213 = icmp eq i64 %212, 0, !dbg !3755
  br i1 %213, label %218, label %214, !dbg !3756

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3757
  %216 = inttoptr i64 %215 to i16*, !dbg !3758
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3759
  br label %218, !dbg !3760

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3761
  %219 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3762
  %220 = icmp eq i64 %219, 0, !dbg !3764
  %221 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %221, metadata !2228, metadata !DIExpression()) #9, !dbg !3768
  %222 = icmp eq i64 %221, 0, !dbg !3769
  br i1 %222, label %228, label %223, !dbg !3770

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3771
  %225 = inttoptr i64 %224 to i16*, !dbg !3772
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3773
  %227 = zext i16 %226 to i32, !dbg !3773
  br label %228, !dbg !3774

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3775
  %230 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %230, metadata !2244, metadata !DIExpression()) #9, !dbg !3779
  %231 = icmp eq i64 %230, 0, !dbg !3780
  br i1 %231, label %236, label %232, !dbg !3781

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3782
  %234 = inttoptr i64 %233 to i16*, !dbg !3783
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3784
  br label %236, !dbg !3785

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3786

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3527, metadata !DIExpression()), !dbg !3787
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #9, !dbg !3788, !srcloc !2018
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2016, metadata !DIExpression()) #9, !dbg !3788
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2015, metadata !DIExpression()) #9, !dbg !3790
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3533, metadata !DIExpression()), !dbg !3787
  %239 = call i32 @nk_vc_is_active() #10, !dbg !3791
  %240 = icmp eq i32 %239, 0, !dbg !3791
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #9, !dbg !3792
  %242 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %242, metadata !2268, metadata !DIExpression()) #9, !dbg !3797
  %243 = icmp eq i64 %242, 0, !dbg !3798
  br i1 %243, label %249, label %244, !dbg !3799

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3800
  %246 = inttoptr i64 %245 to i16*, !dbg !3801
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3802
  %248 = icmp eq i16 %247, 0, !dbg !3803
  br i1 %248, label %249, label %250, !dbg !3792

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3792

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3792
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3792
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3792
  br i1 %240, label %271, label %255, !dbg !3804

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3805

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3805
  %258 = load i64, i64* %257, align 32, !dbg !3805
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3805
  %260 = load i8, i8* %259, align 8, !dbg !3805
  %261 = icmp eq i8 %260, 0, !dbg !3805
  br i1 %261, label %262, label %267, !dbg !3805

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3805
  %264 = load i8, i8* %263, align 64, !dbg !3805
  %265 = icmp eq i8 %264, 0, !dbg !3805
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %263, !dbg !3805
  br label %267, !dbg !3805

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %255 ], !dbg !3805
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.76, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3805
  br label %287, !dbg !3805

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3806

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3806
  %274 = load i64, i64* %273, align 32, !dbg !3806
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3806
  %276 = load i8, i8* %275, align 8, !dbg !3806
  %277 = icmp eq i8 %276, 0, !dbg !3806
  br i1 %277, label %278, label %283, !dbg !3806

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3806
  %280 = load i8, i8* %279, align 64, !dbg !3806
  %281 = icmp eq i8 %280, 0, !dbg !3806
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.8, i64 0, i64 0), i8* %279, !dbg !3806
  br label %283, !dbg !3806

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.9, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.10, i64 0, i64 0), %271 ], !dbg !3806
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23.76, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3806
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %288, metadata !2288, metadata !DIExpression()) #9, !dbg !3810
  %289 = icmp eq i64 %288, 0, !dbg !3811
  br i1 %289, label %320, label %290, !dbg !3812

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3813
  %292 = inttoptr i64 %291 to i16*, !dbg !3814
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3815
  br label %320, !dbg !3816

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3546, metadata !DIExpression()), !dbg !3817
  %295 = call i32 @nk_vc_is_active() #10, !dbg !3818
  %296 = icmp eq i32 %295, 0, !dbg !3818
  %297 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %297, metadata !2268, metadata !DIExpression()) #9, !dbg !3825
  %298 = icmp eq i64 %297, 0, !dbg !3826
  br i1 %298, label %304, label %299, !dbg !3827

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3828
  %301 = inttoptr i64 %300 to i16*, !dbg !3829
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3830
  %303 = icmp eq i16 %302, 0, !dbg !3831
  br i1 %303, label %304, label %305, !dbg !3832

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3832

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3832
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.5, i64 0, i64 0), !dbg !3832
  br i1 %296, label %311, label %309, !dbg !3833

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.77, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3834
  br label %313, !dbg !3834

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24.77, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 575) #10, !dbg !3836
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #10, !dbg !3838
  call void @llvm.dbg.value(metadata i64 %314, metadata !2288, metadata !DIExpression()) #9, !dbg !3841
  %315 = icmp eq i64 %314, 0, !dbg !3842
  br i1 %315, label %320, label %316, !dbg !3843

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3844
  %318 = inttoptr i64 %317 to i16*, !dbg !3845
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3846
  br label %320, !dbg !3847

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25.78, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.52, i64 0, i64 0), i32 576) #12, !dbg !3848
  unreachable, !dbg !3848

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #9, !dbg !3761
  ret void, !dbg !3849
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3850 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i8* %1, metadata !3855, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i8** %2, metadata !3856, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %3, metadata !3857, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8 %4, metadata !3858, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3859, metadata !DIExpression()), !dbg !3865
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #11, !dbg !3866
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3867
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #11, !dbg !3868
  ret i32 0, !dbg !3869
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3870 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26.81, i64 0, i64 0)) #10, !dbg !3871
  %2 = tail call i32 @nk_fiber_yield() #11, !dbg !3872
  ret i32 %2, !dbg !3873
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3874 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3876, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2110, metadata !DIExpression()) #9, !dbg !3881
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #9, !dbg !3883, !srcloc !2131
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2114, metadata !DIExpression()) #9, !dbg !3883
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2112, metadata !DIExpression()) #9, !dbg !3884
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2111, metadata !DIExpression()) #9, !dbg !3885
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3886
  %4 = load i32, i32* %3, align 8, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %4, metadata !2116, metadata !DIExpression()) #9, !dbg !3887
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()) #9, !dbg !3888
  %5 = icmp sgt i32 %4, 0, !dbg !3889
  br i1 %5, label %6, label %30, !dbg !3890

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3891
  br label %8, !dbg !3891

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2119, metadata !DIExpression()) #9, !dbg !3888
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3891
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3891
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3892
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3892
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3893
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2117, metadata !DIExpression()) #9, !dbg !3894
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2121, metadata !DIExpression(DW_OP_deref)) #9, !dbg !3895
  call void @llvm.dbg.value(metadata i8** %15, metadata !2118, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !3896
  %16 = load i8*, i8** %15, align 8, !dbg !3897
  br label %17, !dbg !3898

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3897
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3899
  %20 = bitcast i8* %18 to i8**, !dbg !3899
  %21 = load i8*, i8** %20, align 8, !dbg !3899
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #9, !dbg !3899
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3899
  br i1 %22, label %27, label %23, !dbg !3898

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3897
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3897
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2118, metadata !DIExpression()) #9, !dbg !3896
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3900
  br i1 %26, label %75, label %17, !dbg !3901, !llvm.loop !2152

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !2119, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !3888
  %29 = icmp slt i64 %28, %7, !dbg !3889
  br i1 %29, label %8, label %30, !dbg !3890, !llvm.loop !2155

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3903
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3908
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3909
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3909
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !3910
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1451, metadata !DIExpression()) #9, !dbg !3911
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1452, metadata !DIExpression()) #9, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1472, metadata !DIExpression()) #9, !dbg !3913
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !3915
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !3915
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !3916
  br i1 %38, label %51, label %39, !dbg !3917

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1453, metadata !DIExpression()) #9, !dbg !3918
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !3918
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !3918
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1453, metadata !DIExpression()) #9, !dbg !3918
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1452, metadata !DIExpression()) #9, !dbg !3912
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !3919
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1484, metadata !DIExpression()) #9, !dbg !3920
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !3922
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !3922
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3923
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1493, metadata !DIExpression()) #9, !dbg !3924
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1498, metadata !DIExpression()) #9, !dbg !3926
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !3927
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3928
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !3929
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !3930
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1506, metadata !DIExpression()) #9, !dbg !3931
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3933
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !3933
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !3934
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !3934
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1452, metadata !DIExpression()) #9, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3877, metadata !DIExpression()), !dbg !3935
  %50 = icmp eq %struct.list_head** %40, null, !dbg !3936
  br i1 %50, label %51, label %72, !dbg !3938

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3939
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !3945
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !3946
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !3946
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !3947
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !3947
  %58 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3948
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3952
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3953
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3953
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !3954
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !3954
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !3955
  br i1 %64, label %84, label %65, !dbg !3956

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !3957
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !3962
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !3963
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !3963
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !3964
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !3964
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3877, metadata !DIExpression()), !dbg !3935
  br label %72, !dbg !3965

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !3966
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3877, metadata !DIExpression()), !dbg !3935
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #11, !dbg !3967
  br label %84, !dbg !3968

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1484, metadata !DIExpression()) #9, !dbg !3970
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3972
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !3972
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !3973
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1493, metadata !DIExpression()) #9, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1498, metadata !DIExpression()) #9, !dbg !3976
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !3977
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !3978
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !3979
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !3980
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1506, metadata !DIExpression()) #9, !dbg !3981
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !3983
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !3984
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !3985
  br label %84, !dbg !3986

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !3987
  ret i32 %85, !dbg !3988
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3989 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8* %1, metadata !3997, metadata !DIExpression()), !dbg !3999
  %3 = tail call zeroext i8 %0(i8* %1) #10, !dbg !4000
  %4 = icmp eq i8 %3, 0, !dbg !4000
  br i1 %4, label %7, label %5, !dbg !4002

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #11, !dbg !4003
  br label %7, !dbg !4005

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !4006
  ret i32 %8, !dbg !4007
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4008 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4012, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8* %2, metadata !4014, metadata !DIExpression()), !dbg !4017
  %4 = tail call zeroext i8 %1(i8* %2) #10, !dbg !4018
  %5 = icmp eq i8 %4, 0, !dbg !4018
  br i1 %5, label %8, label %6, !dbg !4020

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #11, !dbg !4021
  br label %8, !dbg !4023

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4024
  ret i32 %9, !dbg !4025
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4026 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4045
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4049
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4050
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4050
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4051
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4051
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4028, metadata !DIExpression()), !dbg !4052
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4053, !srcloc !4054
  call void @llvm.dbg.value(metadata i64 %8, metadata !4035, metadata !DIExpression()), !dbg !4055
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4056
  call void @llvm.dbg.value(metadata i8* %9, metadata !4036, metadata !DIExpression()), !dbg !4057
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %10, metadata !4037, metadata !DIExpression()), !dbg !4059
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4060
  call void @llvm.dbg.value(metadata i8* %11, metadata !4038, metadata !DIExpression()), !dbg !4061
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %12, metadata !4039, metadata !DIExpression()), !dbg !4063
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4064
  %14 = load i8*, i8** %13, align 8, !dbg !4064
  %15 = icmp ugt i8* %11, %14, !dbg !4066
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4067
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4068
  %19 = icmp ult i8* %11, %18, !dbg !4069
  %20 = and i1 %15, %19, !dbg !4070
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %21, metadata !4038, metadata !DIExpression()), !dbg !4061
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %22, metadata !4040, metadata !DIExpression()), !dbg !4072
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4073
  %24 = ptrtoint i8* %23 to i64, !dbg !4074
  %25 = ptrtoint i8* %12 to i64, !dbg !4074
  %26 = sub i64 %24, %25, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %26, metadata !4029, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4075
  %27 = ptrtoint i8* %10 to i64, !dbg !4076
  call void @llvm.dbg.value(metadata i64 undef, metadata !4031, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 72, metadata !4032, metadata !DIExpression()), !dbg !4078
  %28 = bitcast i8* %22 to i64*, !dbg !4079
  %29 = load i64, i64* %28, align 8, !dbg !4079
  %30 = sub i64 %29, %25, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %30, metadata !4033, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %17, metadata !4030, metadata !DIExpression()), !dbg !4082
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4083
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4041, metadata !DIExpression(DW_OP_deref)), !dbg !4084
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #11, !dbg !4085
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4041, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !1440, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !1441, metadata !DIExpression()), !dbg !4089
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4090
  %35 = load i64, i64* %34, align 8, !dbg !4091
  %36 = add i64 %35, -8, !dbg !4091
  store i64 %36, i64* %34, align 8, !dbg !4091
  %37 = inttoptr i64 %36 to i64*, !dbg !4092
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4093
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4094
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4041, metadata !DIExpression()), !dbg !4084
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4095
  %40 = load i8*, i8** %39, align 8, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %40, metadata !4034, metadata !DIExpression()), !dbg !4096
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4097
  %42 = sub i64 -16, %26, !dbg !4098
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4098
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #10, !dbg !4099
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4100
  %46 = ptrtoint i8* %45 to i64, !dbg !4101
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4102
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4041, metadata !DIExpression()), !dbg !4084
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4103
  store i64 %46, i64* %48, align 8, !dbg !4104
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4105
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4041, metadata !DIExpression()), !dbg !4084
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4106
  %51 = load i64, i64* %50, align 8, !dbg !4106
  %52 = add i64 %51, 64, !dbg !4107
  %53 = inttoptr i64 %52 to i8**, !dbg !4108
  call void @llvm.dbg.value(metadata i8** %53, metadata !4042, metadata !DIExpression()), !dbg !4109
  %54 = add i64 %30, %51, !dbg !4110
  %55 = inttoptr i64 %54 to i8*, !dbg !4111
  store i8* %55, i8** %53, align 8, !dbg !4112
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4113
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4041, metadata !DIExpression()), !dbg !4084
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4114
  %58 = load i64, i64* %57, align 8, !dbg !4114
  %59 = sub i64 8, %25, !dbg !4076
  %60 = add i64 %59, %27, !dbg !4115
  %61 = add i64 %60, %58, !dbg !4116
  %62 = inttoptr i64 %61 to i8**, !dbg !4117
  call void @llvm.dbg.value(metadata i8** %62, metadata !4043, metadata !DIExpression()), !dbg !4118
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4119
  call void @llvm.dbg.value(metadata i8** %63, metadata !4044, metadata !DIExpression()), !dbg !4120
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4121
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4121
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4122
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4041, metadata !DIExpression()), !dbg !4084
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4123
  %67 = load i64, i64* %66, align 8, !dbg !4123
  %68 = add i64 %67, 112, !dbg !4124
  %69 = inttoptr i64 %68 to i64*, !dbg !4125
  store i64 0, i64* %69, align 8, !dbg !4126
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4127
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4041, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1563, metadata !DIExpression()) #9, !dbg !4128
  call void @llvm.dbg.value(metadata i8 0, metadata !1568, metadata !DIExpression()) #9, !dbg !4130
  %71 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4131
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4135
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1569, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #9, !dbg !4136
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4137
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4137
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4137
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1569, metadata !DIExpression()) #9, !dbg !4136
  %77 = call i64 @msr_read(i32 -1073741567) #10, !dbg !4138
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4142
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4143
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4143
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4144
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1570, metadata !DIExpression()) #9, !dbg !4145
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4146
  store i32 1, i32* %82, align 4, !dbg !4147
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1632, metadata !DIExpression()) #9, !dbg !4149
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1635, metadata !DIExpression()) #9, !dbg !4151
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4152
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4152
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1640, metadata !DIExpression()) #9, !dbg !4153
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1645, metadata !DIExpression()) #9, !dbg !4155
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1646, metadata !DIExpression()) #9, !dbg !4156
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4157
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4158
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4159
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4160
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4161
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4162
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4163
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4164
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4164
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4165
  br i1 %91, label %94, label %92, !dbg !4166

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #10, !dbg !4167
  br label %94, !dbg !4168

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4169
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4041, metadata !DIExpression()), !dbg !4084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #9, !dbg !4170
  ret %struct.nk_fiber* %95, !dbg !4171
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4172 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4174, metadata !DIExpression()), !dbg !4177
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4178
  br i1 %2, label %22, label %3, !dbg !4180

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #10, !dbg !4181
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4185
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4186
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4186
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4187
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4187
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4175, metadata !DIExpression()), !dbg !4188
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4189
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4176, metadata !DIExpression()), !dbg !4190
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4191
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1632, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1635, metadata !DIExpression()), !dbg !4194
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4195
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1640, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1645, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1646, metadata !DIExpression()), !dbg !4199
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4200
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4201
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4202
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4203
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4204
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4205
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4206
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4207
  %18 = load i32, i32* %17, align 8, !dbg !4208
  %19 = add i32 %18, 1, !dbg !4208
  store i32 %19, i32* %17, align 8, !dbg !4208
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4209
  store i32 3, i32* %20, align 4, !dbg !4210
  %21 = tail call i32 @nk_fiber_yield() #11, !dbg !4211
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !4212
  ret i32 %23, !dbg !4213
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
!707 = !DILocation(line: 277, column: 5, scope: !706)
!708 = !DILocation(line: 279, column: 3, scope: !684)
!709 = !DILocation(line: 280, column: 1, scope: !684)
!710 = distinct !DISubprogram(name: "handle_fibers6", scope: !3, file: !3, line: 512, type: !141, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !711)
!711 = !{!712, !713}
!712 = !DILocalVariable(name: "buf", arg: 1, scope: !710, file: !3, line: 512, type: !137)
!713 = !DILocalVariable(name: "priv", arg: 2, scope: !710, file: !3, line: 512, type: !33)
!714 = !DILocation(line: 512, column: 24, scope: !710)
!715 = !DILocation(line: 512, column: 36, scope: !710)
!716 = !DILocation(line: 424, column: 3, scope: !717, inlinedAt: !720)
!717 = distinct !DISubprogram(name: "test_fiber_fork", scope: !3, file: !3, line: 422, type: !561, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !718)
!718 = !{!719}
!719 = !DILocalVariable(name: "f_orig", scope: !717, file: !3, line: 424, type: !24)
!720 = distinct !DILocation(line: 514, column: 3, scope: !710)
!721 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !722)
!722 = distinct !DILocation(line: 425, column: 8, scope: !717, inlinedAt: !720)
!723 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !722)
!724 = !DILocation(line: 425, column: 26, scope: !717, inlinedAt: !720)
!725 = !DILocation(line: 425, column: 6, scope: !717, inlinedAt: !720)
!726 = !DILocation(line: 426, column: 3, scope: !717, inlinedAt: !720)
!727 = !DILocation(line: 424, column: 15, scope: !717, inlinedAt: !720)
!728 = !DILocation(line: 427, column: 3, scope: !717, inlinedAt: !720)
!729 = !DILocation(line: 429, column: 1, scope: !717, inlinedAt: !720)
!730 = !DILocation(line: 515, column: 3, scope: !710)
!731 = distinct !DISubprogram(name: "fiber_fork", scope: !3, file: !3, line: 249, type: !64, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !732)
!732 = !{!733, !734, !735, !736}
!733 = !DILocalVariable(name: "i", arg: 1, scope: !731, file: !3, line: 249, type: !33)
!734 = !DILocalVariable(name: "o", arg: 2, scope: !731, file: !3, line: 249, type: !66)
!735 = !DILocalVariable(name: "a", scope: !731, file: !3, line: 252, type: !50)
!736 = !DILocalVariable(name: "f_new", scope: !731, file: !3, line: 253, type: !24)
!737 = !DILocation(line: 249, column: 23, scope: !731)
!738 = !DILocation(line: 249, column: 33, scope: !731)
!739 = !DILocation(line: 251, column: 19, scope: !731)
!740 = !DILocation(line: 251, column: 3, scope: !731)
!741 = !DILocation(line: 252, column: 7, scope: !731)
!742 = !DILocation(line: 254, column: 11, scope: !731)
!743 = !DILocation(line: 253, column: 15, scope: !731)
!744 = !DILocation(line: 257, column: 5, scope: !745)
!745 = distinct !DILexicalBlock(scope: !731, file: !3, line: 255, column: 15)
!746 = !DILocation(line: 258, column: 5, scope: !745)
!747 = !DILocation(line: 260, column: 3, scope: !731)
!748 = !DILocation(line: 261, column: 1, scope: !731)
!749 = distinct !DISubprogram(name: "handle_fibers5", scope: !3, file: !3, line: 505, type: !141, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!750 = !{!751, !752}
!751 = !DILocalVariable(name: "buf", arg: 1, scope: !749, file: !3, line: 505, type: !137)
!752 = !DILocalVariable(name: "priv", arg: 2, scope: !749, file: !3, line: 505, type: !33)
!753 = !DILocation(line: 505, column: 24, scope: !749)
!754 = !DILocation(line: 505, column: 36, scope: !749)
!755 = !DILocation(line: 415, column: 3, scope: !756, inlinedAt: !759)
!756 = distinct !DISubprogram(name: "test_fiber_join", scope: !3, file: !3, line: 413, type: !561, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!757 = !{!758}
!758 = !DILocalVariable(name: "f_outer_join", scope: !756, file: !3, line: 415, type: !24)
!759 = distinct !DILocation(line: 507, column: 3, scope: !749)
!760 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !761)
!761 = distinct !DILocation(line: 416, column: 8, scope: !756, inlinedAt: !759)
!762 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !761)
!763 = !DILocation(line: 416, column: 26, scope: !756, inlinedAt: !759)
!764 = !DILocation(line: 416, column: 6, scope: !756, inlinedAt: !759)
!765 = !DILocation(line: 417, column: 3, scope: !756, inlinedAt: !759)
!766 = !DILocation(line: 415, column: 15, scope: !756, inlinedAt: !759)
!767 = !DILocation(line: 418, column: 3, scope: !756, inlinedAt: !759)
!768 = !DILocation(line: 420, column: 1, scope: !756, inlinedAt: !759)
!769 = !DILocation(line: 508, column: 3, scope: !749)
!770 = distinct !DISubprogram(name: "fiber_outer_join", scope: !3, file: !3, line: 103, type: !64, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!771 = !{!772, !773, !774, !775}
!772 = !DILocalVariable(name: "i", arg: 1, scope: !770, file: !3, line: 103, type: !33)
!773 = !DILocalVariable(name: "o", arg: 2, scope: !770, file: !3, line: 103, type: !66)
!774 = !DILocalVariable(name: "a", scope: !770, file: !3, line: 106, type: !50)
!775 = !DILocalVariable(name: "f_inner_join", scope: !776, file: !3, line: 109, type: !24)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 107, column: 15)
!777 = !DILocation(line: 103, column: 29, scope: !770)
!778 = !DILocation(line: 103, column: 39, scope: !770)
!779 = !DILocation(line: 105, column: 19, scope: !770)
!780 = !DILocation(line: 105, column: 3, scope: !770)
!781 = !DILocation(line: 106, column: 7, scope: !770)
!782 = !DILocation(line: 108, column: 5, scope: !776)
!783 = !DILocation(line: 109, column: 5, scope: !776)
!784 = !DILocation(line: 109, column: 17, scope: !776)
!785 = !DILocation(line: 110, column: 5, scope: !776)
!786 = !DILocation(line: 111, column: 19, scope: !776)
!787 = !DILocation(line: 111, column: 5, scope: !776)
!788 = !DILocation(line: 112, column: 5, scope: !776)
!789 = !DILocation(line: 113, column: 3, scope: !770)
!790 = !DILocation(line: 114, column: 3, scope: !770)
!791 = !DILocation(line: 115, column: 1, scope: !770)
!792 = distinct !DISubprogram(name: "fiber_inner_join", scope: !3, file: !3, line: 92, type: !64, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!793 = !{!794, !795, !796}
!794 = !DILocalVariable(name: "i", arg: 1, scope: !792, file: !3, line: 92, type: !33)
!795 = !DILocalVariable(name: "o", arg: 2, scope: !792, file: !3, line: 92, type: !66)
!796 = !DILocalVariable(name: "a", scope: !792, file: !3, line: 95, type: !50)
!797 = !DILocation(line: 92, column: 29, scope: !792)
!798 = !DILocation(line: 92, column: 39, scope: !792)
!799 = !DILocation(line: 94, column: 19, scope: !792)
!800 = !DILocation(line: 94, column: 3, scope: !792)
!801 = !DILocation(line: 95, column: 7, scope: !792)
!802 = !DILocation(line: 97, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !792, file: !3, line: 96, column: 16)
!804 = !DILocation(line: 98, column: 5, scope: !803)
!805 = !DILocation(line: 100, column: 3, scope: !792)
!806 = !DILocation(line: 101, column: 1, scope: !792)
!807 = distinct !DISubprogram(name: "handle_fibers4", scope: !3, file: !3, line: 497, type: !141, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !808)
!808 = !{!809, !810}
!809 = !DILocalVariable(name: "buf", arg: 1, scope: !807, file: !3, line: 497, type: !137)
!810 = !DILocalVariable(name: "priv", arg: 2, scope: !807, file: !3, line: 497, type: !33)
!811 = !DILocation(line: 497, column: 24, scope: !807)
!812 = !DILocation(line: 497, column: 36, scope: !807)
!813 = !DILocation(line: 499, column: 3, scope: !807)
!814 = !DILocation(line: 501, column: 3, scope: !807)
!815 = distinct !DISubprogram(name: "test_yield_to", scope: !3, file: !3, line: 389, type: !561, scopeLine: 390, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!816 = !{!817, !818, !819, !820}
!817 = !DILocalVariable(name: "f_first", scope: !815, file: !3, line: 391, type: !24)
!818 = !DILocalVariable(name: "f_second", scope: !815, file: !3, line: 392, type: !24)
!819 = !DILocalVariable(name: "f_third", scope: !815, file: !3, line: 393, type: !24)
!820 = !DILocalVariable(name: "f_fourth", scope: !815, file: !3, line: 394, type: !24)
!821 = !DILocation(line: 391, column: 3, scope: !815)
!822 = !DILocation(line: 392, column: 3, scope: !815)
!823 = !DILocation(line: 393, column: 3, scope: !815)
!824 = !DILocation(line: 394, column: 3, scope: !815)
!825 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !826)
!826 = distinct !DILocation(line: 395, column: 8, scope: !815)
!827 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !826)
!828 = !DILocation(line: 395, column: 26, scope: !815)
!829 = !DILocation(line: 395, column: 6, scope: !815)
!830 = !DILocation(line: 396, column: 3, scope: !815)
!831 = !DILocation(line: 394, column: 15, scope: !815)
!832 = !DILocation(line: 397, column: 3, scope: !815)
!833 = !DILocation(line: 391, column: 15, scope: !815)
!834 = !DILocation(line: 398, column: 3, scope: !815)
!835 = !DILocation(line: 393, column: 15, scope: !815)
!836 = !DILocation(line: 399, column: 3, scope: !815)
!837 = !DILocation(line: 392, column: 15, scope: !815)
!838 = !DILocation(line: 400, column: 3, scope: !815)
!839 = !DILocation(line: 402, column: 20, scope: !815)
!840 = !DILocation(line: 402, column: 3, scope: !815)
!841 = !DILocation(line: 402, column: 12, scope: !815)
!842 = !DILocation(line: 402, column: 18, scope: !815)
!843 = !DILocation(line: 403, column: 21, scope: !815)
!844 = !DILocation(line: 403, column: 3, scope: !815)
!845 = !DILocation(line: 403, column: 13, scope: !815)
!846 = !DILocation(line: 403, column: 19, scope: !815)
!847 = !DILocation(line: 404, column: 20, scope: !815)
!848 = !DILocation(line: 404, column: 3, scope: !815)
!849 = !DILocation(line: 404, column: 12, scope: !815)
!850 = !DILocation(line: 404, column: 18, scope: !815)
!851 = !DILocation(line: 405, column: 21, scope: !815)
!852 = !DILocation(line: 405, column: 3, scope: !815)
!853 = !DILocation(line: 405, column: 13, scope: !815)
!854 = !DILocation(line: 405, column: 19, scope: !815)
!855 = !DILocation(line: 406, column: 3, scope: !815)
!856 = !DILocation(line: 407, column: 16, scope: !815)
!857 = !DILocation(line: 407, column: 3, scope: !815)
!858 = !DILocation(line: 408, column: 16, scope: !815)
!859 = !DILocation(line: 408, column: 3, scope: !815)
!860 = !DILocation(line: 409, column: 16, scope: !815)
!861 = !DILocation(line: 409, column: 3, scope: !815)
!862 = !DILocation(line: 411, column: 1, scope: !815)
!863 = !DILocation(line: 410, column: 3, scope: !815)
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
!936 = distinct !DISubprogram(name: "handle_fibers3", scope: !3, file: !3, line: 489, type: !141, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "buf", arg: 1, scope: !936, file: !3, line: 489, type: !137)
!939 = !DILocalVariable(name: "priv", arg: 2, scope: !936, file: !3, line: 489, type: !33)
!940 = !DILocation(line: 489, column: 24, scope: !936)
!941 = !DILocation(line: 489, column: 36, scope: !936)
!942 = !DILocation(line: 358, column: 3, scope: !943, inlinedAt: !947)
!943 = distinct !DISubprogram(name: "test_fibers_counter", scope: !3, file: !3, line: 357, type: !561, scopeLine: 357, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!944 = !{!945, !946}
!945 = !DILocalVariable(name: "even", scope: !943, file: !3, line: 358, type: !24)
!946 = !DILocalVariable(name: "odd", scope: !943, file: !3, line: 359, type: !24)
!947 = distinct !DILocation(line: 491, column: 3, scope: !936)
!948 = !DILocation(line: 359, column: 3, scope: !943, inlinedAt: !947)
!949 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !950)
!950 = distinct !DILocation(line: 360, column: 8, scope: !943, inlinedAt: !947)
!951 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !950)
!952 = !DILocation(line: 360, column: 26, scope: !943, inlinedAt: !947)
!953 = !DILocation(line: 360, column: 6, scope: !943, inlinedAt: !947)
!954 = !DILocation(line: 358, column: 15, scope: !943, inlinedAt: !947)
!955 = !DILocation(line: 361, column: 3, scope: !943, inlinedAt: !947)
!956 = !DILocation(line: 359, column: 15, scope: !943, inlinedAt: !947)
!957 = !DILocation(line: 362, column: 3, scope: !943, inlinedAt: !947)
!958 = !DILocation(line: 365, column: 1, scope: !943, inlinedAt: !947)
!959 = !DILocation(line: 493, column: 3, scope: !936)
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
!976 = !DILocation(line: 177, column: 7, scope: !972)
!977 = !DILocation(line: 180, column: 3, scope: !960)
!978 = !DILocation(line: 182, column: 3, scope: !960)
!979 = distinct !DISubprogram(name: "print_odd", scope: !3, file: !3, line: 185, type: !64, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!980 = !{!981, !982, !983}
!981 = !DILocalVariable(name: "i", arg: 1, scope: !979, file: !3, line: 185, type: !33)
!982 = !DILocalVariable(name: "o", arg: 2, scope: !979, file: !3, line: 185, type: !66)
!983 = !DILocalVariable(name: "i", scope: !984, file: !3, line: 187, type: !50)
!984 = distinct !DILexicalBlock(scope: !979, file: !3, line: 187, column: 3)
!985 = !DILocation(line: 185, column: 22, scope: !979)
!986 = !DILocation(line: 185, column: 32, scope: !979)
!987 = !DILocation(line: 186, column: 19, scope: !979)
!988 = !DILocation(line: 186, column: 3, scope: !979)
!989 = !DILocation(line: 187, column: 12, scope: !984)
!990 = !DILocation(line: 189, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 188, column: 22)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 188, column: 9)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 187, column: 31)
!994 = distinct !DILexicalBlock(scope: !984, file: !3, line: 187, column: 3)
!995 = !DILocation(line: 190, column: 7, scope: !991)
!996 = !DILocation(line: 193, column: 3, scope: !979)
!997 = !DILocation(line: 195, column: 3, scope: !979)
!998 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 481, type: !141, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!999 = !{!1000, !1001}
!1000 = !DILocalVariable(name: "buf", arg: 1, scope: !998, file: !3, line: 481, type: !137)
!1001 = !DILocalVariable(name: "priv", arg: 2, scope: !998, file: !3, line: 481, type: !33)
!1002 = !DILocation(line: 481, column: 24, scope: !998)
!1003 = !DILocation(line: 481, column: 36, scope: !998)
!1004 = !DILocation(line: 369, column: 3, scope: !1005, inlinedAt: !1008)
!1005 = distinct !DISubprogram(name: "test_nested_fibers", scope: !3, file: !3, line: 367, type: !561, scopeLine: 368, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1006 = !{!1007}
!1007 = !DILocalVariable(name: "f_outer", scope: !1005, file: !3, line: 369, type: !24)
!1008 = distinct !DILocation(line: 483, column: 3, scope: !998)
!1009 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 370, column: 8, scope: !1005, inlinedAt: !1008)
!1011 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1010)
!1012 = !DILocation(line: 370, column: 26, scope: !1005, inlinedAt: !1008)
!1013 = !DILocation(line: 370, column: 6, scope: !1005, inlinedAt: !1008)
!1014 = !DILocation(line: 371, column: 3, scope: !1005, inlinedAt: !1008)
!1015 = !DILocation(line: 369, column: 15, scope: !1005, inlinedAt: !1008)
!1016 = !DILocation(line: 372, column: 3, scope: !1005, inlinedAt: !1008)
!1017 = !DILocation(line: 374, column: 1, scope: !1005, inlinedAt: !1008)
!1018 = !DILocation(line: 485, column: 3, scope: !998)
!1019 = distinct !DISubprogram(name: "fiber_outer", scope: !3, file: !3, line: 79, type: !64, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1020 = !{!1021, !1022, !1023, !1024}
!1021 = !DILocalVariable(name: "i", arg: 1, scope: !1019, file: !3, line: 79, type: !33)
!1022 = !DILocalVariable(name: "o", arg: 2, scope: !1019, file: !3, line: 79, type: !66)
!1023 = !DILocalVariable(name: "a", scope: !1019, file: !3, line: 82, type: !50)
!1024 = !DILocalVariable(name: "f_inner", scope: !1025, file: !3, line: 85, type: !24)
!1025 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 83, column: 15)
!1026 = !DILocation(line: 79, column: 24, scope: !1019)
!1027 = !DILocation(line: 79, column: 34, scope: !1019)
!1028 = !DILocation(line: 81, column: 19, scope: !1019)
!1029 = !DILocation(line: 81, column: 3, scope: !1019)
!1030 = !DILocation(line: 82, column: 7, scope: !1019)
!1031 = !DILocation(line: 84, column: 5, scope: !1025)
!1032 = !DILocation(line: 85, column: 5, scope: !1025)
!1033 = !DILocation(line: 85, column: 17, scope: !1025)
!1034 = !DILocation(line: 86, column: 5, scope: !1025)
!1035 = !DILocation(line: 87, column: 5, scope: !1025)
!1036 = !DILocation(line: 88, column: 3, scope: !1019)
!1037 = !DILocation(line: 89, column: 3, scope: !1019)
!1038 = !DILocation(line: 90, column: 1, scope: !1019)
!1039 = distinct !DISubprogram(name: "fiber_inner", scope: !3, file: !3, line: 68, type: !64, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DILocalVariable(name: "i", arg: 1, scope: !1039, file: !3, line: 68, type: !33)
!1042 = !DILocalVariable(name: "o", arg: 2, scope: !1039, file: !3, line: 68, type: !66)
!1043 = !DILocalVariable(name: "a", scope: !1039, file: !3, line: 71, type: !50)
!1044 = !DILocation(line: 68, column: 24, scope: !1039)
!1045 = !DILocation(line: 68, column: 34, scope: !1039)
!1046 = !DILocation(line: 70, column: 19, scope: !1039)
!1047 = !DILocation(line: 70, column: 3, scope: !1039)
!1048 = !DILocation(line: 71, column: 7, scope: !1039)
!1049 = !DILocation(line: 73, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 72, column: 16)
!1051 = !DILocation(line: 74, column: 5, scope: !1050)
!1052 = !DILocation(line: 76, column: 3, scope: !1039)
!1053 = !DILocation(line: 77, column: 1, scope: !1039)
!1054 = distinct !DISubprogram(name: "handle_fibers10", scope: !3, file: !3, line: 540, type: !141, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1055 = !{!1056, !1057}
!1056 = !DILocalVariable(name: "buf", arg: 1, scope: !1054, file: !3, line: 540, type: !137)
!1057 = !DILocalVariable(name: "priv", arg: 2, scope: !1054, file: !3, line: 540, type: !33)
!1058 = !DILocation(line: 540, column: 25, scope: !1054)
!1059 = !DILocation(line: 540, column: 37, scope: !1054)
!1060 = !DILocation(line: 459, column: 3, scope: !1061, inlinedAt: !1065)
!1061 = distinct !DISubprogram(name: "test_fiber_timing", scope: !3, file: !3, line: 458, type: !561, scopeLine: 458, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1062)
!1062 = !{!1063, !1064}
!1063 = !DILocalVariable(name: "first", scope: !1061, file: !3, line: 459, type: !24)
!1064 = !DILocalVariable(name: "second", scope: !1061, file: !3, line: 460, type: !24)
!1065 = distinct !DILocation(line: 542, column: 3, scope: !1054)
!1066 = !DILocation(line: 460, column: 3, scope: !1061, inlinedAt: !1065)
!1067 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 461, column: 8, scope: !1061, inlinedAt: !1065)
!1069 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1068)
!1070 = !DILocation(line: 461, column: 26, scope: !1061, inlinedAt: !1065)
!1071 = !DILocation(line: 461, column: 6, scope: !1061, inlinedAt: !1065)
!1072 = !DILocation(line: 459, column: 15, scope: !1061, inlinedAt: !1065)
!1073 = !DILocation(line: 463, column: 3, scope: !1061, inlinedAt: !1065)
!1074 = !DILocation(line: 460, column: 15, scope: !1061, inlinedAt: !1065)
!1075 = !DILocation(line: 464, column: 3, scope: !1061, inlinedAt: !1065)
!1076 = !DILocation(line: 467, column: 1, scope: !1061, inlinedAt: !1065)
!1077 = !DILocation(line: 543, column: 3, scope: !1054)
!1078 = distinct !DISubprogram(name: "first_timer", scope: !3, file: !3, line: 326, type: !64, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084}
!1080 = !DILocalVariable(name: "i", arg: 1, scope: !1078, file: !3, line: 326, type: !33)
!1081 = !DILocalVariable(name: "o", arg: 2, scope: !1078, file: !3, line: 326, type: !66)
!1082 = !DILocalVariable(name: "a", scope: !1078, file: !3, line: 329, type: !50)
!1083 = !DILocalVariable(name: "start", scope: !1078, file: !3, line: 330, type: !29)
!1084 = !DILocalVariable(name: "end", scope: !1078, file: !3, line: 331, type: !29)
!1085 = !DILocation(line: 326, column: 24, scope: !1078)
!1086 = !DILocation(line: 326, column: 34, scope: !1078)
!1087 = !DILocation(line: 328, column: 19, scope: !1078)
!1088 = !DILocation(line: 328, column: 3, scope: !1078)
!1089 = !DILocation(line: 329, column: 7, scope: !1078)
!1090 = !DILocation(line: 330, column: 12, scope: !1078)
!1091 = !DILocation(line: 331, column: 12, scope: !1078)
!1092 = !DILocation(line: 332, column: 3, scope: !1078)
!1093 = !DILocation(line: 333, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 333, column: 9)
!1095 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 332, column: 15)
!1096 = !DILocation(line: 333, column: 9, scope: !1095)
!1097 = !DILocation(line: 268, column: 5, scope: !1098, inlinedAt: !1105)
!1098 = distinct !DISubprogram(name: "rdtsc", scope: !1099, file: !1099, line: 265, type: !1100, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1099 = !DIFile(filename: "include/nautilus/cpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!29}
!1102 = !{!1103, !1104}
!1103 = !DILocalVariable(name: "lo", scope: !1098, file: !1099, line: 267, type: !43)
!1104 = !DILocalVariable(name: "hi", scope: !1098, file: !1099, line: 267, type: !43)
!1105 = distinct !DILocation(line: 334, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 333, column: 17)
!1107 = !{i32 97027}
!1108 = !DILocation(line: 267, column: 14, scope: !1098, inlinedAt: !1105)
!1109 = !DILocation(line: 267, column: 18, scope: !1098, inlinedAt: !1105)
!1110 = !DILocation(line: 269, column: 12, scope: !1098, inlinedAt: !1105)
!1111 = !DILocation(line: 269, column: 18, scope: !1098, inlinedAt: !1105)
!1112 = !DILocation(line: 269, column: 33, scope: !1098, inlinedAt: !1105)
!1113 = !DILocation(line: 269, column: 15, scope: !1098, inlinedAt: !1105)
!1114 = !DILocation(line: 335, column: 5, scope: !1106)
!1115 = !DILocation(line: 0, scope: !1078)
!1116 = !DILocation(line: 336, column: 5, scope: !1095)
!1117 = !DILocation(line: 337, column: 6, scope: !1095)
!1118 = !DILocation(line: 332, column: 11, scope: !1078)
!1119 = distinct !{!1119, !1092, !1120}
!1120 = !DILocation(line: 338, column: 3, scope: !1078)
!1121 = !DILocation(line: 268, column: 5, scope: !1098, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 339, column: 9, scope: !1078)
!1123 = !DILocation(line: 267, column: 14, scope: !1098, inlinedAt: !1122)
!1124 = !DILocation(line: 267, column: 18, scope: !1098, inlinedAt: !1122)
!1125 = !DILocation(line: 269, column: 12, scope: !1098, inlinedAt: !1122)
!1126 = !DILocation(line: 269, column: 18, scope: !1098, inlinedAt: !1122)
!1127 = !DILocation(line: 269, column: 33, scope: !1098, inlinedAt: !1122)
!1128 = !DILocation(line: 269, column: 15, scope: !1098, inlinedAt: !1122)
!1129 = !DILocation(line: 340, column: 104, scope: !1078)
!1130 = !DILocation(line: 340, column: 123, scope: !1078)
!1131 = !DILocation(line: 340, column: 3, scope: !1078)
!1132 = !DILocation(line: 341, column: 1, scope: !1078)
!1133 = distinct !DISubprogram(name: "second_timer", scope: !3, file: !3, line: 343, type: !64, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "i", arg: 1, scope: !1133, file: !3, line: 343, type: !33)
!1136 = !DILocalVariable(name: "o", arg: 2, scope: !1133, file: !3, line: 343, type: !66)
!1137 = !DILocalVariable(name: "a", scope: !1133, file: !3, line: 346, type: !50)
!1138 = !DILocation(line: 343, column: 25, scope: !1133)
!1139 = !DILocation(line: 343, column: 35, scope: !1133)
!1140 = !DILocation(line: 345, column: 19, scope: !1133)
!1141 = !DILocation(line: 345, column: 3, scope: !1133)
!1142 = !DILocation(line: 346, column: 7, scope: !1133)
!1143 = !DILocation(line: 347, column: 3, scope: !1133)
!1144 = !DILocation(line: 348, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 347, column: 15)
!1146 = !DILocation(line: 349, column: 6, scope: !1145)
!1147 = !DILocation(line: 347, column: 11, scope: !1133)
!1148 = distinct !{!1148, !1143, !1149}
!1149 = !DILocation(line: 350, column: 3, scope: !1133)
!1150 = !DILocation(line: 351, column: 3, scope: !1133)
!1151 = !DILocation(line: 352, column: 1, scope: !1133)
!1152 = distinct !DISubprogram(name: "handle_fibers", scope: !3, file: !3, line: 473, type: !141, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1153)
!1153 = !{!1154, !1155}
!1154 = !DILocalVariable(name: "buf", arg: 1, scope: !1152, file: !3, line: 473, type: !137)
!1155 = !DILocalVariable(name: "priv", arg: 2, scope: !1152, file: !3, line: 473, type: !33)
!1156 = !DILocation(line: 473, column: 23, scope: !1152)
!1157 = !DILocation(line: 473, column: 35, scope: !1152)
!1158 = !DILocation(line: 378, column: 3, scope: !1159, inlinedAt: !1164)
!1159 = distinct !DISubprogram(name: "test_fibers", scope: !3, file: !3, line: 376, type: !561, scopeLine: 377, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DILocalVariable(name: "f1", scope: !1159, file: !3, line: 378, type: !24)
!1162 = !DILocalVariable(name: "f2", scope: !1159, file: !3, line: 379, type: !24)
!1163 = !DILocalVariable(name: "f3", scope: !1159, file: !3, line: 380, type: !24)
!1164 = distinct !DILocation(line: 475, column: 3, scope: !1152)
!1165 = !DILocation(line: 379, column: 3, scope: !1159, inlinedAt: !1164)
!1166 = !DILocation(line: 380, column: 3, scope: !1159, inlinedAt: !1164)
!1167 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 381, column: 8, scope: !1159, inlinedAt: !1164)
!1169 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1168)
!1170 = !DILocation(line: 381, column: 26, scope: !1159, inlinedAt: !1164)
!1171 = !DILocation(line: 381, column: 6, scope: !1159, inlinedAt: !1164)
!1172 = !DILocation(line: 382, column: 3, scope: !1159, inlinedAt: !1164)
!1173 = !DILocation(line: 378, column: 15, scope: !1159, inlinedAt: !1164)
!1174 = !DILocation(line: 383, column: 3, scope: !1159, inlinedAt: !1164)
!1175 = !DILocation(line: 379, column: 15, scope: !1159, inlinedAt: !1164)
!1176 = !DILocation(line: 384, column: 3, scope: !1159, inlinedAt: !1164)
!1177 = !DILocation(line: 380, column: 15, scope: !1159, inlinedAt: !1164)
!1178 = !DILocation(line: 385, column: 3, scope: !1159, inlinedAt: !1164)
!1179 = !DILocation(line: 387, column: 1, scope: !1159, inlinedAt: !1164)
!1180 = !DILocation(line: 477, column: 3, scope: !1152)
!1181 = distinct !DISubprogram(name: "fiber1", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1182 = !{!1183, !1184, !1185, !1186}
!1183 = !DILocalVariable(name: "i", arg: 1, scope: !1181, file: !3, line: 144, type: !33)
!1184 = !DILocalVariable(name: "o", arg: 2, scope: !1181, file: !3, line: 144, type: !66)
!1185 = !DILocalVariable(name: "a", scope: !1181, file: !3, line: 147, type: !50)
!1186 = !DILocalVariable(name: "f3", scope: !1181, file: !3, line: 154, type: !24)
!1187 = !DILocation(line: 144, column: 19, scope: !1181)
!1188 = !DILocation(line: 144, column: 29, scope: !1181)
!1189 = !DILocation(line: 146, column: 19, scope: !1181)
!1190 = !DILocation(line: 146, column: 3, scope: !1181)
!1191 = !DILocation(line: 147, column: 7, scope: !1181)
!1192 = !DILocation(line: 149, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 148, column: 15)
!1194 = !DILocation(line: 151, column: 5, scope: !1193)
!1195 = !DILocation(line: 153, column: 3, scope: !1181)
!1196 = !DILocation(line: 154, column: 3, scope: !1181)
!1197 = !DILocation(line: 154, column: 15, scope: !1181)
!1198 = !DILocation(line: 155, column: 3, scope: !1181)
!1199 = !DILocation(line: 156, column: 1, scope: !1181)
!1200 = distinct !DISubprogram(name: "fiber2", scope: !3, file: !3, line: 159, type: !64, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DILocalVariable(name: "i", arg: 1, scope: !1200, file: !3, line: 159, type: !33)
!1203 = !DILocalVariable(name: "o", arg: 2, scope: !1200, file: !3, line: 159, type: !66)
!1204 = !DILocalVariable(name: "a", scope: !1200, file: !3, line: 162, type: !50)
!1205 = !DILocalVariable(name: "f4", scope: !1200, file: !3, line: 168, type: !24)
!1206 = !DILocation(line: 159, column: 19, scope: !1200)
!1207 = !DILocation(line: 159, column: 29, scope: !1200)
!1208 = !DILocation(line: 161, column: 19, scope: !1200)
!1209 = !DILocation(line: 161, column: 3, scope: !1200)
!1210 = !DILocation(line: 162, column: 7, scope: !1200)
!1211 = !DILocation(line: 164, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 163, column: 16)
!1213 = !DILocation(line: 165, column: 5, scope: !1212)
!1214 = !DILocation(line: 167, column: 3, scope: !1200)
!1215 = !DILocation(line: 168, column: 3, scope: !1200)
!1216 = !DILocation(line: 168, column: 15, scope: !1200)
!1217 = !DILocation(line: 169, column: 3, scope: !1200)
!1218 = !DILocation(line: 170, column: 1, scope: !1200)
!1219 = distinct !DISubprogram(name: "fiber3", scope: !3, file: !3, line: 131, type: !64, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DILocalVariable(name: "i", arg: 1, scope: !1219, file: !3, line: 131, type: !33)
!1222 = !DILocalVariable(name: "o", arg: 2, scope: !1219, file: !3, line: 131, type: !66)
!1223 = !DILocalVariable(name: "a", scope: !1219, file: !3, line: 134, type: !50)
!1224 = !DILocalVariable(name: "f4", scope: !1219, file: !3, line: 140, type: !24)
!1225 = !DILocation(line: 131, column: 19, scope: !1219)
!1226 = !DILocation(line: 131, column: 29, scope: !1219)
!1227 = !DILocation(line: 133, column: 19, scope: !1219)
!1228 = !DILocation(line: 133, column: 3, scope: !1219)
!1229 = !DILocation(line: 134, column: 7, scope: !1219)
!1230 = !DILocation(line: 136, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 135, column: 15)
!1232 = !DILocation(line: 137, column: 5, scope: !1231)
!1233 = !DILocation(line: 139, column: 3, scope: !1219)
!1234 = !DILocation(line: 140, column: 3, scope: !1219)
!1235 = !DILocation(line: 140, column: 15, scope: !1219)
!1236 = !DILocation(line: 141, column: 3, scope: !1219)
!1237 = !DILocation(line: 142, column: 1, scope: !1219)
!1238 = distinct !DISubprogram(name: "fiber4", scope: !3, file: !3, line: 119, type: !64, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DILocalVariable(name: "i", arg: 1, scope: !1238, file: !3, line: 119, type: !33)
!1241 = !DILocalVariable(name: "o", arg: 2, scope: !1238, file: !3, line: 119, type: !66)
!1242 = !DILocalVariable(name: "a", scope: !1238, file: !3, line: 122, type: !50)
!1243 = !DILocation(line: 119, column: 19, scope: !1238)
!1244 = !DILocation(line: 119, column: 29, scope: !1238)
!1245 = !DILocation(line: 121, column: 19, scope: !1238)
!1246 = !DILocation(line: 121, column: 3, scope: !1238)
!1247 = !DILocation(line: 122, column: 7, scope: !1238)
!1248 = !DILocation(line: 124, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 123, column: 16)
!1250 = !DILocation(line: 125, column: 5, scope: !1249)
!1251 = !DILocation(line: 127, column: 3, scope: !1238)
!1252 = !DILocation(line: 128, column: 1, scope: !1238)
!1253 = distinct !DISubprogram(name: "souradip", scope: !3, file: !3, line: 45, type: !1254, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!50, !50}
!1256 = !{!1257, !1258, !1259}
!1257 = !DILocalVariable(name: "a", arg: 1, scope: !1253, file: !3, line: 45, type: !50)
!1258 = !DILocalVariable(name: "i", scope: !1253, file: !3, line: 47, type: !50)
!1259 = !DILocalVariable(name: "b", scope: !1253, file: !3, line: 47, type: !50)
!1260 = !DILocation(line: 45, column: 18, scope: !1253)
!1261 = !DILocation(line: 47, column: 10, scope: !1253)
!1262 = !DILocation(line: 47, column: 7, scope: !1253)
!1263 = !DILocation(line: 49, column: 16, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 49, column: 3)
!1265 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 49, column: 3)
!1266 = !DILocation(line: 49, column: 3, scope: !1265)
!1267 = !DILocation(line: 51, column: 5, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 50, column: 3)
!1269 = !DILocation(line: 49, column: 22, scope: !1264)
!1270 = distinct !{!1270, !1266, !1271}
!1271 = !DILocation(line: 53, column: 3, scope: !1265)
!1272 = !DILocation(line: 0, scope: !1253)
!1273 = !DILocation(line: 55, column: 3, scope: !1253)
!1274 = !DILocation(line: 358, column: 3, scope: !943)
!1275 = !DILocation(line: 359, column: 3, scope: !943)
!1276 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 360, column: 8, scope: !943)
!1278 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1277)
!1279 = !DILocation(line: 360, column: 26, scope: !943)
!1280 = !DILocation(line: 360, column: 6, scope: !943)
!1281 = !DILocation(line: 358, column: 15, scope: !943)
!1282 = !DILocation(line: 361, column: 3, scope: !943)
!1283 = !DILocation(line: 359, column: 15, scope: !943)
!1284 = !DILocation(line: 362, column: 3, scope: !943)
!1285 = !DILocation(line: 365, column: 1, scope: !943)
!1286 = !DILocation(line: 364, column: 3, scope: !943)
!1287 = !DILocation(line: 369, column: 3, scope: !1005)
!1288 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 370, column: 8, scope: !1005)
!1290 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1289)
!1291 = !DILocation(line: 370, column: 26, scope: !1005)
!1292 = !DILocation(line: 370, column: 6, scope: !1005)
!1293 = !DILocation(line: 371, column: 3, scope: !1005)
!1294 = !DILocation(line: 369, column: 15, scope: !1005)
!1295 = !DILocation(line: 372, column: 3, scope: !1005)
!1296 = !DILocation(line: 374, column: 1, scope: !1005)
!1297 = !DILocation(line: 373, column: 3, scope: !1005)
!1298 = !DILocation(line: 378, column: 3, scope: !1159)
!1299 = !DILocation(line: 379, column: 3, scope: !1159)
!1300 = !DILocation(line: 380, column: 3, scope: !1159)
!1301 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 381, column: 8, scope: !1159)
!1303 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1302)
!1304 = !DILocation(line: 381, column: 26, scope: !1159)
!1305 = !DILocation(line: 381, column: 6, scope: !1159)
!1306 = !DILocation(line: 382, column: 3, scope: !1159)
!1307 = !DILocation(line: 378, column: 15, scope: !1159)
!1308 = !DILocation(line: 383, column: 3, scope: !1159)
!1309 = !DILocation(line: 379, column: 15, scope: !1159)
!1310 = !DILocation(line: 384, column: 3, scope: !1159)
!1311 = !DILocation(line: 380, column: 15, scope: !1159)
!1312 = !DILocation(line: 385, column: 3, scope: !1159)
!1313 = !DILocation(line: 387, column: 1, scope: !1159)
!1314 = !DILocation(line: 386, column: 3, scope: !1159)
!1315 = !DILocation(line: 415, column: 3, scope: !756)
!1316 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 416, column: 8, scope: !756)
!1318 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1317)
!1319 = !DILocation(line: 416, column: 26, scope: !756)
!1320 = !DILocation(line: 416, column: 6, scope: !756)
!1321 = !DILocation(line: 417, column: 3, scope: !756)
!1322 = !DILocation(line: 415, column: 15, scope: !756)
!1323 = !DILocation(line: 418, column: 3, scope: !756)
!1324 = !DILocation(line: 420, column: 1, scope: !756)
!1325 = !DILocation(line: 419, column: 3, scope: !756)
!1326 = !DILocation(line: 424, column: 3, scope: !717)
!1327 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 425, column: 8, scope: !717)
!1329 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1328)
!1330 = !DILocation(line: 425, column: 26, scope: !717)
!1331 = !DILocation(line: 425, column: 6, scope: !717)
!1332 = !DILocation(line: 426, column: 3, scope: !717)
!1333 = !DILocation(line: 424, column: 15, scope: !717)
!1334 = !DILocation(line: 427, column: 3, scope: !717)
!1335 = !DILocation(line: 429, column: 1, scope: !717)
!1336 = !DILocation(line: 428, column: 3, scope: !717)
!1337 = !DILocation(line: 433, column: 3, scope: !670)
!1338 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 434, column: 8, scope: !670)
!1340 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1339)
!1341 = !DILocation(line: 434, column: 26, scope: !670)
!1342 = !DILocation(line: 434, column: 6, scope: !670)
!1343 = !DILocation(line: 435, column: 3, scope: !670)
!1344 = !DILocation(line: 433, column: 15, scope: !670)
!1345 = !DILocation(line: 436, column: 3, scope: !670)
!1346 = !DILocation(line: 438, column: 1, scope: !670)
!1347 = !DILocation(line: 437, column: 3, scope: !670)
!1348 = !DILocation(line: 442, column: 3, scope: !611)
!1349 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 443, column: 8, scope: !611)
!1351 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1350)
!1352 = !DILocation(line: 443, column: 26, scope: !611)
!1353 = !DILocation(line: 443, column: 6, scope: !611)
!1354 = !DILocation(line: 444, column: 3, scope: !611)
!1355 = !DILocation(line: 442, column: 15, scope: !611)
!1356 = !DILocation(line: 445, column: 3, scope: !611)
!1357 = !DILocation(line: 447, column: 1, scope: !611)
!1358 = !DILocation(line: 446, column: 3, scope: !611)
!1359 = !DILocation(line: 451, column: 3, scope: !560)
!1360 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 452, column: 8, scope: !560)
!1362 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1361)
!1363 = !DILocation(line: 452, column: 26, scope: !560)
!1364 = !DILocation(line: 452, column: 6, scope: !560)
!1365 = !DILocation(line: 453, column: 3, scope: !560)
!1366 = !DILocation(line: 451, column: 15, scope: !560)
!1367 = !DILocation(line: 454, column: 3, scope: !560)
!1368 = !DILocation(line: 456, column: 1, scope: !560)
!1369 = !DILocation(line: 455, column: 3, scope: !560)
!1370 = !DILocation(line: 459, column: 3, scope: !1061)
!1371 = !DILocation(line: 460, column: 3, scope: !1061)
!1372 = !DILocation(line: 258, column: 26, scope: !567, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 461, column: 8, scope: !1061)
!1374 = !DILocation(line: 258, column: 26, scope: !568, inlinedAt: !1373)
!1375 = !DILocation(line: 461, column: 26, scope: !1061)
!1376 = !DILocation(line: 461, column: 6, scope: !1061)
!1377 = !DILocation(line: 459, column: 15, scope: !1061)
!1378 = !DILocation(line: 463, column: 3, scope: !1061)
!1379 = !DILocation(line: 460, column: 15, scope: !1061)
!1380 = !DILocation(line: 464, column: 3, scope: !1061)
!1381 = !DILocation(line: 467, column: 1, scope: !1061)
!1382 = !DILocation(line: 466, column: 3, scope: !1061)
!1383 = distinct !DISubprogram(name: "_get_fiber_state", scope: !182, file: !182, line: 76, type: !1384, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !182, line: 66, baseType: !335)
!1388 = !{}
!1389 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1394)
!1390 = distinct !DISubprogram(name: "get_cpu", scope: !1391, file: !1391, line: 127, type: !1392, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1391 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!324}
!1394 = distinct !DILocation(line: 78, column: 10, scope: !1383)
!1395 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1394)
!1396 = !DILocation(line: 78, column: 21, scope: !1383)
!1397 = !DILocation(line: 78, column: 3, scope: !1383)
!1398 = distinct !DISubprogram(name: "nk_fiber_current", scope: !182, file: !182, line: 83, type: !1399, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!296}
!1401 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 85, column: 10, scope: !1398)
!1404 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1402)
!1405 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1403)
!1406 = !DILocation(line: 85, column: 30, scope: !1398)
!1407 = !DILocation(line: 85, column: 3, scope: !1398)
!1408 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !182, file: !182, line: 90, type: !1399, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1409 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 92, column: 10, scope: !1408)
!1412 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1410)
!1413 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1411)
!1414 = !DILocation(line: 92, column: 30, scope: !1408)
!1415 = !DILocation(line: 92, column: 3, scope: !1408)
!1416 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !182, file: !182, line: 96, type: !1417, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!339}
!1419 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 98, column: 10, scope: !1416)
!1422 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1420)
!1423 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1421)
!1424 = !DILocation(line: 98, column: 30, scope: !1416)
!1425 = !DILocation(line: 98, column: 3, scope: !1416)
!1426 = distinct !DISubprogram(name: "_get_sched_head", scope: !182, file: !182, line: 103, type: !1427, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!205}
!1429 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 105, column: 12, scope: !1426)
!1432 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1430)
!1433 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1431)
!1434 = !DILocation(line: 105, column: 32, scope: !1426)
!1435 = !DILocation(line: 105, column: 3, scope: !1426)
!1436 = distinct !DISubprogram(name: "_fiber_push", scope: !182, file: !182, line: 113, type: !1437, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !296, !29}
!1439 = !{!1440, !1441}
!1440 = !DILocalVariable(name: "f", arg: 1, scope: !1436, file: !182, line: 113, type: !296)
!1441 = !DILocalVariable(name: "x", arg: 2, scope: !1436, file: !182, line: 113, type: !29)
!1442 = !DILocation(line: 113, column: 31, scope: !1436)
!1443 = !DILocation(line: 113, column: 43, scope: !1436)
!1444 = !DILocation(line: 115, column: 8, scope: !1436)
!1445 = !DILocation(line: 115, column: 12, scope: !1436)
!1446 = !DILocation(line: 116, column: 6, scope: !1436)
!1447 = !DILocation(line: 116, column: 26, scope: !1436)
!1448 = !DILocation(line: 117, column: 1, scope: !1436)
!1449 = distinct !DISubprogram(name: "_rr_policy", scope: !182, file: !182, line: 119, type: !1399, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1450)
!1450 = !{!1451, !1452, !1453, !1457}
!1451 = !DILocalVariable(name: "fiber_sched_queue", scope: !1449, file: !182, line: 122, type: !205)
!1452 = !DILocalVariable(name: "fiber_to_schedule", scope: !1449, file: !182, line: 125, type: !296)
!1453 = !DILocalVariable(name: "first", scope: !1454, file: !182, line: 128, type: !296)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !182, line: 128, column: 25)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !182, line: 126, column: 40)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !182, line: 126, column: 7)
!1457 = !DILocalVariable(name: "__mptr", scope: !1458, file: !182, line: 128, type: !1461)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !182, line: 128, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !182, line: 128, column: 25)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !182, line: 128, column: 25)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!1463 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 122, column: 41, scope: !1449)
!1467 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1464)
!1468 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1465)
!1469 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !1466)
!1470 = !DILocation(line: 122, column: 21, scope: !1449)
!1471 = !DILocation(line: 125, column: 15, scope: !1449)
!1472 = !DILocalVariable(name: "head", arg: 1, scope: !1473, file: !53, line: 184, type: !1461)
!1473 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1474, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1476)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!50, !1461}
!1476 = !{!1472}
!1477 = !DILocation(line: 184, column: 54, scope: !1473, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 126, column: 9, scope: !1456)
!1479 = !DILocation(line: 186, column: 15, scope: !1473, inlinedAt: !1478)
!1480 = !DILocation(line: 186, column: 20, scope: !1473, inlinedAt: !1478)
!1481 = !DILocation(line: 126, column: 7, scope: !1449)
!1482 = !DILocation(line: 128, column: 25, scope: !1454)
!1483 = !DILocation(line: 131, column: 40, scope: !1455)
!1484 = !DILocalVariable(name: "entry", arg: 1, scope: !1485, file: !53, line: 151, type: !205)
!1485 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !1486, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !205}
!1488 = !{!1484}
!1489 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 131, column: 5, scope: !1455)
!1491 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !1490)
!1492 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !1490)
!1493 = !DILocalVariable(name: "prev", arg: 1, scope: !1494, file: !53, line: 128, type: !205)
!1494 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1495, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !205, !205}
!1497 = !{!1493, !1498}
!1498 = !DILocalVariable(name: "next", arg: 2, scope: !1494, file: !53, line: 128, type: !205)
!1499 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !1490)
!1501 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !1500)
!1502 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !1500)
!1503 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !1500)
!1504 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !1500)
!1505 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !1500)
!1506 = !DILocalVariable(name: "list", arg: 1, scope: !1507, file: !53, line: 73, type: !205)
!1507 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !1486, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1508)
!1508 = !{!1506}
!1509 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !1490)
!1511 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !1510)
!1512 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !1510)
!1513 = !DILocation(line: 132, column: 3, scope: !1455)
!1514 = !DILocation(line: 0, scope: !1449)
!1515 = !DILocation(line: 139, column: 3, scope: !1449)
!1516 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !182, file: !182, line: 144, type: !1517, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !296}
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1527}
!1520 = !DILocalVariable(name: "f", arg: 1, scope: !1516, file: !182, line: 144, type: !296)
!1521 = !DILocalVariable(name: "next", scope: !1516, file: !182, line: 149, type: !296)
!1522 = !DILocalVariable(name: "temp", scope: !1516, file: !182, line: 155, type: !296)
!1523 = !DILocalVariable(name: "waitq", scope: !1516, file: !182, line: 156, type: !205)
!1524 = !DILocalVariable(name: "first", scope: !1525, file: !182, line: 163, type: !296)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !182, line: 163, column: 12)
!1526 = distinct !DILexicalBlock(scope: !1516, file: !182, line: 160, column: 25)
!1527 = !DILocalVariable(name: "__mptr", scope: !1528, file: !182, line: 163, type: !1461)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !182, line: 163, column: 12)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !182, line: 163, column: 12)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !182, line: 163, column: 12)
!1531 = !DILocation(line: 144, column: 33, scope: !1516)
!1532 = !DILocation(line: 147, column: 6, scope: !1516)
!1533 = !DILocation(line: 147, column: 15, scope: !1516)
!1534 = !DILocation(line: 149, column: 15, scope: !1516)
!1535 = !DILocation(line: 156, column: 34, scope: !1516)
!1536 = !DILocation(line: 156, column: 21, scope: !1516)
!1537 = !DILocation(line: 160, column: 12, scope: !1516)
!1538 = !DILocation(line: 160, column: 21, scope: !1516)
!1539 = !DILocation(line: 160, column: 3, scope: !1516)
!1540 = !DILocation(line: 163, column: 12, scope: !1525)
!1541 = !DILocation(line: 163, column: 12, scope: !1530)
!1542 = !DILocation(line: 155, column: 15, scope: !1516)
!1543 = !DILocation(line: 164, column: 27, scope: !1526)
!1544 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 164, column: 5, scope: !1526)
!1546 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !1545)
!1547 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !1545)
!1548 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !1545)
!1550 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !1549)
!1551 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !1549)
!1552 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !1549)
!1553 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !1549)
!1554 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !1549)
!1555 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !1545)
!1557 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !1556)
!1558 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !1556)
!1559 = !DILocation(line: 165, column: 16, scope: !1526)
!1560 = !DILocation(line: 168, column: 9, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1526, file: !182, line: 168, column: 9)
!1562 = !DILocation(line: 168, column: 9, scope: !1526)
!1563 = !DILocalVariable(name: "f", arg: 1, scope: !1564, file: !182, line: 663, type: !296)
!1564 = distinct !DISubprogram(name: "nk_fiber_run", scope: !182, file: !182, line: 663, type: !1565, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!50, !296, !70}
!1567 = !{!1563, !1568, !1569, !1570}
!1568 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1564, file: !182, line: 663, type: !70)
!1569 = !DILocalVariable(name: "curr_thread", scope: !1564, file: !182, line: 666, type: !339)
!1570 = !DILocalVariable(name: "fiber_sched_queue", scope: !1564, file: !182, line: 674, type: !205)
!1571 = !DILocation(line: 663, column: 30, scope: !1564, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 171, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1561, file: !182, line: 168, column: 14)
!1574 = !DILocation(line: 663, column: 41, scope: !1564, inlinedAt: !1572)
!1575 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 98, column: 10, scope: !1416, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 666, column: 30, scope: !1564, inlinedAt: !1572)
!1579 = !DILocation(line: 666, column: 16, scope: !1564, inlinedAt: !1572)
!1580 = !DILocation(line: 366, column: 29, scope: !1581, inlinedAt: !1588)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !182, line: 366, column: 29)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !182, line: 366, column: 29)
!1583 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !182, file: !182, line: 363, type: !561, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DILocalVariable(name: "sys", scope: !1583, file: !182, line: 366, type: !318)
!1586 = !DILocalVariable(name: "__r", scope: !1582, file: !182, line: 366, type: !318)
!1587 = !DILocalVariable(name: "__r", scope: !1581, file: !182, line: 366, type: !318)
!1588 = distinct !DILocation(line: 373, column: 20, scope: !1589, inlinedAt: !1597)
!1589 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !182, file: !182, line: 370, type: !1417, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1590)
!1590 = !{!1591, !1592, !1593, !1595}
!1591 = !DILocalVariable(name: "random_cpu", scope: !1589, file: !182, line: 373, type: !50)
!1592 = !DILocalVariable(name: "sys", scope: !1589, file: !182, line: 374, type: !318)
!1593 = !DILocalVariable(name: "__r", scope: !1594, file: !182, line: 374, type: !318)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !182, line: 374, column: 27)
!1595 = !DILocalVariable(name: "__r", scope: !1596, file: !182, line: 374, type: !318)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !182, line: 374, column: 27)
!1597 = distinct !DILocation(line: 670, column: 19, scope: !1598, inlinedAt: !1572)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !182, line: 669, column: 23)
!1599 = distinct !DILexicalBlock(scope: !1564, file: !182, line: 669, column: 7)
!1600 = !{i32 -2147185111}
!1601 = !DILocation(line: 366, column: 29, scope: !1582, inlinedAt: !1588)
!1602 = !DILocation(line: 366, column: 23, scope: !1583, inlinedAt: !1588)
!1603 = !DILocation(line: 358, column: 5, scope: !1604, inlinedAt: !1607)
!1604 = distinct !DISubprogram(name: "_get_random", scope: !182, file: !182, line: 356, type: !1100, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1605)
!1605 = !{!1606}
!1606 = !DILocalVariable(name: "t", scope: !1604, file: !182, line: 358, type: !29)
!1607 = distinct !DILocation(line: 367, column: 18, scope: !1583, inlinedAt: !1588)
!1608 = !DILocation(line: 359, column: 5, scope: !1604, inlinedAt: !1607)
!1609 = !DILocation(line: 360, column: 12, scope: !1604, inlinedAt: !1607)
!1610 = !DILocation(line: 358, column: 14, scope: !1604, inlinedAt: !1607)
!1611 = !DILocation(line: 361, column: 1, scope: !1604, inlinedAt: !1607)
!1612 = !DILocation(line: 367, column: 39, scope: !1583, inlinedAt: !1588)
!1613 = !DILocation(line: 367, column: 34, scope: !1583, inlinedAt: !1588)
!1614 = !DILocation(line: 367, column: 32, scope: !1583, inlinedAt: !1588)
!1615 = !DILocation(line: 374, column: 27, scope: !1596, inlinedAt: !1597)
!1616 = !{i32 -2147182110}
!1617 = !DILocation(line: 374, column: 27, scope: !1594, inlinedAt: !1597)
!1618 = !DILocation(line: 374, column: 21, scope: !1589, inlinedAt: !1597)
!1619 = !DILocation(line: 375, column: 10, scope: !1589, inlinedAt: !1597)
!1620 = !DILocation(line: 0, scope: !1564, inlinedAt: !1572)
!1621 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 674, column: 41, scope: !1564, inlinedAt: !1572)
!1625 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1622)
!1626 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1623)
!1627 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !1624)
!1628 = !DILocation(line: 674, column: 21, scope: !1564, inlinedAt: !1572)
!1629 = !DILocation(line: 678, column: 6, scope: !1564, inlinedAt: !1572)
!1630 = !DILocation(line: 678, column: 15, scope: !1564, inlinedAt: !1572)
!1631 = !DILocation(line: 679, column: 22, scope: !1564, inlinedAt: !1572)
!1632 = !DILocalVariable(name: "nelm", arg: 1, scope: !1633, file: !53, line: 116, type: !205)
!1633 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1495, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1634)
!1634 = !{!1632, !1635}
!1635 = !DILocalVariable(name: "head", arg: 2, scope: !1633, file: !53, line: 116, type: !205)
!1636 = !DILocation(line: 116, column: 52, scope: !1633, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 679, column: 3, scope: !1564, inlinedAt: !1572)
!1638 = !DILocation(line: 116, column: 76, scope: !1633, inlinedAt: !1637)
!1639 = !DILocation(line: 118, column: 25, scope: !1633, inlinedAt: !1637)
!1640 = !DILocalVariable(name: "nelm", arg: 1, scope: !1641, file: !53, line: 85, type: !205)
!1641 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1642, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !205, !205, !205}
!1644 = !{!1640, !1645, !1646}
!1645 = !DILocalVariable(name: "prev", arg: 2, scope: !1641, file: !53, line: 86, type: !205)
!1646 = !DILocalVariable(name: "next", arg: 3, scope: !1641, file: !53, line: 87, type: !205)
!1647 = !DILocation(line: 85, column: 49, scope: !1641, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 118, column: 2, scope: !1633, inlinedAt: !1637)
!1649 = !DILocation(line: 86, column: 28, scope: !1641, inlinedAt: !1648)
!1650 = !DILocation(line: 87, column: 28, scope: !1641, inlinedAt: !1648)
!1651 = !DILocation(line: 89, column: 13, scope: !1641, inlinedAt: !1648)
!1652 = !DILocation(line: 90, column: 8, scope: !1641, inlinedAt: !1648)
!1653 = !DILocation(line: 90, column: 13, scope: !1641, inlinedAt: !1648)
!1654 = !DILocation(line: 91, column: 8, scope: !1641, inlinedAt: !1648)
!1655 = !DILocation(line: 91, column: 13, scope: !1641, inlinedAt: !1648)
!1656 = !DILocation(line: 92, column: 8, scope: !1641, inlinedAt: !1648)
!1657 = !DILocation(line: 92, column: 13, scope: !1641, inlinedAt: !1648)
!1658 = !DILocation(line: 683, column: 20, scope: !1659, inlinedAt: !1572)
!1659 = distinct !DILexicalBlock(scope: !1564, file: !182, line: 683, column: 7)
!1660 = !DILocation(line: 683, column: 7, scope: !1659, inlinedAt: !1572)
!1661 = !DILocation(line: 683, column: 7, scope: !1564, inlinedAt: !1572)
!1662 = !DILocation(line: 687, column: 5, scope: !1663, inlinedAt: !1572)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !182, line: 683, column: 26)
!1664 = !DILocation(line: 688, column: 3, scope: !1663, inlinedAt: !1572)
!1665 = distinct !{!1665, !1539, !1666}
!1666 = !DILocation(line: 173, column: 3, scope: !1516)
!1667 = !DILocation(line: 175, column: 6, scope: !1516)
!1668 = !DILocation(line: 175, column: 14, scope: !1516)
!1669 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 122, column: 41, scope: !1449, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 179, column: 10, scope: !1516)
!1674 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1670)
!1675 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1671)
!1676 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !1672)
!1677 = !DILocation(line: 122, column: 21, scope: !1449, inlinedAt: !1673)
!1678 = !DILocation(line: 125, column: 15, scope: !1449, inlinedAt: !1673)
!1679 = !DILocation(line: 184, column: 54, scope: !1473, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 126, column: 9, scope: !1456, inlinedAt: !1673)
!1681 = !DILocation(line: 186, column: 15, scope: !1473, inlinedAt: !1680)
!1682 = !DILocation(line: 186, column: 20, scope: !1473, inlinedAt: !1680)
!1683 = !DILocation(line: 126, column: 7, scope: !1449, inlinedAt: !1673)
!1684 = !DILocation(line: 128, column: 25, scope: !1454, inlinedAt: !1673)
!1685 = !DILocation(line: 131, column: 40, scope: !1455, inlinedAt: !1673)
!1686 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 131, column: 5, scope: !1455, inlinedAt: !1673)
!1688 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !1687)
!1689 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !1687)
!1690 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !1687)
!1692 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !1691)
!1693 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !1691)
!1694 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !1691)
!1695 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !1691)
!1696 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !1691)
!1697 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !1687)
!1699 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !1698)
!1700 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !1698)
!1701 = !DILocation(line: 180, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1516, file: !182, line: 180, column: 7)
!1703 = !DILocation(line: 180, column: 7, scope: !1516)
!1704 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 181, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !182, line: 180, column: 16)
!1709 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1705)
!1710 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1706)
!1711 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !1707)
!1712 = !DILocation(line: 182, column: 3, scope: !1708)
!1713 = !DILocation(line: 0, scope: !1516)
!1714 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 183, column: 3, scope: !1516)
!1717 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1715)
!1718 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1716)
!1719 = !DILocation(line: 183, column: 23, scope: !1516)
!1720 = !DILocation(line: 183, column: 34, scope: !1516)
!1721 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 186, column: 19, scope: !1516)
!1724 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1722)
!1725 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1723)
!1726 = !DILocation(line: 186, column: 39, scope: !1516)
!1727 = !DILocation(line: 186, column: 51, scope: !1516)
!1728 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 186, column: 3, scope: !1516)
!1730 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !1729)
!1731 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !1729)
!1732 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !1729)
!1734 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !1733)
!1735 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !1733)
!1736 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !1733)
!1737 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !1733)
!1738 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !1733)
!1739 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !1729)
!1741 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !1740)
!1742 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !1740)
!1743 = !DILocation(line: 189, column: 3, scope: !1516)
!1744 = !DILocation(line: 190, column: 3, scope: !1516)
!1745 = !DILocation(line: 193, column: 3, scope: !1516)
!1746 = !DILocation(line: 196, column: 1, scope: !1516)
!1747 = !DILocation(line: 663, column: 30, scope: !1564)
!1748 = !DILocation(line: 663, column: 41, scope: !1564)
!1749 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 98, column: 10, scope: !1416, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 666, column: 30, scope: !1564)
!1753 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1750)
!1754 = !DILocation(line: 666, column: 16, scope: !1564)
!1755 = !DILocation(line: 669, column: 7, scope: !1599)
!1756 = !DILocation(line: 669, column: 7, scope: !1564)
!1757 = !DILocation(line: 366, column: 29, scope: !1581, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 373, column: 20, scope: !1589, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 670, column: 19, scope: !1598)
!1760 = !DILocation(line: 366, column: 29, scope: !1582, inlinedAt: !1758)
!1761 = !DILocation(line: 366, column: 23, scope: !1583, inlinedAt: !1758)
!1762 = !DILocation(line: 358, column: 5, scope: !1604, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 367, column: 18, scope: !1583, inlinedAt: !1758)
!1764 = !DILocation(line: 359, column: 5, scope: !1604, inlinedAt: !1763)
!1765 = !DILocation(line: 360, column: 12, scope: !1604, inlinedAt: !1763)
!1766 = !DILocation(line: 358, column: 14, scope: !1604, inlinedAt: !1763)
!1767 = !DILocation(line: 361, column: 1, scope: !1604, inlinedAt: !1763)
!1768 = !DILocation(line: 367, column: 39, scope: !1583, inlinedAt: !1758)
!1769 = !DILocation(line: 367, column: 34, scope: !1583, inlinedAt: !1758)
!1770 = !DILocation(line: 367, column: 32, scope: !1583, inlinedAt: !1758)
!1771 = !DILocation(line: 374, column: 27, scope: !1596, inlinedAt: !1759)
!1772 = !DILocation(line: 374, column: 27, scope: !1594, inlinedAt: !1759)
!1773 = !DILocation(line: 374, column: 21, scope: !1589, inlinedAt: !1759)
!1774 = !DILocation(line: 375, column: 10, scope: !1589, inlinedAt: !1759)
!1775 = !DILocation(line: 671, column: 3, scope: !1598)
!1776 = !DILocation(line: 0, scope: !1564)
!1777 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 674, column: 41, scope: !1564)
!1781 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1778)
!1782 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1779)
!1783 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !1780)
!1784 = !DILocation(line: 674, column: 21, scope: !1564)
!1785 = !DILocation(line: 678, column: 6, scope: !1564)
!1786 = !DILocation(line: 678, column: 15, scope: !1564)
!1787 = !DILocation(line: 679, column: 22, scope: !1564)
!1788 = !DILocation(line: 116, column: 52, scope: !1633, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 679, column: 3, scope: !1564)
!1790 = !DILocation(line: 116, column: 76, scope: !1633, inlinedAt: !1789)
!1791 = !DILocation(line: 118, column: 25, scope: !1633, inlinedAt: !1789)
!1792 = !DILocation(line: 85, column: 49, scope: !1641, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 118, column: 2, scope: !1633, inlinedAt: !1789)
!1794 = !DILocation(line: 86, column: 28, scope: !1641, inlinedAt: !1793)
!1795 = !DILocation(line: 87, column: 28, scope: !1641, inlinedAt: !1793)
!1796 = !DILocation(line: 89, column: 13, scope: !1641, inlinedAt: !1793)
!1797 = !DILocation(line: 90, column: 8, scope: !1641, inlinedAt: !1793)
!1798 = !DILocation(line: 90, column: 13, scope: !1641, inlinedAt: !1793)
!1799 = !DILocation(line: 91, column: 8, scope: !1641, inlinedAt: !1793)
!1800 = !DILocation(line: 91, column: 13, scope: !1641, inlinedAt: !1793)
!1801 = !DILocation(line: 92, column: 8, scope: !1641, inlinedAt: !1793)
!1802 = !DILocation(line: 92, column: 13, scope: !1641, inlinedAt: !1793)
!1803 = !DILocation(line: 683, column: 20, scope: !1659)
!1804 = !DILocation(line: 683, column: 7, scope: !1659)
!1805 = !DILocation(line: 683, column: 7, scope: !1564)
!1806 = !DILocation(line: 687, column: 5, scope: !1663)
!1807 = !DILocation(line: 688, column: 3, scope: !1663)
!1808 = !DILocation(line: 690, column: 3, scope: !1564)
!1809 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !182, file: !182, line: 198, type: !1517, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1810)
!1810 = !{!1811}
!1811 = !DILocalVariable(name: "f_to", arg: 1, scope: !1809, file: !182, line: 198, type: !296)
!1812 = !DILocation(line: 198, column: 33, scope: !1809)
!1813 = !DILocation(line: 202, column: 9, scope: !1809)
!1814 = !DILocation(line: 202, column: 19, scope: !1809)
!1815 = !DILocation(line: 202, column: 32, scope: !1809)
!1816 = !DILocation(line: 202, column: 3, scope: !1809)
!1817 = !DILocation(line: 208, column: 3, scope: !1809)
!1818 = !DILocation(line: 210, column: 3, scope: !1809)
!1819 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !182, file: !182, line: 274, type: !1517, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1820)
!1820 = !{!1821}
!1821 = !DILocalVariable(name: "f", arg: 1, scope: !1819, file: !182, line: 274, type: !296)
!1822 = !DILocation(line: 274, column: 33, scope: !1819)
!1823 = !DILocation(line: 276, column: 26, scope: !1819)
!1824 = !DILocation(line: 276, column: 37, scope: !1819)
!1825 = !DILocation(line: 276, column: 6, scope: !1819)
!1826 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 277, column: 3, scope: !1819)
!1828 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1827)
!1829 = !DILocation(line: 276, column: 32, scope: !1819)
!1830 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1827)
!1831 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1827)
!1832 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1827)
!1833 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 278, column: 3, scope: !1819)
!1835 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1834)
!1836 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1834)
!1837 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1834)
!1838 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1834)
!1839 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 279, column: 3, scope: !1819)
!1841 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1840)
!1842 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1840)
!1843 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1840)
!1844 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1840)
!1845 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 280, column: 3, scope: !1819)
!1847 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1846)
!1848 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1846)
!1849 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1846)
!1850 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1846)
!1851 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 281, column: 3, scope: !1819)
!1853 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1852)
!1854 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1852)
!1855 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1852)
!1856 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1852)
!1857 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 282, column: 3, scope: !1819)
!1859 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1858)
!1860 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1858)
!1861 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1858)
!1862 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1858)
!1863 = !DILocation(line: 283, column: 18, scope: !1819)
!1864 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 283, column: 3, scope: !1819)
!1866 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1865)
!1867 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1865)
!1868 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1865)
!1869 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1865)
!1870 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 284, column: 3, scope: !1819)
!1872 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1871)
!1873 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1871)
!1874 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1871)
!1875 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1871)
!1876 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 285, column: 3, scope: !1819)
!1878 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1877)
!1879 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1877)
!1880 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1877)
!1881 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1877)
!1882 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 286, column: 3, scope: !1819)
!1884 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1883)
!1885 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1883)
!1886 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1883)
!1887 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1883)
!1888 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 287, column: 3, scope: !1819)
!1890 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1889)
!1891 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1889)
!1892 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1889)
!1893 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1889)
!1894 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 288, column: 3, scope: !1819)
!1896 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1895)
!1897 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1895)
!1898 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1895)
!1899 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1895)
!1900 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 289, column: 3, scope: !1819)
!1902 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1901)
!1903 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1901)
!1904 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1901)
!1905 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1901)
!1906 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 290, column: 3, scope: !1819)
!1908 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1907)
!1909 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1907)
!1910 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1907)
!1911 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1907)
!1912 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 291, column: 3, scope: !1819)
!1914 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1913)
!1915 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1913)
!1916 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1913)
!1917 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1913)
!1918 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 292, column: 3, scope: !1819)
!1920 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !1919)
!1921 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !1919)
!1922 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !1919)
!1923 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !1919)
!1924 = !DILocation(line: 294, column: 3, scope: !1819)
!1925 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !182, file: !182, line: 299, type: !1926, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!50, !296}
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "f_to", arg: 1, scope: !1925, file: !182, line: 299, type: !296)
!1930 = !DILocalVariable(name: "f_from", scope: !1925, file: !182, line: 302, type: !296)
!1931 = !DILocalVariable(name: "fiber_sched_queue", scope: !1932, file: !182, line: 312, type: !205)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !182, line: 310, column: 63)
!1933 = distinct !DILexicalBlock(scope: !1925, file: !182, line: 310, column: 7)
!1934 = !DILocation(line: 299, column: 36, scope: !1925)
!1935 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 302, column: 24, scope: !1925)
!1939 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1936)
!1940 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1937)
!1941 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !1938)
!1942 = !DILocation(line: 302, column: 15, scope: !1925)
!1943 = !DILocation(line: 305, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1925, file: !182, line: 305, column: 7)
!1945 = !DILocation(line: 305, column: 32, scope: !1944)
!1946 = !DILocation(line: 306, column: 22, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !182, line: 305, column: 61)
!1948 = !DILocation(line: 307, column: 3, scope: !1947)
!1949 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 310, column: 17, scope: !1933)
!1953 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1950)
!1954 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1951)
!1955 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !1952)
!1956 = !DILocation(line: 310, column: 14, scope: !1933)
!1957 = !DILocation(line: 310, column: 34, scope: !1933)
!1958 = !DILocation(line: 310, column: 45, scope: !1933)
!1959 = !DILocation(line: 310, column: 54, scope: !1933)
!1960 = !DILocation(line: 310, column: 7, scope: !1925)
!1961 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 312, column: 43, scope: !1932)
!1965 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !1962)
!1966 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !1963)
!1967 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !1964)
!1968 = !DILocation(line: 312, column: 23, scope: !1932)
!1969 = !DILocation(line: 318, column: 29, scope: !1932)
!1970 = !DILocation(line: 116, column: 52, scope: !1633, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 318, column: 5, scope: !1932)
!1972 = !DILocation(line: 116, column: 76, scope: !1633, inlinedAt: !1971)
!1973 = !DILocation(line: 118, column: 25, scope: !1633, inlinedAt: !1971)
!1974 = !DILocation(line: 85, column: 49, scope: !1641, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 118, column: 2, scope: !1633, inlinedAt: !1971)
!1976 = !DILocation(line: 86, column: 28, scope: !1641, inlinedAt: !1975)
!1977 = !DILocation(line: 87, column: 28, scope: !1641, inlinedAt: !1975)
!1978 = !DILocation(line: 89, column: 13, scope: !1641, inlinedAt: !1975)
!1979 = !DILocation(line: 90, column: 8, scope: !1641, inlinedAt: !1975)
!1980 = !DILocation(line: 90, column: 13, scope: !1641, inlinedAt: !1975)
!1981 = !DILocation(line: 91, column: 8, scope: !1641, inlinedAt: !1975)
!1982 = !DILocation(line: 91, column: 13, scope: !1641, inlinedAt: !1975)
!1983 = !DILocation(line: 92, column: 8, scope: !1641, inlinedAt: !1975)
!1984 = !DILocation(line: 92, column: 13, scope: !1641, inlinedAt: !1975)
!1985 = !DILocation(line: 319, column: 3, scope: !1932)
!1986 = !DILocation(line: 323, column: 16, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1925, file: !182, line: 323, column: 7)
!1988 = !DILocation(line: 323, column: 8, scope: !1987)
!1989 = !DILocation(line: 323, column: 7, scope: !1925)
!1990 = !DILocation(line: 324, column: 29, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !182, line: 323, column: 24)
!1992 = !DILocalVariable(name: "vc", arg: 1, scope: !1993, file: !182, line: 906, type: !47)
!1993 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !182, file: !182, line: 906, type: !1994, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !47}
!1996 = !{!1992, !1997}
!1997 = !DILocalVariable(name: "curr_fiber", scope: !1993, file: !182, line: 909, type: !296)
!1998 = !DILocation(line: 906, column: 49, scope: !1993, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 324, column: 5, scope: !1991)
!2000 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 909, column: 28, scope: !1993, inlinedAt: !1999)
!2004 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2001)
!2005 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2002)
!2006 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !2003)
!2007 = !DILocation(line: 909, column: 15, scope: !1993, inlinedAt: !1999)
!2008 = !DILocation(line: 912, column: 15, scope: !1993, inlinedAt: !1999)
!2009 = !DILocation(line: 912, column: 18, scope: !1993, inlinedAt: !1999)
!2010 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2017)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !16, line: 258, column: 26)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !16, line: 258, column: 26)
!2013 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !1417, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2014)
!2014 = !{!2015, !2016}
!2015 = !DILocalVariable(name: "__r", scope: !2012, file: !16, line: 258, type: !215)
!2016 = !DILocalVariable(name: "__r", scope: !2011, file: !16, line: 258, type: !215)
!2017 = distinct !DILocation(line: 913, column: 3, scope: !1993, inlinedAt: !1999)
!2018 = !{i32 -2147260791}
!2019 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2017)
!2020 = !DILocation(line: 913, column: 21, scope: !1993, inlinedAt: !1999)
!2021 = !DILocation(line: 913, column: 24, scope: !1993, inlinedAt: !1999)
!2022 = !DILocation(line: 325, column: 3, scope: !1991)
!2023 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 328, column: 3, scope: !1925)
!2026 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2024)
!2027 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2025)
!2028 = !DILocation(line: 328, column: 23, scope: !1925)
!2029 = !DILocation(line: 328, column: 34, scope: !1925)
!2030 = !DILocation(line: 329, column: 20, scope: !1925)
!2031 = !DILocation(line: 330, column: 9, scope: !1925)
!2032 = !DILocation(line: 330, column: 18, scope: !1925)
!2033 = !DILocation(line: 331, column: 3, scope: !1925)
!2034 = !DILocation(line: 333, column: 3, scope: !1925)
!2035 = !DILocation(line: 906, column: 49, scope: !1993)
!2036 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 909, column: 28, scope: !1993)
!2040 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2037)
!2041 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2038)
!2042 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !2039)
!2043 = !DILocation(line: 909, column: 15, scope: !1993)
!2044 = !DILocation(line: 912, column: 15, scope: !1993)
!2045 = !DILocation(line: 912, column: 18, scope: !1993)
!2046 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 913, column: 3, scope: !1993)
!2048 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2047)
!2049 = !DILocation(line: 913, column: 21, scope: !1993)
!2050 = !DILocation(line: 913, column: 24, scope: !1993)
!2051 = !DILocation(line: 914, column: 1, scope: !1993)
!2052 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !182, file: !182, line: 336, type: !2053, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null}
!2055 = !{!2056}
!2056 = !DILocalVariable(name: "curr", scope: !2052, file: !182, line: 338, type: !296)
!2057 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 338, column: 22, scope: !2052)
!2061 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2058)
!2062 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2059)
!2063 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !2060)
!2064 = !DILocation(line: 338, column: 15, scope: !2052)
!2065 = !DILocation(line: 340, column: 3, scope: !2052)
!2066 = !DILocation(line: 341, column: 1, scope: !2052)
!2067 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !182, file: !182, line: 343, type: !2068, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!70, !296}
!2070 = !{!2071, !2072, !2073}
!2071 = !DILocalVariable(name: "f", arg: 1, scope: !2067, file: !182, line: 343, type: !296)
!2072 = !DILocalVariable(name: "idle_fiber", scope: !2067, file: !182, line: 345, type: !296)
!2073 = !DILocalVariable(name: "result", scope: !2067, file: !182, line: 348, type: !70)
!2074 = !DILocation(line: 343, column: 36, scope: !2067)
!2075 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 345, column: 28, scope: !2067)
!2079 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2076)
!2080 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2077)
!2081 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !2078)
!2082 = !DILocation(line: 345, column: 15, scope: !2067)
!2083 = !DILocation(line: 348, column: 11, scope: !2067)
!2084 = !DILocation(line: 349, column: 18, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2067, file: !182, line: 349, column: 7)
!2086 = !DILocation(line: 349, column: 7, scope: !2067)
!2087 = !DILocation(line: 353, column: 3, scope: !2067)
!2088 = !DILocation(line: 366, column: 29, scope: !1581, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 373, column: 20, scope: !1589)
!2090 = !DILocation(line: 366, column: 29, scope: !1582, inlinedAt: !2089)
!2091 = !DILocation(line: 366, column: 23, scope: !1583, inlinedAt: !2089)
!2092 = !DILocation(line: 358, column: 5, scope: !1604, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 367, column: 18, scope: !1583, inlinedAt: !2089)
!2094 = !DILocation(line: 359, column: 5, scope: !1604, inlinedAt: !2093)
!2095 = !DILocation(line: 360, column: 12, scope: !1604, inlinedAt: !2093)
!2096 = !DILocation(line: 358, column: 14, scope: !1604, inlinedAt: !2093)
!2097 = !DILocation(line: 361, column: 1, scope: !1604, inlinedAt: !2093)
!2098 = !DILocation(line: 367, column: 39, scope: !1583, inlinedAt: !2089)
!2099 = !DILocation(line: 367, column: 34, scope: !1583, inlinedAt: !2089)
!2100 = !DILocation(line: 367, column: 32, scope: !1583, inlinedAt: !2089)
!2101 = !DILocation(line: 374, column: 27, scope: !1596)
!2102 = !DILocation(line: 374, column: 27, scope: !1594)
!2103 = !DILocation(line: 374, column: 21, scope: !1589)
!2104 = !DILocation(line: 375, column: 10, scope: !1589)
!2105 = !DILocation(line: 375, column: 33, scope: !1589)
!2106 = !DILocation(line: 375, column: 42, scope: !1589)
!2107 = !DILocation(line: 375, column: 3, scope: !1589)
!2108 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !182, file: !182, line: 383, type: !1926, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2109)
!2109 = !{!2110, !2111, !2112, !2114, !2116, !2117, !2118, !2119, !2121, !2126}
!2110 = !DILocalVariable(name: "to_del", arg: 1, scope: !2108, file: !182, line: 383, type: !296)
!2111 = !DILocalVariable(name: "sys", scope: !2108, file: !182, line: 386, type: !318)
!2112 = !DILocalVariable(name: "__r", scope: !2113, file: !182, line: 386, type: !318)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !182, line: 386, column: 26)
!2114 = !DILocalVariable(name: "__r", scope: !2115, file: !182, line: 386, type: !318)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !182, line: 386, column: 26)
!2116 = !DILocalVariable(name: "cpu_iter", scope: !2108, file: !182, line: 387, type: !50)
!2117 = !DILocalVariable(name: "temp", scope: !2108, file: !182, line: 390, type: !205)
!2118 = !DILocalVariable(name: "test", scope: !2108, file: !182, line: 391, type: !296)
!2119 = !DILocalVariable(name: "iter", scope: !2120, file: !182, line: 392, type: !50)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !182, line: 392, column: 3)
!2121 = !DILocalVariable(name: "__mptr", scope: !2122, file: !182, line: 395, type: !1461)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !182, line: 395, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !182, line: 395, column: 5)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !182, line: 392, column: 46)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !182, line: 392, column: 3)
!2126 = !DILocalVariable(name: "__mptr", scope: !2127, file: !182, line: 395, type: !1461)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !182, line: 395, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !182, line: 395, column: 5)
!2129 = !DILocation(line: 383, column: 42, scope: !2108)
!2130 = !DILocation(line: 386, column: 26, scope: !2115)
!2131 = !{i32 -2147179109}
!2132 = !DILocation(line: 386, column: 26, scope: !2113)
!2133 = !DILocation(line: 386, column: 20, scope: !2108)
!2134 = !DILocation(line: 387, column: 23, scope: !2108)
!2135 = !DILocation(line: 387, column: 7, scope: !2108)
!2136 = !DILocation(line: 392, column: 12, scope: !2120)
!2137 = !DILocation(line: 392, column: 27, scope: !2125)
!2138 = !DILocation(line: 392, column: 3, scope: !2120)
!2139 = !DILocation(line: 394, column: 14, scope: !2124)
!2140 = !DILocation(line: 394, column: 31, scope: !2124)
!2141 = !DILocation(line: 394, column: 40, scope: !2124)
!2142 = !DILocation(line: 390, column: 21, scope: !2108)
!2143 = !DILocation(line: 395, column: 5, scope: !2122)
!2144 = !DILocation(line: 391, column: 15, scope: !2108)
!2145 = !DILocation(line: 0, scope: !2123)
!2146 = !DILocation(line: 395, column: 5, scope: !2123)
!2147 = !DILocation(line: 395, column: 5, scope: !2128)
!2148 = !DILocation(line: 400, column: 16, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !182, line: 400, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2128, file: !182, line: 395, column: 48)
!2151 = !DILocation(line: 400, column: 11, scope: !2150)
!2152 = distinct !{!2152, !2146, !2153}
!2153 = !DILocation(line: 404, column: 5, scope: !2123)
!2154 = !DILocation(line: 392, column: 43, scope: !2125)
!2155 = distinct !{!2155, !2138, !2156}
!2156 = !DILocation(line: 405, column: 3, scope: !2120)
!2157 = !DILocation(line: 401, column: 33, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2149, file: !182, line: 400, column: 26)
!2159 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 401, column: 9, scope: !2158)
!2161 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !2160)
!2162 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !2160)
!2163 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !2160)
!2165 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !2164)
!2166 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !2164)
!2167 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !2164)
!2168 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !2164)
!2169 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !2164)
!2170 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !2160)
!2172 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !2171)
!2173 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !2171)
!2174 = !DILocation(line: 408, column: 1, scope: !2108)
!2175 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !182, file: !182, line: 435, type: !561, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2176)
!2176 = !{!2177, !2178, !2180, !2182, !2183, !2189, !2190, !2195, !2197, !2200, !2202}
!2177 = !DILocalVariable(name: "id", scope: !2175, file: !182, line: 437, type: !345)
!2178 = !DILocalVariable(name: "__r", scope: !2179, file: !182, line: 437, type: !345)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !182, line: 437, column: 19)
!2180 = !DILocalVariable(name: "__r", scope: !2181, file: !182, line: 437, type: !345)
!2181 = distinct !DILexicalBlock(scope: !2179, file: !182, line: 437, column: 19)
!2182 = !DILocalVariable(name: "my_cpu", scope: !2175, file: !182, line: 438, type: !324)
!2183 = !DILocalVariable(name: "_p", scope: !2184, file: !182, line: 444, type: !50)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !182, line: 444, column: 2)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !182, line: 444, column: 2)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !182, line: 444, column: 2)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !182, line: 443, column: 29)
!2188 = distinct !DILexicalBlock(scope: !2175, file: !182, line: 443, column: 9)
!2189 = !DILocalVariable(name: "_t", scope: !2184, file: !182, line: 444, type: !215)
!2190 = !DILocalVariable(name: "__r", scope: !2191, file: !182, line: 444, type: !345)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !182, line: 444, column: 2)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !182, line: 444, column: 2)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !182, line: 444, column: 2)
!2194 = distinct !DILexicalBlock(scope: !2184, file: !182, line: 444, column: 2)
!2195 = !DILocalVariable(name: "__r", scope: !2196, file: !182, line: 444, type: !345)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !182, line: 444, column: 2)
!2197 = !DILocalVariable(name: "__r", scope: !2198, file: !182, line: 444, type: !345)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !182, line: 444, column: 2)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !182, line: 444, column: 2)
!2200 = !DILocalVariable(name: "__r", scope: !2201, file: !182, line: 444, type: !345)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !182, line: 444, column: 2)
!2202 = !DILocalVariable(name: "_p", scope: !2203, file: !182, line: 444, type: !50)
!2203 = distinct !DILexicalBlock(scope: !2185, file: !182, line: 444, column: 2)
!2204 = !DILocation(line: 437, column: 19, scope: !2181)
!2205 = !{i32 -2147162346}
!2206 = !DILocation(line: 437, column: 19, scope: !2179)
!2207 = !DILocation(line: 437, column: 14, scope: !2175)
!2208 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 438, column: 27, scope: !2175)
!2210 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2209)
!2211 = !DILocation(line: 438, column: 18, scope: !2175)
!2212 = !DILocation(line: 442, column: 23, scope: !2175)
!2213 = !DILocation(line: 442, column: 13, scope: !2175)
!2214 = !DILocation(line: 442, column: 21, scope: !2175)
!2215 = !DILocation(line: 443, column: 10, scope: !2188)
!2216 = !DILocation(line: 443, column: 9, scope: !2175)
!2217 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2222)
!2218 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2219, file: !2219, line: 39, type: !2220, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!2219 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!33}
!2222 = distinct !DILocation(line: 444, column: 2, scope: !2185)
!2223 = !DILocation(line: 444, column: 2, scope: !2185)
!2224 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2229)
!2226 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2219, file: !2219, line: 82, type: !561, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2227)
!2227 = !{!2228}
!2228 = !DILocalVariable(name: "base", scope: !2226, file: !2219, line: 84, type: !33)
!2229 = distinct !DILocation(line: 0, scope: !2185)
!2230 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2229)
!2231 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2229)
!2232 = distinct !DILexicalBlock(scope: !2226, file: !2219, line: 85, column: 9)
!2233 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2229)
!2234 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2229)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !2219, line: 85, column: 15)
!2236 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2229)
!2237 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2229)
!2238 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2229)
!2239 = !DILocation(line: 0, scope: !2232, inlinedAt: !2229)
!2240 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2245)
!2242 = distinct !DISubprogram(name: "preempt_disable", scope: !2219, file: !2219, line: 46, type: !2053, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2243)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "base", scope: !2242, file: !2219, line: 48, type: !33)
!2245 = distinct !DILocation(line: 0, scope: !2185)
!2246 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2245)
!2247 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2245)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !2219, line: 49, column: 9)
!2249 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2245)
!2250 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2245)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !2219, line: 49, column: 15)
!2252 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2245)
!2253 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2245)
!2254 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2245)
!2255 = !DILocation(line: 444, column: 2, scope: !2186)
!2256 = !DILocation(line: 444, column: 2, scope: !2184)
!2257 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 444, column: 2, scope: !2184)
!2259 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2258)
!2260 = !DILocation(line: 444, column: 2, scope: !2193)
!2261 = !DILocation(line: 0, scope: !2193)
!2262 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2269)
!2264 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2219, file: !2219, line: 94, type: !2265, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!35}
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "base", scope: !2264, file: !2219, line: 96, type: !33)
!2269 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2271)
!2270 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2219, file: !2219, line: 105, type: !561, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!2271 = distinct !DILocation(line: 0, scope: !2193)
!2272 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2269)
!2273 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2269)
!2274 = distinct !DILexicalBlock(scope: !2264, file: !2219, line: 97, column: 9)
!2275 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2269)
!2276 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2269)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !2219, line: 97, column: 15)
!2278 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2269)
!2279 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2269)
!2280 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2269)
!2281 = !DILocation(line: 444, column: 2, scope: !2194)
!2282 = !DILocation(line: 444, column: 2, scope: !2192)
!2283 = !DILocation(line: 444, column: 2, scope: !2199)
!2284 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2289)
!2286 = distinct !DISubprogram(name: "preempt_enable", scope: !2219, file: !2219, line: 57, type: !2053, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2287)
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "base", scope: !2286, file: !2219, line: 59, type: !33)
!2289 = distinct !DILocation(line: 444, column: 2, scope: !2184)
!2290 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2289)
!2291 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2289)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !2219, line: 60, column: 9)
!2293 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2289)
!2294 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2289)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !2219, line: 60, column: 15)
!2296 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2289)
!2297 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2289)
!2298 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2289)
!2299 = !DILocation(line: 444, column: 2, scope: !2203)
!2300 = !DILocation(line: 444, column: 2, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !182, line: 444, column: 2)
!2302 = distinct !DILexicalBlock(scope: !2203, file: !182, line: 444, column: 2)
!2303 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 0, scope: !2301)
!2307 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2305)
!2308 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2305)
!2309 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2305)
!2310 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2305)
!2311 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2305)
!2312 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2305)
!2313 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2305)
!2314 = !DILocation(line: 0, scope: !2301)
!2315 = !DILocation(line: 444, column: 2, scope: !2302)
!2316 = !DILocation(line: 444, column: 2, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2301, file: !182, line: 444, column: 2)
!2318 = !DILocation(line: 444, column: 2, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2301, file: !182, line: 444, column: 2)
!2320 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 444, column: 2, scope: !2203)
!2323 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2322)
!2324 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2322)
!2325 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2322)
!2326 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2322)
!2327 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2322)
!2328 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2322)
!2329 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2322)
!2330 = !DILocation(line: 0, scope: !2175)
!2331 = !DILocation(line: 449, column: 1, scope: !2175)
!2332 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !182, file: !182, line: 410, type: !2333, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!334}
!2335 = !{!2336, !2337, !2339, !2341, !2343, !2349, !2350, !2355, !2357, !2360, !2362}
!2336 = !DILocalVariable(name: "state", scope: !2332, file: !182, line: 412, type: !334)
!2337 = !DILocalVariable(name: "p", scope: !2338, file: !182, line: 412, type: !33)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !182, line: 412, column: 74)
!2339 = !DILocalVariable(name: "__r", scope: !2340, file: !182, line: 412, type: !345)
!2340 = distinct !DILexicalBlock(scope: !2338, file: !182, line: 412, column: 74)
!2341 = !DILocalVariable(name: "__r", scope: !2342, file: !182, line: 412, type: !345)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !182, line: 412, column: 74)
!2343 = !DILocalVariable(name: "_p", scope: !2344, file: !182, line: 415, type: !50)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !182, line: 415, column: 9)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !182, line: 415, column: 9)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !182, line: 415, column: 9)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !182, line: 414, column: 17)
!2348 = distinct !DILexicalBlock(scope: !2332, file: !182, line: 414, column: 9)
!2349 = !DILocalVariable(name: "_t", scope: !2344, file: !182, line: 415, type: !215)
!2350 = !DILocalVariable(name: "__r", scope: !2351, file: !182, line: 415, type: !345)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !182, line: 415, column: 9)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !182, line: 415, column: 9)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !182, line: 415, column: 9)
!2354 = distinct !DILexicalBlock(scope: !2344, file: !182, line: 415, column: 9)
!2355 = !DILocalVariable(name: "__r", scope: !2356, file: !182, line: 415, type: !345)
!2356 = distinct !DILexicalBlock(scope: !2351, file: !182, line: 415, column: 9)
!2357 = !DILocalVariable(name: "__r", scope: !2358, file: !182, line: 415, type: !345)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !182, line: 415, column: 9)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !182, line: 415, column: 9)
!2360 = !DILocalVariable(name: "__r", scope: !2361, file: !182, line: 415, type: !345)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !182, line: 415, column: 9)
!2362 = !DILocalVariable(name: "_p", scope: !2363, file: !182, line: 415, type: !50)
!2363 = distinct !DILexicalBlock(scope: !2345, file: !182, line: 415, column: 9)
!2364 = !DILocation(line: 412, column: 74, scope: !2342)
!2365 = !{i32 -2147173855}
!2366 = !DILocation(line: 412, column: 74, scope: !2340)
!2367 = !DILocation(line: 412, column: 74, scope: !2338)
!2368 = !DILocation(line: 414, column: 10, scope: !2348)
!2369 = !DILocation(line: 414, column: 9, scope: !2332)
!2370 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 415, column: 9, scope: !2345)
!2372 = !DILocation(line: 415, column: 9, scope: !2345)
!2373 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 0, scope: !2345)
!2376 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2375)
!2377 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2375)
!2378 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2375)
!2379 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2375)
!2380 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2375)
!2381 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2375)
!2382 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2375)
!2383 = !DILocation(line: 0, scope: !2232, inlinedAt: !2375)
!2384 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 0, scope: !2345)
!2387 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2386)
!2388 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2386)
!2389 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2386)
!2390 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2386)
!2391 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2386)
!2392 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2386)
!2393 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2386)
!2394 = !DILocation(line: 415, column: 9, scope: !2346)
!2395 = !DILocation(line: 415, column: 9, scope: !2344)
!2396 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 415, column: 9, scope: !2344)
!2398 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2397)
!2399 = !DILocation(line: 415, column: 9, scope: !2353)
!2400 = !DILocation(line: 0, scope: !2353)
!2401 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 0, scope: !2353)
!2405 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2403)
!2406 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2403)
!2407 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2403)
!2408 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2403)
!2409 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2403)
!2410 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2403)
!2411 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2403)
!2412 = !DILocation(line: 415, column: 9, scope: !2354)
!2413 = !DILocation(line: 415, column: 9, scope: !2352)
!2414 = !DILocation(line: 415, column: 9, scope: !2359)
!2415 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 415, column: 9, scope: !2344)
!2418 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2417)
!2419 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2417)
!2420 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2417)
!2421 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2417)
!2422 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2417)
!2423 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2417)
!2424 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2417)
!2425 = !DILocation(line: 415, column: 9, scope: !2363)
!2426 = !DILocation(line: 415, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !182, line: 415, column: 9)
!2428 = distinct !DILexicalBlock(scope: !2363, file: !182, line: 415, column: 9)
!2429 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 0, scope: !2427)
!2433 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2431)
!2434 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2431)
!2435 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2431)
!2436 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2431)
!2437 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2431)
!2438 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2431)
!2439 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2431)
!2440 = !DILocation(line: 0, scope: !2427)
!2441 = !DILocation(line: 415, column: 9, scope: !2428)
!2442 = !DILocation(line: 415, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2427, file: !182, line: 415, column: 9)
!2444 = !DILocation(line: 415, column: 9, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2427, file: !182, line: 415, column: 9)
!2446 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 415, column: 9, scope: !2363)
!2449 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2448)
!2450 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2448)
!2451 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2448)
!2452 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2448)
!2453 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2448)
!2454 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2448)
!2455 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2448)
!2456 = !DILocation(line: 412, column: 43, scope: !2332)
!2457 = !DILocation(line: 412, column: 35, scope: !2332)
!2458 = !DILocation(line: 419, column: 2, scope: !2332)
!2459 = !DILocation(line: 421, column: 27, scope: !2332)
!2460 = !DILocation(line: 421, column: 5, scope: !2332)
!2461 = !DILocation(line: 424, column: 29, scope: !2332)
!2462 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 424, column: 5, scope: !2332)
!2464 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !2463)
!2465 = !DILocation(line: 76, column: 8, scope: !1507, inlinedAt: !2463)
!2466 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !2463)
!2467 = !DILocation(line: 426, column: 5, scope: !2332)
!2468 = !DILocation(line: 429, column: 5, scope: !2332)
!2469 = !DILocation(line: 431, column: 5, scope: !2332)
!2470 = !DILocation(line: 0, scope: !2332)
!2471 = !DILocation(line: 432, column: 1, scope: !2332)
!2472 = distinct !DISubprogram(name: "nk_fiber_init", scope: !182, file: !182, line: 452, type: !561, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2473)
!2473 = !{!2474, !2475, !2479, !2480, !2485, !2487, !2490, !2492, !2494, !2500, !2501, !2506, !2508, !2511, !2513}
!2474 = !DILocalVariable(name: "my_cpu", scope: !2472, file: !182, line: 454, type: !324)
!2475 = !DILocalVariable(name: "_p", scope: !2476, file: !182, line: 456, type: !50)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !182, line: 456, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !182, line: 456, column: 5)
!2478 = distinct !DILexicalBlock(scope: !2472, file: !182, line: 456, column: 5)
!2479 = !DILocalVariable(name: "_t", scope: !2476, file: !182, line: 456, type: !215)
!2480 = !DILocalVariable(name: "__r", scope: !2481, file: !182, line: 456, type: !345)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !182, line: 456, column: 5)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !182, line: 456, column: 5)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !182, line: 456, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2476, file: !182, line: 456, column: 5)
!2485 = !DILocalVariable(name: "__r", scope: !2486, file: !182, line: 456, type: !345)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !182, line: 456, column: 5)
!2487 = !DILocalVariable(name: "__r", scope: !2488, file: !182, line: 456, type: !345)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !182, line: 456, column: 5)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !182, line: 456, column: 5)
!2490 = !DILocalVariable(name: "__r", scope: !2491, file: !182, line: 456, type: !345)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !182, line: 456, column: 5)
!2492 = !DILocalVariable(name: "_p", scope: !2493, file: !182, line: 456, type: !50)
!2493 = distinct !DILexicalBlock(scope: !2477, file: !182, line: 456, column: 5)
!2494 = !DILocalVariable(name: "_p", scope: !2495, file: !182, line: 464, type: !50)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !182, line: 464, column: 2)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !182, line: 464, column: 2)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !182, line: 464, column: 2)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !182, line: 463, column: 29)
!2499 = distinct !DILexicalBlock(scope: !2472, file: !182, line: 463, column: 9)
!2500 = !DILocalVariable(name: "_t", scope: !2495, file: !182, line: 464, type: !215)
!2501 = !DILocalVariable(name: "__r", scope: !2502, file: !182, line: 464, type: !345)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !182, line: 464, column: 2)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !182, line: 464, column: 2)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !182, line: 464, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2495, file: !182, line: 464, column: 2)
!2506 = !DILocalVariable(name: "__r", scope: !2507, file: !182, line: 464, type: !345)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !182, line: 464, column: 2)
!2508 = !DILocalVariable(name: "__r", scope: !2509, file: !182, line: 464, type: !345)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !182, line: 464, column: 2)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !182, line: 464, column: 2)
!2511 = !DILocalVariable(name: "__r", scope: !2512, file: !182, line: 464, type: !345)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !182, line: 464, column: 2)
!2513 = !DILocalVariable(name: "_p", scope: !2514, file: !182, line: 464, type: !50)
!2514 = distinct !DILexicalBlock(scope: !2496, file: !182, line: 464, column: 2)
!2515 = !DILocation(line: 454, column: 88, scope: !2472)
!2516 = !DILocation(line: 454, column: 27, scope: !2472)
!2517 = !DILocation(line: 454, column: 18, scope: !2472)
!2518 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 456, column: 5, scope: !2477)
!2520 = !DILocation(line: 456, column: 5, scope: !2477)
!2521 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 0, scope: !2477)
!2524 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2523)
!2525 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2523)
!2526 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2523)
!2527 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2523)
!2528 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2523)
!2529 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2523)
!2530 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2523)
!2531 = !DILocation(line: 0, scope: !2232, inlinedAt: !2523)
!2532 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 0, scope: !2477)
!2535 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2534)
!2536 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2534)
!2537 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2534)
!2538 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2534)
!2539 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2534)
!2540 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2534)
!2541 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2534)
!2542 = !DILocation(line: 456, column: 5, scope: !2478)
!2543 = !DILocation(line: 456, column: 5, scope: !2476)
!2544 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 456, column: 5, scope: !2476)
!2546 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2545)
!2547 = !DILocation(line: 456, column: 5, scope: !2483)
!2548 = !DILocation(line: 0, scope: !2483)
!2549 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 0, scope: !2483)
!2553 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2551)
!2554 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2551)
!2555 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2551)
!2556 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2551)
!2557 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2551)
!2558 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2551)
!2559 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2551)
!2560 = !DILocation(line: 456, column: 5, scope: !2484)
!2561 = !DILocation(line: 456, column: 5, scope: !2482)
!2562 = !DILocation(line: 456, column: 5, scope: !2489)
!2563 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 456, column: 5, scope: !2476)
!2566 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2565)
!2567 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2565)
!2568 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2565)
!2569 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2565)
!2570 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2565)
!2571 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2565)
!2572 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2565)
!2573 = !DILocation(line: 456, column: 5, scope: !2493)
!2574 = !DILocation(line: 456, column: 5, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !182, line: 456, column: 5)
!2576 = distinct !DILexicalBlock(scope: !2493, file: !182, line: 456, column: 5)
!2577 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 0, scope: !2575)
!2581 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2579)
!2582 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2579)
!2583 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2579)
!2584 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2579)
!2585 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2579)
!2586 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2579)
!2587 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2579)
!2588 = !DILocation(line: 0, scope: !2575)
!2589 = !DILocation(line: 456, column: 5, scope: !2576)
!2590 = !DILocation(line: 456, column: 5, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2575, file: !182, line: 456, column: 5)
!2592 = !DILocation(line: 456, column: 5, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2575, file: !182, line: 456, column: 5)
!2594 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 456, column: 5, scope: !2493)
!2597 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2596)
!2598 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2596)
!2599 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2596)
!2600 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2596)
!2601 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2596)
!2602 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2596)
!2603 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2596)
!2604 = !DILocation(line: 462, column: 23, scope: !2472)
!2605 = !DILocation(line: 462, column: 13, scope: !2472)
!2606 = !DILocation(line: 462, column: 21, scope: !2472)
!2607 = !DILocation(line: 463, column: 10, scope: !2499)
!2608 = !DILocation(line: 463, column: 9, scope: !2472)
!2609 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 464, column: 2, scope: !2496)
!2611 = !DILocation(line: 464, column: 2, scope: !2496)
!2612 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 0, scope: !2496)
!2615 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2614)
!2616 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2614)
!2617 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2614)
!2618 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2614)
!2619 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2614)
!2620 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2614)
!2621 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2614)
!2622 = !DILocation(line: 0, scope: !2232, inlinedAt: !2614)
!2623 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 0, scope: !2496)
!2626 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2625)
!2627 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2625)
!2628 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2625)
!2629 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2625)
!2630 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2625)
!2631 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2625)
!2632 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2625)
!2633 = !DILocation(line: 464, column: 2, scope: !2497)
!2634 = !DILocation(line: 464, column: 2, scope: !2495)
!2635 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 464, column: 2, scope: !2495)
!2637 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2636)
!2638 = !DILocation(line: 464, column: 2, scope: !2504)
!2639 = !DILocation(line: 0, scope: !2504)
!2640 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 0, scope: !2504)
!2644 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2642)
!2645 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2642)
!2646 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2642)
!2647 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2642)
!2648 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2642)
!2649 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2642)
!2650 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2642)
!2651 = !DILocation(line: 464, column: 2, scope: !2505)
!2652 = !DILocation(line: 464, column: 2, scope: !2503)
!2653 = !DILocation(line: 464, column: 2, scope: !2510)
!2654 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 464, column: 2, scope: !2495)
!2657 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2656)
!2658 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2656)
!2659 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2656)
!2660 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2656)
!2661 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2656)
!2662 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2656)
!2663 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2656)
!2664 = !DILocation(line: 464, column: 2, scope: !2514)
!2665 = !DILocation(line: 464, column: 2, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !182, line: 464, column: 2)
!2667 = distinct !DILexicalBlock(scope: !2514, file: !182, line: 464, column: 2)
!2668 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2670)
!2673 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2670)
!2674 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2670)
!2675 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2670)
!2676 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2670)
!2677 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2670)
!2678 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2670)
!2679 = !DILocation(line: 0, scope: !2666)
!2680 = !DILocation(line: 464, column: 2, scope: !2667)
!2681 = !DILocation(line: 464, column: 2, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2666, file: !182, line: 464, column: 2)
!2683 = !DILocation(line: 464, column: 2, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2666, file: !182, line: 464, column: 2)
!2685 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 464, column: 2, scope: !2514)
!2688 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2687)
!2689 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2687)
!2690 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2687)
!2691 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2687)
!2692 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2687)
!2693 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2687)
!2694 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2687)
!2695 = !DILocation(line: 0, scope: !2472)
!2696 = !DILocation(line: 469, column: 1, scope: !2472)
!2697 = distinct !DISubprogram(name: "__fiber_thread", scope: !182, file: !182, line: 511, type: !64, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2698)
!2698 = !{!2699, !2700, !2701, !2707, !2708, !2713, !2715, !2718, !2720, !2722, !2748, !2754, !2755, !2760, !2762, !2765, !2767, !2769, !2770, !2776, !2777, !2782, !2784, !2787, !2789, !2791, !2792, !2798, !2799, !2804, !2806, !2809, !2811}
!2699 = !DILocalVariable(name: "in", arg: 1, scope: !2697, file: !182, line: 511, type: !33)
!2700 = !DILocalVariable(name: "out", arg: 2, scope: !2697, file: !182, line: 511, type: !66)
!2701 = !DILocalVariable(name: "_p", scope: !2702, file: !182, line: 515, type: !50)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !182, line: 515, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !182, line: 515, column: 5)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !182, line: 515, column: 5)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !182, line: 514, column: 51)
!2706 = distinct !DILexicalBlock(scope: !2697, file: !182, line: 514, column: 7)
!2707 = !DILocalVariable(name: "_t", scope: !2702, file: !182, line: 515, type: !215)
!2708 = !DILocalVariable(name: "__r", scope: !2709, file: !182, line: 515, type: !345)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !182, line: 515, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !182, line: 515, column: 5)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !182, line: 515, column: 5)
!2712 = distinct !DILexicalBlock(scope: !2702, file: !182, line: 515, column: 5)
!2713 = !DILocalVariable(name: "__r", scope: !2714, file: !182, line: 515, type: !345)
!2714 = distinct !DILexicalBlock(scope: !2709, file: !182, line: 515, column: 5)
!2715 = !DILocalVariable(name: "__r", scope: !2716, file: !182, line: 515, type: !345)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !182, line: 515, column: 5)
!2717 = distinct !DILexicalBlock(scope: !2711, file: !182, line: 515, column: 5)
!2718 = !DILocalVariable(name: "__r", scope: !2719, file: !182, line: 515, type: !345)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !182, line: 515, column: 5)
!2720 = !DILocalVariable(name: "_p", scope: !2721, file: !182, line: 515, type: !50)
!2721 = distinct !DILexicalBlock(scope: !2703, file: !182, line: 515, column: 5)
!2722 = !DILocalVariable(name: "c", scope: !2697, file: !182, line: 520, type: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !112, line: 67, size: 320, elements: !2724)
!2724 = !{!2725, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2723, file: !112, line: 68, baseType: !2726, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !112, line: 66, baseType: !289)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2723, file: !112, line: 79, baseType: !70, size: 8, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !112, line: 80, baseType: !2729, size: 256, offset: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2723, file: !112, line: 80, size: 256, elements: !2730)
!2730 = !{!2731, !2737, !2744}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2729, file: !112, line: 81, baseType: !2732, size: 192)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !112, line: 49, size: 192, elements: !2733)
!2733 = !{!2734, !2735, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2732, file: !112, line: 50, baseType: !29, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2732, file: !112, line: 51, baseType: !29, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2732, file: !112, line: 52, baseType: !29, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2729, file: !112, line: 82, baseType: !2738, size: 256)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !112, line: 55, size: 256, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2738, file: !112, line: 56, baseType: !29, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2738, file: !112, line: 57, baseType: !29, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2738, file: !112, line: 58, baseType: !29, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2738, file: !112, line: 59, baseType: !29, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2729, file: !112, line: 83, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !112, line: 62, size: 64, elements: !2746)
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2745, file: !112, line: 63, baseType: !29, size: 64)
!2748 = !DILocalVariable(name: "_p", scope: !2749, file: !182, line: 525, type: !50)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !182, line: 525, column: 5)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !182, line: 525, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !182, line: 525, column: 5)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !182, line: 524, column: 47)
!2753 = distinct !DILexicalBlock(scope: !2697, file: !182, line: 524, column: 7)
!2754 = !DILocalVariable(name: "_t", scope: !2749, file: !182, line: 525, type: !215)
!2755 = !DILocalVariable(name: "__r", scope: !2756, file: !182, line: 525, type: !345)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !182, line: 525, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !182, line: 525, column: 5)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !182, line: 525, column: 5)
!2759 = distinct !DILexicalBlock(scope: !2749, file: !182, line: 525, column: 5)
!2760 = !DILocalVariable(name: "__r", scope: !2761, file: !182, line: 525, type: !345)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !182, line: 525, column: 5)
!2762 = !DILocalVariable(name: "__r", scope: !2763, file: !182, line: 525, type: !345)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !182, line: 525, column: 5)
!2764 = distinct !DILexicalBlock(scope: !2758, file: !182, line: 525, column: 5)
!2765 = !DILocalVariable(name: "__r", scope: !2766, file: !182, line: 525, type: !345)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !182, line: 525, column: 5)
!2767 = !DILocalVariable(name: "_p", scope: !2768, file: !182, line: 525, type: !50)
!2768 = distinct !DILexicalBlock(scope: !2750, file: !182, line: 525, column: 5)
!2769 = !DILocalVariable(name: "state", scope: !2697, file: !182, line: 534, type: !1386)
!2770 = !DILocalVariable(name: "_p", scope: !2771, file: !182, line: 536, type: !50)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !182, line: 536, column: 5)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !182, line: 536, column: 5)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !182, line: 536, column: 5)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !182, line: 535, column: 17)
!2775 = distinct !DILexicalBlock(scope: !2697, file: !182, line: 535, column: 7)
!2776 = !DILocalVariable(name: "_t", scope: !2771, file: !182, line: 536, type: !215)
!2777 = !DILocalVariable(name: "__r", scope: !2778, file: !182, line: 536, type: !345)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !182, line: 536, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !182, line: 536, column: 5)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !182, line: 536, column: 5)
!2781 = distinct !DILexicalBlock(scope: !2771, file: !182, line: 536, column: 5)
!2782 = !DILocalVariable(name: "__r", scope: !2783, file: !182, line: 536, type: !345)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !182, line: 536, column: 5)
!2784 = !DILocalVariable(name: "__r", scope: !2785, file: !182, line: 536, type: !345)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !182, line: 536, column: 5)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !182, line: 536, column: 5)
!2787 = !DILocalVariable(name: "__r", scope: !2788, file: !182, line: 536, type: !345)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !182, line: 536, column: 5)
!2789 = !DILocalVariable(name: "_p", scope: !2790, file: !182, line: 536, type: !50)
!2790 = distinct !DILexicalBlock(scope: !2772, file: !182, line: 536, column: 5)
!2791 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2697, file: !182, line: 541, type: !296)
!2792 = !DILocalVariable(name: "_p", scope: !2793, file: !182, line: 543, type: !50)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !182, line: 543, column: 5)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !182, line: 543, column: 5)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !182, line: 543, column: 5)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !182, line: 542, column: 71)
!2797 = distinct !DILexicalBlock(scope: !2697, file: !182, line: 542, column: 7)
!2798 = !DILocalVariable(name: "_t", scope: !2793, file: !182, line: 543, type: !215)
!2799 = !DILocalVariable(name: "__r", scope: !2800, file: !182, line: 543, type: !345)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !182, line: 543, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !182, line: 543, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !182, line: 543, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2793, file: !182, line: 543, column: 5)
!2804 = !DILocalVariable(name: "__r", scope: !2805, file: !182, line: 543, type: !345)
!2805 = distinct !DILexicalBlock(scope: !2800, file: !182, line: 543, column: 5)
!2806 = !DILocalVariable(name: "__r", scope: !2807, file: !182, line: 543, type: !345)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !182, line: 543, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !182, line: 543, column: 5)
!2809 = !DILocalVariable(name: "__r", scope: !2810, file: !182, line: 543, type: !345)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !182, line: 543, column: 5)
!2811 = !DILocalVariable(name: "_p", scope: !2812, file: !182, line: 543, type: !50)
!2812 = distinct !DILexicalBlock(scope: !2794, file: !182, line: 543, column: 5)
!2813 = !DILocation(line: 511, column: 27, scope: !2697)
!2814 = !DILocation(line: 511, column: 38, scope: !2697)
!2815 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 514, column: 22, scope: !2706)
!2817 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2816)
!2818 = !DILocation(line: 514, column: 22, scope: !2706)
!2819 = !DILocation(line: 514, column: 7, scope: !2706)
!2820 = !DILocation(line: 514, column: 7, scope: !2697)
!2821 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 515, column: 5, scope: !2703)
!2823 = !DILocation(line: 515, column: 5, scope: !2703)
!2824 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 0, scope: !2703)
!2827 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2826)
!2828 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2826)
!2829 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2826)
!2830 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2826)
!2831 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2826)
!2832 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2826)
!2833 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2826)
!2834 = !DILocation(line: 0, scope: !2232, inlinedAt: !2826)
!2835 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 0, scope: !2703)
!2838 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2837)
!2839 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2837)
!2840 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2837)
!2841 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2837)
!2842 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2837)
!2843 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2837)
!2844 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2837)
!2845 = !DILocation(line: 515, column: 5, scope: !2704)
!2846 = !DILocation(line: 515, column: 5, scope: !2702)
!2847 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 515, column: 5, scope: !2702)
!2849 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2848)
!2850 = !DILocation(line: 515, column: 5, scope: !2711)
!2851 = !DILocation(line: 0, scope: !2711)
!2852 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 0, scope: !2711)
!2856 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2854)
!2857 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2854)
!2858 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2854)
!2859 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2854)
!2860 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2854)
!2861 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2854)
!2862 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2854)
!2863 = !DILocation(line: 515, column: 5, scope: !2712)
!2864 = !DILocation(line: 515, column: 5, scope: !2710)
!2865 = !DILocation(line: 515, column: 5, scope: !2717)
!2866 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 515, column: 5, scope: !2702)
!2869 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2868)
!2870 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2868)
!2871 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2868)
!2872 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2868)
!2873 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2868)
!2874 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2868)
!2875 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2868)
!2876 = !DILocation(line: 515, column: 5, scope: !2721)
!2877 = !DILocation(line: 515, column: 5, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !182, line: 515, column: 5)
!2879 = distinct !DILexicalBlock(scope: !2721, file: !182, line: 515, column: 5)
!2880 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 0, scope: !2878)
!2884 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2882)
!2885 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2882)
!2886 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2882)
!2887 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2882)
!2888 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2882)
!2889 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2882)
!2890 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2882)
!2891 = !DILocation(line: 0, scope: !2878)
!2892 = !DILocation(line: 515, column: 5, scope: !2879)
!2893 = !DILocation(line: 515, column: 5, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2878, file: !182, line: 515, column: 5)
!2895 = !DILocation(line: 515, column: 5, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2878, file: !182, line: 515, column: 5)
!2897 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 515, column: 5, scope: !2721)
!2900 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2899)
!2901 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2899)
!2902 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2899)
!2903 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2899)
!2904 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2899)
!2905 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2899)
!2906 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2899)
!2907 = !DILocation(line: 520, column: 3, scope: !2697)
!2908 = !DILocation(line: 520, column: 31, scope: !2697)
!2909 = !DILocation(line: 524, column: 7, scope: !2753)
!2910 = !DILocation(line: 0, scope: !2697)
!2911 = !DILocation(line: 524, column: 7, scope: !2697)
!2912 = !DILocation(line: 525, column: 5, scope: !2750)
!2913 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 0, scope: !2750)
!2916 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !2915)
!2917 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !2915)
!2918 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !2915)
!2919 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !2915)
!2920 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !2915)
!2921 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !2915)
!2922 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !2915)
!2923 = !DILocation(line: 0, scope: !2232, inlinedAt: !2915)
!2924 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 0, scope: !2750)
!2927 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !2926)
!2928 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !2926)
!2929 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !2926)
!2930 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !2926)
!2931 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !2926)
!2932 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !2926)
!2933 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !2926)
!2934 = !DILocation(line: 525, column: 5, scope: !2751)
!2935 = !DILocation(line: 525, column: 5, scope: !2749)
!2936 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 525, column: 5, scope: !2749)
!2938 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !2937)
!2939 = !DILocation(line: 525, column: 5, scope: !2758)
!2940 = !DILocation(line: 0, scope: !2758)
!2941 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 0, scope: !2758)
!2945 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2943)
!2946 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2943)
!2947 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2943)
!2948 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2943)
!2949 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2943)
!2950 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2943)
!2951 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2943)
!2952 = !DILocation(line: 525, column: 5, scope: !2759)
!2953 = !DILocation(line: 525, column: 5, scope: !2757)
!2954 = !DILocation(line: 525, column: 5, scope: !2764)
!2955 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 525, column: 5, scope: !2749)
!2958 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2957)
!2959 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2957)
!2960 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2957)
!2961 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2957)
!2962 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2957)
!2963 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2957)
!2964 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2957)
!2965 = !DILocation(line: 525, column: 5, scope: !2768)
!2966 = !DILocation(line: 525, column: 5, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !182, line: 525, column: 5)
!2968 = distinct !DILexicalBlock(scope: !2768, file: !182, line: 525, column: 5)
!2969 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 0, scope: !2967)
!2973 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !2971)
!2974 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !2971)
!2975 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !2971)
!2976 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !2971)
!2977 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !2971)
!2978 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !2971)
!2979 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !2971)
!2980 = !DILocation(line: 0, scope: !2967)
!2981 = !DILocation(line: 525, column: 5, scope: !2968)
!2982 = !DILocation(line: 525, column: 5, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2967, file: !182, line: 525, column: 5)
!2984 = !DILocation(line: 525, column: 5, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2967, file: !182, line: 525, column: 5)
!2986 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 525, column: 5, scope: !2768)
!2989 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !2988)
!2990 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !2988)
!2991 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !2988)
!2992 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !2988)
!2993 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !2988)
!2994 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !2988)
!2995 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !2988)
!2996 = !DILocation(line: 526, column: 5, scope: !2752)
!2997 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 534, column: 24, scope: !2697)
!3000 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !2999)
!3001 = !DILocation(line: 534, column: 16, scope: !2697)
!3002 = !DILocation(line: 535, column: 8, scope: !2775)
!3003 = !DILocation(line: 535, column: 7, scope: !2697)
!3004 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 536, column: 5, scope: !2772)
!3006 = !DILocation(line: 536, column: 5, scope: !2772)
!3007 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 0, scope: !2772)
!3010 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !3009)
!3011 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !3009)
!3012 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !3009)
!3013 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !3009)
!3014 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !3009)
!3015 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !3009)
!3016 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !3009)
!3017 = !DILocation(line: 0, scope: !2232, inlinedAt: !3009)
!3018 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 0, scope: !2772)
!3021 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !3020)
!3022 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !3020)
!3023 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !3020)
!3024 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !3020)
!3025 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !3020)
!3026 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !3020)
!3027 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !3020)
!3028 = !DILocation(line: 536, column: 5, scope: !2773)
!3029 = !DILocation(line: 536, column: 5, scope: !2771)
!3030 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 536, column: 5, scope: !2771)
!3032 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3031)
!3033 = !DILocation(line: 536, column: 5, scope: !2780)
!3034 = !DILocation(line: 0, scope: !2780)
!3035 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 0, scope: !2780)
!3039 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3037)
!3040 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3037)
!3041 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3037)
!3042 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3037)
!3043 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3037)
!3044 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3037)
!3045 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3037)
!3046 = !DILocation(line: 536, column: 5, scope: !2781)
!3047 = !DILocation(line: 536, column: 5, scope: !2779)
!3048 = !DILocation(line: 536, column: 5, scope: !2786)
!3049 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 536, column: 5, scope: !2771)
!3052 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3051)
!3053 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3051)
!3054 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3051)
!3055 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3051)
!3056 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3051)
!3057 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3051)
!3058 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3051)
!3059 = !DILocation(line: 536, column: 5, scope: !2790)
!3060 = !DILocation(line: 536, column: 5, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !182, line: 536, column: 5)
!3062 = distinct !DILexicalBlock(scope: !2790, file: !182, line: 536, column: 5)
!3063 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 0, scope: !3061)
!3067 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3065)
!3068 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3065)
!3069 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3065)
!3070 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3065)
!3071 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3065)
!3072 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3065)
!3073 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3065)
!3074 = !DILocation(line: 0, scope: !3061)
!3075 = !DILocation(line: 536, column: 5, scope: !3062)
!3076 = !DILocation(line: 536, column: 5, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3061, file: !182, line: 536, column: 5)
!3078 = !DILocation(line: 536, column: 5, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3061, file: !182, line: 536, column: 5)
!3080 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 536, column: 5, scope: !2790)
!3083 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3082)
!3084 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3082)
!3085 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3082)
!3086 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3082)
!3087 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3082)
!3088 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3082)
!3089 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3082)
!3090 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 538, column: 25, scope: !2697)
!3092 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3091)
!3093 = !DILocation(line: 538, column: 10, scope: !2697)
!3094 = !DILocation(line: 538, column: 23, scope: !2697)
!3095 = !DILocation(line: 541, column: 3, scope: !2697)
!3096 = !DILocation(line: 541, column: 15, scope: !2697)
!3097 = !DILocation(line: 542, column: 7, scope: !2797)
!3098 = !DILocation(line: 542, column: 66, scope: !2797)
!3099 = !DILocation(line: 542, column: 7, scope: !2697)
!3100 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 543, column: 5, scope: !2794)
!3102 = !DILocation(line: 543, column: 5, scope: !2794)
!3103 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 0, scope: !2794)
!3106 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !3105)
!3107 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !3105)
!3108 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !3105)
!3109 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !3105)
!3110 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !3105)
!3111 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !3105)
!3112 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !3105)
!3113 = !DILocation(line: 0, scope: !2232, inlinedAt: !3105)
!3114 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 0, scope: !2794)
!3117 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !3116)
!3118 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !3116)
!3119 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !3116)
!3120 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !3116)
!3121 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !3116)
!3122 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !3116)
!3123 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !3116)
!3124 = !DILocation(line: 543, column: 5, scope: !2795)
!3125 = !DILocation(line: 543, column: 5, scope: !2793)
!3126 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 543, column: 5, scope: !2793)
!3128 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3127)
!3129 = !DILocation(line: 543, column: 5, scope: !2802)
!3130 = !DILocation(line: 0, scope: !2802)
!3131 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 0, scope: !2802)
!3135 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3133)
!3136 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3133)
!3137 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3133)
!3138 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3133)
!3139 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3133)
!3140 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3133)
!3141 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3133)
!3142 = !DILocation(line: 543, column: 5, scope: !2803)
!3143 = !DILocation(line: 543, column: 5, scope: !2801)
!3144 = !DILocation(line: 543, column: 5, scope: !2808)
!3145 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 543, column: 5, scope: !2793)
!3148 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3147)
!3149 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3147)
!3150 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3147)
!3151 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3147)
!3152 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3147)
!3153 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3147)
!3154 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3147)
!3155 = !DILocation(line: 543, column: 5, scope: !2812)
!3156 = !DILocation(line: 543, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !182, line: 543, column: 5)
!3158 = distinct !DILexicalBlock(scope: !2812, file: !182, line: 543, column: 5)
!3159 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 0, scope: !3157)
!3163 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3161)
!3164 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3161)
!3165 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3161)
!3166 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3161)
!3167 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3161)
!3168 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3161)
!3169 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3161)
!3170 = !DILocation(line: 0, scope: !3157)
!3171 = !DILocation(line: 543, column: 5, scope: !3158)
!3172 = !DILocation(line: 543, column: 5, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3157, file: !182, line: 543, column: 5)
!3174 = !DILocation(line: 543, column: 5, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3157, file: !182, line: 543, column: 5)
!3176 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 543, column: 5, scope: !2812)
!3179 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3178)
!3180 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3178)
!3181 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3178)
!3182 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3178)
!3183 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3178)
!3184 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3178)
!3185 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3178)
!3186 = !DILocation(line: 547, column: 23, scope: !2697)
!3187 = !DILocation(line: 547, column: 10, scope: !2697)
!3188 = !DILocation(line: 547, column: 21, scope: !2697)
!3189 = !DILocation(line: 548, column: 10, scope: !2697)
!3190 = !DILocation(line: 548, column: 21, scope: !2697)
!3191 = !DILocation(line: 551, column: 3, scope: !2697)
!3192 = !DILocation(line: 551, column: 19, scope: !2697)
!3193 = !DILocation(line: 551, column: 27, scope: !2697)
!3194 = !DILocation(line: 198, column: 33, scope: !1809, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 554, column: 3, scope: !2697)
!3196 = !DILocation(line: 202, column: 9, scope: !1809, inlinedAt: !3195)
!3197 = !DILocation(line: 202, column: 19, scope: !1809, inlinedAt: !3195)
!3198 = !DILocation(line: 202, column: 32, scope: !1809, inlinedAt: !3195)
!3199 = !DILocation(line: 202, column: 3, scope: !1809, inlinedAt: !3195)
!3200 = !DILocation(line: 208, column: 3, scope: !1809, inlinedAt: !3195)
!3201 = !DILocation(line: 557, column: 1, scope: !2697)
!3202 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !182, file: !182, line: 479, type: !64, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3203)
!3203 = !{!3204, !3205}
!3204 = !DILocalVariable(name: "in", arg: 1, scope: !3202, file: !182, line: 479, type: !33)
!3205 = !DILocalVariable(name: "out", arg: 2, scope: !3202, file: !182, line: 479, type: !66)
!3206 = !DILocation(line: 479, column: 35, scope: !3202)
!3207 = !DILocation(line: 479, column: 46, scope: !3202)
!3208 = !DILocation(line: 481, column: 3, scope: !3202)
!3209 = !DILocation(line: 489, column: 5, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !182, line: 481, column: 13)
!3211 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 490, column: 28, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !182, line: 490, column: 9)
!3216 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3212)
!3217 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3213)
!3218 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !3214)
!3219 = !DILocalVariable(name: "head", arg: 1, scope: !3220, file: !53, line: 201, type: !1461)
!3220 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1474, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3221)
!3221 = !{!3219, !3222}
!3222 = !DILocalVariable(name: "next", scope: !3220, file: !53, line: 203, type: !205)
!3223 = !DILocation(line: 201, column: 62, scope: !3220, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 490, column: 9, scope: !3215)
!3225 = !DILocation(line: 203, column: 33, scope: !3220, inlinedAt: !3224)
!3226 = !DILocation(line: 203, column: 20, scope: !3220, inlinedAt: !3224)
!3227 = !DILocation(line: 204, column: 15, scope: !3220, inlinedAt: !3224)
!3228 = !DILocation(line: 204, column: 24, scope: !3220, inlinedAt: !3224)
!3229 = !DILocation(line: 204, column: 42, scope: !3220, inlinedAt: !3224)
!3230 = !DILocation(line: 204, column: 33, scope: !3220, inlinedAt: !3224)
!3231 = !DILocation(line: 490, column: 9, scope: !3210)
!3232 = distinct !{!3232, !3208, !3233}
!3233 = !DILocation(line: 508, column: 3, scope: !3202)
!3234 = !DILocation(line: 492, column: 7, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3215, file: !182, line: 490, column: 47)
!3236 = !DILocation(line: 494, column: 5, scope: !3235)
!3237 = distinct !DISubprogram(name: "nk_fiber_create", scope: !182, file: !182, line: 602, type: !3238, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3241)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!50, !62, !33, !66, !38, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3251}
!3242 = !DILocalVariable(name: "fun", arg: 1, scope: !3237, file: !182, line: 602, type: !62)
!3243 = !DILocalVariable(name: "input", arg: 2, scope: !3237, file: !182, line: 602, type: !33)
!3244 = !DILocalVariable(name: "output", arg: 3, scope: !3237, file: !182, line: 602, type: !66)
!3245 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3237, file: !182, line: 602, type: !38)
!3246 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !3237, file: !182, line: 602, type: !3240)
!3247 = !DILocalVariable(name: "fiber", scope: !3237, file: !182, line: 605, type: !296)
!3248 = !DILocalVariable(name: "required_stack_size", scope: !3237, file: !182, line: 608, type: !38)
!3249 = !DILocalVariable(name: "p", scope: !3250, file: !182, line: 611, type: !33)
!3250 = distinct !DILexicalBlock(scope: !3237, file: !182, line: 611, column: 11)
!3251 = !DILocalVariable(name: "p", scope: !3252, file: !182, line: 628, type: !33)
!3252 = distinct !DILexicalBlock(scope: !3237, file: !182, line: 628, column: 26)
!3253 = !DILocation(line: 602, column: 36, scope: !3237)
!3254 = !DILocation(line: 602, column: 47, scope: !3237)
!3255 = !DILocation(line: 602, column: 61, scope: !3237)
!3256 = !DILocation(line: 602, column: 85, scope: !3237)
!3257 = !DILocation(line: 602, column: 110, scope: !3237)
!3258 = !DILocation(line: 605, column: 15, scope: !3237)
!3259 = !DILocation(line: 608, column: 41, scope: !3237)
!3260 = !DILocation(line: 608, column: 19, scope: !3237)
!3261 = !DILocation(line: 611, column: 11, scope: !3250)
!3262 = !DILocation(line: 614, column: 8, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3237, file: !182, line: 614, column: 7)
!3264 = !DILocation(line: 614, column: 7, scope: !3237)
!3265 = !DILocation(line: 620, column: 3, scope: !3237)
!3266 = !DILocation(line: 623, column: 10, scope: !3237)
!3267 = !DILocation(line: 623, column: 19, scope: !3237)
!3268 = !DILocation(line: 625, column: 10, scope: !3237)
!3269 = !DILocation(line: 625, column: 21, scope: !3237)
!3270 = !DILocation(line: 628, column: 26, scope: !3252)
!3271 = !DILocation(line: 628, column: 10, scope: !3237)
!3272 = !DILocation(line: 628, column: 16, scope: !3237)
!3273 = !DILocation(line: 631, column: 8, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3237, file: !182, line: 631, column: 7)
!3275 = !DILocation(line: 631, column: 7, scope: !3237)
!3276 = !DILocation(line: 634, column: 5, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3274, file: !182, line: 631, column: 21)
!3278 = !DILocation(line: 635, column: 5, scope: !3277)
!3279 = !DILocation(line: 639, column: 10, scope: !3237)
!3280 = !DILocation(line: 639, column: 14, scope: !3237)
!3281 = !DILocation(line: 640, column: 10, scope: !3237)
!3282 = !DILocation(line: 640, column: 16, scope: !3237)
!3283 = !DILocation(line: 641, column: 10, scope: !3237)
!3284 = !DILocation(line: 641, column: 17, scope: !3237)
!3285 = !DILocation(line: 274, column: 33, scope: !1819, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 644, column: 3, scope: !3237)
!3287 = !DILocation(line: 276, column: 37, scope: !1819, inlinedAt: !3286)
!3288 = !DILocation(line: 276, column: 6, scope: !1819, inlinedAt: !3286)
!3289 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 277, column: 3, scope: !1819, inlinedAt: !3286)
!3291 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3290)
!3292 = !DILocation(line: 276, column: 32, scope: !1819, inlinedAt: !3286)
!3293 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3290)
!3294 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3290)
!3295 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3290)
!3296 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 278, column: 3, scope: !1819, inlinedAt: !3286)
!3298 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3297)
!3299 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3297)
!3300 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3297)
!3301 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3297)
!3302 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 279, column: 3, scope: !1819, inlinedAt: !3286)
!3304 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3303)
!3305 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3303)
!3306 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3303)
!3307 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3303)
!3308 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 280, column: 3, scope: !1819, inlinedAt: !3286)
!3310 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3309)
!3311 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3309)
!3312 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3309)
!3313 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3309)
!3314 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 281, column: 3, scope: !1819, inlinedAt: !3286)
!3316 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3315)
!3317 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3315)
!3318 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3315)
!3319 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3315)
!3320 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 282, column: 3, scope: !1819, inlinedAt: !3286)
!3322 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3321)
!3323 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3321)
!3324 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3321)
!3325 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3321)
!3326 = !DILocation(line: 283, column: 18, scope: !1819, inlinedAt: !3286)
!3327 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 283, column: 3, scope: !1819, inlinedAt: !3286)
!3329 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3328)
!3330 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3328)
!3331 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3328)
!3332 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3328)
!3333 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 284, column: 3, scope: !1819, inlinedAt: !3286)
!3335 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3334)
!3336 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3334)
!3337 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3334)
!3338 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3334)
!3339 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 285, column: 3, scope: !1819, inlinedAt: !3286)
!3341 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3340)
!3342 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3340)
!3343 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3340)
!3344 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3340)
!3345 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 286, column: 3, scope: !1819, inlinedAt: !3286)
!3347 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3346)
!3348 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3346)
!3349 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3346)
!3350 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3346)
!3351 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 287, column: 3, scope: !1819, inlinedAt: !3286)
!3353 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3352)
!3354 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3352)
!3355 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3352)
!3356 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3352)
!3357 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 288, column: 3, scope: !1819, inlinedAt: !3286)
!3359 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3358)
!3360 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3358)
!3361 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3358)
!3362 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3358)
!3363 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 289, column: 3, scope: !1819, inlinedAt: !3286)
!3365 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3364)
!3366 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3364)
!3367 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3364)
!3368 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3364)
!3369 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 290, column: 3, scope: !1819, inlinedAt: !3286)
!3371 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3370)
!3372 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3370)
!3373 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3370)
!3374 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3370)
!3375 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 291, column: 3, scope: !1819, inlinedAt: !3286)
!3377 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3376)
!3378 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3376)
!3379 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3376)
!3380 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3376)
!3381 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 292, column: 3, scope: !1819, inlinedAt: !3286)
!3383 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !3382)
!3384 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !3382)
!3385 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !3382)
!3386 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !3382)
!3387 = !DILocation(line: 647, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3237, file: !182, line: 647, column: 7)
!3389 = !DILocation(line: 647, column: 7, scope: !3237)
!3390 = !DILocation(line: 648, column: 19, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !182, line: 647, column: 20)
!3392 = !DILocation(line: 649, column: 3, scope: !3391)
!3393 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 650, column: 15, scope: !3237)
!3395 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3394)
!3396 = !DILocation(line: 650, column: 33, scope: !3237)
!3397 = !DILocation(line: 650, column: 10, scope: !3237)
!3398 = !DILocation(line: 650, column: 13, scope: !3237)
!3399 = !DILocation(line: 653, column: 27, scope: !3237)
!3400 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 653, column: 3, scope: !3237)
!3402 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3401)
!3403 = !DILocation(line: 76, column: 8, scope: !1507, inlinedAt: !3401)
!3404 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3401)
!3405 = !DILocation(line: 656, column: 10, scope: !3237)
!3406 = !DILocation(line: 656, column: 19, scope: !3237)
!3407 = !DILocation(line: 657, column: 27, scope: !3237)
!3408 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 657, column: 3, scope: !3237)
!3410 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3409)
!3411 = !DILocation(line: 76, column: 8, scope: !1507, inlinedAt: !3409)
!3412 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3409)
!3413 = !DILocation(line: 658, column: 27, scope: !3237)
!3414 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 658, column: 3, scope: !3237)
!3416 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3415)
!3417 = !DILocation(line: 76, column: 8, scope: !1507, inlinedAt: !3415)
!3418 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3415)
!3419 = !DILocation(line: 660, column: 3, scope: !3237)
!3420 = !DILocation(line: 0, scope: !3237)
!3421 = !DILocation(line: 661, column: 1, scope: !3237)
!3422 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !182, file: !182, line: 702, type: !561, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3423)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "f_to", scope: !3422, file: !182, line: 708, type: !296)
!3425 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 98, column: 10, scope: !1416, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 704, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3422, file: !182, line: 704, column: 7)
!3430 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3426)
!3431 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3427)
!3432 = !DILocation(line: 98, column: 30, scope: !1416, inlinedAt: !3428)
!3433 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 704, column: 30, scope: !3429)
!3435 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3434)
!3436 = !DILocation(line: 704, column: 27, scope: !3429)
!3437 = !DILocation(line: 704, column: 7, scope: !3422)
!3438 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 122, column: 41, scope: !1449, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 708, column: 22, scope: !3422)
!3443 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3439)
!3444 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3440)
!3445 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !3441)
!3446 = !DILocation(line: 122, column: 21, scope: !1449, inlinedAt: !3442)
!3447 = !DILocation(line: 125, column: 15, scope: !1449, inlinedAt: !3442)
!3448 = !DILocation(line: 184, column: 54, scope: !1473, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 126, column: 9, scope: !1456, inlinedAt: !3442)
!3450 = !DILocation(line: 186, column: 15, scope: !1473, inlinedAt: !3449)
!3451 = !DILocation(line: 186, column: 20, scope: !1473, inlinedAt: !3449)
!3452 = !DILocation(line: 126, column: 7, scope: !1449, inlinedAt: !3442)
!3453 = !DILocation(line: 128, column: 25, scope: !1454, inlinedAt: !3442)
!3454 = !DILocation(line: 131, column: 40, scope: !1455, inlinedAt: !3442)
!3455 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 131, column: 5, scope: !1455, inlinedAt: !3442)
!3457 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !3456)
!3458 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !3456)
!3459 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !3456)
!3461 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !3460)
!3462 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !3460)
!3463 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !3460)
!3464 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !3460)
!3465 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !3460)
!3466 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !3456)
!3468 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3467)
!3469 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3467)
!3470 = !DILocation(line: 708, column: 15, scope: !3422)
!3471 = !DILocation(line: 718, column: 12, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3422, file: !182, line: 718, column: 7)
!3473 = !DILocation(line: 718, column: 7, scope: !3422)
!3474 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 719, column: 9, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !182, line: 719, column: 9)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !182, line: 718, column: 21)
!3480 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3475)
!3481 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3476)
!3482 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !3477)
!3483 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 719, column: 31, scope: !3478)
!3487 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3484)
!3488 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3485)
!3489 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !3486)
!3490 = !DILocation(line: 719, column: 28, scope: !3478)
!3491 = !DILocation(line: 719, column: 9, scope: !3479)
!3492 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 723, column: 16, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3478, file: !182, line: 722, column: 12)
!3497 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3493)
!3498 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3494)
!3499 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !3495)
!3500 = !DILocation(line: 725, column: 3, scope: !3479)
!3501 = !DILocation(line: 0, scope: !3422)
!3502 = !DILocation(line: 727, column: 10, scope: !3422)
!3503 = !DILocation(line: 727, column: 3, scope: !3422)
!3504 = !DILocation(line: 728, column: 1, scope: !3422)
!3505 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !182, file: !182, line: 570, type: !2053, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3506)
!3506 = !{!3507, !3508, !3512, !3513, !3518, !3520, !3523, !3525, !3527, !3533, !3534, !3539, !3541, !3544, !3546}
!3507 = !DILocalVariable(name: "my_cpu", scope: !3505, file: !182, line: 572, type: !324)
!3508 = !DILocalVariable(name: "_p", scope: !3509, file: !182, line: 573, type: !50)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !182, line: 573, column: 5)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !182, line: 573, column: 5)
!3511 = distinct !DILexicalBlock(scope: !3505, file: !182, line: 573, column: 5)
!3512 = !DILocalVariable(name: "_t", scope: !3509, file: !182, line: 573, type: !215)
!3513 = !DILocalVariable(name: "__r", scope: !3514, file: !182, line: 573, type: !345)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !182, line: 573, column: 5)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !182, line: 573, column: 5)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !182, line: 573, column: 5)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !182, line: 573, column: 5)
!3518 = !DILocalVariable(name: "__r", scope: !3519, file: !182, line: 573, type: !345)
!3519 = distinct !DILexicalBlock(scope: !3514, file: !182, line: 573, column: 5)
!3520 = !DILocalVariable(name: "__r", scope: !3521, file: !182, line: 573, type: !345)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !182, line: 573, column: 5)
!3522 = distinct !DILexicalBlock(scope: !3516, file: !182, line: 573, column: 5)
!3523 = !DILocalVariable(name: "__r", scope: !3524, file: !182, line: 573, type: !345)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !182, line: 573, column: 5)
!3525 = !DILocalVariable(name: "_p", scope: !3526, file: !182, line: 573, type: !50)
!3526 = distinct !DILexicalBlock(scope: !3510, file: !182, line: 573, column: 5)
!3527 = !DILocalVariable(name: "_p", scope: !3528, file: !182, line: 575, type: !50)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !182, line: 575, column: 2)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !182, line: 575, column: 2)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !182, line: 575, column: 2)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !182, line: 574, column: 45)
!3532 = distinct !DILexicalBlock(scope: !3505, file: !182, line: 574, column: 9)
!3533 = !DILocalVariable(name: "_t", scope: !3528, file: !182, line: 575, type: !215)
!3534 = !DILocalVariable(name: "__r", scope: !3535, file: !182, line: 575, type: !345)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !182, line: 575, column: 2)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !182, line: 575, column: 2)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !182, line: 575, column: 2)
!3538 = distinct !DILexicalBlock(scope: !3528, file: !182, line: 575, column: 2)
!3539 = !DILocalVariable(name: "__r", scope: !3540, file: !182, line: 575, type: !345)
!3540 = distinct !DILexicalBlock(scope: !3535, file: !182, line: 575, column: 2)
!3541 = !DILocalVariable(name: "__r", scope: !3542, file: !182, line: 575, type: !345)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !182, line: 575, column: 2)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !182, line: 575, column: 2)
!3544 = !DILocalVariable(name: "__r", scope: !3545, file: !182, line: 575, type: !345)
!3545 = distinct !DILexicalBlock(scope: !3542, file: !182, line: 575, column: 2)
!3546 = !DILocalVariable(name: "_p", scope: !3547, file: !182, line: 575, type: !50)
!3547 = distinct !DILexicalBlock(scope: !3529, file: !182, line: 575, column: 2)
!3548 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 572, column: 26, scope: !3505)
!3550 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3549)
!3551 = !DILocation(line: 572, column: 17, scope: !3505)
!3552 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 573, column: 5, scope: !3510)
!3554 = !DILocation(line: 573, column: 5, scope: !3510)
!3555 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 0, scope: !3510)
!3558 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !3557)
!3559 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !3557)
!3560 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !3557)
!3561 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !3557)
!3562 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !3557)
!3563 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !3557)
!3564 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !3557)
!3565 = !DILocation(line: 0, scope: !2232, inlinedAt: !3557)
!3566 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 0, scope: !3510)
!3569 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !3568)
!3570 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !3568)
!3571 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !3568)
!3572 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !3568)
!3573 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !3568)
!3574 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !3568)
!3575 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !3568)
!3576 = !DILocation(line: 573, column: 5, scope: !3511)
!3577 = !DILocation(line: 573, column: 5, scope: !3509)
!3578 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 573, column: 5, scope: !3509)
!3580 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3579)
!3581 = !DILocation(line: 573, column: 5, scope: !3516)
!3582 = !DILocation(line: 0, scope: !3516)
!3583 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 0, scope: !3516)
!3587 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3585)
!3588 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3585)
!3589 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3585)
!3590 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3585)
!3591 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3585)
!3592 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3585)
!3593 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3585)
!3594 = !DILocation(line: 573, column: 5, scope: !3517)
!3595 = !DILocation(line: 573, column: 5, scope: !3515)
!3596 = !DILocation(line: 573, column: 5, scope: !3522)
!3597 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 573, column: 5, scope: !3509)
!3600 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3599)
!3601 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3599)
!3602 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3599)
!3603 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3599)
!3604 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3599)
!3605 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3599)
!3606 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3599)
!3607 = !DILocation(line: 573, column: 5, scope: !3526)
!3608 = !DILocation(line: 573, column: 5, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !182, line: 573, column: 5)
!3610 = distinct !DILexicalBlock(scope: !3526, file: !182, line: 573, column: 5)
!3611 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 0, scope: !3609)
!3615 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3613)
!3616 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3613)
!3617 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3613)
!3618 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3613)
!3619 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3613)
!3620 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3613)
!3621 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3613)
!3622 = !DILocation(line: 0, scope: !3609)
!3623 = !DILocation(line: 573, column: 5, scope: !3610)
!3624 = !DILocation(line: 573, column: 5, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3609, file: !182, line: 573, column: 5)
!3626 = !DILocation(line: 573, column: 5, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3609, file: !182, line: 573, column: 5)
!3628 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 573, column: 5, scope: !3526)
!3631 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3630)
!3632 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3630)
!3633 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3630)
!3634 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3630)
!3635 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3630)
!3636 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3630)
!3637 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3630)
!3638 = !DILocation(line: 561, column: 3, scope: !3639, inlinedAt: !3668)
!3639 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !182, file: !182, line: 559, type: !561, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3640)
!3640 = !{!3641, !3643, !3646, !3648, !3653, !3654, !3659, !3661, !3664, !3666}
!3641 = !DILocalVariable(name: "tid", scope: !3639, file: !182, line: 561, type: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !33)
!3643 = !DILocalVariable(name: "__r", scope: !3644, file: !182, line: 562, type: !345)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !182, line: 562, column: 79)
!3645 = distinct !DILexicalBlock(scope: !3639, file: !182, line: 562, column: 7)
!3646 = !DILocalVariable(name: "__r", scope: !3647, file: !182, line: 562, type: !345)
!3647 = distinct !DILexicalBlock(scope: !3644, file: !182, line: 562, column: 79)
!3648 = !DILocalVariable(name: "_p", scope: !3649, file: !182, line: 563, type: !50)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !182, line: 563, column: 7)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !182, line: 563, column: 7)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !182, line: 563, column: 7)
!3652 = distinct !DILexicalBlock(scope: !3645, file: !182, line: 562, column: 93)
!3653 = !DILocalVariable(name: "_t", scope: !3649, file: !182, line: 563, type: !215)
!3654 = !DILocalVariable(name: "__r", scope: !3655, file: !182, line: 563, type: !345)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !182, line: 563, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !182, line: 563, column: 7)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !182, line: 563, column: 7)
!3658 = distinct !DILexicalBlock(scope: !3649, file: !182, line: 563, column: 7)
!3659 = !DILocalVariable(name: "__r", scope: !3660, file: !182, line: 563, type: !345)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !182, line: 563, column: 7)
!3661 = !DILocalVariable(name: "__r", scope: !3662, file: !182, line: 563, type: !345)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !182, line: 563, column: 7)
!3663 = distinct !DILexicalBlock(scope: !3657, file: !182, line: 563, column: 7)
!3664 = !DILocalVariable(name: "__r", scope: !3665, file: !182, line: 563, type: !345)
!3665 = distinct !DILexicalBlock(scope: !3662, file: !182, line: 563, column: 7)
!3666 = !DILocalVariable(name: "_p", scope: !3667, file: !182, line: 563, type: !50)
!3667 = distinct !DILexicalBlock(scope: !3650, file: !182, line: 563, column: 7)
!3668 = distinct !DILocation(line: 574, column: 9, scope: !3532)
!3669 = !DILocation(line: 562, column: 79, scope: !3647, inlinedAt: !3668)
!3670 = !{i32 -2147099479}
!3671 = !DILocation(line: 562, column: 79, scope: !3644, inlinedAt: !3668)
!3672 = !DILocation(line: 561, column: 18, scope: !3639, inlinedAt: !3668)
!3673 = !DILocation(line: 562, column: 7, scope: !3645, inlinedAt: !3668)
!3674 = !DILocation(line: 562, column: 7, scope: !3639, inlinedAt: !3668)
!3675 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 563, column: 7, scope: !3650, inlinedAt: !3668)
!3677 = !DILocation(line: 563, column: 7, scope: !3650, inlinedAt: !3668)
!3678 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 0, scope: !3650, inlinedAt: !3668)
!3681 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !3680)
!3682 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !3680)
!3683 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !3680)
!3684 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !3680)
!3685 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !3680)
!3686 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !3680)
!3687 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !3680)
!3688 = !DILocation(line: 0, scope: !2232, inlinedAt: !3680)
!3689 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 0, scope: !3650, inlinedAt: !3668)
!3692 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !3691)
!3693 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !3691)
!3694 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !3691)
!3695 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !3691)
!3696 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !3691)
!3697 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !3691)
!3698 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !3691)
!3699 = !DILocation(line: 563, column: 7, scope: !3651, inlinedAt: !3668)
!3700 = !DILocation(line: 563, column: 7, scope: !3649, inlinedAt: !3668)
!3701 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 563, column: 7, scope: !3649, inlinedAt: !3668)
!3703 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3702)
!3704 = !DILocation(line: 563, column: 7, scope: !3657, inlinedAt: !3668)
!3705 = !DILocation(line: 0, scope: !3657, inlinedAt: !3668)
!3706 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 0, scope: !3657, inlinedAt: !3668)
!3710 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3708)
!3711 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3708)
!3712 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3708)
!3713 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3708)
!3714 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3708)
!3715 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3708)
!3716 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3708)
!3717 = !DILocation(line: 563, column: 7, scope: !3658, inlinedAt: !3668)
!3718 = !DILocation(line: 563, column: 7, scope: !3656, inlinedAt: !3668)
!3719 = !DILocation(line: 563, column: 7, scope: !3663, inlinedAt: !3668)
!3720 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 563, column: 7, scope: !3649, inlinedAt: !3668)
!3723 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3722)
!3724 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3722)
!3725 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3722)
!3726 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3722)
!3727 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3722)
!3728 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3722)
!3729 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3722)
!3730 = !DILocation(line: 563, column: 7, scope: !3667, inlinedAt: !3668)
!3731 = !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3668)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !182, line: 563, column: 7)
!3733 = distinct !DILexicalBlock(scope: !3667, file: !182, line: 563, column: 7)
!3734 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 0, scope: !3732, inlinedAt: !3668)
!3738 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3736)
!3739 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3736)
!3740 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3736)
!3741 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3736)
!3742 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3736)
!3743 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3736)
!3744 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3736)
!3745 = !DILocation(line: 0, scope: !3732, inlinedAt: !3668)
!3746 = !DILocation(line: 563, column: 7, scope: !3733, inlinedAt: !3668)
!3747 = !DILocation(line: 563, column: 7, scope: !3748, inlinedAt: !3668)
!3748 = distinct !DILexicalBlock(scope: !3732, file: !182, line: 563, column: 7)
!3749 = !DILocation(line: 563, column: 7, scope: !3750, inlinedAt: !3668)
!3750 = distinct !DILexicalBlock(scope: !3732, file: !182, line: 563, column: 7)
!3751 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 563, column: 7, scope: !3667, inlinedAt: !3668)
!3754 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3753)
!3755 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3753)
!3756 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3753)
!3757 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3753)
!3758 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3753)
!3759 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3753)
!3760 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3753)
!3761 = !DILocation(line: 568, column: 1, scope: !3639, inlinedAt: !3668)
!3762 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 575, column: 2, scope: !3529)
!3764 = !DILocation(line: 575, column: 2, scope: !3529)
!3765 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 84, column: 18, scope: !2226, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 0, scope: !3529)
!3768 = !DILocation(line: 84, column: 11, scope: !2226, inlinedAt: !3767)
!3769 = !DILocation(line: 85, column: 9, scope: !2232, inlinedAt: !3767)
!3770 = !DILocation(line: 85, column: 9, scope: !2226, inlinedAt: !3767)
!3771 = !DILocation(line: 87, column: 57, scope: !2235, inlinedAt: !3767)
!3772 = !DILocation(line: 87, column: 30, scope: !2235, inlinedAt: !3767)
!3773 = !DILocation(line: 87, column: 9, scope: !2235, inlinedAt: !3767)
!3774 = !DILocation(line: 87, column: 2, scope: !2235, inlinedAt: !3767)
!3775 = !DILocation(line: 0, scope: !2232, inlinedAt: !3767)
!3776 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 48, column: 18, scope: !2242, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 0, scope: !3529)
!3779 = !DILocation(line: 48, column: 11, scope: !2242, inlinedAt: !3778)
!3780 = !DILocation(line: 49, column: 9, scope: !2248, inlinedAt: !3778)
!3781 = !DILocation(line: 49, column: 9, scope: !2242, inlinedAt: !3778)
!3782 = !DILocation(line: 51, column: 50, scope: !2251, inlinedAt: !3778)
!3783 = !DILocation(line: 51, column: 23, scope: !2251, inlinedAt: !3778)
!3784 = !DILocation(line: 51, column: 2, scope: !2251, inlinedAt: !3778)
!3785 = !DILocation(line: 52, column: 5, scope: !2251, inlinedAt: !3778)
!3786 = !DILocation(line: 575, column: 2, scope: !3530)
!3787 = !DILocation(line: 575, column: 2, scope: !3528)
!3788 = !DILocation(line: 258, column: 26, scope: !2011, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 575, column: 2, scope: !3528)
!3790 = !DILocation(line: 258, column: 26, scope: !2012, inlinedAt: !3789)
!3791 = !DILocation(line: 575, column: 2, scope: !3537)
!3792 = !DILocation(line: 0, scope: !3537)
!3793 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 0, scope: !3537)
!3797 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3795)
!3798 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3795)
!3799 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3795)
!3800 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3795)
!3801 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3795)
!3802 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3795)
!3803 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3795)
!3804 = !DILocation(line: 575, column: 2, scope: !3538)
!3805 = !DILocation(line: 575, column: 2, scope: !3536)
!3806 = !DILocation(line: 575, column: 2, scope: !3543)
!3807 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 575, column: 2, scope: !3528)
!3810 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3809)
!3811 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3809)
!3812 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3809)
!3813 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3809)
!3814 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3809)
!3815 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3809)
!3816 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3809)
!3817 = !DILocation(line: 575, column: 2, scope: !3547)
!3818 = !DILocation(line: 575, column: 2, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !182, line: 575, column: 2)
!3820 = distinct !DILexicalBlock(scope: !3547, file: !182, line: 575, column: 2)
!3821 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 96, column: 18, scope: !2264, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 107, column: 12, scope: !2270, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 0, scope: !3819)
!3825 = !DILocation(line: 96, column: 11, scope: !2264, inlinedAt: !3823)
!3826 = !DILocation(line: 97, column: 9, scope: !2274, inlinedAt: !3823)
!3827 = !DILocation(line: 97, column: 9, scope: !2264, inlinedAt: !3823)
!3828 = !DILocation(line: 98, column: 57, scope: !2277, inlinedAt: !3823)
!3829 = !DILocation(line: 98, column: 30, scope: !2277, inlinedAt: !3823)
!3830 = !DILocation(line: 98, column: 9, scope: !2277, inlinedAt: !3823)
!3831 = !DILocation(line: 98, column: 2, scope: !2277, inlinedAt: !3823)
!3832 = !DILocation(line: 0, scope: !3819)
!3833 = !DILocation(line: 575, column: 2, scope: !3820)
!3834 = !DILocation(line: 575, column: 2, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3819, file: !182, line: 575, column: 2)
!3836 = !DILocation(line: 575, column: 2, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3819, file: !182, line: 575, column: 2)
!3838 = !DILocation(line: 43, column: 21, scope: !2218, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 59, column: 18, scope: !2286, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 575, column: 2, scope: !3547)
!3841 = !DILocation(line: 59, column: 11, scope: !2286, inlinedAt: !3840)
!3842 = !DILocation(line: 60, column: 9, scope: !2292, inlinedAt: !3840)
!3843 = !DILocation(line: 60, column: 9, scope: !2286, inlinedAt: !3840)
!3844 = !DILocation(line: 62, column: 50, scope: !2295, inlinedAt: !3840)
!3845 = !DILocation(line: 62, column: 23, scope: !2295, inlinedAt: !3840)
!3846 = !DILocation(line: 62, column: 2, scope: !2295, inlinedAt: !3840)
!3847 = !DILocation(line: 63, column: 5, scope: !2295, inlinedAt: !3840)
!3848 = !DILocation(line: 576, column: 2, scope: !3531)
!3849 = !DILocation(line: 579, column: 1, scope: !3505)
!3850 = distinct !DISubprogram(name: "nk_fiber_start", scope: !182, file: !182, line: 693, type: !3851, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!50, !62, !33, !66, !38, !70, !3240}
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859}
!3854 = !DILocalVariable(name: "fun", arg: 1, scope: !3850, file: !182, line: 693, type: !62)
!3855 = !DILocalVariable(name: "input", arg: 2, scope: !3850, file: !182, line: 693, type: !33)
!3856 = !DILocalVariable(name: "output", arg: 3, scope: !3850, file: !182, line: 693, type: !66)
!3857 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3850, file: !182, line: 693, type: !38)
!3858 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3850, file: !182, line: 693, type: !70)
!3859 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3850, file: !182, line: 693, type: !3240)
!3860 = !DILocation(line: 693, column: 35, scope: !3850)
!3861 = !DILocation(line: 693, column: 46, scope: !3850)
!3862 = !DILocation(line: 693, column: 60, scope: !3850)
!3863 = !DILocation(line: 693, column: 84, scope: !3850)
!3864 = !DILocation(line: 693, column: 104, scope: !3850)
!3865 = !DILocation(line: 693, column: 134, scope: !3850)
!3866 = !DILocation(line: 695, column: 3, scope: !3850)
!3867 = !DILocation(line: 696, column: 16, scope: !3850)
!3868 = !DILocation(line: 696, column: 3, scope: !3850)
!3869 = !DILocation(line: 698, column: 3, scope: !3850)
!3870 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !182, file: !182, line: 730, type: !561, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !1388)
!3871 = !DILocation(line: 732, column: 3, scope: !3870)
!3872 = !DILocation(line: 733, column: 10, scope: !3870)
!3873 = !DILocation(line: 733, column: 3, scope: !3870)
!3874 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !182, file: !182, line: 736, type: !1926, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3875)
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "f_to", arg: 1, scope: !3874, file: !182, line: 736, type: !296)
!3877 = !DILocalVariable(name: "new_to", scope: !3878, file: !182, line: 744, type: !296)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !182, line: 740, column: 38)
!3879 = distinct !DILexicalBlock(scope: !3874, file: !182, line: 740, column: 7)
!3880 = !DILocation(line: 736, column: 35, scope: !3874)
!3881 = !DILocation(line: 383, column: 42, scope: !2108, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 740, column: 7, scope: !3879)
!3883 = !DILocation(line: 386, column: 26, scope: !2115, inlinedAt: !3882)
!3884 = !DILocation(line: 386, column: 26, scope: !2113, inlinedAt: !3882)
!3885 = !DILocation(line: 386, column: 20, scope: !2108, inlinedAt: !3882)
!3886 = !DILocation(line: 387, column: 23, scope: !2108, inlinedAt: !3882)
!3887 = !DILocation(line: 387, column: 7, scope: !2108, inlinedAt: !3882)
!3888 = !DILocation(line: 392, column: 12, scope: !2120, inlinedAt: !3882)
!3889 = !DILocation(line: 392, column: 27, scope: !2125, inlinedAt: !3882)
!3890 = !DILocation(line: 392, column: 3, scope: !2120, inlinedAt: !3882)
!3891 = !DILocation(line: 394, column: 14, scope: !2124, inlinedAt: !3882)
!3892 = !DILocation(line: 394, column: 31, scope: !2124, inlinedAt: !3882)
!3893 = !DILocation(line: 394, column: 40, scope: !2124, inlinedAt: !3882)
!3894 = !DILocation(line: 390, column: 21, scope: !2108, inlinedAt: !3882)
!3895 = !DILocation(line: 395, column: 5, scope: !2122, inlinedAt: !3882)
!3896 = !DILocation(line: 391, column: 15, scope: !2108, inlinedAt: !3882)
!3897 = !DILocation(line: 0, scope: !2123, inlinedAt: !3882)
!3898 = !DILocation(line: 395, column: 5, scope: !2123, inlinedAt: !3882)
!3899 = !DILocation(line: 395, column: 5, scope: !2128, inlinedAt: !3882)
!3900 = !DILocation(line: 400, column: 16, scope: !2149, inlinedAt: !3882)
!3901 = !DILocation(line: 400, column: 11, scope: !2150, inlinedAt: !3882)
!3902 = !DILocation(line: 392, column: 43, scope: !2125, inlinedAt: !3882)
!3903 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 122, column: 41, scope: !1449, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 744, column: 26, scope: !3878)
!3908 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3904)
!3909 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3905)
!3910 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !3906)
!3911 = !DILocation(line: 122, column: 21, scope: !1449, inlinedAt: !3907)
!3912 = !DILocation(line: 125, column: 15, scope: !1449, inlinedAt: !3907)
!3913 = !DILocation(line: 184, column: 54, scope: !1473, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 126, column: 9, scope: !1456, inlinedAt: !3907)
!3915 = !DILocation(line: 186, column: 15, scope: !1473, inlinedAt: !3914)
!3916 = !DILocation(line: 186, column: 20, scope: !1473, inlinedAt: !3914)
!3917 = !DILocation(line: 126, column: 7, scope: !1449, inlinedAt: !3907)
!3918 = !DILocation(line: 128, column: 25, scope: !1454, inlinedAt: !3907)
!3919 = !DILocation(line: 131, column: 40, scope: !1455, inlinedAt: !3907)
!3920 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 131, column: 5, scope: !1455, inlinedAt: !3907)
!3922 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !3921)
!3923 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !3921)
!3924 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !3921)
!3926 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !3925)
!3927 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !3925)
!3928 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !3925)
!3929 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !3925)
!3930 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !3925)
!3931 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !3921)
!3933 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3932)
!3934 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3932)
!3935 = !DILocation(line: 744, column: 17, scope: !3878)
!3936 = !DILocation(line: 746, column: 16, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3878, file: !182, line: 746, column: 9)
!3938 = !DILocation(line: 746, column: 9, scope: !3878)
!3939 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 747, column: 11, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !182, line: 747, column: 11)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !182, line: 746, column: 25)
!3945 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3940)
!3946 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3941)
!3947 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !3942)
!3948 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 747, column: 33, scope: !3943)
!3952 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3949)
!3953 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3950)
!3954 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !3951)
!3955 = !DILocation(line: 747, column: 30, scope: !3943)
!3956 = !DILocation(line: 747, column: 11, scope: !3944)
!3957 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 92, column: 10, scope: !1408, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 751, column: 20, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3943, file: !182, line: 750, column: 14)
!3962 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !3958)
!3963 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !3959)
!3964 = !DILocation(line: 92, column: 30, scope: !1408, inlinedAt: !3960)
!3965 = !DILocation(line: 753, column: 5, scope: !3944)
!3966 = !DILocation(line: 0, scope: !3878)
!3967 = !DILocation(line: 756, column: 5, scope: !3878)
!3968 = !DILocation(line: 758, column: 5, scope: !3878)
!3969 = !DILocation(line: 401, column: 33, scope: !2158, inlinedAt: !3882)
!3970 = !DILocation(line: 151, column: 52, scope: !1485, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 401, column: 9, scope: !2158, inlinedAt: !3882)
!3972 = !DILocation(line: 153, column: 20, scope: !1485, inlinedAt: !3971)
!3973 = !DILocation(line: 153, column: 33, scope: !1485, inlinedAt: !3971)
!3974 = !DILocation(line: 128, column: 50, scope: !1494, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 153, column: 2, scope: !1485, inlinedAt: !3971)
!3976 = !DILocation(line: 128, column: 75, scope: !1494, inlinedAt: !3975)
!3977 = !DILocation(line: 130, column: 8, scope: !1494, inlinedAt: !3975)
!3978 = !DILocation(line: 130, column: 13, scope: !1494, inlinedAt: !3975)
!3979 = !DILocation(line: 131, column: 8, scope: !1494, inlinedAt: !3975)
!3980 = !DILocation(line: 131, column: 13, scope: !1494, inlinedAt: !3975)
!3981 = !DILocation(line: 73, column: 53, scope: !1507, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 154, column: 2, scope: !1485, inlinedAt: !3971)
!3983 = !DILocation(line: 75, column: 13, scope: !1507, inlinedAt: !3982)
!3984 = !DILocation(line: 76, column: 13, scope: !1507, inlinedAt: !3982)
!3985 = !DILocation(line: 762, column: 3, scope: !3874)
!3986 = !DILocation(line: 765, column: 3, scope: !3874)
!3987 = !DILocation(line: 0, scope: !3874)
!3988 = !DILocation(line: 766, column: 1, scope: !3874)
!3989 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !182, file: !182, line: 768, type: !3990, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3995)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!50, !3992, !33}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!70, !33}
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "cond_function", arg: 1, scope: !3989, file: !182, line: 768, type: !3992)
!3997 = !DILocalVariable(name: "state", arg: 2, scope: !3989, file: !182, line: 768, type: !33)
!3998 = !DILocation(line: 768, column: 42, scope: !3989)
!3999 = !DILocation(line: 768, column: 77, scope: !3989)
!4000 = !DILocation(line: 770, column: 7, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3989, file: !182, line: 770, column: 7)
!4002 = !DILocation(line: 770, column: 7, scope: !3989)
!4003 = !DILocation(line: 771, column: 12, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !182, line: 770, column: 28)
!4005 = !DILocation(line: 771, column: 5, scope: !4004)
!4006 = !DILocation(line: 0, scope: !3989)
!4007 = !DILocation(line: 774, column: 1, scope: !3989)
!4008 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !182, file: !182, line: 776, type: !4009, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!50, !296, !3992, !33}
!4011 = !{!4012, !4013, !4014}
!4012 = !DILocalVariable(name: "fib", arg: 1, scope: !4008, file: !182, line: 776, type: !296)
!4013 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4008, file: !182, line: 776, type: !3992)
!4014 = !DILocalVariable(name: "state", arg: 3, scope: !4008, file: !182, line: 776, type: !33)
!4015 = !DILocation(line: 776, column: 47, scope: !4008)
!4016 = !DILocation(line: 776, column: 62, scope: !4008)
!4017 = !DILocation(line: 776, column: 97, scope: !4008)
!4018 = !DILocation(line: 778, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4008, file: !182, line: 778, column: 7)
!4020 = !DILocation(line: 778, column: 7, scope: !4008)
!4021 = !DILocation(line: 779, column: 12, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4019, file: !182, line: 778, column: 28)
!4023 = !DILocation(line: 779, column: 5, scope: !4022)
!4024 = !DILocation(line: 0, scope: !4008)
!4025 = !DILocation(line: 782, column: 1, scope: !4008)
!4026 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !182, file: !182, line: 784, type: !1399, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4028 = !DILocalVariable(name: "curr", scope: !4026, file: !182, line: 787, type: !296)
!4029 = !DILocalVariable(name: "size", scope: !4026, file: !182, line: 790, type: !29)
!4030 = !DILocalVariable(name: "alloc_size", scope: !4026, file: !182, line: 790, type: !29)
!4031 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4026, file: !182, line: 791, type: !29)
!4032 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4026, file: !182, line: 792, type: !29)
!4033 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4026, file: !182, line: 793, type: !29)
!4034 = !DILocalVariable(name: "child_stack", scope: !4026, file: !182, line: 794, type: !33)
!4035 = !DILocalVariable(name: "rsp", scope: !4026, file: !182, line: 795, type: !29)
!4036 = !DILocalVariable(name: "rbp0", scope: !4026, file: !182, line: 800, type: !33)
!4037 = !DILocalVariable(name: "rbp1", scope: !4026, file: !182, line: 801, type: !33)
!4038 = !DILocalVariable(name: "rbp_tos", scope: !4026, file: !182, line: 802, type: !33)
!4039 = !DILocalVariable(name: "ret0_addr", scope: !4026, file: !182, line: 803, type: !33)
!4040 = !DILocalVariable(name: "rbp_stash_addr", scope: !4026, file: !182, line: 815, type: !33)
!4041 = !DILocalVariable(name: "new", scope: !4026, file: !182, line: 831, type: !296)
!4042 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4026, file: !182, line: 847, type: !66)
!4043 = !DILocalVariable(name: "rbp2_ptr", scope: !4026, file: !182, line: 851, type: !66)
!4044 = !DILocalVariable(name: "ret2_ptr", scope: !4026, file: !182, line: 852, type: !66)
!4045 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 787, column: 22, scope: !4026)
!4049 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !4046)
!4050 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !4047)
!4051 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !4048)
!4052 = !DILocation(line: 787, column: 15, scope: !4026)
!4053 = !DILocation(line: 798, column: 3, scope: !4026)
!4054 = !{i32 23631}
!4055 = !DILocation(line: 795, column: 16, scope: !4026)
!4056 = !DILocation(line: 800, column: 21, scope: !4026)
!4057 = !DILocation(line: 800, column: 9, scope: !4026)
!4058 = !DILocation(line: 801, column: 21, scope: !4026)
!4059 = !DILocation(line: 801, column: 9, scope: !4026)
!4060 = !DILocation(line: 802, column: 21, scope: !4026)
!4061 = !DILocation(line: 802, column: 9, scope: !4026)
!4062 = !DILocation(line: 803, column: 26, scope: !4026)
!4063 = !DILocation(line: 803, column: 9, scope: !4026)
!4064 = !DILocation(line: 805, column: 44, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4026, file: !182, line: 805, column: 7)
!4066 = !DILocation(line: 805, column: 25, scope: !4065)
!4067 = !DILocation(line: 0, scope: !4026)
!4068 = !DILocation(line: 806, column: 46, scope: !4065)
!4069 = !DILocation(line: 806, column: 20, scope: !4065)
!4070 = !DILocation(line: 805, column: 50, scope: !4065)
!4071 = !DILocation(line: 815, column: 36, scope: !4026)
!4072 = !DILocation(line: 815, column: 9, scope: !4026)
!4073 = !DILocation(line: 821, column: 19, scope: !4026)
!4074 = !DILocation(line: 821, column: 24, scope: !4026)
!4075 = !DILocation(line: 790, column: 12, scope: !4026)
!4076 = !DILocation(line: 822, column: 37, scope: !4026)
!4077 = !DILocation(line: 791, column: 16, scope: !4026)
!4078 = !DILocation(line: 792, column: 16, scope: !4026)
!4079 = !DILocation(line: 825, column: 32, scope: !4026)
!4080 = !DILocation(line: 825, column: 57, scope: !4026)
!4081 = !DILocation(line: 793, column: 16, scope: !4026)
!4082 = !DILocation(line: 790, column: 18, scope: !4026)
!4083 = !DILocation(line: 831, column: 3, scope: !4026)
!4084 = !DILocation(line: 831, column: 15, scope: !4026)
!4085 = !DILocation(line: 832, column: 3, scope: !4026)
!4086 = !DILocation(line: 835, column: 15, scope: !4026)
!4087 = !DILocation(line: 113, column: 31, scope: !1436, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 835, column: 3, scope: !4026)
!4089 = !DILocation(line: 113, column: 43, scope: !1436, inlinedAt: !4088)
!4090 = !DILocation(line: 115, column: 8, scope: !1436, inlinedAt: !4088)
!4091 = !DILocation(line: 115, column: 12, scope: !1436, inlinedAt: !4088)
!4092 = !DILocation(line: 116, column: 6, scope: !1436, inlinedAt: !4088)
!4093 = !DILocation(line: 116, column: 26, scope: !1436, inlinedAt: !4088)
!4094 = !DILocation(line: 837, column: 17, scope: !4026)
!4095 = !DILocation(line: 837, column: 22, scope: !4026)
!4096 = !DILocation(line: 794, column: 17, scope: !4026)
!4097 = !DILocation(line: 839, column: 22, scope: !4026)
!4098 = !DILocation(line: 839, column: 35, scope: !4026)
!4099 = !DILocation(line: 839, column: 3, scope: !4026)
!4100 = !DILocation(line: 840, column: 57, scope: !4026)
!4101 = !DILocation(line: 840, column: 14, scope: !4026)
!4102 = !DILocation(line: 840, column: 3, scope: !4026)
!4103 = !DILocation(line: 840, column: 8, scope: !4026)
!4104 = !DILocation(line: 840, column: 12, scope: !4026)
!4105 = !DILocation(line: 847, column: 35, scope: !4026)
!4106 = !DILocation(line: 847, column: 40, scope: !4026)
!4107 = !DILocation(line: 847, column: 78, scope: !4026)
!4108 = !DILocation(line: 847, column: 26, scope: !4026)
!4109 = !DILocation(line: 847, column: 10, scope: !4026)
!4110 = !DILocation(line: 848, column: 37, scope: !4026)
!4111 = !DILocation(line: 848, column: 20, scope: !4026)
!4112 = !DILocation(line: 848, column: 18, scope: !4026)
!4113 = !DILocation(line: 851, column: 30, scope: !4026)
!4114 = !DILocation(line: 851, column: 35, scope: !4026)
!4115 = !DILocation(line: 851, column: 39, scope: !4026)
!4116 = !DILocation(line: 851, column: 68, scope: !4026)
!4117 = !DILocation(line: 851, column: 21, scope: !4026)
!4118 = !DILocation(line: 851, column: 10, scope: !4026)
!4119 = !DILocation(line: 852, column: 29, scope: !4026)
!4120 = !DILocation(line: 852, column: 10, scope: !4026)
!4121 = !DILocation(line: 861, column: 13, scope: !4026)
!4122 = !DILocation(line: 868, column: 16, scope: !4026)
!4123 = !DILocation(line: 868, column: 21, scope: !4026)
!4124 = !DILocation(line: 868, column: 24, scope: !4026)
!4125 = !DILocation(line: 868, column: 4, scope: !4026)
!4126 = !DILocation(line: 868, column: 41, scope: !4026)
!4127 = !DILocation(line: 871, column: 16, scope: !4026)
!4128 = !DILocation(line: 663, column: 30, scope: !1564, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 871, column: 3, scope: !4026)
!4130 = !DILocation(line: 663, column: 41, scope: !1564, inlinedAt: !4129)
!4131 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 98, column: 10, scope: !1416, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 666, column: 30, scope: !1564, inlinedAt: !4129)
!4135 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !4132)
!4136 = !DILocation(line: 666, column: 16, scope: !1564, inlinedAt: !4129)
!4137 = !DILocation(line: 0, scope: !1564, inlinedAt: !4129)
!4138 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 105, column: 12, scope: !1426, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 674, column: 41, scope: !1564, inlinedAt: !4129)
!4142 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !4139)
!4143 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !4140)
!4144 = !DILocation(line: 105, column: 32, scope: !1426, inlinedAt: !4141)
!4145 = !DILocation(line: 674, column: 21, scope: !1564, inlinedAt: !4129)
!4146 = !DILocation(line: 678, column: 6, scope: !1564, inlinedAt: !4129)
!4147 = !DILocation(line: 678, column: 15, scope: !1564, inlinedAt: !4129)
!4148 = !DILocation(line: 679, column: 22, scope: !1564, inlinedAt: !4129)
!4149 = !DILocation(line: 116, column: 52, scope: !1633, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 679, column: 3, scope: !1564, inlinedAt: !4129)
!4151 = !DILocation(line: 116, column: 76, scope: !1633, inlinedAt: !4150)
!4152 = !DILocation(line: 118, column: 25, scope: !1633, inlinedAt: !4150)
!4153 = !DILocation(line: 85, column: 49, scope: !1641, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 118, column: 2, scope: !1633, inlinedAt: !4150)
!4155 = !DILocation(line: 86, column: 28, scope: !1641, inlinedAt: !4154)
!4156 = !DILocation(line: 87, column: 28, scope: !1641, inlinedAt: !4154)
!4157 = !DILocation(line: 89, column: 13, scope: !1641, inlinedAt: !4154)
!4158 = !DILocation(line: 90, column: 8, scope: !1641, inlinedAt: !4154)
!4159 = !DILocation(line: 90, column: 13, scope: !1641, inlinedAt: !4154)
!4160 = !DILocation(line: 91, column: 8, scope: !1641, inlinedAt: !4154)
!4161 = !DILocation(line: 91, column: 13, scope: !1641, inlinedAt: !4154)
!4162 = !DILocation(line: 92, column: 8, scope: !1641, inlinedAt: !4154)
!4163 = !DILocation(line: 92, column: 13, scope: !1641, inlinedAt: !4154)
!4164 = !DILocation(line: 683, column: 20, scope: !1659, inlinedAt: !4129)
!4165 = !DILocation(line: 683, column: 7, scope: !1659, inlinedAt: !4129)
!4166 = !DILocation(line: 683, column: 7, scope: !1564, inlinedAt: !4129)
!4167 = !DILocation(line: 687, column: 5, scope: !1663, inlinedAt: !4129)
!4168 = !DILocation(line: 688, column: 3, scope: !1663, inlinedAt: !4129)
!4169 = !DILocation(line: 873, column: 10, scope: !4026)
!4170 = !DILocation(line: 874, column: 1, scope: !4026)
!4171 = !DILocation(line: 873, column: 3, scope: !4026)
!4172 = distinct !DISubprogram(name: "nk_fiber_join", scope: !182, file: !182, line: 877, type: !1926, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !4173)
!4173 = !{!4174, !4175, !4176}
!4174 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4172, file: !182, line: 877, type: !296)
!4175 = !DILocalVariable(name: "curr_fiber", scope: !4172, file: !182, line: 887, type: !296)
!4176 = !DILocalVariable(name: "wait_q", scope: !4172, file: !182, line: 896, type: !205)
!4177 = !DILocation(line: 877, column: 31, scope: !4172)
!4178 = !DILocation(line: 883, column: 8, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4172, file: !182, line: 883, column: 7)
!4180 = !DILocation(line: 883, column: 7, scope: !4172)
!4181 = !DILocation(line: 129, column: 25, scope: !1390, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 78, column: 10, scope: !1383, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 85, column: 10, scope: !1398, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 887, column: 28, scope: !4172)
!4185 = !DILocation(line: 129, column: 12, scope: !1390, inlinedAt: !4182)
!4186 = !DILocation(line: 78, column: 21, scope: !1383, inlinedAt: !4183)
!4187 = !DILocation(line: 85, column: 30, scope: !1398, inlinedAt: !4184)
!4188 = !DILocation(line: 887, column: 15, scope: !4172)
!4189 = !DILocation(line: 896, column: 41, scope: !4172)
!4190 = !DILocation(line: 896, column: 21, scope: !4172)
!4191 = !DILocation(line: 897, column: 31, scope: !4172)
!4192 = !DILocation(line: 116, column: 52, scope: !1633, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 897, column: 3, scope: !4172)
!4194 = !DILocation(line: 116, column: 76, scope: !1633, inlinedAt: !4193)
!4195 = !DILocation(line: 118, column: 25, scope: !1633, inlinedAt: !4193)
!4196 = !DILocation(line: 85, column: 49, scope: !1641, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 118, column: 2, scope: !1633, inlinedAt: !4193)
!4198 = !DILocation(line: 86, column: 28, scope: !1641, inlinedAt: !4197)
!4199 = !DILocation(line: 87, column: 28, scope: !1641, inlinedAt: !4197)
!4200 = !DILocation(line: 89, column: 13, scope: !1641, inlinedAt: !4197)
!4201 = !DILocation(line: 90, column: 8, scope: !1641, inlinedAt: !4197)
!4202 = !DILocation(line: 90, column: 13, scope: !1641, inlinedAt: !4197)
!4203 = !DILocation(line: 91, column: 8, scope: !1641, inlinedAt: !4197)
!4204 = !DILocation(line: 91, column: 13, scope: !1641, inlinedAt: !4197)
!4205 = !DILocation(line: 92, column: 8, scope: !1641, inlinedAt: !4197)
!4206 = !DILocation(line: 92, column: 13, scope: !1641, inlinedAt: !4197)
!4207 = !DILocation(line: 898, column: 12, scope: !4172)
!4208 = !DILocation(line: 898, column: 20, scope: !4172)
!4209 = !DILocation(line: 899, column: 15, scope: !4172)
!4210 = !DILocation(line: 899, column: 24, scope: !4172)
!4211 = !DILocation(line: 903, column: 10, scope: !4172)
!4212 = !DILocation(line: 0, scope: !4172)
!4213 = !DILocation(line: 904, column: 1, scope: !4172)
