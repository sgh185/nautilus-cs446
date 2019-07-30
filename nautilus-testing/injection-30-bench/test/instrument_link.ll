; ModuleID = 'src/test/instrument_link.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shell_cmd_impl = type { i8*, i8*, i32 (i8*, i8*)* }
%struct.nk_virtual_console = type opaque
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

@llvm.used = appending global [2 x i8*] [i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl1 to i8*), i8* bitcast (%struct.shell_cmd_impl** @_nk_cmd_fibers_impl2 to i8*)], section "llvm.metadata"
@_nk_cmd_fibers_impl1 = internal global %struct.shell_cmd_impl* @fibers_impl1, section ".shell_cmds", align 8, !dbg !0
@_nk_cmd_fibers_impl2 = internal global %struct.shell_cmd_impl* @fibers_impl2, section ".shell_cmds", align 8, !dbg !106
@fibers_impl2 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers2 }, align 8, !dbg !121
@.str.7 = private unnamed_addr constant [12 x i8] c"instrument2\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Simple compiler instrumentation test 2\00", align 1
@vc = external dso_local local_unnamed_addr global %struct.nk_virtual_console*, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"test_simple_routine() : Malloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"routine_simple_2() : a = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Fiber routine_simple_2 is finished, a = %d\0A\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"routine_simple_1() : a = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Fiber routine_simple_1 is finished, a = %d\0A\00", align 1
@fibers_impl1 = internal global %struct.shell_cmd_impl { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 (i8*, i8*)* @handle_fibers1 }, align 8, !dbg !119
@.str.5 = private unnamed_addr constant [12 x i8] c"instrument1\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Simple compiler instrumentation test 1\00", align 1
@.str.2.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3.5 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.5.6 = private unnamed_addr constant [10 x i8] c"*unnamed*\00", align 1
@.str.4.7 = private unnamed_addr constant [7 x i8] c"*idle*\00", align 1
@.str.6.8 = private unnamed_addr constant [7 x i8] c"*none*\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.7.10 = private unnamed_addr constant [21 x i8] c"src/nautilus/fiber.c\00", align 1
@.str.8.11 = private unnamed_addr constant [73 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not intialize fiber thread\0A\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Could not allocate fiber state\0A\00", align 1
@nautilus_info = external dso_local local_unnamed_addr global %struct.naut_info, align 8
@.str.9.12 = private unnamed_addr constant [59 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"CPU ? (%s%s): fiber: Initializing fibers on BSP\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"(fiber)\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to name fiber thread\0A\00", align 1
@.str.14 = private unnamed_addr constant [93 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.15 = private unnamed_addr constant [83 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to set constraints for fiber thread\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"PANIC at %s(%d): Unable to set constraints for fiber thread\0A\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to get current fiber state\0A\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Unable to create idle fiber\0A\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"CPU %d (%s%s %lu \22%s\22): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"CPU ? (%s%s): fiber: Starting fiber thread for CPU %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [79 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Failed to start fiber thread\0A\00", align 1
@.str.23 = private unnamed_addr constant [85 x i8] c"CPU %d (%s%s %lu \22%s\22): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"CPU ? (%s%s): ERROR at %s(%lu): fiber: Cannot start fiber thread for CPU!\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"PANIC at %s(%d): Cannot start fiber thread for CPU!\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"wrapper_nk_fiber_yield : running\0A\00", align 1

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers2(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !498 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !500, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.value(metadata i8* %1, metadata !501, metadata !DIExpression()), !dbg !503
  %3 = tail call i32 @test_simple_routine2() #9, !dbg !504
  ret i32 0, !dbg !505
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine2() local_unnamed_addr #0 !dbg !506 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca %struct.nk_fiber*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !541
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !541
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !542
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !543, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !551, metadata !DIExpression()) #10, !dbg !543
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !550, metadata !DIExpression()) #10, !dbg !554
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !555
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !555
  %10 = load i64, i64* %9, align 8, !dbg !555
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !556
  %11 = bitcast i64* %3 to i8*, !dbg !557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10, !dbg !557
  %12 = bitcast i64* %4 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10, !dbg !558
  call void @nk_get_rand_bytes(i8* nonnull %11, i32 8) #11, !dbg !559
  call void @nk_get_rand_bytes(i8* nonnull %12, i32 8) #11, !dbg !560
  %13 = call i8* @kmem_malloc(i64 8) #11, !dbg !561
  call void @llvm.dbg.value(metadata i8* %13, metadata !536, metadata !DIExpression()), !dbg !561
  %14 = call i8* @kmem_malloc(i64 8) #11, !dbg !562
  call void @llvm.dbg.value(metadata i8* %14, metadata !539, metadata !DIExpression()), !dbg !562
  %15 = icmp ne i8* %13, null, !dbg !563
  %16 = icmp ne i8* %14, null, !dbg !565
  %17 = and i1 %15, %16, !dbg !566
  br i1 %17, label %20, label %18, !dbg !566

; <label>:18:                                     ; preds = %0
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !567
  br label %29, !dbg !569

; <label>:20:                                     ; preds = %0
  %21 = bitcast i8* %14 to i64*, !dbg !570
  call void @llvm.dbg.value(metadata i64* %21, metadata !538, metadata !DIExpression()), !dbg !571
  %22 = bitcast i8* %13 to i64*, !dbg !572
  call void @llvm.dbg.value(metadata i64* %22, metadata !535, metadata !DIExpression()), !dbg !573
  %23 = load i64, i64* %3, align 8, !dbg !574
  call void @llvm.dbg.value(metadata i64 %23, metadata !533, metadata !DIExpression()), !dbg !575
  %24 = urem i64 %23, 5000, !dbg !576
  store i64 %24, i64* %22, align 8, !dbg !577
  %25 = load i64, i64* %4, align 8, !dbg !578
  call void @llvm.dbg.value(metadata i64 %25, metadata !534, metadata !DIExpression()), !dbg !579
  %26 = urem i64 %25, 5000, !dbg !580
  store i64 %26, i64* %21, align 8, !dbg !581
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !510, metadata !DIExpression(DW_OP_deref)), !dbg !582
  %27 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %13, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #11, !dbg !583
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !584
  %28 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_2, i8* nonnull %14, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %2) #11, !dbg !585
  br label %29, !dbg !586

; <label>:29:                                     ; preds = %20, %18
  %30 = phi i32 [ 0, %20 ], [ -1, %18 ], !dbg !587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !588
  ret i32 %30, !dbg !588
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @nk_get_rand_bytes(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @kmem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @nk_vc_printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_1(i8*, i8** nocapture readnone) #0 !dbg !589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !591, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.value(metadata i8** undef, metadata !592, metadata !DIExpression()), !dbg !596
  %3 = bitcast i8* %0 to i64*, !dbg !597
  call void @llvm.dbg.value(metadata i64* %3, metadata !593, metadata !DIExpression()), !dbg !598
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !599
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !600
  call void @llvm.dbg.value(metadata i32 0, metadata !594, metadata !DIExpression()), !dbg !601
  %5 = load i64, i64* %3, align 8, !dbg !602
  %6 = icmp eq i64 %5, 0, !dbg !603
  br i1 %6, label %15, label %7, !dbg !604

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !594, metadata !DIExpression()), !dbg !601
  %9 = add i32 %8, 1, !dbg !605
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #11, !dbg !607
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #11, !dbg !608
  call void @llvm.dbg.value(metadata i32 %9, metadata !594, metadata !DIExpression()), !dbg !601
  %12 = zext i32 %9 to i64, !dbg !609
  %13 = load i64, i64* %3, align 8, !dbg !602
  %14 = icmp ugt i64 %13, %12, !dbg !603
  br i1 %14, label %7, label %15, !dbg !604, !llvm.loop !610

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !612
  call void @llvm.dbg.value(metadata i32 %16, metadata !594, metadata !DIExpression()), !dbg !601
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %16) #11, !dbg !613
  tail call void @kmem_free(i8* nonnull %0) #11, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !616 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8** undef, metadata !619, metadata !DIExpression()), !dbg !623
  %3 = bitcast i8* %0 to i64*, !dbg !624
  call void @llvm.dbg.value(metadata i64* %3, metadata !620, metadata !DIExpression()), !dbg !625
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !626
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !627
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !628
  %5 = load i64, i64* %3, align 8, !dbg !629
  %6 = icmp eq i64 %5, 0, !dbg !630
  br i1 %6, label %15, label %7, !dbg !631

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !621, metadata !DIExpression()), !dbg !628
  %9 = add i32 %8, 1, !dbg !632
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %8) #11, !dbg !634
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #11, !dbg !635
  call void @llvm.dbg.value(metadata i32 %9, metadata !621, metadata !DIExpression()), !dbg !628
  %12 = zext i32 %9 to i64, !dbg !636
  %13 = load i64, i64* %3, align 8, !dbg !629
  %14 = icmp ugt i64 %13, %12, !dbg !630
  br i1 %14, label %7, label %15, !dbg !631, !llvm.loop !637

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !639
  call void @llvm.dbg.value(metadata i32 %16, metadata !621, metadata !DIExpression()), !dbg !628
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #11, !dbg !640
  tail call void @kmem_free(i8* nonnull %0) #11, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !643 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !645, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %1, metadata !646, metadata !DIExpression()), !dbg !648
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !649
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !649
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !658, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #10, !dbg !658
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #10, !dbg !660
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !661
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !661
  %9 = load i64, i64* %8, align 8, !dbg !661
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !662
  %10 = bitcast i64* %4 to i8*, !dbg !663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10, !dbg !663
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11, !dbg !664
  %11 = call i8* @kmem_malloc(i64 8) #11, !dbg !665
  call void @llvm.dbg.value(metadata i8* %11, metadata !655, metadata !DIExpression()) #10, !dbg !665
  %12 = icmp eq i8* %11, null, !dbg !666
  br i1 %12, label %13, label %15, !dbg !668

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !669
  br label %20, !dbg !671

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !672
  call void @llvm.dbg.value(metadata i64* %16, metadata !654, metadata !DIExpression()) #10, !dbg !673
  %17 = load i64, i64* %4, align 8, !dbg !674
  call void @llvm.dbg.value(metadata i64 %17, metadata !653, metadata !DIExpression()) #10, !dbg !675
  %18 = urem i64 %17, 5000, !dbg !676
  store i64 %18, i64* %16, align 8, !dbg !677
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !652, metadata !DIExpression(DW_OP_deref)) #10, !dbg !678
  %19 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %11, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #11, !dbg !679
  br label %20, !dbg !680

; <label>:20:                                     ; preds = %13, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !681
  ret i32 0, !dbg !682
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !650 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !683
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !683
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !684, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #10, !dbg !684
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #10, !dbg !686
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !687
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !687
  %7 = load i64, i64* %6, align 8, !dbg !687
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !688
  %8 = bitcast i64* %2 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10, !dbg !689
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #11, !dbg !690
  %9 = call i8* @kmem_malloc(i64 8) #11, !dbg !691
  call void @llvm.dbg.value(metadata i8* %9, metadata !655, metadata !DIExpression()), !dbg !691
  %10 = icmp eq i8* %9, null, !dbg !692
  br i1 %10, label %11, label %13, !dbg !693

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !694
  br label %18, !dbg !695

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !696
  call void @llvm.dbg.value(metadata i64* %14, metadata !654, metadata !DIExpression()), !dbg !697
  %15 = load i64, i64* %2, align 8, !dbg !698
  call void @llvm.dbg.value(metadata i64 %15, metadata !653, metadata !DIExpression()), !dbg !699
  %16 = urem i64 %15, 5000, !dbg !700
  store i64 %16, i64* %14, align 8, !dbg !701
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !652, metadata !DIExpression(DW_OP_deref)), !dbg !702
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %9, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #11, !dbg !703
  br label %18, !dbg !704

; <label>:18:                                     ; preds = %13, %11
  %19 = phi i32 [ 0, %13 ], [ -1, %11 ], !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10, !dbg !706
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !706
  ret i32 %19, !dbg !706
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !707 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !713
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !719
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !720
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !720
  ret %struct.nk_fiber_percpu_state* %4, !dbg !721
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !722 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !725
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !728
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !729
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !729
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !730
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !730
  ret %struct.nk_fiber* %6, !dbg !731
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !732 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !733
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !736
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !737
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !737
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !738
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !738
  ret %struct.nk_fiber* %6, !dbg !739
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !740 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !743
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !746
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !747
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !747
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !748
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !748
  ret %struct.nk_thread* %6, !dbg !749
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !750 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !753
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !756
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !757
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !757
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !758
  ret %struct.list_head* %5, !dbg !759
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !760 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 %1, metadata !765, metadata !DIExpression()), !dbg !767
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !768
  %4 = load i64, i64* %3, align 8, !dbg !769
  %5 = add i64 %4, -8, !dbg !769
  store i64 %5, i64* %3, align 8, !dbg !769
  %6 = inttoptr i64 %5 to i64*, !dbg !770
  store i64 %1, i64* %6, align 8, !dbg !771
  ret void, !dbg !772
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !773 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !787
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !791
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !792
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !792
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !793
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !775, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !796, metadata !DIExpression()), !dbg !801
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !803
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !803
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !804
  br i1 %8, label %20, label %9, !dbg !805

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !777, metadata !DIExpression()), !dbg !806
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !806
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !806
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !777, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !776, metadata !DIExpression()), !dbg !795
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !807
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !808, metadata !DIExpression()), !dbg !813
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !815
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !815
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !816
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !817, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !822, metadata !DIExpression()), !dbg !825
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !826
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !827
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !828
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !829
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !830, metadata !DIExpression()), !dbg !833
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !835
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !835
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !836
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !836
  br label %20, !dbg !837

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !838
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !776, metadata !DIExpression()), !dbg !795
  ret %struct.nk_fiber* %21, !dbg !839
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !840 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !844, metadata !DIExpression()), !dbg !855
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !856
  store i32 4, i32* %3, align 4, !dbg !857
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !845, metadata !DIExpression()), !dbg !858
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !859
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !847, metadata !DIExpression()), !dbg !860
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !861
  %6 = load i32, i32* %5, align 8, !dbg !861
  %7 = icmp sgt i32 %6, 0, !dbg !862
  br i1 %7, label %8, label %66, !dbg !863

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !863

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !848, metadata !DIExpression()), !dbg !864
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !865
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !865
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !864
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !864
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !864
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !848, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !846, metadata !DIExpression()), !dbg !866
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !867
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !808, metadata !DIExpression()), !dbg !868
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !870
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !870
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !871
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !871
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !817, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !822, metadata !DIExpression()), !dbg !874
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !875
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !876
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !877
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !878
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !830, metadata !DIExpression()), !dbg !879
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !881
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !882
  %24 = load i32, i32* %5, align 8, !dbg !883
  %25 = add i32 %24, -1, !dbg !883
  store i32 %25, i32* %5, align 8, !dbg !883
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !884
  br i1 %26, label %63, label %27, !dbg !886

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !887, metadata !DIExpression()) #10, !dbg !895
  call void @llvm.dbg.value(metadata i8 1, metadata !892, metadata !DIExpression()) #10, !dbg !898
  %28 = call i64 @msr_read(i32 -1073741567) #11, !dbg !899
  call void @llvm.dbg.value(metadata i64 %28, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !903
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !904, !srcloc !924
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !911, metadata !DIExpression()) #10, !dbg !904
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !910, metadata !DIExpression()) #10, !dbg !925
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !909, metadata !DIExpression()) #10, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10, !dbg !927
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11, !dbg !934
  %30 = load i64, i64* %2, align 8, !dbg !935
  call void @llvm.dbg.value(metadata i64 %30, metadata !932, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10, !dbg !937
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !938
  %32 = load i32, i32* %31, align 8, !dbg !938
  %33 = zext i32 %32 to i64, !dbg !939
  %34 = urem i64 %30, %33, !dbg !940
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !941, !srcloc !942
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !919, metadata !DIExpression()) #10, !dbg !941
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !917, metadata !DIExpression()) #10, !dbg !943
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !916, metadata !DIExpression()) #10, !dbg !944
  %36 = shl nuw i64 %34, 32, !dbg !945
  %37 = ashr exact i64 %36, 32, !dbg !945
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !945
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !945
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !903
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !946
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !946
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !946
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !946
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !893, metadata !DIExpression()) #10, !dbg !903
  %44 = call i64 @msr_read(i32 -1073741567) #11, !dbg !947
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !951
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !952
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !952
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !953
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !894, metadata !DIExpression()) #10, !dbg !954
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !955
  store i32 1, i32* %49, align 4, !dbg !956
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !957
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !958, metadata !DIExpression()) #10, !dbg !962
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !961, metadata !DIExpression()) #10, !dbg !964
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !965
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !965
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !966, metadata !DIExpression()) #10, !dbg !973
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !971, metadata !DIExpression()) #10, !dbg !975
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !972, metadata !DIExpression()) #10, !dbg !976
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !977
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !978
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !979
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !980
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !981
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !982
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !983
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !984
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !984
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !986
  br i1 %58, label %61, label %59, !dbg !987

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #11, !dbg !988
  br label %61, !dbg !990

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !861
  br label %63, !dbg !861

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !861
  %65 = icmp sgt i32 %64, 0, !dbg !862
  br i1 %65, label %11, label %66, !dbg !863, !llvm.loop !991

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !993
  store i8 1, i8* %67, align 8, !dbg !994
  %68 = call i64 @msr_read(i32 -1073741567) #11, !dbg !995
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1000
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1001
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1001
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !775, metadata !DIExpression()) #10, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !796, metadata !DIExpression()) #10, !dbg !1005
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1007
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1007
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1008
  br i1 %75, label %88, label %76, !dbg !1009

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !777, metadata !DIExpression()) #10, !dbg !1010
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1010
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !777, metadata !DIExpression()) #10, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !776, metadata !DIExpression()) #10, !dbg !1004
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !808, metadata !DIExpression()) #10, !dbg !1012
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1014
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1014
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1015
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !817, metadata !DIExpression()) #10, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !822, metadata !DIExpression()) #10, !dbg !1018
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1019
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1020
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1021
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !830, metadata !DIExpression()) #10, !dbg !1023
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1025
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1025
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1026
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1026
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !776, metadata !DIExpression()) #10, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !845, metadata !DIExpression()), !dbg !858
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1027
  br i1 %87, label %88, label %95, !dbg !1029

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1030
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1035
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1036
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1036
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1037
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !845, metadata !DIExpression()), !dbg !858
  br label %95, !dbg !1038

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1039
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !845, metadata !DIExpression()), !dbg !858
  %97 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1040
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1043
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1044
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1044
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1045
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1046
  %102 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1047
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1050
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1051
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1051
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1052
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1052
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1053
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !808, metadata !DIExpression()), !dbg !1054
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1056
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1056
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1057
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1057
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !817, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !822, metadata !DIExpression()), !dbg !1060
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1061
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1062
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1063
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1064
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !830, metadata !DIExpression()), !dbg !1065
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1067
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1068
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1069
  %116 = load i8*, i8** %115, align 8, !dbg !1069
  call void @kmem_free(i8* %116) #11, !dbg !1069
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1070
  call void @kmem_free(i8* %117) #11, !dbg !1070
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #11, !dbg !1071
  ret void, !dbg !1072
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !888 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !887, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i8 %1, metadata !892, metadata !DIExpression()), !dbg !1074
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1075
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1079
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1080
  %6 = icmp eq i8 %1, 0, !dbg !1081
  br i1 %6, label %20, label %7, !dbg !1082

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1083, !srcloc !924
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !911, metadata !DIExpression()) #10, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !910, metadata !DIExpression()) #10, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !909, metadata !DIExpression()) #10, !dbg !1087
  %9 = bitcast i64* %3 to i8*, !dbg !1088
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !1088
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #11, !dbg !1090
  %10 = load i64, i64* %3, align 8, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %10, metadata !932, metadata !DIExpression()) #10, !dbg !1092
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !1093
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1094
  %12 = load i32, i32* %11, align 8, !dbg !1094
  %13 = zext i32 %12 to i64, !dbg !1095
  %14 = urem i64 %10, %13, !dbg !1096
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1097, !srcloc !942
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !919, metadata !DIExpression()) #10, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !917, metadata !DIExpression()) #10, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !916, metadata !DIExpression()) #10, !dbg !1099
  %16 = shl nuw i64 %14, 32, !dbg !1100
  %17 = ashr exact i64 %16, 32, !dbg !1100
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1100
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1100
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1080
  br label %20, !dbg !1101

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1102
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1102
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1102
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1102
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !893, metadata !DIExpression()), !dbg !1080
  %26 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1103
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1107
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1108
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1108
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1109
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !894, metadata !DIExpression()), !dbg !1110
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1111
  store i32 1, i32* %31, align 4, !dbg !1112
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1113
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !958, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !961, metadata !DIExpression()), !dbg !1116
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1117
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1117
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !966, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !971, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !972, metadata !DIExpression()), !dbg !1121
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1122
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1123
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1124
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1125
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1126
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1127
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1128
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1129
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1129
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1130
  br i1 %40, label %43, label %41, !dbg !1131

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #11, !dbg !1132
  br label %43, !dbg !1133

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1134
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1135 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1137, metadata !DIExpression()), !dbg !1138
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1139
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1139
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1140
  %5 = load i8*, i8** %4, align 8, !dbg !1140
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1141
  %7 = load i8**, i8*** %6, align 8, !dbg !1141
  tail call void %3(i8* %5, i8** %7) #11, !dbg !1142
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #9, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1145 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1147, metadata !DIExpression()), !dbg !1148
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1149
  %3 = bitcast i8** %2 to i64*, !dbg !1149
  %4 = load i64, i64* %3, align 8, !dbg !1149
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1150
  %6 = load i64, i64* %5, align 8, !dbg !1150
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !765, metadata !DIExpression()), !dbg !1154
  %8 = add i64 %4, -8, !dbg !1155
  %9 = add i64 %8, %6, !dbg !1156
  store i64 %9, i64* %7, align 8, !dbg !1156
  %10 = inttoptr i64 %9 to i64*, !dbg !1157
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1158
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1161
  %11 = load i64, i64* %7, align 8, !dbg !1162
  %12 = add i64 %11, -8, !dbg !1162
  store i64 %12, i64* %7, align 8, !dbg !1162
  %13 = inttoptr i64 %12 to i64*, !dbg !1163
  store i64 0, i64* %13, align 8, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1167
  %14 = load i64, i64* %7, align 8, !dbg !1168
  %15 = add i64 %14, -8, !dbg !1168
  store i64 %15, i64* %7, align 8, !dbg !1168
  %16 = inttoptr i64 %15 to i64*, !dbg !1169
  store i64 0, i64* %16, align 8, !dbg !1170
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1173
  %17 = load i64, i64* %7, align 8, !dbg !1174
  %18 = add i64 %17, -8, !dbg !1174
  store i64 %18, i64* %7, align 8, !dbg !1174
  %19 = inttoptr i64 %18 to i64*, !dbg !1175
  store i64 0, i64* %19, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1179
  %20 = load i64, i64* %7, align 8, !dbg !1180
  %21 = add i64 %20, -8, !dbg !1180
  store i64 %21, i64* %7, align 8, !dbg !1180
  %22 = inttoptr i64 %21 to i64*, !dbg !1181
  store i64 0, i64* %22, align 8, !dbg !1182
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1185
  %23 = load i64, i64* %7, align 8, !dbg !1186
  %24 = add i64 %23, -8, !dbg !1186
  store i64 %24, i64* %7, align 8, !dbg !1186
  %25 = inttoptr i64 %24 to i64*, !dbg !1187
  store i64 0, i64* %25, align 8, !dbg !1188
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1189
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %26, metadata !765, metadata !DIExpression()), !dbg !1192
  %27 = load i64, i64* %7, align 8, !dbg !1193
  %28 = add i64 %27, -8, !dbg !1193
  store i64 %28, i64* %7, align 8, !dbg !1193
  %29 = inttoptr i64 %28 to i64*, !dbg !1194
  store i64 %26, i64* %29, align 8, !dbg !1195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1198
  %30 = load i64, i64* %7, align 8, !dbg !1199
  %31 = add i64 %30, -8, !dbg !1199
  store i64 %31, i64* %7, align 8, !dbg !1199
  %32 = inttoptr i64 %31 to i64*, !dbg !1200
  store i64 0, i64* %32, align 8, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1204
  %33 = load i64, i64* %7, align 8, !dbg !1205
  %34 = add i64 %33, -8, !dbg !1205
  store i64 %34, i64* %7, align 8, !dbg !1205
  %35 = inttoptr i64 %34 to i64*, !dbg !1206
  store i64 0, i64* %35, align 8, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1210
  %36 = load i64, i64* %7, align 8, !dbg !1211
  %37 = add i64 %36, -8, !dbg !1211
  store i64 %37, i64* %7, align 8, !dbg !1211
  %38 = inttoptr i64 %37 to i64*, !dbg !1212
  store i64 0, i64* %38, align 8, !dbg !1213
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1216
  %39 = load i64, i64* %7, align 8, !dbg !1217
  %40 = add i64 %39, -8, !dbg !1217
  store i64 %40, i64* %7, align 8, !dbg !1217
  %41 = inttoptr i64 %40 to i64*, !dbg !1218
  store i64 0, i64* %41, align 8, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1222
  %42 = load i64, i64* %7, align 8, !dbg !1223
  %43 = add i64 %42, -8, !dbg !1223
  store i64 %43, i64* %7, align 8, !dbg !1223
  %44 = inttoptr i64 %43 to i64*, !dbg !1224
  store i64 0, i64* %44, align 8, !dbg !1225
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1228
  %45 = load i64, i64* %7, align 8, !dbg !1229
  %46 = add i64 %45, -8, !dbg !1229
  store i64 %46, i64* %7, align 8, !dbg !1229
  %47 = inttoptr i64 %46 to i64*, !dbg !1230
  store i64 0, i64* %47, align 8, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1234
  %48 = load i64, i64* %7, align 8, !dbg !1235
  %49 = add i64 %48, -8, !dbg !1235
  store i64 %49, i64* %7, align 8, !dbg !1235
  %50 = inttoptr i64 %49 to i64*, !dbg !1236
  store i64 0, i64* %50, align 8, !dbg !1237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1240
  %51 = load i64, i64* %7, align 8, !dbg !1241
  %52 = add i64 %51, -8, !dbg !1241
  store i64 %52, i64* %7, align 8, !dbg !1241
  %53 = inttoptr i64 %52 to i64*, !dbg !1242
  store i64 0, i64* %53, align 8, !dbg !1243
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !764, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !1246
  %54 = load i64, i64* %7, align 8, !dbg !1247
  %55 = add i64 %54, -8, !dbg !1247
  store i64 %55, i64* %7, align 8, !dbg !1247
  %56 = inttoptr i64 %55 to i64*, !dbg !1248
  store i64 0, i64* %56, align 8, !dbg !1249
  ret void, !dbg !1250
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1251 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1255, metadata !DIExpression()), !dbg !1260
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1261
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1265
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1266
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1266
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1267
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1256, metadata !DIExpression()), !dbg !1268
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1269
  %9 = load i32, i32* %8, align 4, !dbg !1269
  %10 = add i32 %9, -3, !dbg !1271
  %11 = icmp ult i32 %10, 2, !dbg !1271
  br i1 %11, label %13, label %12, !dbg !1271

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1272
  br label %13, !dbg !1274

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1275
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1279
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1280
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1280
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1281
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1281
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1282
  br i1 %20, label %36, label %21, !dbg !1283

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1284
  %23 = icmp eq i32 %22, 3, !dbg !1285
  br i1 %23, label %36, label %24, !dbg !1286

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1287
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !1291
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !1292
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !1292
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !1293
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1257, metadata !DIExpression()), !dbg !1294
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !958, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !961, metadata !DIExpression()), !dbg !1298
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !1299
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !1299
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !966, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !971, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !972, metadata !DIExpression()), !dbg !1303
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !1304
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !1305
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !1306
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !1307
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !1308
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1309
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1310
  br label %36, !dbg !1311

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !1312
  %38 = load i32, i32* %37, align 8, !dbg !1312
  %39 = icmp eq i32 %38, 0, !dbg !1314
  br i1 %39, label %40, label %55, !dbg !1315

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1316
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !1316
  %43 = load i64, i64* %42, align 8, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !1318, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1324
  %44 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1326
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1330
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1331
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1331
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !1332
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !1323, metadata !DIExpression()) #10, !dbg !1333
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !1334
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !1335
  store i64 %43, i64* %51, align 8, !dbg !1335
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1336, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1342, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1341, metadata !DIExpression()) #10, !dbg !1345
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !1346
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !1347
  store i64 %43, i64* %54, align 8, !dbg !1347
  br label %55, !dbg !1348

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1349
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !1352
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !1353
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !1353
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !1354
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !1355
  store i32 1, i32* %8, align 4, !dbg !1356
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1357
  store i32 5, i32* %61, align 4, !dbg !1358
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #11, !dbg !1359
  ret i32 0, !dbg !1360
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !1319 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !1318, metadata !DIExpression()), !dbg !1361
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1362
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1366
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1367
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1367
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1368
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1323, metadata !DIExpression()), !dbg !1369
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1370
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !1371
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1372, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1342, metadata !DIExpression()) #10, !dbg !1372
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1341, metadata !DIExpression()) #10, !dbg !1374
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1375
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !1376
  ret void, !dbg !1377
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !1378 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1383
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1387
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1388
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1388
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1389
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1389
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !1382, metadata !DIExpression()), !dbg !1390
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #9, !dbg !1391
  ret void, !dbg !1392
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !1393 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1397, metadata !DIExpression()), !dbg !1400
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1401
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1405
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1406
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1406
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !1407
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1398, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i8 0, metadata !1399, metadata !DIExpression()), !dbg !1409
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !1410
  %9 = zext i1 %8 to i8, !dbg !1412
  call void @llvm.dbg.value(metadata i8 %9, metadata !1399, metadata !DIExpression()), !dbg !1409
  ret i8 %9, !dbg !1413
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !913 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1414, !srcloc !924
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !911, metadata !DIExpression()) #10, !dbg !1414
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !910, metadata !DIExpression()) #10, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !909, metadata !DIExpression()) #10, !dbg !1417
  %3 = bitcast i64* %1 to i8*, !dbg !1418
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1418
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #11, !dbg !1420
  %4 = load i64, i64* %1, align 8, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %4, metadata !932, metadata !DIExpression()) #10, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1423
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1424
  %6 = load i32, i32* %5, align 8, !dbg !1424
  %7 = zext i32 %6 to i64, !dbg !1425
  %8 = urem i64 %4, %7, !dbg !1426
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1427, !srcloc !942
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !919, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !917, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !916, metadata !DIExpression()), !dbg !1429
  %10 = shl nuw i64 %8, 32, !dbg !1430
  %11 = ashr exact i64 %10, 32, !dbg !1430
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !1430
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !1430
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !1431
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !1431
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !1432
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !1432
  ret %struct.nk_thread* %17, !dbg !1433
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1434 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1436, metadata !DIExpression()), !dbg !1455
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1456, !srcloc !1457
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1440, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1438, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1437, metadata !DIExpression()), !dbg !1459
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1460
  %4 = load i32, i32* %3, align 8, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %4, metadata !1442, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 0, metadata !1445, metadata !DIExpression()), !dbg !1462
  %5 = icmp sgt i32 %4, 0, !dbg !1463
  br i1 %5, label %6, label %38, !dbg !1464

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !1465
  br label %8, !dbg !1465

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1445, metadata !DIExpression()), !dbg !1462
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !1465
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !1465
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !1466
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !1466
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !1467
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1443, metadata !DIExpression()), !dbg !1468
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !1469
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1447, metadata !DIExpression(DW_OP_deref)), !dbg !1469
  call void @llvm.dbg.value(metadata i8** %15, metadata !1444, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !1470
  %16 = load i8*, i8** %15, align 8, !dbg !1471
  br label %17, !dbg !1472

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !1471
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !1473
  %20 = bitcast i8* %18 to i8**, !dbg !1473
  %21 = load i8*, i8** %20, align 8, !dbg !1473
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !1473
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !1473
  br i1 %22, label %27, label %23, !dbg !1472

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !1471
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !1471
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1444, metadata !DIExpression()), !dbg !1470
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !1474
  br i1 %26, label %30, label %17, !dbg !1477, !llvm.loop !1478

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 undef, metadata !1445, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1462
  %29 = icmp slt i64 %28, %7, !dbg !1463
  br i1 %29, label %8, label %38, !dbg !1464, !llvm.loop !1481

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !808, metadata !DIExpression()), !dbg !1485
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1487
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !1487
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !1488
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !1488
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !817, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !822, metadata !DIExpression()), !dbg !1491
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !1492
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !1493
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !1494
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !1495
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !830, metadata !DIExpression()), !dbg !1496
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !1498
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !1499
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !1500
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !1501 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1530, !srcloc !1531
  call void @llvm.dbg.value(metadata i32 %1, metadata !1506, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !1504, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %1, metadata !1503, metadata !DIExpression()), !dbg !1533
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1534
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !1508, metadata !DIExpression()), !dbg !1537
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #9, !dbg !1538
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1539
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !1540
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !1541
  br i1 %6, label %7, label %109, !dbg !1542

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1543
  %9 = icmp eq i64 %8, 0, !dbg !1549
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %10, metadata !1554, metadata !DIExpression()) #10, !dbg !1556
  %11 = icmp eq i64 %10, 0, !dbg !1557
  br i1 %11, label %17, label %12, !dbg !1559

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !1560
  %14 = inttoptr i64 %13 to i16*, !dbg !1562
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !1563
  %16 = zext i16 %15 to i32, !dbg !1563
  br label %17, !dbg !1564

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !1565
  %19 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %19, metadata !1570, metadata !DIExpression()) #10, !dbg !1572
  %20 = icmp eq i64 %19, 0, !dbg !1573
  br i1 %20, label %25, label %21, !dbg !1575

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !1576
  %23 = inttoptr i64 %22 to i16*, !dbg !1578
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !1579
  br label %25, !dbg !1580

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !1581

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1509, metadata !DIExpression()), !dbg !1582
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1583, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1342, metadata !DIExpression()) #10, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1341, metadata !DIExpression()) #10, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1515, metadata !DIExpression()), !dbg !1582
  %28 = tail call i32 @nk_vc_is_active() #11, !dbg !1586
  %29 = icmp eq i32 %28, 0, !dbg !1586
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1587
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %31, metadata !1594, metadata !DIExpression()) #10, !dbg !1598
  %32 = icmp eq i64 %31, 0, !dbg !1599
  br i1 %32, label %38, label %33, !dbg !1601

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !1602
  %35 = inttoptr i64 %34 to i16*, !dbg !1604
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !1605
  %37 = icmp eq i16 %36, 0, !dbg !1606
  br i1 %37, label %38, label %39, !dbg !1587

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !1587

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !1587
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1587
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !1587
  br i1 %29, label %60, label %44, !dbg !1607

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !1608

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1608
  %47 = load i64, i64* %46, align 32, !dbg !1608
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1608
  %49 = load i8, i8* %48, align 8, !dbg !1608
  %50 = icmp eq i8 %49, 0, !dbg !1608
  br i1 %50, label %51, label %56, !dbg !1608

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1608
  %53 = load i8, i8* %52, align 64, !dbg !1608
  %54 = icmp eq i8 %53, 0, !dbg !1608
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !1608
  br label %56, !dbg !1608

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !1608
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1608
  br label %76, !dbg !1608

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !1609

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1609
  %63 = load i64, i64* %62, align 32, !dbg !1609
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1609
  %65 = load i8, i8* %64, align 8, !dbg !1609
  %66 = icmp eq i8 %65, 0, !dbg !1609
  br i1 %66, label %67, label %72, !dbg !1609

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1609
  %69 = load i8, i8* %68, align 64, !dbg !1609
  %70 = icmp eq i8 %69, 0, !dbg !1609
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !1609
  br label %72, !dbg !1609

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !1609
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1609
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %77, metadata !1614, metadata !DIExpression()) #10, !dbg !1616
  %78 = icmp eq i64 %77, 0, !dbg !1617
  br i1 %78, label %109, label %79, !dbg !1619

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !1620
  %81 = inttoptr i64 %80 to i16*, !dbg !1622
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !1623
  br label %109, !dbg !1624

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1528, metadata !DIExpression()), !dbg !1625
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !1626
  %85 = icmp eq i32 %84, 0, !dbg !1626
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %86, metadata !1594, metadata !DIExpression()) #10, !dbg !1633
  %87 = icmp eq i64 %86, 0, !dbg !1634
  br i1 %87, label %93, label %88, !dbg !1635

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !1636
  %90 = inttoptr i64 %89 to i16*, !dbg !1637
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !1638
  %92 = icmp eq i16 %91, 0, !dbg !1639
  br i1 %92, label %93, label %94, !dbg !1640

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !1640

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !1640
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1640
  br i1 %85, label %100, label %98, !dbg !1641

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1642
  br label %102, !dbg !1642

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1644
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %103, metadata !1614, metadata !DIExpression()) #10, !dbg !1649
  %104 = icmp eq i64 %103, 0, !dbg !1650
  br i1 %104, label %109, label %105, !dbg !1651

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !1652
  %107 = inttoptr i64 %106 to i16*, !dbg !1653
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !1654
  br label %109, !dbg !1655

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !1656
  ret i32 %110, !dbg !1657
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !1658 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1690, !srcloc !1691
  call void @llvm.dbg.value(metadata i32 %1, metadata !1667, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %1, metadata !1665, metadata !DIExpression()), !dbg !1692
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #11, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %2, metadata !1663, metadata !DIExpression()), !dbg !1693
  %3 = icmp eq i8* %2, null, !dbg !1694
  br i1 %3, label %4, label %106, !dbg !1695

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1696
  %6 = icmp eq i64 %5, 0, !dbg !1698
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %7, metadata !1554, metadata !DIExpression()) #10, !dbg !1702
  %8 = icmp eq i64 %7, 0, !dbg !1703
  br i1 %8, label %14, label %9, !dbg !1704

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !1705
  %11 = inttoptr i64 %10 to i16*, !dbg !1706
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1707
  %13 = zext i16 %12 to i32, !dbg !1707
  br label %14, !dbg !1708

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !1709
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %16, metadata !1570, metadata !DIExpression()) #10, !dbg !1713
  %17 = icmp eq i64 %16, 0, !dbg !1714
  br i1 %17, label %22, label %18, !dbg !1715

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1716
  %20 = inttoptr i64 %19 to i16*, !dbg !1717
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1718
  br label %22, !dbg !1719

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1720

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1669, metadata !DIExpression()), !dbg !1721
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1722, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1342, metadata !DIExpression()) #10, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1341, metadata !DIExpression()) #10, !dbg !1724
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1675, metadata !DIExpression()), !dbg !1721
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !1725
  %26 = icmp eq i32 %25, 0, !dbg !1725
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1726
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %28, metadata !1594, metadata !DIExpression()) #10, !dbg !1731
  %29 = icmp eq i64 %28, 0, !dbg !1732
  br i1 %29, label %35, label %30, !dbg !1733

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1734
  %32 = inttoptr i64 %31 to i16*, !dbg !1735
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1736
  %34 = icmp eq i16 %33, 0, !dbg !1737
  br i1 %34, label %35, label %36, !dbg !1726

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1726

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1726
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1726
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1726
  br i1 %26, label %57, label %41, !dbg !1738

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1739

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1739
  %44 = load i64, i64* %43, align 32, !dbg !1739
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1739
  %46 = load i8, i8* %45, align 8, !dbg !1739
  %47 = icmp eq i8 %46, 0, !dbg !1739
  br i1 %47, label %48, label %53, !dbg !1739

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1739
  %50 = load i8, i8* %49, align 64, !dbg !1739
  %51 = icmp eq i8 %50, 0, !dbg !1739
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1739
  br label %53, !dbg !1739

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1739
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1739
  br label %73, !dbg !1739

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1740

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1740
  %60 = load i64, i64* %59, align 32, !dbg !1740
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1740
  %62 = load i8, i8* %61, align 8, !dbg !1740
  %63 = icmp eq i8 %62, 0, !dbg !1740
  br i1 %63, label %64, label %69, !dbg !1740

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1740
  %66 = load i8, i8* %65, align 64, !dbg !1740
  %67 = icmp eq i8 %66, 0, !dbg !1740
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1740
  br label %69, !dbg !1740

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1740
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1740
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %74, metadata !1614, metadata !DIExpression()) #10, !dbg !1744
  %75 = icmp eq i64 %74, 0, !dbg !1745
  br i1 %75, label %114, label %76, !dbg !1746

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1747
  %78 = inttoptr i64 %77 to i16*, !dbg !1748
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1749
  br label %114, !dbg !1750

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1688, metadata !DIExpression()), !dbg !1751
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !1752
  %82 = icmp eq i32 %81, 0, !dbg !1752
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %83, metadata !1594, metadata !DIExpression()) #10, !dbg !1759
  %84 = icmp eq i64 %83, 0, !dbg !1760
  br i1 %84, label %90, label %85, !dbg !1761

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1762
  %87 = inttoptr i64 %86 to i16*, !dbg !1763
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1764
  %89 = icmp eq i16 %88, 0, !dbg !1765
  br i1 %89, label %90, label %91, !dbg !1766

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1766

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1766
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1766
  br i1 %82, label %97, label %95, !dbg !1767

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1768
  br label %99, !dbg !1768

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1770
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %100, metadata !1614, metadata !DIExpression()) #10, !dbg !1775
  %101 = icmp eq i64 %100, 0, !dbg !1776
  br i1 %101, label %114, label %102, !dbg !1777

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1778
  %104 = inttoptr i64 %103 to i16*, !dbg !1779
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1780
  br label %114, !dbg !1781

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !1782
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !1662, metadata !DIExpression()), !dbg !1783
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #11, !dbg !1784
  %109 = bitcast i8* %2 to i32*, !dbg !1785
  tail call void @spinlock_init(i32* %109) #11, !dbg !1786
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %110, metadata !830, metadata !DIExpression()), !dbg !1788
  %111 = bitcast i8* %110 to i8**, !dbg !1790
  store i8* %110, i8** %111, align 8, !dbg !1790
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1791
  %113 = bitcast i8* %112 to i8**, !dbg !1792
  store i8* %110, i8** %113, align 8, !dbg !1792
  br label %115, !dbg !1793

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #11, !dbg !1794
  br label %115, !dbg !1795

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !1796
  ret %struct.nk_fiber_percpu_state* %116, !dbg !1797
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !1798 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !1841
  %2 = zext i32 %1 to i64, !dbg !1842
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !1842
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !1842
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !1800, metadata !DIExpression()), !dbg !1843
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1844
  %6 = icmp eq i64 %5, 0, !dbg !1846
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %7, metadata !1554, metadata !DIExpression()) #10, !dbg !1850
  %8 = icmp eq i64 %7, 0, !dbg !1851
  br i1 %8, label %14, label %9, !dbg !1852

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !1853
  %11 = inttoptr i64 %10 to i16*, !dbg !1854
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1855
  %13 = zext i16 %12 to i32, !dbg !1855
  br label %14, !dbg !1856

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !1857
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %16, metadata !1570, metadata !DIExpression()) #10, !dbg !1861
  %17 = icmp eq i64 %16, 0, !dbg !1862
  br i1 %17, label %22, label %18, !dbg !1863

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1864
  %20 = inttoptr i64 %19 to i16*, !dbg !1865
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1866
  br label %22, !dbg !1867

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1868

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1801, metadata !DIExpression()), !dbg !1869
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1870, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1342, metadata !DIExpression()) #10, !dbg !1870
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1341, metadata !DIExpression()) #10, !dbg !1872
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1805, metadata !DIExpression()), !dbg !1869
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !1873
  %26 = icmp eq i32 %25, 0, !dbg !1873
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1874
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %28, metadata !1594, metadata !DIExpression()) #10, !dbg !1879
  %29 = icmp eq i64 %28, 0, !dbg !1880
  br i1 %29, label %35, label %30, !dbg !1881

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1882
  %32 = inttoptr i64 %31 to i16*, !dbg !1883
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1884
  %34 = icmp eq i16 %33, 0, !dbg !1885
  br i1 %34, label %35, label %36, !dbg !1874

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1874

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1874
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1874
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1874
  br i1 %26, label %57, label %41, !dbg !1886

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1887

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1887
  %44 = load i64, i64* %43, align 32, !dbg !1887
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1887
  %46 = load i8, i8* %45, align 8, !dbg !1887
  %47 = icmp eq i8 %46, 0, !dbg !1887
  br i1 %47, label %48, label %53, !dbg !1887

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1887
  %50 = load i8, i8* %49, align 64, !dbg !1887
  %51 = icmp eq i8 %50, 0, !dbg !1887
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1887
  br label %53, !dbg !1887

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1887
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #11, !dbg !1887
  br label %73, !dbg !1887

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1888

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1888
  %60 = load i64, i64* %59, align 32, !dbg !1888
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1888
  %62 = load i8, i8* %61, align 8, !dbg !1888
  %63 = icmp eq i8 %62, 0, !dbg !1888
  br i1 %63, label %64, label %69, !dbg !1888

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1888
  %66 = load i8, i8* %65, align 64, !dbg !1888
  %67 = icmp eq i8 %66, 0, !dbg !1888
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1888
  br label %69, !dbg !1888

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1888
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #11, !dbg !1888
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %74, metadata !1614, metadata !DIExpression()) #10, !dbg !1892
  %75 = icmp eq i64 %74, 0, !dbg !1893
  br i1 %75, label %106, label %76, !dbg !1894

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1895
  %78 = inttoptr i64 %77 to i16*, !dbg !1896
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1897
  br label %106, !dbg !1898

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1818, metadata !DIExpression()), !dbg !1899
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !1900
  %82 = icmp eq i32 %81, 0, !dbg !1900
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %83, metadata !1594, metadata !DIExpression()) #10, !dbg !1907
  %84 = icmp eq i64 %83, 0, !dbg !1908
  br i1 %84, label %90, label %85, !dbg !1909

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1910
  %87 = inttoptr i64 %86 to i16*, !dbg !1911
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1912
  %89 = icmp eq i16 %88, 0, !dbg !1913
  br i1 %89, label %90, label %91, !dbg !1914

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1914

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1914
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1914
  br i1 %82, label %97, label %95, !dbg !1915

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !1916
  br label %99, !dbg !1916

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !1918
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %100, metadata !1614, metadata !DIExpression()) #10, !dbg !1923
  %101 = icmp eq i64 %100, 0, !dbg !1924
  br i1 %101, label %106, label %102, !dbg !1925

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1926
  %104 = inttoptr i64 %103 to i16*, !dbg !1927
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1928
  br label %106, !dbg !1929

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #9, !dbg !1930
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !1931
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !1932
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !1933
  br i1 %109, label %110, label %212, !dbg !1934

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1935
  %112 = icmp eq i64 %111, 0, !dbg !1937
  %113 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %113, metadata !1554, metadata !DIExpression()) #10, !dbg !1941
  %114 = icmp eq i64 %113, 0, !dbg !1942
  br i1 %114, label %120, label %115, !dbg !1943

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !1944
  %117 = inttoptr i64 %116 to i16*, !dbg !1945
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !1946
  %119 = zext i16 %118 to i32, !dbg !1946
  br label %120, !dbg !1947

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !1948
  %122 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %122, metadata !1570, metadata !DIExpression()) #10, !dbg !1952
  %123 = icmp eq i64 %122, 0, !dbg !1953
  br i1 %123, label %128, label %124, !dbg !1954

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !1955
  %126 = inttoptr i64 %125 to i16*, !dbg !1956
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !1957
  br label %128, !dbg !1958

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !1959

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1820, metadata !DIExpression()), !dbg !1960
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1961, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1342, metadata !DIExpression()) #10, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1341, metadata !DIExpression()) #10, !dbg !1963
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1826, metadata !DIExpression()), !dbg !1960
  %131 = tail call i32 @nk_vc_is_active() #11, !dbg !1964
  %132 = icmp eq i32 %131, 0, !dbg !1964
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1965
  %134 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %134, metadata !1594, metadata !DIExpression()) #10, !dbg !1970
  %135 = icmp eq i64 %134, 0, !dbg !1971
  br i1 %135, label %141, label %136, !dbg !1972

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !1973
  %138 = inttoptr i64 %137 to i16*, !dbg !1974
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !1975
  %140 = icmp eq i16 %139, 0, !dbg !1976
  br i1 %140, label %141, label %142, !dbg !1965

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !1965

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !1965
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1965
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !1965
  br i1 %132, label %163, label %147, !dbg !1977

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !1978

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !1978
  %150 = load i64, i64* %149, align 32, !dbg !1978
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !1978
  %152 = load i8, i8* %151, align 8, !dbg !1978
  %153 = icmp eq i8 %152, 0, !dbg !1978
  br i1 %153, label %154, label %159, !dbg !1978

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !1978
  %156 = load i8, i8* %155, align 64, !dbg !1978
  %157 = icmp eq i8 %156, 0, !dbg !1978
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !1978
  br label %159, !dbg !1978

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !1978
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !1978
  br label %179, !dbg !1978

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !1979

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !1979
  %166 = load i64, i64* %165, align 32, !dbg !1979
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !1979
  %168 = load i8, i8* %167, align 8, !dbg !1979
  %169 = icmp eq i8 %168, 0, !dbg !1979
  br i1 %169, label %170, label %175, !dbg !1979

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !1979
  %172 = load i8, i8* %171, align 64, !dbg !1979
  %173 = icmp eq i8 %172, 0, !dbg !1979
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !1979
  br label %175, !dbg !1979

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !1979
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !1979
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %180, metadata !1614, metadata !DIExpression()) #10, !dbg !1983
  %181 = icmp eq i64 %180, 0, !dbg !1984
  br i1 %181, label %212, label %182, !dbg !1985

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !1986
  %184 = inttoptr i64 %183 to i16*, !dbg !1987
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !1988
  br label %212, !dbg !1989

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1839, metadata !DIExpression()), !dbg !1990
  %187 = tail call i32 @nk_vc_is_active() #11, !dbg !1991
  %188 = icmp eq i32 %187, 0, !dbg !1991
  %189 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %189, metadata !1594, metadata !DIExpression()) #10, !dbg !1998
  %190 = icmp eq i64 %189, 0, !dbg !1999
  br i1 %190, label %196, label %191, !dbg !2000

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2001
  %193 = inttoptr i64 %192 to i16*, !dbg !2002
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2003
  %195 = icmp eq i16 %194, 0, !dbg !2004
  br i1 %195, label %196, label %197, !dbg !2005

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2005

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2005
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2005
  br i1 %188, label %203, label %201, !dbg !2006

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !2007
  br label %205, !dbg !2007

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !2009
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %206, metadata !1614, metadata !DIExpression()) #10, !dbg !2014
  %207 = icmp eq i64 %206, 0, !dbg !2015
  br i1 %207, label %212, label %208, !dbg !2016

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2017
  %210 = inttoptr i64 %209 to i16*, !dbg !2018
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2019
  br label %212, !dbg !2020

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2021
  ret i32 %213, !dbg !2022
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2023 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2025, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8** undef, metadata !2026, metadata !DIExpression()), !dbg !2140
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2141, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1342, metadata !DIExpression()) #10, !dbg !2141
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1341, metadata !DIExpression()) #10, !dbg !2143
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2144
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !2145
  %8 = icmp eq i32 %7, 0, !dbg !2145
  br i1 %8, label %111, label %9, !dbg !2146

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2147
  %11 = icmp eq i64 %10, 0, !dbg !2149
  %12 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %12, metadata !1554, metadata !DIExpression()) #10, !dbg !2153
  %13 = icmp eq i64 %12, 0, !dbg !2154
  br i1 %13, label %19, label %14, !dbg !2155

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2156
  %16 = inttoptr i64 %15 to i16*, !dbg !2157
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2158
  %18 = zext i16 %17 to i32, !dbg !2158
  br label %19, !dbg !2159

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2160
  %21 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %21, metadata !1570, metadata !DIExpression()) #10, !dbg !2164
  %22 = icmp eq i64 %21, 0, !dbg !2165
  br i1 %22, label %27, label %23, !dbg !2166

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2167
  %25 = inttoptr i64 %24 to i16*, !dbg !2168
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2169
  br label %27, !dbg !2170

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2171

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2027, metadata !DIExpression()), !dbg !2172
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2173, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1342, metadata !DIExpression()) #10, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1341, metadata !DIExpression()) #10, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2033, metadata !DIExpression()), !dbg !2172
  %30 = tail call i32 @nk_vc_is_active() #11, !dbg !2176
  %31 = icmp eq i32 %30, 0, !dbg !2176
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2177
  %33 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %33, metadata !1594, metadata !DIExpression()) #10, !dbg !2182
  %34 = icmp eq i64 %33, 0, !dbg !2183
  br i1 %34, label %40, label %35, !dbg !2184

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2185
  %37 = inttoptr i64 %36 to i16*, !dbg !2186
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2187
  %39 = icmp eq i16 %38, 0, !dbg !2188
  br i1 %39, label %40, label %41, !dbg !2177

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2177

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2177
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2177
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2177
  br i1 %31, label %62, label %46, !dbg !2189

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2190

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2190
  %49 = load i64, i64* %48, align 32, !dbg !2190
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2190
  %51 = load i8, i8* %50, align 8, !dbg !2190
  %52 = icmp eq i8 %51, 0, !dbg !2190
  br i1 %52, label %53, label %58, !dbg !2190

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2190
  %55 = load i8, i8* %54, align 64, !dbg !2190
  %56 = icmp eq i8 %55, 0, !dbg !2190
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2190
  br label %58, !dbg !2190

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2190
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2190
  br label %78, !dbg !2190

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2191

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2191
  %65 = load i64, i64* %64, align 32, !dbg !2191
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2191
  %67 = load i8, i8* %66, align 8, !dbg !2191
  %68 = icmp eq i8 %67, 0, !dbg !2191
  br i1 %68, label %69, label %74, !dbg !2191

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2191
  %71 = load i8, i8* %70, align 64, !dbg !2191
  %72 = icmp eq i8 %71, 0, !dbg !2191
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2191
  br label %74, !dbg !2191

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2191
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2191
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %79, metadata !1614, metadata !DIExpression()) #10, !dbg !2195
  %80 = icmp eq i64 %79, 0, !dbg !2196
  br i1 %80, label %449, label %81, !dbg !2197

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2198
  %83 = inttoptr i64 %82 to i16*, !dbg !2199
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2200
  br label %449, !dbg !2201

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2046, metadata !DIExpression()), !dbg !2202
  %86 = tail call i32 @nk_vc_is_active() #11, !dbg !2203
  %87 = icmp eq i32 %86, 0, !dbg !2203
  %88 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %88, metadata !1594, metadata !DIExpression()) #10, !dbg !2210
  %89 = icmp eq i64 %88, 0, !dbg !2211
  br i1 %89, label %95, label %90, !dbg !2212

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2213
  %92 = inttoptr i64 %91 to i16*, !dbg !2214
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2215
  %94 = icmp eq i16 %93, 0, !dbg !2216
  br i1 %94, label %95, label %96, !dbg !2217

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2217

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2217
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2217
  br i1 %87, label %102, label %100, !dbg !2218

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2219
  br label %104, !dbg !2219

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2221
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %105, metadata !1614, metadata !DIExpression()) #10, !dbg !2226
  %106 = icmp eq i64 %105, 0, !dbg !2227
  br i1 %106, label %449, label %107, !dbg !2228

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2229
  %109 = inttoptr i64 %108 to i16*, !dbg !2230
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2231
  br label %449, !dbg !2232

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2233
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2234
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2234
  store i64 100000000, i64* %113, align 8, !dbg !2234
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2048, metadata !DIExpression(DW_OP_deref)), !dbg !2234
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #11, !dbg !2235
  %115 = icmp eq i32 %114, 0, !dbg !2235
  %116 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2236
  br i1 %115, label %219, label %117, !dbg !2237

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2238
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %119, metadata !1554, metadata !DIExpression()) #10, !dbg !2242
  %120 = icmp eq i64 %119, 0, !dbg !2243
  br i1 %120, label %126, label %121, !dbg !2244

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2245
  %123 = inttoptr i64 %122 to i16*, !dbg !2246
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2247
  %125 = zext i16 %124 to i32, !dbg !2247
  br label %126, !dbg !2248

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2249
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %128, metadata !1570, metadata !DIExpression()) #10, !dbg !2253
  %129 = icmp eq i64 %128, 0, !dbg !2254
  br i1 %129, label %134, label %130, !dbg !2255

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2256
  %132 = inttoptr i64 %131 to i16*, !dbg !2257
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2258
  br label %134, !dbg !2259

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2260

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2074, metadata !DIExpression()), !dbg !2261
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2262, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1342, metadata !DIExpression()) #10, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1341, metadata !DIExpression()) #10, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2080, metadata !DIExpression()), !dbg !2261
  %137 = call i32 @nk_vc_is_active() #11, !dbg !2265
  %138 = icmp eq i32 %137, 0, !dbg !2265
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2266
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %140, metadata !1594, metadata !DIExpression()) #10, !dbg !2271
  %141 = icmp eq i64 %140, 0, !dbg !2272
  br i1 %141, label %147, label %142, !dbg !2273

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2274
  %144 = inttoptr i64 %143 to i16*, !dbg !2275
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2276
  %146 = icmp eq i16 %145, 0, !dbg !2277
  br i1 %146, label %147, label %148, !dbg !2266

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2266

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2266
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2266
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2266
  br i1 %138, label %169, label %153, !dbg !2278

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2279

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2279
  %156 = load i64, i64* %155, align 32, !dbg !2279
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2279
  %158 = load i8, i8* %157, align 8, !dbg !2279
  %159 = icmp eq i8 %158, 0, !dbg !2279
  br i1 %159, label %160, label %165, !dbg !2279

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2279
  %162 = load i8, i8* %161, align 64, !dbg !2279
  %163 = icmp eq i8 %162, 0, !dbg !2279
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !2279
  br label %165, !dbg !2279

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !2279
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2279
  br label %185, !dbg !2279

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2280

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2280
  %172 = load i64, i64* %171, align 32, !dbg !2280
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2280
  %174 = load i8, i8* %173, align 8, !dbg !2280
  %175 = icmp eq i8 %174, 0, !dbg !2280
  br i1 %175, label %176, label %181, !dbg !2280

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2280
  %178 = load i8, i8* %177, align 64, !dbg !2280
  %179 = icmp eq i8 %178, 0, !dbg !2280
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !2280
  br label %181, !dbg !2280

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !2280
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2280
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %186, metadata !1614, metadata !DIExpression()) #10, !dbg !2284
  %187 = icmp eq i64 %186, 0, !dbg !2285
  br i1 %187, label %218, label %188, !dbg !2286

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2287
  %190 = inttoptr i64 %189 to i16*, !dbg !2288
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2289
  br label %218, !dbg !2290

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2093, metadata !DIExpression()), !dbg !2291
  %193 = call i32 @nk_vc_is_active() #11, !dbg !2292
  %194 = icmp eq i32 %193, 0, !dbg !2292
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %195, metadata !1594, metadata !DIExpression()) #10, !dbg !2299
  %196 = icmp eq i64 %195, 0, !dbg !2300
  br i1 %196, label %202, label %197, !dbg !2301

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !2302
  %199 = inttoptr i64 %198 to i16*, !dbg !2303
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !2304
  %201 = icmp eq i16 %200, 0, !dbg !2305
  br i1 %201, label %202, label %203, !dbg !2306

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !2306

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !2306
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2306
  br i1 %194, label %209, label %207, !dbg !2307

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2308
  br label %211, !dbg !2308

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2310
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %212, metadata !1614, metadata !DIExpression()) #10, !dbg !2315
  %213 = icmp eq i64 %212, 0, !dbg !2316
  br i1 %213, label %218, label %214, !dbg !2317

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !2318
  %216 = inttoptr i64 %215 to i16*, !dbg !2319
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !2320
  br label %218, !dbg !2321

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #12, !dbg !2322
  unreachable, !dbg !2322

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !2323
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !2326
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2095, metadata !DIExpression()), !dbg !2327
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !2328
  br i1 %223, label %224, label %326, !dbg !2329

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2330
  %226 = icmp eq i64 %225, 0, !dbg !2332
  %227 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %227, metadata !1554, metadata !DIExpression()) #10, !dbg !2336
  %228 = icmp eq i64 %227, 0, !dbg !2337
  br i1 %228, label %234, label %229, !dbg !2338

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !2339
  %231 = inttoptr i64 %230 to i16*, !dbg !2340
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !2341
  %233 = zext i16 %232 to i32, !dbg !2341
  br label %234, !dbg !2342

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !2343
  %236 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %236, metadata !1570, metadata !DIExpression()) #10, !dbg !2347
  %237 = icmp eq i64 %236, 0, !dbg !2348
  br i1 %237, label %242, label %238, !dbg !2349

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !2350
  %240 = inttoptr i64 %239 to i16*, !dbg !2351
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !2352
  br label %242, !dbg !2353

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !2354

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2096, metadata !DIExpression()), !dbg !2355
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2356, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1342, metadata !DIExpression()) #10, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1341, metadata !DIExpression()) #10, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2102, metadata !DIExpression()), !dbg !2355
  %245 = call i32 @nk_vc_is_active() #11, !dbg !2359
  %246 = icmp eq i32 %245, 0, !dbg !2359
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2360
  %248 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %248, metadata !1594, metadata !DIExpression()) #10, !dbg !2365
  %249 = icmp eq i64 %248, 0, !dbg !2366
  br i1 %249, label %255, label %250, !dbg !2367

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !2368
  %252 = inttoptr i64 %251 to i16*, !dbg !2369
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !2370
  %254 = icmp eq i16 %253, 0, !dbg !2371
  br i1 %254, label %255, label %256, !dbg !2360

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !2360

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !2360
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2360
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !2360
  br i1 %246, label %277, label %261, !dbg !2372

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !2373

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2373
  %264 = load i64, i64* %263, align 32, !dbg !2373
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2373
  %266 = load i8, i8* %265, align 8, !dbg !2373
  %267 = icmp eq i8 %266, 0, !dbg !2373
  br i1 %267, label %268, label %273, !dbg !2373

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2373
  %270 = load i8, i8* %269, align 64, !dbg !2373
  %271 = icmp eq i8 %270, 0, !dbg !2373
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !2373
  br label %273, !dbg !2373

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !2373
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2373
  br label %293, !dbg !2373

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !2374

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2374
  %280 = load i64, i64* %279, align 32, !dbg !2374
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2374
  %282 = load i8, i8* %281, align 8, !dbg !2374
  %283 = icmp eq i8 %282, 0, !dbg !2374
  br i1 %283, label %284, label %289, !dbg !2374

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2374
  %286 = load i8, i8* %285, align 64, !dbg !2374
  %287 = icmp eq i8 %286, 0, !dbg !2374
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !2374
  br label %289, !dbg !2374

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !2374
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2374
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %294, metadata !1614, metadata !DIExpression()) #10, !dbg !2378
  %295 = icmp eq i64 %294, 0, !dbg !2379
  br i1 %295, label %326, label %296, !dbg !2380

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !2381
  %298 = inttoptr i64 %297 to i16*, !dbg !2382
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !2383
  br label %326, !dbg !2384

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2115, metadata !DIExpression()), !dbg !2385
  %301 = call i32 @nk_vc_is_active() #11, !dbg !2386
  %302 = icmp eq i32 %301, 0, !dbg !2386
  %303 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %303, metadata !1594, metadata !DIExpression()) #10, !dbg !2393
  %304 = icmp eq i64 %303, 0, !dbg !2394
  br i1 %304, label %310, label %305, !dbg !2395

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !2396
  %307 = inttoptr i64 %306 to i16*, !dbg !2397
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !2398
  %309 = icmp eq i16 %308, 0, !dbg !2399
  br i1 %309, label %310, label %311, !dbg !2400

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !2400

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !2400
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2400
  br i1 %302, label %317, label %315, !dbg !2401

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2402
  br label %319, !dbg !2402

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2404
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %320, metadata !1614, metadata !DIExpression()) #10, !dbg !2409
  %321 = icmp eq i64 %320, 0, !dbg !2410
  br i1 %321, label %326, label %322, !dbg !2411

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !2412
  %324 = inttoptr i64 %323 to i16*, !dbg !2413
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !2414
  br label %326, !dbg !2415

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2416, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1342, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1341, metadata !DIExpression()) #10, !dbg !2418
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !2419
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !2420
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !2421
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #10, !dbg !2421
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2117, metadata !DIExpression(DW_OP_deref)), !dbg !2422
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #9, !dbg !2423
  %331 = icmp slt i32 %330, 0, !dbg !2424
  br i1 %331, label %332, label %434, !dbg !2425

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2426
  %334 = icmp eq i64 %333, 0, !dbg !2428
  %335 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %335, metadata !1554, metadata !DIExpression()) #10, !dbg !2432
  %336 = icmp eq i64 %335, 0, !dbg !2433
  br i1 %336, label %342, label %337, !dbg !2434

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !2435
  %339 = inttoptr i64 %338 to i16*, !dbg !2436
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !2437
  %341 = zext i16 %340 to i32, !dbg !2437
  br label %342, !dbg !2438

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !2439
  %344 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %344, metadata !1570, metadata !DIExpression()) #10, !dbg !2443
  %345 = icmp eq i64 %344, 0, !dbg !2444
  br i1 %345, label %350, label %346, !dbg !2445

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !2446
  %348 = inttoptr i64 %347 to i16*, !dbg !2447
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !2448
  br label %350, !dbg !2449

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !2450

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2118, metadata !DIExpression()), !dbg !2451
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2452, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1342, metadata !DIExpression()) #10, !dbg !2452
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1341, metadata !DIExpression()) #10, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2124, metadata !DIExpression()), !dbg !2451
  %353 = call i32 @nk_vc_is_active() #11, !dbg !2455
  %354 = icmp eq i32 %353, 0, !dbg !2455
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2456
  %356 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %356, metadata !1594, metadata !DIExpression()) #10, !dbg !2461
  %357 = icmp eq i64 %356, 0, !dbg !2462
  br i1 %357, label %363, label %358, !dbg !2463

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !2464
  %360 = inttoptr i64 %359 to i16*, !dbg !2465
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !2466
  %362 = icmp eq i16 %361, 0, !dbg !2467
  br i1 %362, label %363, label %364, !dbg !2456

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !2456

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !2456
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2456
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !2456
  br i1 %354, label %385, label %369, !dbg !2468

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !2469

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2469
  %372 = load i64, i64* %371, align 32, !dbg !2469
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2469
  %374 = load i8, i8* %373, align 8, !dbg !2469
  %375 = icmp eq i8 %374, 0, !dbg !2469
  br i1 %375, label %376, label %381, !dbg !2469

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2469
  %378 = load i8, i8* %377, align 64, !dbg !2469
  %379 = icmp eq i8 %378, 0, !dbg !2469
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !2469
  br label %381, !dbg !2469

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !2469
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2469
  br label %401, !dbg !2469

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !2470

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2470
  %388 = load i64, i64* %387, align 32, !dbg !2470
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2470
  %390 = load i8, i8* %389, align 8, !dbg !2470
  %391 = icmp eq i8 %390, 0, !dbg !2470
  br i1 %391, label %392, label %397, !dbg !2470

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2470
  %394 = load i8, i8* %393, align 64, !dbg !2470
  %395 = icmp eq i8 %394, 0, !dbg !2470
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !2470
  br label %397, !dbg !2470

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !2470
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2470
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %402, metadata !1614, metadata !DIExpression()) #10, !dbg !2474
  %403 = icmp eq i64 %402, 0, !dbg !2475
  br i1 %403, label %434, label %404, !dbg !2476

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !2477
  %406 = inttoptr i64 %405 to i16*, !dbg !2478
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !2479
  br label %434, !dbg !2480

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2137, metadata !DIExpression()), !dbg !2481
  %409 = call i32 @nk_vc_is_active() #11, !dbg !2482
  %410 = icmp eq i32 %409, 0, !dbg !2482
  %411 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %411, metadata !1594, metadata !DIExpression()) #10, !dbg !2489
  %412 = icmp eq i64 %411, 0, !dbg !2490
  br i1 %412, label %418, label %413, !dbg !2491

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !2492
  %415 = inttoptr i64 %414 to i16*, !dbg !2493
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !2494
  %417 = icmp eq i16 %416, 0, !dbg !2495
  br i1 %417, label %418, label %419, !dbg !2496

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !2496

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !2496
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2496
  br i1 %410, label %425, label %423, !dbg !2497

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2498
  br label %427, !dbg !2498

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2500
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2502
  call void @llvm.dbg.value(metadata i64 %428, metadata !1614, metadata !DIExpression()) #10, !dbg !2505
  %429 = icmp eq i64 %428, 0, !dbg !2506
  br i1 %429, label %434, label %430, !dbg !2507

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !2508
  %432 = inttoptr i64 %431 to i16*, !dbg !2509
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !2510
  br label %434, !dbg !2511

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !2512
  %436 = load i64, i64* %435, align 8, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2117, metadata !DIExpression(DW_OP_deref)), !dbg !2422
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !2513
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !2514
  store i64 %436, i64* %438, align 8, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2117, metadata !DIExpression(DW_OP_deref)), !dbg !2422
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !2515
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !2516
  store i64 %436, i64* %440, align 8, !dbg !2516
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2117, metadata !DIExpression()), !dbg !2422
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !2518
  store i32 1, i32* %442, align 8, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2117, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1137, metadata !DIExpression()) #10, !dbg !2520
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !2522
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !2522
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !2523
  %446 = load i8*, i8** %445, align 8, !dbg !2523
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !2524
  %448 = load i8**, i8*** %447, align 8, !dbg !2524
  call void %444(i8* %446, i8** %448) #11, !dbg !2525
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #11, !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #10, !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2527
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !2527
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !2528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8** %1, metadata !2531, metadata !DIExpression()), !dbg !2533
  br label %3, !dbg !2534

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #9, !dbg !2535
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2537
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !2542
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !2543
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !2543
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !2545, metadata !DIExpression()), !dbg !2549
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !2551
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2548, metadata !DIExpression()), !dbg !2552
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !2553
  br i1 %12, label %13, label %17, !dbg !2554

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !2555
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !2555
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !2556
  br i1 %16, label %18, label %17, !dbg !2557

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !2535, !llvm.loop !2558

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #11, !dbg !2560
  br label %17, !dbg !2562
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !2563 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !2568, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8** %2, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %3, metadata !2571, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2572, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2573, metadata !DIExpression()), !dbg !2584
  %6 = icmp eq i64 %3, 0, !dbg !2585
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %7, metadata !2574, metadata !DIExpression()), !dbg !2586
  %8 = tail call i8* @kmem_malloc(i64 152) #11, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %8, metadata !2575, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %8, metadata !2573, metadata !DIExpression()), !dbg !2584
  %9 = icmp eq i8* %8, null, !dbg !2588
  br i1 %9, label %104, label %10, !dbg !2590

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #11, !dbg !2591
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !2592
  %13 = bitcast i8* %12 to i32*, !dbg !2592
  store i32 0, i32* %13, align 4, !dbg !2593
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !2594
  %15 = bitcast i8* %14 to i64*, !dbg !2594
  store i64 %7, i64* %15, align 8, !dbg !2595
  %16 = tail call i8* @kmem_malloc(i64 %7) #11, !dbg !2596
  call void @llvm.dbg.value(metadata i8* %16, metadata !2577, metadata !DIExpression()), !dbg !2596
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !2597
  %18 = bitcast i8* %17 to i8**, !dbg !2597
  store i8* %16, i8** %18, align 8, !dbg !2598
  %19 = icmp eq i8* %16, null, !dbg !2599
  br i1 %19, label %20, label %21, !dbg !2601

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #11, !dbg !2602
  br label %104, !dbg !2604

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !2601
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !2605
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !2605
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !2606
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !2607
  %26 = bitcast i8* %25 to i8**, !dbg !2607
  store i8* %1, i8** %26, align 8, !dbg !2608
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !2609
  %28 = bitcast i8* %27 to i8***, !dbg !2609
  store i8** %2, i8*** %28, align 8, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %8, metadata !1147, metadata !DIExpression()), !dbg !2611
  %29 = load i64, i64* %15, align 8, !dbg !2613
  %30 = bitcast i8* %8 to i64*, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !765, metadata !DIExpression()), !dbg !2617
  %31 = add i64 %22, -8, !dbg !2618
  %32 = add i64 %31, %29, !dbg !2619
  store i64 %32, i64* %30, align 8, !dbg !2619
  %33 = inttoptr i64 %32 to i64*, !dbg !2620
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2624
  %34 = load i64, i64* %30, align 8, !dbg !2625
  %35 = add i64 %34, -8, !dbg !2625
  store i64 %35, i64* %30, align 8, !dbg !2625
  %36 = inttoptr i64 %35 to i64*, !dbg !2626
  store i64 0, i64* %36, align 8, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2630
  %37 = load i64, i64* %30, align 8, !dbg !2631
  %38 = add i64 %37, -8, !dbg !2631
  store i64 %38, i64* %30, align 8, !dbg !2631
  %39 = inttoptr i64 %38 to i64*, !dbg !2632
  store i64 0, i64* %39, align 8, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2636
  %40 = load i64, i64* %30, align 8, !dbg !2637
  %41 = add i64 %40, -8, !dbg !2637
  store i64 %41, i64* %30, align 8, !dbg !2637
  %42 = inttoptr i64 %41 to i64*, !dbg !2638
  store i64 0, i64* %42, align 8, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2642
  %43 = load i64, i64* %30, align 8, !dbg !2643
  %44 = add i64 %43, -8, !dbg !2643
  store i64 %44, i64* %30, align 8, !dbg !2643
  %45 = inttoptr i64 %44 to i64*, !dbg !2644
  store i64 0, i64* %45, align 8, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %8, metadata !764, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2648
  %46 = load i64, i64* %30, align 8, !dbg !2649
  %47 = add i64 %46, -8, !dbg !2649
  store i64 %47, i64* %30, align 8, !dbg !2649
  %48 = inttoptr i64 %47 to i64*, !dbg !2650
  store i64 0, i64* %48, align 8, !dbg !2651
  %49 = ptrtoint i8* %8 to i64, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %49, metadata !765, metadata !DIExpression()), !dbg !2655
  %50 = load i64, i64* %30, align 8, !dbg !2656
  %51 = add i64 %50, -8, !dbg !2656
  store i64 %51, i64* %30, align 8, !dbg !2656
  %52 = inttoptr i64 %51 to i64*, !dbg !2657
  store i64 %49, i64* %52, align 8, !dbg !2658
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2661
  %53 = load i64, i64* %30, align 8, !dbg !2662
  %54 = add i64 %53, -8, !dbg !2662
  store i64 %54, i64* %30, align 8, !dbg !2662
  %55 = inttoptr i64 %54 to i64*, !dbg !2663
  store i64 0, i64* %55, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2667
  %56 = load i64, i64* %30, align 8, !dbg !2668
  %57 = add i64 %56, -8, !dbg !2668
  store i64 %57, i64* %30, align 8, !dbg !2668
  %58 = inttoptr i64 %57 to i64*, !dbg !2669
  store i64 0, i64* %58, align 8, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2673
  %59 = load i64, i64* %30, align 8, !dbg !2674
  %60 = add i64 %59, -8, !dbg !2674
  store i64 %60, i64* %30, align 8, !dbg !2674
  %61 = inttoptr i64 %60 to i64*, !dbg !2675
  store i64 0, i64* %61, align 8, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2679
  %62 = load i64, i64* %30, align 8, !dbg !2680
  %63 = add i64 %62, -8, !dbg !2680
  store i64 %63, i64* %30, align 8, !dbg !2680
  %64 = inttoptr i64 %63 to i64*, !dbg !2681
  store i64 0, i64* %64, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2685
  %65 = load i64, i64* %30, align 8, !dbg !2686
  %66 = add i64 %65, -8, !dbg !2686
  store i64 %66, i64* %30, align 8, !dbg !2686
  %67 = inttoptr i64 %66 to i64*, !dbg !2687
  store i64 0, i64* %67, align 8, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2691
  %68 = load i64, i64* %30, align 8, !dbg !2692
  %69 = add i64 %68, -8, !dbg !2692
  store i64 %69, i64* %30, align 8, !dbg !2692
  %70 = inttoptr i64 %69 to i64*, !dbg !2693
  store i64 0, i64* %70, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2697
  %71 = load i64, i64* %30, align 8, !dbg !2698
  %72 = add i64 %71, -8, !dbg !2698
  store i64 %72, i64* %30, align 8, !dbg !2698
  %73 = inttoptr i64 %72 to i64*, !dbg !2699
  store i64 0, i64* %73, align 8, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2703
  %74 = load i64, i64* %30, align 8, !dbg !2704
  %75 = add i64 %74, -8, !dbg !2704
  store i64 %75, i64* %30, align 8, !dbg !2704
  %76 = inttoptr i64 %75 to i64*, !dbg !2705
  store i64 0, i64* %76, align 8, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 0, metadata !765, metadata !DIExpression()), !dbg !2709
  %77 = load i64, i64* %30, align 8, !dbg !2710
  %78 = add i64 %77, -8, !dbg !2710
  store i64 %78, i64* %30, align 8, !dbg !2710
  %79 = inttoptr i64 %78 to i64*, !dbg !2711
  store i64 0, i64* %79, align 8, !dbg !2712
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !2713
  br i1 %80, label %83, label %81, !dbg !2715

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !2716
  store i8* %8, i8** %82, align 8, !dbg !2716
  br label %83, !dbg !2718

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2719, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1342, metadata !DIExpression()) #10, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1341, metadata !DIExpression()) #10, !dbg !2721
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !2722
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !2722
  %87 = load i64, i64* %86, align 8, !dbg !2722
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !2723
  %89 = bitcast i8* %88 to i64*, !dbg !2724
  store i64 %87, i64* %89, align 8, !dbg !2724
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %90, metadata !830, metadata !DIExpression()), !dbg !2726
  %91 = bitcast i8* %90 to i8**, !dbg !2728
  store i8* %90, i8** %91, align 8, !dbg !2728
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !2729
  %93 = bitcast i8* %92 to i8**, !dbg !2730
  store i8* %90, i8** %93, align 8, !dbg !2730
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !2731
  %95 = bitcast i8* %94 to i32*, !dbg !2731
  store i32 0, i32* %95, align 8, !dbg !2732
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %96, metadata !830, metadata !DIExpression()), !dbg !2734
  %97 = bitcast i8* %96 to i8**, !dbg !2736
  store i8* %96, i8** %97, align 8, !dbg !2736
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !2737
  %99 = bitcast i8* %98 to i8**, !dbg !2738
  store i8* %96, i8** %99, align 8, !dbg !2738
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %100, metadata !830, metadata !DIExpression()), !dbg !2740
  %101 = bitcast i8* %100 to i8**, !dbg !2742
  store i8* %100, i8** %101, align 8, !dbg !2742
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !2743
  %103 = bitcast i8* %102 to i8**, !dbg !2744
  store i8* %100, i8** %103, align 8, !dbg !2744
  br label %104, !dbg !2745

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !2746
  ret i32 %105, !dbg !2747
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !2748 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2751
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2756
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2757
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2757
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !2758
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !2758
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2759, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1342, metadata !DIExpression()) #10, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1341, metadata !DIExpression()) #10, !dbg !2761
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !2762
  br i1 %8, label %9, label %54, !dbg !2763

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2764
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !2769
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2770
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2770
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !775, metadata !DIExpression()) #10, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !796, metadata !DIExpression()) #10, !dbg !2774
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !2776
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !2776
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !2777
  br i1 %17, label %30, label %18, !dbg !2778

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !777, metadata !DIExpression()) #10, !dbg !2779
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !2779
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !777, metadata !DIExpression()) #10, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !776, metadata !DIExpression()) #10, !dbg !2773
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !808, metadata !DIExpression()) #10, !dbg !2781
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !2783
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !2783
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !2784
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !817, metadata !DIExpression()) #10, !dbg !2785
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !822, metadata !DIExpression()) #10, !dbg !2787
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !2788
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !2789
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !2790
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !830, metadata !DIExpression()) #10, !dbg !2792
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !2794
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !2794
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !2795
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !2795
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !776, metadata !DIExpression()) #10, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !2750, metadata !DIExpression()), !dbg !2796
  %29 = icmp eq %struct.list_head** %19, null, !dbg !2797
  br i1 %29, label %30, label %51, !dbg !2799

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2800
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !2806
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !2807
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !2807
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !2808
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !2808
  %37 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2809
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !2813
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !2814
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !2814
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !2815
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !2815
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !2816
  br i1 %43, label %54, label %44, !dbg !2817

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2818
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !2823
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !2824
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !2824
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !2825
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !2825
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !2750, metadata !DIExpression()), !dbg !2796
  br label %51, !dbg !2826

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !2827
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !2750, metadata !DIExpression()), !dbg !2796
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #9, !dbg !2828
  br label %54, !dbg !2829

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !2827
  ret i32 %55, !dbg !2830
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !2831 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2874
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2833, metadata !DIExpression()), !dbg !2877
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2878
  %5 = icmp eq i64 %4, 0, !dbg !2880
  %6 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %6, metadata !1554, metadata !DIExpression()) #10, !dbg !2884
  %7 = icmp eq i64 %6, 0, !dbg !2885
  br i1 %7, label %13, label %8, !dbg !2886

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !2887
  %10 = inttoptr i64 %9 to i16*, !dbg !2888
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !2889
  %12 = zext i16 %11 to i32, !dbg !2889
  br label %13, !dbg !2890

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !2891
  %15 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %15, metadata !1570, metadata !DIExpression()) #10, !dbg !2895
  %16 = icmp eq i64 %15, 0, !dbg !2896
  br i1 %16, label %21, label %17, !dbg !2897

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !2898
  %19 = inttoptr i64 %18 to i16*, !dbg !2899
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !2900
  br label %21, !dbg !2901

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !2902

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2834, metadata !DIExpression()), !dbg !2903
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2904, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1342, metadata !DIExpression()) #10, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1341, metadata !DIExpression()) #10, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2838, metadata !DIExpression()), !dbg !2903
  %24 = tail call i32 @nk_vc_is_active() #11, !dbg !2907
  %25 = icmp eq i32 %24, 0, !dbg !2907
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2908
  %27 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %27, metadata !1594, metadata !DIExpression()) #10, !dbg !2913
  %28 = icmp eq i64 %27, 0, !dbg !2914
  br i1 %28, label %34, label %29, !dbg !2915

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !2916
  %31 = inttoptr i64 %30 to i16*, !dbg !2917
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !2918
  %33 = icmp eq i16 %32, 0, !dbg !2919
  br i1 %33, label %34, label %35, !dbg !2908

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !2908

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !2908
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2908
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !2908
  br i1 %25, label %58, label %40, !dbg !2920

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !2921

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !2921
  %43 = load i64, i64* %42, align 32, !dbg !2921
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !2921
  %45 = load i8, i8* %44, align 8, !dbg !2921
  %46 = icmp eq i8 %45, 0, !dbg !2921
  br i1 %46, label %47, label %52, !dbg !2921

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !2921
  %49 = load i8, i8* %48, align 64, !dbg !2921
  %50 = icmp eq i8 %49, 0, !dbg !2921
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !2921
  br label %52, !dbg !2921

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !2921
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2921
  %56 = load i32, i32* %55, align 8, !dbg !2921
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #11, !dbg !2921
  br label %76, !dbg !2921

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !2922

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !2922
  %61 = load i64, i64* %60, align 32, !dbg !2922
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !2922
  %63 = load i8, i8* %62, align 8, !dbg !2922
  %64 = icmp eq i8 %63, 0, !dbg !2922
  br i1 %64, label %65, label %70, !dbg !2922

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !2922
  %67 = load i8, i8* %66, align 64, !dbg !2922
  %68 = icmp eq i8 %67, 0, !dbg !2922
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !2922
  br label %70, !dbg !2922

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !2922
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2922
  %74 = load i32, i32* %73, align 8, !dbg !2922
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #11, !dbg !2922
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %77, metadata !1614, metadata !DIExpression()) #10, !dbg !2926
  %78 = icmp eq i64 %77, 0, !dbg !2927
  br i1 %78, label %111, label %79, !dbg !2928

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2929
  %81 = inttoptr i64 %80 to i16*, !dbg !2930
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2931
  br label %111, !dbg !2932

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2851, metadata !DIExpression()), !dbg !2933
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !2934
  %85 = icmp eq i32 %84, 0, !dbg !2934
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %86, metadata !1594, metadata !DIExpression()) #10, !dbg !2941
  %87 = icmp eq i64 %86, 0, !dbg !2942
  br i1 %87, label %93, label %88, !dbg !2943

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2944
  %90 = inttoptr i64 %89 to i16*, !dbg !2945
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2946
  %92 = icmp eq i16 %91, 0, !dbg !2947
  br i1 %92, label %93, label %94, !dbg !2948

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2948

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !2948
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2948
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2948
  %99 = load i32, i32* %98, align 8, !dbg !2948
  br i1 %85, label %102, label %100, !dbg !2949

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !2950
  br label %104, !dbg !2950

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !2952
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %105, metadata !1614, metadata !DIExpression()) #10, !dbg !2957
  %106 = icmp eq i64 %105, 0, !dbg !2958
  br i1 %106, label %111, label %107, !dbg !2959

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2960
  %109 = inttoptr i64 %108 to i16*, !dbg !2961
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2962
  br label %111, !dbg !2963

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #10, !dbg !2964
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2995, !srcloc !2996
  call void @llvm.dbg.value(metadata i32 %113, metadata !2972, metadata !DIExpression()) #10, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %113, metadata !2969, metadata !DIExpression()) #10, !dbg !2997
  call void @llvm.dbg.value(metadata i8** %1, metadata !2967, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2998
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #11, !dbg !2999
  %115 = icmp eq i32 %114, 0, !dbg !2999
  br i1 %115, label %321, label %116, !dbg !3000

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3001
  %118 = icmp eq i64 %117, 0, !dbg !3003
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %119, metadata !1554, metadata !DIExpression()) #10, !dbg !3007
  %120 = icmp eq i64 %119, 0, !dbg !3008
  br i1 %120, label %126, label %121, !dbg !3009

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3010
  %123 = inttoptr i64 %122 to i16*, !dbg !3011
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3012
  %125 = zext i16 %124 to i32, !dbg !3012
  br label %126, !dbg !3013

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3014
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %128, metadata !1570, metadata !DIExpression()) #10, !dbg !3018
  %129 = icmp eq i64 %128, 0, !dbg !3019
  br i1 %129, label %134, label %130, !dbg !3020

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3021
  %132 = inttoptr i64 %131 to i16*, !dbg !3022
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3023
  br label %134, !dbg !3024

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3025

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2974, metadata !DIExpression()) #10, !dbg !3026
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3027, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1342, metadata !DIExpression()) #10, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1341, metadata !DIExpression()) #10, !dbg !3029
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2979, metadata !DIExpression()) #10, !dbg !3026
  %137 = call i32 @nk_vc_is_active() #11, !dbg !3030
  %138 = icmp eq i32 %137, 0, !dbg !3030
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3031
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %140, metadata !1594, metadata !DIExpression()) #10, !dbg !3036
  %141 = icmp eq i64 %140, 0, !dbg !3037
  br i1 %141, label %147, label %142, !dbg !3038

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3039
  %144 = inttoptr i64 %143 to i16*, !dbg !3040
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3041
  %146 = icmp eq i16 %145, 0, !dbg !3042
  br i1 %146, label %147, label %148, !dbg !3031

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3031

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3031
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3031
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
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3044
  br label %165, !dbg !3044

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3044
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3044
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
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3045
  br label %181, !dbg !3045

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3045
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3045
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %186, metadata !1614, metadata !DIExpression()) #10, !dbg !3049
  %187 = icmp eq i64 %186, 0, !dbg !3050
  br i1 %187, label %218, label %188, !dbg !3051

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3052
  %190 = inttoptr i64 %189 to i16*, !dbg !3053
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3054
  br label %218, !dbg !3055

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2992, metadata !DIExpression()) #10, !dbg !3056
  %193 = call i32 @nk_vc_is_active() #11, !dbg !3057
  %194 = icmp eq i32 %193, 0, !dbg !3057
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %195, metadata !1594, metadata !DIExpression()) #10, !dbg !3064
  %196 = icmp eq i64 %195, 0, !dbg !3065
  br i1 %196, label %202, label %197, !dbg !3066

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3067
  %199 = inttoptr i64 %198 to i16*, !dbg !3068
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3069
  %201 = icmp eq i16 %200, 0, !dbg !3070
  br i1 %201, label %202, label %203, !dbg !3071

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3071

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3071
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3071
  br i1 %194, label %209, label %207, !dbg !3072

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3073
  br label %211, !dbg !3073

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3075
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %212, metadata !1614, metadata !DIExpression()) #10, !dbg !3080
  %213 = icmp eq i64 %212, 0, !dbg !3081
  br i1 %213, label %218, label %214, !dbg !3082

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3083
  %216 = inttoptr i64 %215 to i16*, !dbg !3084
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3085
  br label %218, !dbg !3086

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3087
  %219 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3088
  %220 = icmp eq i64 %219, 0, !dbg !3090
  %221 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %221, metadata !1554, metadata !DIExpression()) #10, !dbg !3094
  %222 = icmp eq i64 %221, 0, !dbg !3095
  br i1 %222, label %228, label %223, !dbg !3096

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3097
  %225 = inttoptr i64 %224 to i16*, !dbg !3098
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3099
  %227 = zext i16 %226 to i32, !dbg !3099
  br label %228, !dbg !3100

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3101
  %230 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %230, metadata !1570, metadata !DIExpression()) #10, !dbg !3105
  %231 = icmp eq i64 %230, 0, !dbg !3106
  br i1 %231, label %236, label %232, !dbg !3107

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3108
  %234 = inttoptr i64 %233 to i16*, !dbg !3109
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3110
  br label %236, !dbg !3111

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3112

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2853, metadata !DIExpression()), !dbg !3113
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3114, !srcloc !1344
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1342, metadata !DIExpression()) #10, !dbg !3114
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1341, metadata !DIExpression()) #10, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2859, metadata !DIExpression()), !dbg !3113
  %239 = call i32 @nk_vc_is_active() #11, !dbg !3117
  %240 = icmp eq i32 %239, 0, !dbg !3117
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3118
  %242 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %242, metadata !1594, metadata !DIExpression()) #10, !dbg !3123
  %243 = icmp eq i64 %242, 0, !dbg !3124
  br i1 %243, label %249, label %244, !dbg !3125

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3126
  %246 = inttoptr i64 %245 to i16*, !dbg !3127
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3128
  %248 = icmp eq i16 %247, 0, !dbg !3129
  br i1 %248, label %249, label %250, !dbg !3118

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3118

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3118
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3118
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3118
  br i1 %240, label %271, label %255, !dbg !3130

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3131

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3131
  %258 = load i64, i64* %257, align 32, !dbg !3131
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3131
  %260 = load i8, i8* %259, align 8, !dbg !3131
  %261 = icmp eq i8 %260, 0, !dbg !3131
  br i1 %261, label %262, label %267, !dbg !3131

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3131
  %264 = load i8, i8* %263, align 64, !dbg !3131
  %265 = icmp eq i8 %264, 0, !dbg !3131
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3131
  br label %267, !dbg !3131

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3131
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3131
  br label %287, !dbg !3131

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3132

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3132
  %274 = load i64, i64* %273, align 32, !dbg !3132
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3132
  %276 = load i8, i8* %275, align 8, !dbg !3132
  %277 = icmp eq i8 %276, 0, !dbg !3132
  br i1 %277, label %278, label %283, !dbg !3132

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3132
  %280 = load i8, i8* %279, align 64, !dbg !3132
  %281 = icmp eq i8 %280, 0, !dbg !3132
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3132
  br label %283, !dbg !3132

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3132
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3132
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %288, metadata !1614, metadata !DIExpression()) #10, !dbg !3136
  %289 = icmp eq i64 %288, 0, !dbg !3137
  br i1 %289, label %320, label %290, !dbg !3138

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3139
  %292 = inttoptr i64 %291 to i16*, !dbg !3140
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3141
  br label %320, !dbg !3142

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2872, metadata !DIExpression()), !dbg !3143
  %295 = call i32 @nk_vc_is_active() #11, !dbg !3144
  %296 = icmp eq i32 %295, 0, !dbg !3144
  %297 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %297, metadata !1594, metadata !DIExpression()) #10, !dbg !3151
  %298 = icmp eq i64 %297, 0, !dbg !3152
  br i1 %298, label %304, label %299, !dbg !3153

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3154
  %301 = inttoptr i64 %300 to i16*, !dbg !3155
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3156
  %303 = icmp eq i16 %302, 0, !dbg !3157
  br i1 %303, label %304, label %305, !dbg !3158

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3158

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3158
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3158
  br i1 %296, label %311, label %309, !dbg !3159

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3160
  br label %313, !dbg !3160

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3162
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %314, metadata !1614, metadata !DIExpression()) #10, !dbg !3167
  %315 = icmp eq i64 %314, 0, !dbg !3168
  br i1 %315, label %320, label %316, !dbg !3169

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3170
  %318 = inttoptr i64 %317 to i16*, !dbg !3171
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3172
  br label %320, !dbg !3173

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #12, !dbg !3174
  unreachable, !dbg !3174

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3087
  ret void, !dbg !3175
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3176 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3180, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8** %2, metadata !3182, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %3, metadata !3183, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8 %4, metadata !3184, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3185, metadata !DIExpression()), !dbg !3191
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #9, !dbg !3192
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3193
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #9, !dbg !3194
  ret i32 0, !dbg !3195
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3196 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !3197
  %2 = tail call i32 @nk_fiber_yield() #9, !dbg !3198
  ret i32 %2, !dbg !3199
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3200 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1436, metadata !DIExpression()) #10, !dbg !3207
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !3209, !srcloc !1457
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1440, metadata !DIExpression()) #10, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1438, metadata !DIExpression()) #10, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1437, metadata !DIExpression()) #10, !dbg !3211
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3212
  %4 = load i32, i32* %3, align 8, !dbg !3212
  call void @llvm.dbg.value(metadata i32 %4, metadata !1442, metadata !DIExpression()) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i32 0, metadata !1445, metadata !DIExpression()) #10, !dbg !3214
  %5 = icmp sgt i32 %4, 0, !dbg !3215
  br i1 %5, label %6, label %30, !dbg !3216

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3217
  br label %8, !dbg !3217

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1445, metadata !DIExpression()) #10, !dbg !3214
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3217
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3217
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3218
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3218
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1443, metadata !DIExpression()) #10, !dbg !3220
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3221
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1447, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3221
  call void @llvm.dbg.value(metadata i8** %15, metadata !1444, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #10, !dbg !3222
  %16 = load i8*, i8** %15, align 8, !dbg !3223
  br label %17, !dbg !3224

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3223
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3225
  %20 = bitcast i8* %18 to i8**, !dbg !3225
  %21 = load i8*, i8** %20, align 8, !dbg !3225
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #10, !dbg !3225
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3225
  br i1 %22, label %27, label %23, !dbg !3224

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3223
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1444, metadata !DIExpression()) #10, !dbg !3222
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3226
  br i1 %26, label %75, label %17, !dbg !3227, !llvm.loop !1478

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i32 undef, metadata !1445, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !3214
  %29 = icmp slt i64 %28, %7, !dbg !3215
  br i1 %29, label %8, label %30, !dbg !3216, !llvm.loop !1481

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3229
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3234
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3235
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3235
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !775, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !796, metadata !DIExpression()) #10, !dbg !3239
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !3241
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !3241
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !3242
  br i1 %38, label %51, label %39, !dbg !3243

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !777, metadata !DIExpression()) #10, !dbg !3244
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !3244
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !777, metadata !DIExpression()) #10, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !776, metadata !DIExpression()) #10, !dbg !3238
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !3245
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !808, metadata !DIExpression()) #10, !dbg !3246
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !3248
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !3248
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !817, metadata !DIExpression()) #10, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !822, metadata !DIExpression()) #10, !dbg !3252
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !3253
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3254
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !3255
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !830, metadata !DIExpression()) #10, !dbg !3257
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3259
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !3259
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !3260
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !3260
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !776, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3203, metadata !DIExpression()), !dbg !3261
  %50 = icmp eq %struct.list_head** %40, null, !dbg !3262
  br i1 %50, label %51, label %72, !dbg !3264

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3265
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !3271
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !3272
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !3272
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !3273
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !3273
  %58 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3274
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3278
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3279
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3279
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !3280
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !3280
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !3281
  br i1 %64, label %84, label %65, !dbg !3282

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3283
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !3288
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !3289
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !3289
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !3290
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3203, metadata !DIExpression()), !dbg !3261
  br label %72, !dbg !3291

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !3292
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3203, metadata !DIExpression()), !dbg !3261
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #9, !dbg !3293
  br label %84, !dbg !3294

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3295
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !808, metadata !DIExpression()) #10, !dbg !3296
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3298
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !3298
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !3299
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !817, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !822, metadata !DIExpression()) #10, !dbg !3302
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !3303
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !3304
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !3305
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !3306
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !830, metadata !DIExpression()) #10, !dbg !3307
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !3309
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !3310
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #9, !dbg !3311
  br label %84, !dbg !3312

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !3313
  ret i32 %85, !dbg !3314
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3315 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %1, metadata !3323, metadata !DIExpression()), !dbg !3325
  %3 = tail call zeroext i8 %0(i8* %1) #11, !dbg !3326
  %4 = icmp eq i8 %3, 0, !dbg !3326
  br i1 %4, label %7, label %5, !dbg !3328

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #9, !dbg !3329
  br label %7, !dbg !3331

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !3332
  ret i32 %8, !dbg !3333
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3334 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i8* %2, metadata !3340, metadata !DIExpression()), !dbg !3343
  %4 = tail call zeroext i8 %1(i8* %2) #11, !dbg !3344
  %5 = icmp eq i8 %4, 0, !dbg !3344
  br i1 %5, label %8, label %6, !dbg !3346

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #9, !dbg !3347
  br label %8, !dbg !3349

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !3350
  ret i32 %9, !dbg !3351
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !3352 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3371
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3375
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3376
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3376
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !3377
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3377
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3354, metadata !DIExpression()), !dbg !3378
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3379, !srcloc !3380
  call void @llvm.dbg.value(metadata i64 %8, metadata !3361, metadata !DIExpression()), !dbg !3381
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %9, metadata !3362, metadata !DIExpression()), !dbg !3383
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %10, metadata !3363, metadata !DIExpression()), !dbg !3385
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %11, metadata !3364, metadata !DIExpression()), !dbg !3387
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %12, metadata !3365, metadata !DIExpression()), !dbg !3389
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !3390
  %14 = load i8*, i8** %13, align 8, !dbg !3390
  %15 = icmp ugt i8* %11, %14, !dbg !3392
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !3393
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !3394
  %19 = icmp ult i8* %11, %18, !dbg !3395
  %20 = and i1 %15, %19, !dbg !3396
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %21, metadata !3364, metadata !DIExpression()), !dbg !3387
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %22, metadata !3366, metadata !DIExpression()), !dbg !3398
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !3399
  %24 = ptrtoint i8* %23 to i64, !dbg !3400
  %25 = ptrtoint i8* %12 to i64, !dbg !3400
  %26 = sub i64 %24, %25, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %26, metadata !3355, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !3401
  %27 = ptrtoint i8* %10 to i64, !dbg !3402
  call void @llvm.dbg.value(metadata i64 undef, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 72, metadata !3358, metadata !DIExpression()), !dbg !3404
  %28 = bitcast i8* %22 to i64*, !dbg !3405
  %29 = load i64, i64* %28, align 8, !dbg !3405
  %30 = sub i64 %29, %25, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %30, metadata !3359, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %17, metadata !3356, metadata !DIExpression()), !dbg !3408
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !3409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #10, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !3367, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #9, !dbg !3411
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3412
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !3367, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !764, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !765, metadata !DIExpression()), !dbg !3415
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !3416
  %35 = load i64, i64* %34, align 8, !dbg !3417
  %36 = add i64 %35, -8, !dbg !3417
  store i64 %36, i64* %34, align 8, !dbg !3417
  %37 = inttoptr i64 %36 to i64*, !dbg !3418
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !3419
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !3367, metadata !DIExpression()), !dbg !3410
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !3421
  %40 = load i8*, i8** %39, align 8, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %40, metadata !3360, metadata !DIExpression()), !dbg !3422
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !3423
  %42 = sub i64 -16, %26, !dbg !3424
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !3424
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #11, !dbg !3425
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !3426
  %46 = ptrtoint i8* %45 to i64, !dbg !3427
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !3367, metadata !DIExpression()), !dbg !3410
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !3429
  store i64 %46, i64* %48, align 8, !dbg !3430
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !3367, metadata !DIExpression()), !dbg !3410
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !3432
  %51 = load i64, i64* %50, align 8, !dbg !3432
  %52 = add i64 %51, 64, !dbg !3433
  %53 = inttoptr i64 %52 to i8**, !dbg !3434
  call void @llvm.dbg.value(metadata i8** %53, metadata !3368, metadata !DIExpression()), !dbg !3435
  %54 = add i64 %30, %51, !dbg !3436
  %55 = inttoptr i64 %54 to i8*, !dbg !3437
  store i8* %55, i8** %53, align 8, !dbg !3438
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !3367, metadata !DIExpression()), !dbg !3410
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !3440
  %58 = load i64, i64* %57, align 8, !dbg !3440
  %59 = sub i64 8, %25, !dbg !3402
  %60 = add i64 %59, %27, !dbg !3441
  %61 = add i64 %60, %58, !dbg !3442
  %62 = inttoptr i64 %61 to i8**, !dbg !3443
  call void @llvm.dbg.value(metadata i8** %62, metadata !3369, metadata !DIExpression()), !dbg !3444
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !3445
  call void @llvm.dbg.value(metadata i8** %63, metadata !3370, metadata !DIExpression()), !dbg !3446
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !3447
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !3447
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !3367, metadata !DIExpression()), !dbg !3410
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !3449
  %67 = load i64, i64* %66, align 8, !dbg !3449
  %68 = add i64 %67, 112, !dbg !3450
  %69 = inttoptr i64 %68 to i64*, !dbg !3451
  store i64 0, i64* %69, align 8, !dbg !3452
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3367, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !887, metadata !DIExpression()) #10, !dbg !3454
  call void @llvm.dbg.value(metadata i8 0, metadata !892, metadata !DIExpression()) #10, !dbg !3456
  %71 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3457
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !3461
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !893, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !3462
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !3463
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !3463
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !3463
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !893, metadata !DIExpression()) #10, !dbg !3462
  %77 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3464
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !3468
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !3469
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !3469
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !894, metadata !DIExpression()) #10, !dbg !3471
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !3472
  store i32 1, i32* %82, align 4, !dbg !3473
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !958, metadata !DIExpression()) #10, !dbg !3475
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !961, metadata !DIExpression()) #10, !dbg !3477
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !3478
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !3478
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !966, metadata !DIExpression()) #10, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !971, metadata !DIExpression()) #10, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !972, metadata !DIExpression()) #10, !dbg !3482
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !3483
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !3484
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !3485
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !3486
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !3487
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !3488
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !3489
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !3490
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !3490
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !3491
  br i1 %91, label %94, label %92, !dbg !3492

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #11, !dbg !3493
  br label %94, !dbg !3494

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !3367, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #10, !dbg !3496
  ret %struct.nk_fiber* %95, !dbg !3497
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3498 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3500, metadata !DIExpression()), !dbg !3503
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !3504
  br i1 %2, label %22, label %3, !dbg !3506

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3507
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3511
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3512
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3512
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !3513
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !3501, metadata !DIExpression()), !dbg !3514
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !3502, metadata !DIExpression()), !dbg !3516
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !958, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !961, metadata !DIExpression()), !dbg !3520
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !3521
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !3521
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !966, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !971, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !972, metadata !DIExpression()), !dbg !3525
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !3526
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !3527
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !3528
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !3529
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !3530
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !3531
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !3532
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !3533
  %18 = load i32, i32* %17, align 8, !dbg !3534
  %19 = add i32 %18, 1, !dbg !3534
  store i32 %19, i32* %17, align 8, !dbg !3534
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !3535
  store i32 3, i32* %20, align 4, !dbg !3536
  %21 = tail call i32 @nk_fiber_yield() #9, !dbg !3537
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !3538
  ret i32 %23, !dbg !3539
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
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin noredzone nounwind }
attributes #12 = { nobuiltin noredzone noreturn nounwind }

!llvm.dbg.cu = !{!2, !123}
!llvm.ident = !{!493, !493}
!llvm.module.flags = !{!494, !495, !496, !497}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl1", scope: !2, file: !3, line: 156, type: !108, isLocal: true, isDefinition: true, align: 64)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !105, nameTableKind: None)
!3 = !DIFile(filename: "src/test/instrument.c", directory: "/home/sgi9754/nautilus-cs446")
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
!23 = !{!24, !28, !31, !32, !50}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !26, line: 50, baseType: !27)
!26 = !DIFile(filename: "include/nautilus/naut_types.h", directory: "/home/sgi9754/nautilus-cs446")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !26, line: 61, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_t", file: !16, line: 233, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_thread", file: !16, line: 178, size: 51200, elements: !35)
!35 = !{!36, !37, !38, !41, !44, !46, !47, !49, !51, !58, !59, !60, !64, !65, !68, !70, !71, !72, !73, !74, !76, !77, !78, !83, !87, !90, !95, !101}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !34, file: !16, line: 179, baseType: !25, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !34, file: !16, line: 180, baseType: !31, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !34, file: !16, line: 181, baseType: !39, size: 16, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !26, line: 58, baseType: !40)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cache_part_state", scope: !34, file: !16, line: 183, baseType: !42, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_cache_part_thread_state_t", file: !43, line: 32, baseType: !39)
!43 = !DIFile(filename: "include/nautilus/cachepart.h", directory: "/home/sgi9754/nautilus-cs446")
!44 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !34, file: !16, line: 185, baseType: !45, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_stack_size_t", file: !6, line: 43, baseType: !25)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !34, file: !16, line: 186, baseType: !27, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !34, file: !16, line: 188, baseType: !48, size: 32, offset: 320)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !34, file: !16, line: 191, baseType: !50, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !34, file: !16, line: 192, baseType: !52, size: 128, offset: 448)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 64, size: 128, elements: !54)
!53 = !DIFile(filename: "include/nautilus/list.h", directory: "/home/sgi9754/nautilus-cs446")
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !53, line: 65, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !53, line: 65, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !34, file: !16, line: 193, baseType: !52, size: 128, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !34, file: !16, line: 194, baseType: !27, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !34, file: !16, line: 196, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !16, line: 175, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue", file: !16, line: 175, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !34, file: !16, line: 198, baseType: !48, size: 32, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !34, file: !16, line: 201, baseType: !66, size: 64, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_timer", file: !16, line: 201, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !34, file: !16, line: 204, baseType: !69, size: 32, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_status_t", file: !16, line: 172, baseType: !15)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bound_cpu", scope: !34, file: !16, line: 206, baseType: !48, size: 32, offset: 992)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "placement_cpu", scope: !34, file: !16, line: 207, baseType: !48, size: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "current_cpu", scope: !34, file: !16, line: 208, baseType: !48, size: 32, offset: 1056)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !34, file: !16, line: 210, baseType: !29, size: 8, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "output_loc", scope: !34, file: !16, line: 212, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !34, file: !16, line: 213, baseType: !31, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !34, file: !16, line: 214, baseType: !31, size: 64, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !34, file: !16, line: 215, baseType: !79, size: 64, offset: 1344)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_fun_t", file: !16, line: 61, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !31, !75}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !34, file: !16, line: 217, baseType: !84, size: 64, offset: 1408)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_thread_state", file: !86, line: 99, flags: DIFlagFwdDecl)
!86 = !DIFile(filename: "include/nautilus/scheduler.h", directory: "/home/sgi9754/nautilus-cs446")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !34, file: !16, line: 219, baseType: !88, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_virtual_console", file: !6, line: 82, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !16, line: 225, baseType: !91, size: 256, offset: 1536)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !93)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !{!94}
!94 = !DISubrange(count: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !34, file: !16, line: 227, baseType: !96, size: 16384, offset: 1792)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16384, elements: !99)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!99 = !{!100}
!100 = !DISubrange(count: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state", scope: !34, file: !16, line: 229, baseType: !102, size: 32768, align: 512, offset: 18432)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32768, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4096)
!105 = !{!0, !106, !119, !121}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "_nk_cmd_fibers_impl2", scope: !2, file: !3, line: 157, type: !108, isLocal: true, isDefinition: true, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shell_cmd_impl", file: !110, line: 43, size: 192, elements: !111)
!110 = !DIFile(filename: "include/nautilus/shell.h", directory: "/home/sgi9754/nautilus-cs446")
!111 = !{!112, !114, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !109, file: !110, line: 44, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "help_str", scope: !109, file: !110, line: 45, baseType: !113, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !109, file: !110, line: 46, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!48, !113, !31}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "fibers_impl1", scope: !2, file: !3, line: 142, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "fibers_impl2", scope: !2, file: !3, line: 148, type: !109, isLocal: true, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !125, retainedTypes: !239, nameTableKind: None)
!124 = !DIFile(filename: "src/nautilus/fiber.c", directory: "/home/sgi9754/nautilus-cs446")
!125 = !{!126, !15, !5, !208, !215, !222, !228, !234}
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !128, file: !127, line: 40, baseType: !7, size: 32, elements: !204)
!127 = !DIFile(filename: "include/nautilus/timer.h", directory: "/home/sgi9754/nautilus-cs446")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_timer", file: !127, line: 38, size: 960, elements: !129)
!129 = !{!130, !131, !133, !134, !135, !196, !197, !201, !202, !203}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !127, line: 39, baseType: !91, size: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !128, file: !127, line: 42, baseType: !132, size: 32, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !127, line: 43, baseType: !25, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !128, file: !127, line: 44, baseType: !25, size: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !128, file: !127, line: 45, baseType: !136, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !127, line: 33, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue", file: !139, line: 85, size: 197248, elements: !140)
!139 = !DIFile(filename: "include/nautilus/waitqueue.h", directory: "/home/sgi9754/nautilus-cs446")
!140 = !{!141, !142, !146, !152, !153, !154}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !139, line: 86, baseType: !91, size: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !138, file: !139, line: 87, baseType: !143, size: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !144, line: 39, baseType: !145)
!144 = !DIFile(filename: "include/nautilus/spinlock.h", directory: "/home/sgi9754/nautilus-cs446")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !26, line: 54, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !139, line: 88, baseType: !147, size: 128, offset: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 64, size: 128, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !53, line: 65, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !53, line: 65, baseType: !150, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !138, file: !139, line: 89, baseType: !25, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !139, line: 90, baseType: !147, size: 128, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !138, file: !139, line: 91, baseType: !155, size: 196608, offset: 640)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 196608, elements: !194)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_wait_queue_entry", file: !139, line: 70, size: 192, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !156, file: !139, line: 71, baseType: !147, size: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !156, file: !139, line: 72, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_thread", file: !16, line: 178, size: 51200, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !177, !178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !161, file: !16, line: 179, baseType: !25, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !161, file: !16, line: 180, baseType: !31, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !161, file: !16, line: 181, baseType: !39, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cache_part_state", scope: !161, file: !16, line: 183, baseType: !42, size: 16, offset: 144)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !161, file: !16, line: 185, baseType: !45, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !161, file: !16, line: 186, baseType: !27, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !161, file: !16, line: 188, baseType: !48, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !161, file: !16, line: 191, baseType: !160, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !161, file: !16, line: 192, baseType: !147, size: 128, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !161, file: !16, line: 193, baseType: !147, size: 128, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !161, file: !16, line: 194, baseType: !27, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !161, file: !16, line: 196, baseType: !175, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_wait_queue_t", file: !16, line: 175, baseType: !138)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !161, file: !16, line: 198, baseType: !48, size: 32, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !161, file: !16, line: 201, baseType: !179, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !161, file: !16, line: 204, baseType: !69, size: 32, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bound_cpu", scope: !161, file: !16, line: 206, baseType: !48, size: 32, offset: 992)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "placement_cpu", scope: !161, file: !16, line: 207, baseType: !48, size: 32, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "current_cpu", scope: !161, file: !16, line: 208, baseType: !48, size: 32, offset: 1056)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !161, file: !16, line: 210, baseType: !29, size: 8, offset: 1088)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "output_loc", scope: !161, file: !16, line: 212, baseType: !75, size: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !161, file: !16, line: 213, baseType: !31, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !161, file: !16, line: 214, baseType: !31, size: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !161, file: !16, line: 215, baseType: !79, size: 64, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !161, file: !16, line: 217, baseType: !84, size: 64, offset: 1408)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !161, file: !16, line: 219, baseType: !88, size: 64, offset: 1472)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !16, line: 225, baseType: !91, size: 256, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !161, file: !16, line: 227, baseType: !96, size: 16384, offset: 1792)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state", scope: !161, file: !16, line: 229, baseType: !102, size: 32768, align: 512, offset: 18432)
!194 = !{!195}
!195 = !DISubrange(count: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !128, file: !127, line: 46, baseType: !145, size: 32, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !128, file: !127, line: 47, baseType: !198, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !31}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !128, file: !127, line: 48, baseType: !31, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !127, line: 49, baseType: !147, size: 128, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "active_node", scope: !128, file: !127, line: 50, baseType: !147, size: 128, offset: 832)
!204 = !{!205, !206, !207}
!205 = !DIEnumerator(name: "NK_TIMER_INACTIVE", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "NK_TIMER_ACTIVE", value: 1, isUnsigned: true)
!207 = !DIEnumerator(name: "NK_TIMER_SIGNALLED", value: 2, isUnsigned: true)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 225, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "include/dev/apic.h", directory: "/home/sgi9754/nautilus-cs446")
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "APIC_INVALID", value: 0, isUnsigned: true)
!212 = !DIEnumerator(name: "APIC_DISABLED", value: 1, isUnsigned: true)
!213 = !DIEnumerator(name: "APIC_XAPIC", value: 2, isUnsigned: true)
!214 = !DIEnumerator(name: "APIC_X2APIC", value: 3, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 41, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "include/nautilus/irq.h", directory: "/home/sgi9754/nautilus-cs446")
!217 = !{!218, !219, !220, !221}
!218 = !DIEnumerator(name: "INT_TRIG_BUS", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "INT_TRIG_EDGE", value: 1, isUnsigned: true)
!220 = !DIEnumerator(name: "INT_TRIG_RSVD", value: 2, isUnsigned: true)
!221 = !DIEnumerator(name: "INT_TRIG_LEVEL", value: 3, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 40, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIEnumerator(name: "INT_POL_BUS", value: 0, isUnsigned: true)
!225 = !DIEnumerator(name: "INT_POL_ACTHI", value: 1, isUnsigned: true)
!226 = !DIEnumerator(name: "INT_POL_RSVD", value: 2, isUnsigned: true)
!227 = !DIEnumerator(name: "INT_POL_ACTLO", value: 3, isUnsigned: true)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !216, line: 39, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "INT_TYPE_INT", value: 0, isUnsigned: true)
!231 = !DIEnumerator(name: "INT_TYPE_NMI", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "INT_TYPE_SMI", value: 2, isUnsigned: true)
!233 = !DIEnumerator(name: "INT_TYPE_EXT", value: 3, isUnsigned: true)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 66, baseType: !7, size: 32, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "APERIODIC", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "SPORADIC", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "PERIODIC", value: 2, isUnsigned: true)
!239 = !{!24, !240, !113, !263, !25, !264, !291, !31, !75, !270, !48, !28, !280, !492, !285, !160}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !242, file: !6, line: 71, baseType: !25, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !242, file: !6, line: 72, baseType: !31, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !242, file: !6, line: 73, baseType: !39, size: 16, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !242, file: !6, line: 75, baseType: !45, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !242, file: !6, line: 76, baseType: !27, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !242, file: !6, line: 78, baseType: !143, size: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !242, file: !6, line: 79, baseType: !251, size: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_status", file: !6, line: 66, baseType: !5)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !242, file: !6, line: 82, baseType: !88, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !242, file: !6, line: 83, baseType: !48, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !242, file: !6, line: 91, baseType: !147, size: 128, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !242, file: !6, line: 92, baseType: !147, size: 128, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !242, file: !6, line: 93, baseType: !48, size: 32, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !242, file: !6, line: 97, baseType: !147, size: 128, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !242, file: !6, line: 99, baseType: !259, size: 64, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_fun_t", file: !6, line: 56, baseType: !80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !242, file: !6, line: 100, baseType: !31, size: 64, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !242, file: !6, line: 101, baseType: !75, size: 64, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !242, file: !6, line: 103, baseType: !29, size: 8, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 45, baseType: !27)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_info", file: !266, line: 183, size: 59840, elements: !267)
!266 = !DIFile(filename: "include/nautilus/nautilus.h", directory: "/home/sgi9754/nautilus-cs446")
!267 = !{!268, !385, !421, !422, !423, !424, !440, !451, !452, !453, !456, !459, !462, !474, !483, !486, !489}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !265, file: !266, line: 185, baseType: !269, size: 16384)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 16384, elements: !99)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu", file: !272, line: 74, size: 1600, elements: !273)
!272 = !DIFile(filename: "include/nautilus/smp.h", directory: "/home/sgi9754/nautilus-cs446")
!273 = !{!274, !275, !276, !277, !278, !279, !290, !292, !293, !294, !295, !296, !297, !299, !321, !322, !323, !326, !334, !347, !348, !355, !362, !371, !376}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cur_thread", scope: !271, file: !272, line: 75, baseType: !160, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_nesting_level", scope: !271, file: !272, line: 78, baseType: !39, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_disable_level", scope: !271, file: !272, line: 81, baseType: !39, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !271, file: !272, line: 85, baseType: !25, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "exception_count", scope: !271, file: !272, line: 86, baseType: !25, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_state", scope: !271, file: !272, line: 88, baseType: !280, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber_percpu_state", file: !124, line: 60, size: 384, elements: !282)
!282 = !{!283, !284, !287, !288, !289}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !281, file: !124, line: 61, baseType: !143, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fiber_thread", scope: !281, file: !124, line: 62, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_t", file: !16, line: 233, baseType: !161)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "curr_fiber", scope: !281, file: !124, line: 63, baseType: !240, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "idle_fiber", scope: !281, file: !124, line: 64, baseType: !240, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_sched_queue", scope: !281, file: !124, line: 65, baseType: !147, size: 128, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !271, file: !272, line: 89, baseType: !291, size: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_id_t", file: !272, line: 58, baseType: !145)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_id", scope: !271, file: !272, line: 90, baseType: !145, size: 32, offset: 352)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !271, file: !272, line: 91, baseType: !29, size: 8, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_bsp", scope: !271, file: !272, line: 92, baseType: !29, size: 8, offset: 392)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_sig", scope: !271, file: !272, line: 93, baseType: !145, size: 32, offset: 416)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "feat_flags", scope: !271, file: !272, line: 94, baseType: !145, size: 32, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "booted", scope: !271, file: !272, line: 96, baseType: !298, size: 8, offset: 480)
!298 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "apic", scope: !271, file: !272, line: 98, baseType: !300, size: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic_dev", file: !209, line: 227, size: 768, elements: !302)
!302 = !{!303, !305, !307, !308, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !301, file: !209, line: 228, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "apic_mode_t", file: !209, line: 225, baseType: !208)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !301, file: !209, line: 229, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong_t", file: !26, line: 43, baseType: !27)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !301, file: !209, line: 230, baseType: !29, size: 8, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !301, file: !209, line: 231, baseType: !309, size: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_t", file: !26, line: 37, baseType: !7)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "spur_int_cnt", scope: !301, file: !209, line: 232, baseType: !25, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "err_int_cnt", scope: !301, file: !209, line: 233, baseType: !25, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bus_freq_hz", scope: !301, file: !209, line: 234, baseType: !25, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ps_per_tick", scope: !301, file: !209, line: 235, baseType: !25, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_us", scope: !301, file: !209, line: 236, baseType: !25, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cycles_per_tick", scope: !301, file: !209, line: 237, baseType: !25, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !301, file: !209, line: 238, baseType: !29, size: 8, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "current_ticks", scope: !301, file: !209, line: 239, baseType: !145, size: 32, offset: 608)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_count", scope: !301, file: !209, line: 240, baseType: !25, size: 64, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "in_timer_interrupt", scope: !301, file: !209, line: 241, baseType: !48, size: 32, offset: 704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "in_kick_interrupt", scope: !301, file: !209, line: 242, baseType: !48, size: 32, offset: 736)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !271, file: !272, line: 100, baseType: !264, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !271, file: !272, line: 102, baseType: !143, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_state", scope: !271, file: !272, line: 104, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_percpu_state", file: !272, line: 104, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_q", scope: !271, file: !272, line: 106, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_t", file: !329, line: 42, baseType: !330)
!329 = !DIFile(filename: "include/nautilus/queue.h", directory: "/home/sgi9754/nautilus-cs446")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue", file: !329, line: 33, size: 192, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !330, file: !329, line: 34, baseType: !147, size: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !330, file: !329, line: 35, baseType: !143, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_nowait_info", scope: !271, file: !272, line: 107, baseType: !335, size: 320, offset: 832)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_xcall", file: !272, line: 61, size: 320, elements: !336)
!336 = !{!337, !342, !343, !345, !346}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_node", scope: !335, file: !272, line: 62, baseType: !338, size: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_queue_entry_t", file: !329, line: 43, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_queue_entry", file: !329, line: 38, size: 128, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !339, file: !329, line: 39, baseType: !147, size: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !335, file: !272, line: 63, baseType: !31, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !335, file: !272, line: 64, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_xcall_func_t", file: !272, line: 57, baseType: !198)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "xcall_done", scope: !335, file: !272, line: 65, baseType: !29, size: 8, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "has_waiter", scope: !335, file: !272, line: 66, baseType: !29, size: 8, offset: 264)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_khz", scope: !271, file: !272, line: 109, baseType: !306, size: 64, offset: 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !271, file: !272, line: 112, baseType: !349, size: 64, offset: 1216)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_topo_params", file: !351, line: 94, size: 64, elements: !352)
!351 = !DIFile(filename: "include/nautilus/numa.h", directory: "/home/sgi9754/nautilus-cs446")
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "smt_bits", scope: !350, file: !351, line: 95, baseType: !145, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "core_bits", scope: !350, file: !351, line: 96, baseType: !145, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "coord", scope: !271, file: !272, line: 113, baseType: !356, size: 64, offset: 1280)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_cpu_coords", file: !351, line: 99, size: 96, elements: !358)
!358 = !{!359, !360, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "smt_id", scope: !357, file: !351, line: 100, baseType: !145, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "core_id", scope: !357, file: !351, line: 101, baseType: !145, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_id", scope: !357, file: !351, line: 102, baseType: !145, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !271, file: !272, line: 114, baseType: !363, size: 64, offset: 1344)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numa_domain", file: !351, line: 34, size: 448, elements: !365)
!365 = !{!366, !367, !368, !369, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !364, file: !351, line: 35, baseType: !145, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "addr_space_size", scope: !364, file: !351, line: 36, baseType: !25, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !364, file: !351, line: 37, baseType: !145, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "regions", scope: !364, file: !351, line: 39, baseType: !147, size: 128, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "adj_list", scope: !364, file: !351, line: 42, baseType: !147, size: 128, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "kmem", scope: !271, file: !272, line: 116, baseType: !372, size: 128, offset: 1408)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_data", file: !373, line: 84, size: 128, elements: !374)
!373 = !DIFile(filename: "include/nautilus/mm.h", directory: "/home/sgi9754/nautilus-cs446")
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ordered_regions", scope: !372, file: !373, line: 85, baseType: !147, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rand", scope: !271, file: !272, line: 119, baseType: !377, size: 64, offset: 1536)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_rand_info", file: !379, line: 33, size: 256, elements: !380)
!379 = !DIFile(filename: "include/nautilus/random.h", directory: "/home/sgi9754/nautilus-cs446")
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !379, line: 34, baseType: !143, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !378, file: !379, line: 35, baseType: !25, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !378, file: !379, line: 36, baseType: !25, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !378, file: !379, line: 37, baseType: !25, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ioapics", scope: !265, file: !266, line: 186, baseType: !386, size: 1024, offset: 16384)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !419)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioapic", file: !389, line: 113, size: 320, elements: !390)
!389 = !DIFile(filename: "include/dev/ioapic.h", directory: "/home/sgi9754/nautilus-cs446")
!390 = !{!391, !392, !393, !394, !396, !397, !418}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !388, file: !389, line: 114, baseType: !29, size: 8)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !388, file: !389, line: 115, baseType: !29, size: 8, offset: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usable", scope: !388, file: !389, line: 116, baseType: !29, size: 8, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !388, file: !389, line: 117, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !26, line: 64, baseType: !306)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !388, file: !389, line: 119, baseType: !29, size: 8, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !388, file: !389, line: 120, baseType: !398, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iored_entry", file: !389, line: 101, size: 192, elements: !400)
!400 = !{!401, !402, !417}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !399, file: !389, line: 103, baseType: !29, size: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "boot_info", scope: !399, file: !389, line: 106, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_entry", file: !216, line: 43, size: 256, elements: !405)
!405 = !{!406, !408, !410, !412, !413, !414, !415, !416}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "trig_mode", scope: !404, file: !216, line: 44, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_trig_t", file: !216, line: 41, baseType: !215)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !404, file: !216, line: 45, baseType: !409, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_pol_t", file: !216, line: 40, baseType: !222)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !216, line: 46, baseType: !411, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type_t", file: !216, line: 39, baseType: !228)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_id", scope: !404, file: !216, line: 47, baseType: !29, size: 8, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "src_bus_irq", scope: !404, file: !216, line: 48, baseType: !29, size: 8, offset: 104)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_intin", scope: !404, file: !216, line: 49, baseType: !29, size: 8, offset: 112)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ioapic_id", scope: !404, file: !216, line: 50, baseType: !29, size: 8, offset: 120)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "elm", scope: !404, file: !216, line: 52, baseType: !147, size: 128, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "actual_irq", scope: !399, file: !389, line: 109, baseType: !29, size: 8, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "first_hrt_entry", scope: !388, file: !389, line: 122, baseType: !7, size: 32, offset: 256)
!419 = !{!420}
!420 = !DISubrange(count: 16)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "num_cpus", scope: !265, file: !266, line: 188, baseType: !145, size: 32, offset: 17408)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioapics", scope: !265, file: !266, line: 189, baseType: !145, size: 32, offset: 17440)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !266, line: 191, baseType: !25, size: 64, offset: 17472)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "core_barrier", scope: !265, file: !266, line: 194, baseType: !425, size: 64, offset: 17536)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_barrier_t", file: !427, line: 34, baseType: !428)
!427 = !DIFile(filename: "include/nautilus/barrier.h", directory: "/home/sgi9754/nautilus-cs446")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_barrier", file: !427, line: 36, size: 1024, align: 512, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !438}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !428, file: !427, line: 37, baseType: !143, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !428, file: !427, line: 39, baseType: !7, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !428, file: !427, line: 40, baseType: !7, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !428, file: !427, line: 42, baseType: !29, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !428, file: !427, line: 44, baseType: !435, size: 416, offset: 104)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 416, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 52)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !428, file: !427, line: 47, baseType: !439, size: 32, offset: 520)
!439 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !265, file: !266, line: 196, baseType: !441, size: 448, offset: 17600)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_mem_info", file: !442, line: 83, size: 448, elements: !443)
!442 = !DIFile(filename: "include/nautilus/paging.h", directory: "/home/sgi9754/nautilus-cs446")
!443 = !{!444, !446, !447, !448, !449, !450}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "page_map", scope: !441, file: !442, line: 84, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pm_start", scope: !441, file: !442, line: 85, baseType: !395, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pm_end", scope: !441, file: !442, line: 86, baseType: !395, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "phys_mem_avail", scope: !441, file: !442, line: 87, baseType: !306, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "npages", scope: !441, file: !442, line: 88, baseType: !306, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mem_zone_list", scope: !441, file: !442, line: 90, baseType: !147, size: 128, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_id", scope: !265, file: !266, line: 198, baseType: !145, size: 32, offset: 18048)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pic_mode_enabled", scope: !265, file: !266, line: 200, baseType: !29, size: 8, offset: 18080)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !265, file: !266, line: 202, baseType: !454, size: 64, offset: 18112)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_info", file: !266, line: 202, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hpet", scope: !265, file: !266, line: 203, baseType: !457, size: 64, offset: 18176)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "hpet_dev", file: !266, line: 178, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mb_info", scope: !265, file: !266, line: 205, baseType: !460, size: 64, offset: 18240)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "multiboot_info", file: !266, line: 205, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "int_info", scope: !265, file: !266, line: 207, baseType: !463, size: 33024, offset: 18304)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_int_info", file: !266, line: 171, size: 33024, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "int_list", scope: !463, file: !266, line: 172, baseType: !147, size: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !463, file: !266, line: 173, baseType: !147, size: 128, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "irq_map", scope: !463, file: !266, line: 175, baseType: !468, size: 32768, offset: 256)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 32768, elements: !99)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_mapping", file: !266, line: 164, size: 128, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic", scope: !469, file: !266, line: 165, baseType: !387, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !469, file: !266, line: 166, baseType: !29, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "assigned", scope: !469, file: !266, line: 167, baseType: !29, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "locality_info", scope: !265, file: !266, line: 209, baseType: !475, size: 8320, offset: 51328)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_locality_info", file: !351, line: 75, size: 8320, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "num_domains", scope: !475, file: !351, line: 76, baseType: !145, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "numa_matrix", scope: !475, file: !351, line: 77, baseType: !28, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !475, file: !351, line: 79, baseType: !480, size: 8192, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 8192, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pmc_info", scope: !265, file: !266, line: 211, baseType: !484, size: 64, offset: 59648)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "pmc_info", file: !266, line: 180, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "linker_info", scope: !265, file: !266, line: 213, baseType: !487, size: 64, offset: 59712)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_link_info", file: !266, line: 181, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prog_info", scope: !265, file: !266, line: 215, baseType: !490, size: 64, offset: 59776)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "nk_prog_info", file: !266, line: 182, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!493 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!494 = !{i32 2, !"Dwarf Version", i32 4}
!495 = !{i32 2, !"Debug Info Version", i32 3}
!496 = !{i32 1, !"wchar_size", i32 4}
!497 = !{i32 1, !"Code Model", i32 4}
!498 = distinct !DISubprogram(name: "handle_fibers2", scope: !3, file: !3, line: 134, type: !117, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "buf", arg: 1, scope: !498, file: !3, line: 134, type: !113)
!501 = !DILocalVariable(name: "priv", arg: 2, scope: !498, file: !3, line: 134, type: !31)
!502 = !DILocation(line: 134, column: 23, scope: !498)
!503 = !DILocation(line: 134, column: 35, scope: !498)
!504 = !DILocation(line: 136, column: 3, scope: !498)
!505 = !DILocation(line: 137, column: 3, scope: !498)
!506 = distinct !DISubprogram(name: "test_simple_routine2", scope: !3, file: !3, line: 102, type: !507, scopeLine: 103, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!48}
!509 = !{!510, !532, !533, !534, !535, !536, !538, !539}
!510 = !DILocalVariable(name: "simple1", scope: !506, file: !3, line: 104, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_fiber_t", file: !6, line: 104, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_fiber", file: !6, line: 70, size: 1216, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !513, file: !6, line: 71, baseType: !25, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !513, file: !6, line: 72, baseType: !31, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_state_offset", scope: !513, file: !6, line: 73, baseType: !39, size: 16, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !513, file: !6, line: 75, baseType: !45, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !513, file: !6, line: 76, baseType: !27, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !513, file: !6, line: 78, baseType: !143, size: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_status", scope: !513, file: !6, line: 79, baseType: !251, size: 32, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !513, file: !6, line: 82, baseType: !88, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_idle", scope: !513, file: !6, line: 83, baseType: !48, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !513, file: !6, line: 91, baseType: !52, size: 128, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_node", scope: !513, file: !6, line: 92, baseType: !52, size: 128, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "num_wait", scope: !513, file: !6, line: 93, baseType: !48, size: 32, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_node", scope: !513, file: !6, line: 97, baseType: !52, size: 128, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !513, file: !6, line: 99, baseType: !259, size: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !513, file: !6, line: 100, baseType: !31, size: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !513, file: !6, line: 101, baseType: !75, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "is_done", scope: !513, file: !6, line: 103, baseType: !29, size: 8, offset: 1152)
!532 = !DILocalVariable(name: "simple2", scope: !506, file: !3, line: 105, type: !511)
!533 = !DILocalVariable(name: "t1", scope: !506, file: !3, line: 107, type: !25)
!534 = !DILocalVariable(name: "t2", scope: !506, file: !3, line: 108, type: !25)
!535 = !DILocalVariable(name: "f1_input", scope: !506, file: !3, line: 111, type: !24)
!536 = !DILocalVariable(name: "p", scope: !537, file: !3, line: 111, type: !31)
!537 = distinct !DILexicalBlock(scope: !506, file: !3, line: 111, column: 24)
!538 = !DILocalVariable(name: "f2_input", scope: !506, file: !3, line: 112, type: !24)
!539 = !DILocalVariable(name: "p", scope: !540, file: !3, line: 112, type: !31)
!540 = distinct !DILexicalBlock(scope: !506, file: !3, line: 112, column: 24)
!541 = !DILocation(line: 104, column: 3, scope: !506)
!542 = !DILocation(line: 105, column: 3, scope: !506)
!543 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !552)
!544 = distinct !DILexicalBlock(scope: !545, file: !16, line: 258, column: 26)
!545 = distinct !DILexicalBlock(scope: !546, file: !16, line: 258, column: 26)
!546 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !547, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!32}
!549 = !{!550, !551}
!550 = !DILocalVariable(name: "__r", scope: !545, file: !16, line: 258, type: !50)
!551 = !DILocalVariable(name: "__r", scope: !544, file: !16, line: 258, type: !50)
!552 = distinct !DILocation(line: 106, column: 8, scope: !506)
!553 = !{i32 -2147285329}
!554 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !552)
!555 = !DILocation(line: 106, column: 26, scope: !506)
!556 = !DILocation(line: 106, column: 6, scope: !506)
!557 = !DILocation(line: 107, column: 3, scope: !506)
!558 = !DILocation(line: 108, column: 3, scope: !506)
!559 = !DILocation(line: 109, column: 3, scope: !506)
!560 = !DILocation(line: 110, column: 3, scope: !506)
!561 = !DILocation(line: 111, column: 24, scope: !537)
!562 = !DILocation(line: 112, column: 24, scope: !540)
!563 = !DILocation(line: 113, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !506, file: !3, line: 113, column: 7)
!565 = !DILocation(line: 113, column: 21, scope: !564)
!566 = !DILocation(line: 113, column: 17, scope: !564)
!567 = !DILocation(line: 114, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 113, column: 31)
!569 = !DILocation(line: 115, column: 5, scope: !568)
!570 = !DILocation(line: 112, column: 24, scope: !506)
!571 = !DILocation(line: 112, column: 13, scope: !506)
!572 = !DILocation(line: 111, column: 24, scope: !506)
!573 = !DILocation(line: 111, column: 13, scope: !506)
!574 = !DILocation(line: 117, column: 15, scope: !506)
!575 = !DILocation(line: 107, column: 12, scope: !506)
!576 = !DILocation(line: 117, column: 18, scope: !506)
!577 = !DILocation(line: 117, column: 13, scope: !506)
!578 = !DILocation(line: 118, column: 15, scope: !506)
!579 = !DILocation(line: 108, column: 12, scope: !506)
!580 = !DILocation(line: 118, column: 18, scope: !506)
!581 = !DILocation(line: 118, column: 13, scope: !506)
!582 = !DILocation(line: 104, column: 15, scope: !506)
!583 = !DILocation(line: 119, column: 3, scope: !506)
!584 = !DILocation(line: 105, column: 15, scope: !506)
!585 = !DILocation(line: 120, column: 3, scope: !506)
!586 = !DILocation(line: 121, column: 3, scope: !506)
!587 = !DILocation(line: 0, scope: !506)
!588 = !DILocation(line: 122, column: 1, scope: !506)
!589 = distinct !DISubprogram(name: "routine_simple_1", scope: !3, file: !3, line: 57, type: !81, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!590 = !{!591, !592, !593, !594}
!591 = !DILocalVariable(name: "i", arg: 1, scope: !589, file: !3, line: 57, type: !31)
!592 = !DILocalVariable(name: "o", arg: 2, scope: !589, file: !3, line: 57, type: !75)
!593 = !DILocalVariable(name: "end", scope: !589, file: !3, line: 59, type: !24)
!594 = !DILocalVariable(name: "a", scope: !589, file: !3, line: 61, type: !7)
!595 = !DILocation(line: 57, column: 29, scope: !589)
!596 = !DILocation(line: 57, column: 39, scope: !589)
!597 = !DILocation(line: 59, column: 19, scope: !589)
!598 = !DILocation(line: 59, column: 13, scope: !589)
!599 = !DILocation(line: 60, column: 19, scope: !589)
!600 = !DILocation(line: 60, column: 3, scope: !589)
!601 = !DILocation(line: 61, column: 16, scope: !589)
!602 = !DILocation(line: 62, column: 13, scope: !589)
!603 = !DILocation(line: 62, column: 11, scope: !589)
!604 = !DILocation(line: 62, column: 3, scope: !589)
!605 = !DILocation(line: 63, column: 52, scope: !606)
!606 = distinct !DILexicalBlock(scope: !589, file: !3, line: 62, column: 18)
!607 = !DILocation(line: 63, column: 5, scope: !606)
!608 = !DILocation(line: 64, column: 5, scope: !606)
!609 = !DILocation(line: 62, column: 9, scope: !589)
!610 = distinct !{!610, !604, !611}
!611 = !DILocation(line: 65, column: 3, scope: !589)
!612 = !DILocation(line: 0, scope: !589)
!613 = !DILocation(line: 66, column: 3, scope: !589)
!614 = !DILocation(line: 67, column: 3, scope: !589)
!615 = !DILocation(line: 68, column: 1, scope: !589)
!616 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!617 = !{!618, !619, !620, !621}
!618 = !DILocalVariable(name: "i", arg: 1, scope: !616, file: !3, line: 70, type: !31)
!619 = !DILocalVariable(name: "o", arg: 2, scope: !616, file: !3, line: 70, type: !75)
!620 = !DILocalVariable(name: "end", scope: !616, file: !3, line: 72, type: !24)
!621 = !DILocalVariable(name: "a", scope: !616, file: !3, line: 74, type: !7)
!622 = !DILocation(line: 70, column: 29, scope: !616)
!623 = !DILocation(line: 70, column: 39, scope: !616)
!624 = !DILocation(line: 72, column: 19, scope: !616)
!625 = !DILocation(line: 72, column: 13, scope: !616)
!626 = !DILocation(line: 73, column: 19, scope: !616)
!627 = !DILocation(line: 73, column: 3, scope: !616)
!628 = !DILocation(line: 74, column: 16, scope: !616)
!629 = !DILocation(line: 76, column: 13, scope: !616)
!630 = !DILocation(line: 76, column: 11, scope: !616)
!631 = !DILocation(line: 76, column: 3, scope: !616)
!632 = !DILocation(line: 77, column: 52, scope: !633)
!633 = distinct !DILexicalBlock(scope: !616, file: !3, line: 76, column: 18)
!634 = !DILocation(line: 77, column: 5, scope: !633)
!635 = !DILocation(line: 78, column: 5, scope: !633)
!636 = !DILocation(line: 76, column: 9, scope: !616)
!637 = distinct !{!637, !631, !638}
!638 = !DILocation(line: 79, column: 3, scope: !616)
!639 = !DILocation(line: 0, scope: !616)
!640 = !DILocation(line: 80, column: 3, scope: !616)
!641 = !DILocation(line: 81, column: 3, scope: !616)
!642 = !DILocation(line: 82, column: 1, scope: !616)
!643 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "buf", arg: 1, scope: !643, file: !3, line: 127, type: !113)
!646 = !DILocalVariable(name: "priv", arg: 2, scope: !643, file: !3, line: 127, type: !31)
!647 = !DILocation(line: 127, column: 23, scope: !643)
!648 = !DILocation(line: 127, column: 35, scope: !643)
!649 = !DILocation(line: 88, column: 3, scope: !650, inlinedAt: !657)
!650 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!651 = !{!652, !653, !654, !655}
!652 = !DILocalVariable(name: "simple", scope: !650, file: !3, line: 88, type: !511)
!653 = !DILocalVariable(name: "t", scope: !650, file: !3, line: 90, type: !25)
!654 = !DILocalVariable(name: "f_input", scope: !650, file: !3, line: 92, type: !24)
!655 = !DILocalVariable(name: "p", scope: !656, file: !3, line: 92, type: !31)
!656 = distinct !DILexicalBlock(scope: !650, file: !3, line: 92, column: 23)
!657 = distinct !DILocation(line: 129, column: 3, scope: !643)
!658 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !659)
!659 = distinct !DILocation(line: 89, column: 8, scope: !650, inlinedAt: !657)
!660 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !659)
!661 = !DILocation(line: 89, column: 26, scope: !650, inlinedAt: !657)
!662 = !DILocation(line: 89, column: 6, scope: !650, inlinedAt: !657)
!663 = !DILocation(line: 90, column: 3, scope: !650, inlinedAt: !657)
!664 = !DILocation(line: 91, column: 3, scope: !650, inlinedAt: !657)
!665 = !DILocation(line: 92, column: 23, scope: !656, inlinedAt: !657)
!666 = !DILocation(line: 93, column: 8, scope: !667, inlinedAt: !657)
!667 = distinct !DILexicalBlock(scope: !650, file: !3, line: 93, column: 7)
!668 = !DILocation(line: 93, column: 7, scope: !650, inlinedAt: !657)
!669 = !DILocation(line: 94, column: 5, scope: !670, inlinedAt: !657)
!670 = distinct !DILexicalBlock(scope: !667, file: !3, line: 93, column: 17)
!671 = !DILocation(line: 95, column: 5, scope: !670, inlinedAt: !657)
!672 = !DILocation(line: 92, column: 23, scope: !650, inlinedAt: !657)
!673 = !DILocation(line: 92, column: 13, scope: !650, inlinedAt: !657)
!674 = !DILocation(line: 97, column: 14, scope: !650, inlinedAt: !657)
!675 = !DILocation(line: 90, column: 12, scope: !650, inlinedAt: !657)
!676 = !DILocation(line: 97, column: 16, scope: !650, inlinedAt: !657)
!677 = !DILocation(line: 97, column: 12, scope: !650, inlinedAt: !657)
!678 = !DILocation(line: 88, column: 15, scope: !650, inlinedAt: !657)
!679 = !DILocation(line: 98, column: 3, scope: !650, inlinedAt: !657)
!680 = !DILocation(line: 99, column: 3, scope: !650, inlinedAt: !657)
!681 = !DILocation(line: 100, column: 1, scope: !650, inlinedAt: !657)
!682 = !DILocation(line: 130, column: 3, scope: !643)
!683 = !DILocation(line: 88, column: 3, scope: !650)
!684 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !685)
!685 = distinct !DILocation(line: 89, column: 8, scope: !650)
!686 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !685)
!687 = !DILocation(line: 89, column: 26, scope: !650)
!688 = !DILocation(line: 89, column: 6, scope: !650)
!689 = !DILocation(line: 90, column: 3, scope: !650)
!690 = !DILocation(line: 91, column: 3, scope: !650)
!691 = !DILocation(line: 92, column: 23, scope: !656)
!692 = !DILocation(line: 93, column: 8, scope: !667)
!693 = !DILocation(line: 93, column: 7, scope: !650)
!694 = !DILocation(line: 94, column: 5, scope: !670)
!695 = !DILocation(line: 95, column: 5, scope: !670)
!696 = !DILocation(line: 92, column: 23, scope: !650)
!697 = !DILocation(line: 92, column: 13, scope: !650)
!698 = !DILocation(line: 97, column: 14, scope: !650)
!699 = !DILocation(line: 90, column: 12, scope: !650)
!700 = !DILocation(line: 97, column: 16, scope: !650)
!701 = !DILocation(line: 97, column: 12, scope: !650)
!702 = !DILocation(line: 88, column: 15, scope: !650)
!703 = !DILocation(line: 98, column: 3, scope: !650)
!704 = !DILocation(line: 99, column: 3, scope: !650)
!705 = !DILocation(line: 0, scope: !650)
!706 = !DILocation(line: 100, column: 1, scope: !650)
!707 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !708, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!708 = !DISubroutineType(types: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!712 = !{}
!713 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !718)
!714 = distinct !DISubprogram(name: "get_cpu", scope: !715, file: !715, line: 127, type: !716, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!715 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!716 = !DISubroutineType(types: !717)
!717 = !{!270}
!718 = distinct !DILocation(line: 78, column: 10, scope: !707)
!719 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !718)
!720 = !DILocation(line: 78, column: 21, scope: !707)
!721 = !DILocation(line: 78, column: 3, scope: !707)
!722 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !723, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!723 = !DISubroutineType(types: !724)
!724 = !{!240}
!725 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !726)
!726 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !727)
!727 = distinct !DILocation(line: 85, column: 10, scope: !722)
!728 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !726)
!729 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !727)
!730 = !DILocation(line: 85, column: 30, scope: !722)
!731 = !DILocation(line: 85, column: 3, scope: !722)
!732 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !723, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!733 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !734)
!734 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !735)
!735 = distinct !DILocation(line: 92, column: 10, scope: !732)
!736 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !734)
!737 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !735)
!738 = !DILocation(line: 92, column: 30, scope: !732)
!739 = !DILocation(line: 92, column: 3, scope: !732)
!740 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !741, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!741 = !DISubroutineType(types: !742)
!742 = !{!285}
!743 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !744)
!744 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !745)
!745 = distinct !DILocation(line: 98, column: 10, scope: !740)
!746 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !744)
!747 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !745)
!748 = !DILocation(line: 98, column: 30, scope: !740)
!749 = !DILocation(line: 98, column: 3, scope: !740)
!750 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !751, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!751 = !DISubroutineType(types: !752)
!752 = !{!150}
!753 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !754)
!754 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !755)
!755 = distinct !DILocation(line: 105, column: 12, scope: !750)
!756 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !754)
!757 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !755)
!758 = !DILocation(line: 105, column: 32, scope: !750)
!759 = !DILocation(line: 105, column: 3, scope: !750)
!760 = distinct !DISubprogram(name: "_fiber_push", scope: !124, file: !124, line: 113, type: !761, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !240, !25}
!763 = !{!764, !765}
!764 = !DILocalVariable(name: "f", arg: 1, scope: !760, file: !124, line: 113, type: !240)
!765 = !DILocalVariable(name: "x", arg: 2, scope: !760, file: !124, line: 113, type: !25)
!766 = !DILocation(line: 113, column: 31, scope: !760)
!767 = !DILocation(line: 113, column: 43, scope: !760)
!768 = !DILocation(line: 115, column: 8, scope: !760)
!769 = !DILocation(line: 115, column: 12, scope: !760)
!770 = !DILocation(line: 116, column: 6, scope: !760)
!771 = !DILocation(line: 116, column: 26, scope: !760)
!772 = !DILocation(line: 117, column: 1, scope: !760)
!773 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !723, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !774)
!774 = !{!775, !776, !777, !781}
!775 = !DILocalVariable(name: "fiber_sched_queue", scope: !773, file: !124, line: 122, type: !150)
!776 = !DILocalVariable(name: "fiber_to_schedule", scope: !773, file: !124, line: 125, type: !240)
!777 = !DILocalVariable(name: "first", scope: !778, file: !124, line: 128, type: !240)
!778 = distinct !DILexicalBlock(scope: !779, file: !124, line: 128, column: 25)
!779 = distinct !DILexicalBlock(scope: !780, file: !124, line: 126, column: 40)
!780 = distinct !DILexicalBlock(scope: !773, file: !124, line: 126, column: 7)
!781 = !DILocalVariable(name: "__mptr", scope: !782, file: !124, line: 128, type: !785)
!782 = distinct !DILexicalBlock(scope: !783, file: !124, line: 128, column: 25)
!783 = distinct !DILexicalBlock(scope: !784, file: !124, line: 128, column: 25)
!784 = distinct !DILexicalBlock(scope: !778, file: !124, line: 128, column: 25)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!787 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !788)
!788 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !789)
!789 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !790)
!790 = distinct !DILocation(line: 122, column: 41, scope: !773)
!791 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !788)
!792 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !789)
!793 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !790)
!794 = !DILocation(line: 122, column: 21, scope: !773)
!795 = !DILocation(line: 125, column: 15, scope: !773)
!796 = !DILocalVariable(name: "head", arg: 1, scope: !797, file: !53, line: 184, type: !785)
!797 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !798, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!48, !785}
!800 = !{!796}
!801 = !DILocation(line: 184, column: 54, scope: !797, inlinedAt: !802)
!802 = distinct !DILocation(line: 126, column: 9, scope: !780)
!803 = !DILocation(line: 186, column: 15, scope: !797, inlinedAt: !802)
!804 = !DILocation(line: 186, column: 20, scope: !797, inlinedAt: !802)
!805 = !DILocation(line: 126, column: 7, scope: !773)
!806 = !DILocation(line: 128, column: 25, scope: !778)
!807 = !DILocation(line: 131, column: 40, scope: !779)
!808 = !DILocalVariable(name: "entry", arg: 1, scope: !809, file: !53, line: 151, type: !150)
!809 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !810, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !150}
!812 = !{!808}
!813 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !814)
!814 = distinct !DILocation(line: 131, column: 5, scope: !779)
!815 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !814)
!816 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !814)
!817 = !DILocalVariable(name: "prev", arg: 1, scope: !818, file: !53, line: 128, type: !150)
!818 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !819, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !150, !150}
!821 = !{!817, !822}
!822 = !DILocalVariable(name: "next", arg: 2, scope: !818, file: !53, line: 128, type: !150)
!823 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !824)
!824 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !814)
!825 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !824)
!826 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !824)
!827 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !824)
!828 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !824)
!829 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !824)
!830 = !DILocalVariable(name: "list", arg: 1, scope: !831, file: !53, line: 73, type: !150)
!831 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !810, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !832)
!832 = !{!830}
!833 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !834)
!834 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !814)
!835 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !834)
!836 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !834)
!837 = !DILocation(line: 132, column: 3, scope: !779)
!838 = !DILocation(line: 0, scope: !773)
!839 = !DILocation(line: 139, column: 3, scope: !773)
!840 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !841, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !240}
!843 = !{!844, !845, !846, !847, !848, !851}
!844 = !DILocalVariable(name: "f", arg: 1, scope: !840, file: !124, line: 144, type: !240)
!845 = !DILocalVariable(name: "next", scope: !840, file: !124, line: 149, type: !240)
!846 = !DILocalVariable(name: "temp", scope: !840, file: !124, line: 155, type: !240)
!847 = !DILocalVariable(name: "waitq", scope: !840, file: !124, line: 156, type: !150)
!848 = !DILocalVariable(name: "first", scope: !849, file: !124, line: 163, type: !240)
!849 = distinct !DILexicalBlock(scope: !850, file: !124, line: 163, column: 12)
!850 = distinct !DILexicalBlock(scope: !840, file: !124, line: 160, column: 25)
!851 = !DILocalVariable(name: "__mptr", scope: !852, file: !124, line: 163, type: !785)
!852 = distinct !DILexicalBlock(scope: !853, file: !124, line: 163, column: 12)
!853 = distinct !DILexicalBlock(scope: !854, file: !124, line: 163, column: 12)
!854 = distinct !DILexicalBlock(scope: !849, file: !124, line: 163, column: 12)
!855 = !DILocation(line: 144, column: 33, scope: !840)
!856 = !DILocation(line: 147, column: 6, scope: !840)
!857 = !DILocation(line: 147, column: 15, scope: !840)
!858 = !DILocation(line: 149, column: 15, scope: !840)
!859 = !DILocation(line: 156, column: 34, scope: !840)
!860 = !DILocation(line: 156, column: 21, scope: !840)
!861 = !DILocation(line: 160, column: 12, scope: !840)
!862 = !DILocation(line: 160, column: 21, scope: !840)
!863 = !DILocation(line: 160, column: 3, scope: !840)
!864 = !DILocation(line: 163, column: 12, scope: !849)
!865 = !DILocation(line: 163, column: 12, scope: !854)
!866 = !DILocation(line: 155, column: 15, scope: !840)
!867 = !DILocation(line: 164, column: 27, scope: !850)
!868 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !869)
!869 = distinct !DILocation(line: 164, column: 5, scope: !850)
!870 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !869)
!871 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !869)
!872 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !873)
!873 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !869)
!874 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !873)
!875 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !873)
!876 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !873)
!877 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !873)
!878 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !873)
!879 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !880)
!880 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !869)
!881 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !880)
!882 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !880)
!883 = !DILocation(line: 165, column: 16, scope: !850)
!884 = !DILocation(line: 168, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !850, file: !124, line: 168, column: 9)
!886 = !DILocation(line: 168, column: 9, scope: !850)
!887 = !DILocalVariable(name: "f", arg: 1, scope: !888, file: !124, line: 663, type: !240)
!888 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !889, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{!48, !240, !29}
!891 = !{!887, !892, !893, !894}
!892 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !888, file: !124, line: 663, type: !29)
!893 = !DILocalVariable(name: "curr_thread", scope: !888, file: !124, line: 666, type: !285)
!894 = !DILocalVariable(name: "fiber_sched_queue", scope: !888, file: !124, line: 674, type: !150)
!895 = !DILocation(line: 663, column: 30, scope: !888, inlinedAt: !896)
!896 = distinct !DILocation(line: 171, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !885, file: !124, line: 168, column: 14)
!898 = !DILocation(line: 663, column: 41, scope: !888, inlinedAt: !896)
!899 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !900)
!900 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !901)
!901 = distinct !DILocation(line: 98, column: 10, scope: !740, inlinedAt: !902)
!902 = distinct !DILocation(line: 666, column: 30, scope: !888, inlinedAt: !896)
!903 = !DILocation(line: 666, column: 16, scope: !888, inlinedAt: !896)
!904 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !912)
!905 = distinct !DILexicalBlock(scope: !906, file: !124, line: 366, column: 29)
!906 = distinct !DILexicalBlock(scope: !907, file: !124, line: 366, column: 29)
!907 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !908)
!908 = !{!909, !910, !911}
!909 = !DILocalVariable(name: "sys", scope: !907, file: !124, line: 366, type: !264)
!910 = !DILocalVariable(name: "__r", scope: !906, file: !124, line: 366, type: !264)
!911 = !DILocalVariable(name: "__r", scope: !905, file: !124, line: 366, type: !264)
!912 = distinct !DILocation(line: 373, column: 20, scope: !913, inlinedAt: !921)
!913 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !741, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !914)
!914 = !{!915, !916, !917, !919}
!915 = !DILocalVariable(name: "random_cpu", scope: !913, file: !124, line: 373, type: !48)
!916 = !DILocalVariable(name: "sys", scope: !913, file: !124, line: 374, type: !264)
!917 = !DILocalVariable(name: "__r", scope: !918, file: !124, line: 374, type: !264)
!918 = distinct !DILexicalBlock(scope: !913, file: !124, line: 374, column: 27)
!919 = !DILocalVariable(name: "__r", scope: !920, file: !124, line: 374, type: !264)
!920 = distinct !DILexicalBlock(scope: !918, file: !124, line: 374, column: 27)
!921 = distinct !DILocation(line: 670, column: 19, scope: !922, inlinedAt: !896)
!922 = distinct !DILexicalBlock(scope: !923, file: !124, line: 669, column: 23)
!923 = distinct !DILexicalBlock(scope: !888, file: !124, line: 669, column: 7)
!924 = !{i32 -2147185108}
!925 = !DILocation(line: 366, column: 29, scope: !906, inlinedAt: !912)
!926 = !DILocation(line: 366, column: 23, scope: !907, inlinedAt: !912)
!927 = !DILocation(line: 358, column: 5, scope: !928, inlinedAt: !933)
!928 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !929, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!25}
!931 = !{!932}
!932 = !DILocalVariable(name: "t", scope: !928, file: !124, line: 358, type: !25)
!933 = distinct !DILocation(line: 367, column: 18, scope: !907, inlinedAt: !912)
!934 = !DILocation(line: 359, column: 5, scope: !928, inlinedAt: !933)
!935 = !DILocation(line: 360, column: 12, scope: !928, inlinedAt: !933)
!936 = !DILocation(line: 358, column: 14, scope: !928, inlinedAt: !933)
!937 = !DILocation(line: 361, column: 1, scope: !928, inlinedAt: !933)
!938 = !DILocation(line: 367, column: 39, scope: !907, inlinedAt: !912)
!939 = !DILocation(line: 367, column: 34, scope: !907, inlinedAt: !912)
!940 = !DILocation(line: 367, column: 32, scope: !907, inlinedAt: !912)
!941 = !DILocation(line: 374, column: 27, scope: !920, inlinedAt: !921)
!942 = !{i32 -2147182107}
!943 = !DILocation(line: 374, column: 27, scope: !918, inlinedAt: !921)
!944 = !DILocation(line: 374, column: 21, scope: !913, inlinedAt: !921)
!945 = !DILocation(line: 375, column: 10, scope: !913, inlinedAt: !921)
!946 = !DILocation(line: 0, scope: !888, inlinedAt: !896)
!947 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !948)
!948 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !949)
!949 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !950)
!950 = distinct !DILocation(line: 674, column: 41, scope: !888, inlinedAt: !896)
!951 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !948)
!952 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !949)
!953 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !950)
!954 = !DILocation(line: 674, column: 21, scope: !888, inlinedAt: !896)
!955 = !DILocation(line: 678, column: 6, scope: !888, inlinedAt: !896)
!956 = !DILocation(line: 678, column: 15, scope: !888, inlinedAt: !896)
!957 = !DILocation(line: 679, column: 22, scope: !888, inlinedAt: !896)
!958 = !DILocalVariable(name: "nelm", arg: 1, scope: !959, file: !53, line: 116, type: !150)
!959 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !819, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !960)
!960 = !{!958, !961}
!961 = !DILocalVariable(name: "head", arg: 2, scope: !959, file: !53, line: 116, type: !150)
!962 = !DILocation(line: 116, column: 52, scope: !959, inlinedAt: !963)
!963 = distinct !DILocation(line: 679, column: 3, scope: !888, inlinedAt: !896)
!964 = !DILocation(line: 116, column: 76, scope: !959, inlinedAt: !963)
!965 = !DILocation(line: 118, column: 25, scope: !959, inlinedAt: !963)
!966 = !DILocalVariable(name: "nelm", arg: 1, scope: !967, file: !53, line: 85, type: !150)
!967 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !968, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !150, !150, !150}
!970 = !{!966, !971, !972}
!971 = !DILocalVariable(name: "prev", arg: 2, scope: !967, file: !53, line: 86, type: !150)
!972 = !DILocalVariable(name: "next", arg: 3, scope: !967, file: !53, line: 87, type: !150)
!973 = !DILocation(line: 85, column: 49, scope: !967, inlinedAt: !974)
!974 = distinct !DILocation(line: 118, column: 2, scope: !959, inlinedAt: !963)
!975 = !DILocation(line: 86, column: 28, scope: !967, inlinedAt: !974)
!976 = !DILocation(line: 87, column: 28, scope: !967, inlinedAt: !974)
!977 = !DILocation(line: 89, column: 13, scope: !967, inlinedAt: !974)
!978 = !DILocation(line: 90, column: 8, scope: !967, inlinedAt: !974)
!979 = !DILocation(line: 90, column: 13, scope: !967, inlinedAt: !974)
!980 = !DILocation(line: 91, column: 8, scope: !967, inlinedAt: !974)
!981 = !DILocation(line: 91, column: 13, scope: !967, inlinedAt: !974)
!982 = !DILocation(line: 92, column: 8, scope: !967, inlinedAt: !974)
!983 = !DILocation(line: 92, column: 13, scope: !967, inlinedAt: !974)
!984 = !DILocation(line: 683, column: 20, scope: !985, inlinedAt: !896)
!985 = distinct !DILexicalBlock(scope: !888, file: !124, line: 683, column: 7)
!986 = !DILocation(line: 683, column: 7, scope: !985, inlinedAt: !896)
!987 = !DILocation(line: 683, column: 7, scope: !888, inlinedAt: !896)
!988 = !DILocation(line: 687, column: 5, scope: !989, inlinedAt: !896)
!989 = distinct !DILexicalBlock(scope: !985, file: !124, line: 683, column: 26)
!990 = !DILocation(line: 688, column: 3, scope: !989, inlinedAt: !896)
!991 = distinct !{!991, !863, !992}
!992 = !DILocation(line: 173, column: 3, scope: !840)
!993 = !DILocation(line: 175, column: 6, scope: !840)
!994 = !DILocation(line: 175, column: 14, scope: !840)
!995 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !996)
!996 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !997)
!997 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !998)
!998 = distinct !DILocation(line: 122, column: 41, scope: !773, inlinedAt: !999)
!999 = distinct !DILocation(line: 179, column: 10, scope: !840)
!1000 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !996)
!1001 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !997)
!1002 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !998)
!1003 = !DILocation(line: 122, column: 21, scope: !773, inlinedAt: !999)
!1004 = !DILocation(line: 125, column: 15, scope: !773, inlinedAt: !999)
!1005 = !DILocation(line: 184, column: 54, scope: !797, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 126, column: 9, scope: !780, inlinedAt: !999)
!1007 = !DILocation(line: 186, column: 15, scope: !797, inlinedAt: !1006)
!1008 = !DILocation(line: 186, column: 20, scope: !797, inlinedAt: !1006)
!1009 = !DILocation(line: 126, column: 7, scope: !773, inlinedAt: !999)
!1010 = !DILocation(line: 128, column: 25, scope: !778, inlinedAt: !999)
!1011 = !DILocation(line: 131, column: 40, scope: !779, inlinedAt: !999)
!1012 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 131, column: 5, scope: !779, inlinedAt: !999)
!1014 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !1013)
!1015 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !1013)
!1016 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !1013)
!1018 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !1017)
!1019 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !1017)
!1020 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !1017)
!1021 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !1017)
!1022 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !1017)
!1023 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !1013)
!1025 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !1024)
!1026 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !1024)
!1027 = !DILocation(line: 180, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !840, file: !124, line: 180, column: 7)
!1029 = !DILocation(line: 180, column: 7, scope: !840)
!1030 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 181, column: 12, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !124, line: 180, column: 16)
!1035 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1031)
!1036 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1032)
!1037 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !1033)
!1038 = !DILocation(line: 182, column: 3, scope: !1034)
!1039 = !DILocation(line: 0, scope: !840)
!1040 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 183, column: 3, scope: !840)
!1043 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1041)
!1044 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1042)
!1045 = !DILocation(line: 183, column: 23, scope: !840)
!1046 = !DILocation(line: 183, column: 34, scope: !840)
!1047 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 186, column: 19, scope: !840)
!1050 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1048)
!1051 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1049)
!1052 = !DILocation(line: 186, column: 39, scope: !840)
!1053 = !DILocation(line: 186, column: 51, scope: !840)
!1054 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 186, column: 3, scope: !840)
!1056 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !1055)
!1057 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !1055)
!1058 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !1055)
!1060 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !1059)
!1061 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !1059)
!1062 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !1059)
!1063 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !1059)
!1064 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !1059)
!1065 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !1055)
!1067 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !1066)
!1068 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !1066)
!1069 = !DILocation(line: 189, column: 3, scope: !840)
!1070 = !DILocation(line: 190, column: 3, scope: !840)
!1071 = !DILocation(line: 193, column: 3, scope: !840)
!1072 = !DILocation(line: 196, column: 1, scope: !840)
!1073 = !DILocation(line: 663, column: 30, scope: !888)
!1074 = !DILocation(line: 663, column: 41, scope: !888)
!1075 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 98, column: 10, scope: !740, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 666, column: 30, scope: !888)
!1079 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1076)
!1080 = !DILocation(line: 666, column: 16, scope: !888)
!1081 = !DILocation(line: 669, column: 7, scope: !923)
!1082 = !DILocation(line: 669, column: 7, scope: !888)
!1083 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 373, column: 20, scope: !913, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 670, column: 19, scope: !922)
!1086 = !DILocation(line: 366, column: 29, scope: !906, inlinedAt: !1084)
!1087 = !DILocation(line: 366, column: 23, scope: !907, inlinedAt: !1084)
!1088 = !DILocation(line: 358, column: 5, scope: !928, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 367, column: 18, scope: !907, inlinedAt: !1084)
!1090 = !DILocation(line: 359, column: 5, scope: !928, inlinedAt: !1089)
!1091 = !DILocation(line: 360, column: 12, scope: !928, inlinedAt: !1089)
!1092 = !DILocation(line: 358, column: 14, scope: !928, inlinedAt: !1089)
!1093 = !DILocation(line: 361, column: 1, scope: !928, inlinedAt: !1089)
!1094 = !DILocation(line: 367, column: 39, scope: !907, inlinedAt: !1084)
!1095 = !DILocation(line: 367, column: 34, scope: !907, inlinedAt: !1084)
!1096 = !DILocation(line: 367, column: 32, scope: !907, inlinedAt: !1084)
!1097 = !DILocation(line: 374, column: 27, scope: !920, inlinedAt: !1085)
!1098 = !DILocation(line: 374, column: 27, scope: !918, inlinedAt: !1085)
!1099 = !DILocation(line: 374, column: 21, scope: !913, inlinedAt: !1085)
!1100 = !DILocation(line: 375, column: 10, scope: !913, inlinedAt: !1085)
!1101 = !DILocation(line: 671, column: 3, scope: !922)
!1102 = !DILocation(line: 0, scope: !888)
!1103 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 674, column: 41, scope: !888)
!1107 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1104)
!1108 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1105)
!1109 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !1106)
!1110 = !DILocation(line: 674, column: 21, scope: !888)
!1111 = !DILocation(line: 678, column: 6, scope: !888)
!1112 = !DILocation(line: 678, column: 15, scope: !888)
!1113 = !DILocation(line: 679, column: 22, scope: !888)
!1114 = !DILocation(line: 116, column: 52, scope: !959, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 679, column: 3, scope: !888)
!1116 = !DILocation(line: 116, column: 76, scope: !959, inlinedAt: !1115)
!1117 = !DILocation(line: 118, column: 25, scope: !959, inlinedAt: !1115)
!1118 = !DILocation(line: 85, column: 49, scope: !967, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 118, column: 2, scope: !959, inlinedAt: !1115)
!1120 = !DILocation(line: 86, column: 28, scope: !967, inlinedAt: !1119)
!1121 = !DILocation(line: 87, column: 28, scope: !967, inlinedAt: !1119)
!1122 = !DILocation(line: 89, column: 13, scope: !967, inlinedAt: !1119)
!1123 = !DILocation(line: 90, column: 8, scope: !967, inlinedAt: !1119)
!1124 = !DILocation(line: 90, column: 13, scope: !967, inlinedAt: !1119)
!1125 = !DILocation(line: 91, column: 8, scope: !967, inlinedAt: !1119)
!1126 = !DILocation(line: 91, column: 13, scope: !967, inlinedAt: !1119)
!1127 = !DILocation(line: 92, column: 8, scope: !967, inlinedAt: !1119)
!1128 = !DILocation(line: 92, column: 13, scope: !967, inlinedAt: !1119)
!1129 = !DILocation(line: 683, column: 20, scope: !985)
!1130 = !DILocation(line: 683, column: 7, scope: !985)
!1131 = !DILocation(line: 683, column: 7, scope: !888)
!1132 = !DILocation(line: 687, column: 5, scope: !989)
!1133 = !DILocation(line: 688, column: 3, scope: !989)
!1134 = !DILocation(line: 690, column: 3, scope: !888)
!1135 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !841, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1136)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "f_to", arg: 1, scope: !1135, file: !124, line: 198, type: !240)
!1138 = !DILocation(line: 198, column: 33, scope: !1135)
!1139 = !DILocation(line: 202, column: 9, scope: !1135)
!1140 = !DILocation(line: 202, column: 19, scope: !1135)
!1141 = !DILocation(line: 202, column: 32, scope: !1135)
!1142 = !DILocation(line: 202, column: 3, scope: !1135)
!1143 = !DILocation(line: 208, column: 3, scope: !1135)
!1144 = !DILocation(line: 210, column: 3, scope: !1135)
!1145 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !124, file: !124, line: 274, type: !841, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1146)
!1146 = !{!1147}
!1147 = !DILocalVariable(name: "f", arg: 1, scope: !1145, file: !124, line: 274, type: !240)
!1148 = !DILocation(line: 274, column: 33, scope: !1145)
!1149 = !DILocation(line: 276, column: 26, scope: !1145)
!1150 = !DILocation(line: 276, column: 37, scope: !1145)
!1151 = !DILocation(line: 276, column: 6, scope: !1145)
!1152 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 277, column: 3, scope: !1145)
!1154 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1153)
!1155 = !DILocation(line: 276, column: 32, scope: !1145)
!1156 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1153)
!1157 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1153)
!1158 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1153)
!1159 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 278, column: 3, scope: !1145)
!1161 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1160)
!1162 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1160)
!1163 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1160)
!1164 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1160)
!1165 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 279, column: 3, scope: !1145)
!1167 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1166)
!1168 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1166)
!1169 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1166)
!1170 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1166)
!1171 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 280, column: 3, scope: !1145)
!1173 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1172)
!1174 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1172)
!1175 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1172)
!1176 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1172)
!1177 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 281, column: 3, scope: !1145)
!1179 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1178)
!1180 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1178)
!1181 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1178)
!1182 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1178)
!1183 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 282, column: 3, scope: !1145)
!1185 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1184)
!1186 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1184)
!1187 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1184)
!1188 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1184)
!1189 = !DILocation(line: 283, column: 18, scope: !1145)
!1190 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 283, column: 3, scope: !1145)
!1192 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1191)
!1193 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1191)
!1194 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1191)
!1195 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1191)
!1196 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 284, column: 3, scope: !1145)
!1198 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1197)
!1199 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1197)
!1200 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1197)
!1201 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1197)
!1202 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 285, column: 3, scope: !1145)
!1204 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1203)
!1205 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1203)
!1206 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1203)
!1207 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1203)
!1208 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 286, column: 3, scope: !1145)
!1210 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1209)
!1211 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1209)
!1212 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1209)
!1213 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1209)
!1214 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 287, column: 3, scope: !1145)
!1216 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1215)
!1217 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1215)
!1218 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1215)
!1219 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1215)
!1220 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 288, column: 3, scope: !1145)
!1222 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1221)
!1223 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1221)
!1224 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1221)
!1225 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1221)
!1226 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 289, column: 3, scope: !1145)
!1228 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1227)
!1229 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1227)
!1230 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1227)
!1231 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1227)
!1232 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 290, column: 3, scope: !1145)
!1234 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1233)
!1235 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1233)
!1236 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1233)
!1237 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1233)
!1238 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 291, column: 3, scope: !1145)
!1240 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1239)
!1241 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1239)
!1242 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1239)
!1243 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1239)
!1244 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 292, column: 3, scope: !1145)
!1246 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !1245)
!1247 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !1245)
!1248 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !1245)
!1249 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !1245)
!1250 = !DILocation(line: 294, column: 3, scope: !1145)
!1251 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !1252, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!48, !240}
!1254 = !{!1255, !1256, !1257}
!1255 = !DILocalVariable(name: "f_to", arg: 1, scope: !1251, file: !124, line: 299, type: !240)
!1256 = !DILocalVariable(name: "f_from", scope: !1251, file: !124, line: 302, type: !240)
!1257 = !DILocalVariable(name: "fiber_sched_queue", scope: !1258, file: !124, line: 312, type: !150)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !124, line: 310, column: 63)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !124, line: 310, column: 7)
!1260 = !DILocation(line: 299, column: 36, scope: !1251)
!1261 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 302, column: 24, scope: !1251)
!1265 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1262)
!1266 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1263)
!1267 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !1264)
!1268 = !DILocation(line: 302, column: 15, scope: !1251)
!1269 = !DILocation(line: 305, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1251, file: !124, line: 305, column: 7)
!1271 = !DILocation(line: 305, column: 32, scope: !1270)
!1272 = !DILocation(line: 306, column: 22, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !124, line: 305, column: 61)
!1274 = !DILocation(line: 307, column: 3, scope: !1273)
!1275 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 310, column: 17, scope: !1259)
!1279 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1276)
!1280 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1277)
!1281 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !1278)
!1282 = !DILocation(line: 310, column: 14, scope: !1259)
!1283 = !DILocation(line: 310, column: 34, scope: !1259)
!1284 = !DILocation(line: 310, column: 45, scope: !1259)
!1285 = !DILocation(line: 310, column: 54, scope: !1259)
!1286 = !DILocation(line: 310, column: 7, scope: !1251)
!1287 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 312, column: 43, scope: !1258)
!1291 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1288)
!1292 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1289)
!1293 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !1290)
!1294 = !DILocation(line: 312, column: 23, scope: !1258)
!1295 = !DILocation(line: 318, column: 29, scope: !1258)
!1296 = !DILocation(line: 116, column: 52, scope: !959, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 318, column: 5, scope: !1258)
!1298 = !DILocation(line: 116, column: 76, scope: !959, inlinedAt: !1297)
!1299 = !DILocation(line: 118, column: 25, scope: !959, inlinedAt: !1297)
!1300 = !DILocation(line: 85, column: 49, scope: !967, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 118, column: 2, scope: !959, inlinedAt: !1297)
!1302 = !DILocation(line: 86, column: 28, scope: !967, inlinedAt: !1301)
!1303 = !DILocation(line: 87, column: 28, scope: !967, inlinedAt: !1301)
!1304 = !DILocation(line: 89, column: 13, scope: !967, inlinedAt: !1301)
!1305 = !DILocation(line: 90, column: 8, scope: !967, inlinedAt: !1301)
!1306 = !DILocation(line: 90, column: 13, scope: !967, inlinedAt: !1301)
!1307 = !DILocation(line: 91, column: 8, scope: !967, inlinedAt: !1301)
!1308 = !DILocation(line: 91, column: 13, scope: !967, inlinedAt: !1301)
!1309 = !DILocation(line: 92, column: 8, scope: !967, inlinedAt: !1301)
!1310 = !DILocation(line: 92, column: 13, scope: !967, inlinedAt: !1301)
!1311 = !DILocation(line: 319, column: 3, scope: !1258)
!1312 = !DILocation(line: 323, column: 16, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1251, file: !124, line: 323, column: 7)
!1314 = !DILocation(line: 323, column: 8, scope: !1313)
!1315 = !DILocation(line: 323, column: 7, scope: !1251)
!1316 = !DILocation(line: 324, column: 29, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !124, line: 323, column: 24)
!1318 = !DILocalVariable(name: "vc", arg: 1, scope: !1319, file: !124, line: 907, type: !88)
!1319 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 907, type: !1320, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !88}
!1322 = !{!1318, !1323}
!1323 = !DILocalVariable(name: "curr_fiber", scope: !1319, file: !124, line: 910, type: !240)
!1324 = !DILocation(line: 907, column: 49, scope: !1319, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 324, column: 5, scope: !1317)
!1326 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 910, column: 28, scope: !1319, inlinedAt: !1325)
!1330 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1327)
!1331 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1328)
!1332 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !1329)
!1333 = !DILocation(line: 910, column: 15, scope: !1319, inlinedAt: !1325)
!1334 = !DILocation(line: 913, column: 15, scope: !1319, inlinedAt: !1325)
!1335 = !DILocation(line: 913, column: 18, scope: !1319, inlinedAt: !1325)
!1336 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1343)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !16, line: 258, column: 26)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !16, line: 258, column: 26)
!1339 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !741, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1340)
!1340 = !{!1341, !1342}
!1341 = !DILocalVariable(name: "__r", scope: !1338, file: !16, line: 258, type: !160)
!1342 = !DILocalVariable(name: "__r", scope: !1337, file: !16, line: 258, type: !160)
!1343 = distinct !DILocation(line: 914, column: 3, scope: !1319, inlinedAt: !1325)
!1344 = !{i32 -2147260788}
!1345 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1343)
!1346 = !DILocation(line: 914, column: 21, scope: !1319, inlinedAt: !1325)
!1347 = !DILocation(line: 914, column: 24, scope: !1319, inlinedAt: !1325)
!1348 = !DILocation(line: 325, column: 3, scope: !1317)
!1349 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 328, column: 3, scope: !1251)
!1352 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1350)
!1353 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1351)
!1354 = !DILocation(line: 328, column: 23, scope: !1251)
!1355 = !DILocation(line: 328, column: 34, scope: !1251)
!1356 = !DILocation(line: 329, column: 20, scope: !1251)
!1357 = !DILocation(line: 330, column: 9, scope: !1251)
!1358 = !DILocation(line: 330, column: 18, scope: !1251)
!1359 = !DILocation(line: 331, column: 3, scope: !1251)
!1360 = !DILocation(line: 333, column: 3, scope: !1251)
!1361 = !DILocation(line: 907, column: 49, scope: !1319)
!1362 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 910, column: 28, scope: !1319)
!1366 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1363)
!1367 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1364)
!1368 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !1365)
!1369 = !DILocation(line: 910, column: 15, scope: !1319)
!1370 = !DILocation(line: 913, column: 15, scope: !1319)
!1371 = !DILocation(line: 913, column: 18, scope: !1319)
!1372 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 914, column: 3, scope: !1319)
!1374 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1373)
!1375 = !DILocation(line: 914, column: 21, scope: !1319)
!1376 = !DILocation(line: 914, column: 24, scope: !1319)
!1377 = !DILocation(line: 915, column: 1, scope: !1319)
!1378 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !1379, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null}
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "curr", scope: !1378, file: !124, line: 338, type: !240)
!1383 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 338, column: 22, scope: !1378)
!1387 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1384)
!1388 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1385)
!1389 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !1386)
!1390 = !DILocation(line: 338, column: 15, scope: !1378)
!1391 = !DILocation(line: 340, column: 3, scope: !1378)
!1392 = !DILocation(line: 341, column: 1, scope: !1378)
!1393 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !1394, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!29, !240}
!1396 = !{!1397, !1398, !1399}
!1397 = !DILocalVariable(name: "f", arg: 1, scope: !1393, file: !124, line: 343, type: !240)
!1398 = !DILocalVariable(name: "idle_fiber", scope: !1393, file: !124, line: 345, type: !240)
!1399 = !DILocalVariable(name: "result", scope: !1393, file: !124, line: 348, type: !29)
!1400 = !DILocation(line: 343, column: 36, scope: !1393)
!1401 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 345, column: 28, scope: !1393)
!1405 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1402)
!1406 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !1403)
!1407 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !1404)
!1408 = !DILocation(line: 345, column: 15, scope: !1393)
!1409 = !DILocation(line: 348, column: 11, scope: !1393)
!1410 = !DILocation(line: 349, column: 18, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1393, file: !124, line: 349, column: 7)
!1412 = !DILocation(line: 349, column: 7, scope: !1393)
!1413 = !DILocation(line: 353, column: 3, scope: !1393)
!1414 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 373, column: 20, scope: !913)
!1416 = !DILocation(line: 366, column: 29, scope: !906, inlinedAt: !1415)
!1417 = !DILocation(line: 366, column: 23, scope: !907, inlinedAt: !1415)
!1418 = !DILocation(line: 358, column: 5, scope: !928, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 367, column: 18, scope: !907, inlinedAt: !1415)
!1420 = !DILocation(line: 359, column: 5, scope: !928, inlinedAt: !1419)
!1421 = !DILocation(line: 360, column: 12, scope: !928, inlinedAt: !1419)
!1422 = !DILocation(line: 358, column: 14, scope: !928, inlinedAt: !1419)
!1423 = !DILocation(line: 361, column: 1, scope: !928, inlinedAt: !1419)
!1424 = !DILocation(line: 367, column: 39, scope: !907, inlinedAt: !1415)
!1425 = !DILocation(line: 367, column: 34, scope: !907, inlinedAt: !1415)
!1426 = !DILocation(line: 367, column: 32, scope: !907, inlinedAt: !1415)
!1427 = !DILocation(line: 374, column: 27, scope: !920)
!1428 = !DILocation(line: 374, column: 27, scope: !918)
!1429 = !DILocation(line: 374, column: 21, scope: !913)
!1430 = !DILocation(line: 375, column: 10, scope: !913)
!1431 = !DILocation(line: 375, column: 33, scope: !913)
!1432 = !DILocation(line: 375, column: 42, scope: !913)
!1433 = !DILocation(line: 375, column: 3, scope: !913)
!1434 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !1252, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1435)
!1435 = !{!1436, !1437, !1438, !1440, !1442, !1443, !1444, !1445, !1447, !1452}
!1436 = !DILocalVariable(name: "to_del", arg: 1, scope: !1434, file: !124, line: 383, type: !240)
!1437 = !DILocalVariable(name: "sys", scope: !1434, file: !124, line: 386, type: !264)
!1438 = !DILocalVariable(name: "__r", scope: !1439, file: !124, line: 386, type: !264)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !124, line: 386, column: 26)
!1440 = !DILocalVariable(name: "__r", scope: !1441, file: !124, line: 386, type: !264)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !124, line: 386, column: 26)
!1442 = !DILocalVariable(name: "cpu_iter", scope: !1434, file: !124, line: 387, type: !48)
!1443 = !DILocalVariable(name: "temp", scope: !1434, file: !124, line: 390, type: !150)
!1444 = !DILocalVariable(name: "test", scope: !1434, file: !124, line: 391, type: !240)
!1445 = !DILocalVariable(name: "iter", scope: !1446, file: !124, line: 392, type: !48)
!1446 = distinct !DILexicalBlock(scope: !1434, file: !124, line: 392, column: 3)
!1447 = !DILocalVariable(name: "__mptr", scope: !1448, file: !124, line: 395, type: !785)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !124, line: 395, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !124, line: 395, column: 5)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !124, line: 392, column: 46)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !124, line: 392, column: 3)
!1452 = !DILocalVariable(name: "__mptr", scope: !1453, file: !124, line: 395, type: !785)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !124, line: 395, column: 5)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !124, line: 395, column: 5)
!1455 = !DILocation(line: 383, column: 42, scope: !1434)
!1456 = !DILocation(line: 386, column: 26, scope: !1441)
!1457 = !{i32 -2147179106}
!1458 = !DILocation(line: 386, column: 26, scope: !1439)
!1459 = !DILocation(line: 386, column: 20, scope: !1434)
!1460 = !DILocation(line: 387, column: 23, scope: !1434)
!1461 = !DILocation(line: 387, column: 7, scope: !1434)
!1462 = !DILocation(line: 392, column: 12, scope: !1446)
!1463 = !DILocation(line: 392, column: 27, scope: !1451)
!1464 = !DILocation(line: 392, column: 3, scope: !1446)
!1465 = !DILocation(line: 394, column: 14, scope: !1450)
!1466 = !DILocation(line: 394, column: 31, scope: !1450)
!1467 = !DILocation(line: 394, column: 40, scope: !1450)
!1468 = !DILocation(line: 390, column: 21, scope: !1434)
!1469 = !DILocation(line: 395, column: 5, scope: !1448)
!1470 = !DILocation(line: 391, column: 15, scope: !1434)
!1471 = !DILocation(line: 0, scope: !1449)
!1472 = !DILocation(line: 395, column: 5, scope: !1449)
!1473 = !DILocation(line: 395, column: 5, scope: !1454)
!1474 = !DILocation(line: 400, column: 16, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !124, line: 400, column: 11)
!1476 = distinct !DILexicalBlock(scope: !1454, file: !124, line: 395, column: 48)
!1477 = !DILocation(line: 400, column: 11, scope: !1476)
!1478 = distinct !{!1478, !1472, !1479}
!1479 = !DILocation(line: 404, column: 5, scope: !1449)
!1480 = !DILocation(line: 392, column: 43, scope: !1451)
!1481 = distinct !{!1481, !1464, !1482}
!1482 = !DILocation(line: 405, column: 3, scope: !1446)
!1483 = !DILocation(line: 401, column: 33, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !124, line: 400, column: 26)
!1485 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 401, column: 9, scope: !1484)
!1487 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !1486)
!1488 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !1486)
!1489 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !1486)
!1491 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !1490)
!1492 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !1490)
!1493 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !1490)
!1494 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !1490)
!1495 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !1490)
!1496 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !1486)
!1498 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !1497)
!1499 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !1497)
!1500 = !DILocation(line: 408, column: 1, scope: !1434)
!1501 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1506, !1508, !1509, !1515, !1516, !1521, !1523, !1526, !1528}
!1503 = !DILocalVariable(name: "id", scope: !1501, file: !124, line: 437, type: !291)
!1504 = !DILocalVariable(name: "__r", scope: !1505, file: !124, line: 437, type: !291)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !124, line: 437, column: 19)
!1506 = !DILocalVariable(name: "__r", scope: !1507, file: !124, line: 437, type: !291)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !124, line: 437, column: 19)
!1508 = !DILocalVariable(name: "my_cpu", scope: !1501, file: !124, line: 438, type: !270)
!1509 = !DILocalVariable(name: "_p", scope: !1510, file: !124, line: 444, type: !48)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !124, line: 444, column: 2)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !124, line: 444, column: 2)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !124, line: 444, column: 2)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !124, line: 443, column: 29)
!1514 = distinct !DILexicalBlock(scope: !1501, file: !124, line: 443, column: 9)
!1515 = !DILocalVariable(name: "_t", scope: !1510, file: !124, line: 444, type: !160)
!1516 = !DILocalVariable(name: "__r", scope: !1517, file: !124, line: 444, type: !291)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !124, line: 444, column: 2)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !124, line: 444, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !124, line: 444, column: 2)
!1520 = distinct !DILexicalBlock(scope: !1510, file: !124, line: 444, column: 2)
!1521 = !DILocalVariable(name: "__r", scope: !1522, file: !124, line: 444, type: !291)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !124, line: 444, column: 2)
!1523 = !DILocalVariable(name: "__r", scope: !1524, file: !124, line: 444, type: !291)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !124, line: 444, column: 2)
!1525 = distinct !DILexicalBlock(scope: !1519, file: !124, line: 444, column: 2)
!1526 = !DILocalVariable(name: "__r", scope: !1527, file: !124, line: 444, type: !291)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !124, line: 444, column: 2)
!1528 = !DILocalVariable(name: "_p", scope: !1529, file: !124, line: 444, type: !48)
!1529 = distinct !DILexicalBlock(scope: !1511, file: !124, line: 444, column: 2)
!1530 = !DILocation(line: 437, column: 19, scope: !1507)
!1531 = !{i32 -2147162343}
!1532 = !DILocation(line: 437, column: 19, scope: !1505)
!1533 = !DILocation(line: 437, column: 14, scope: !1501)
!1534 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 438, column: 27, scope: !1501)
!1536 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !1535)
!1537 = !DILocation(line: 438, column: 18, scope: !1501)
!1538 = !DILocation(line: 442, column: 23, scope: !1501)
!1539 = !DILocation(line: 442, column: 13, scope: !1501)
!1540 = !DILocation(line: 442, column: 21, scope: !1501)
!1541 = !DILocation(line: 443, column: 10, scope: !1514)
!1542 = !DILocation(line: 443, column: 9, scope: !1501)
!1543 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1548)
!1544 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !1545, file: !1545, line: 39, type: !1546, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!1545 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!31}
!1548 = distinct !DILocation(line: 444, column: 2, scope: !1511)
!1549 = !DILocation(line: 444, column: 2, scope: !1511)
!1550 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !1555)
!1552 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !1545, file: !1545, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1553)
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "base", scope: !1552, file: !1545, line: 84, type: !31)
!1555 = distinct !DILocation(line: 0, scope: !1511)
!1556 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !1555)
!1557 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !1555)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !1545, line: 85, column: 9)
!1559 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !1555)
!1560 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !1555)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !1545, line: 85, column: 15)
!1562 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !1555)
!1563 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !1555)
!1564 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !1555)
!1565 = !DILocation(line: 0, scope: !1558, inlinedAt: !1555)
!1566 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !1571)
!1568 = distinct !DISubprogram(name: "preempt_disable", scope: !1545, file: !1545, line: 46, type: !1379, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1569)
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "base", scope: !1568, file: !1545, line: 48, type: !31)
!1571 = distinct !DILocation(line: 0, scope: !1511)
!1572 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !1571)
!1573 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !1571)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !1545, line: 49, column: 9)
!1575 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !1571)
!1576 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !1571)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !1545, line: 49, column: 15)
!1578 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !1571)
!1579 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !1571)
!1580 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !1571)
!1581 = !DILocation(line: 444, column: 2, scope: !1512)
!1582 = !DILocation(line: 444, column: 2, scope: !1510)
!1583 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 444, column: 2, scope: !1510)
!1585 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1584)
!1586 = !DILocation(line: 444, column: 2, scope: !1519)
!1587 = !DILocation(line: 0, scope: !1519)
!1588 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1595)
!1590 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !1545, file: !1545, line: 94, type: !1591, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!39}
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "base", scope: !1590, file: !1545, line: 96, type: !31)
!1595 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1597)
!1596 = distinct !DISubprogram(name: "in_interrupt_context", scope: !1545, file: !1545, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!1597 = distinct !DILocation(line: 0, scope: !1519)
!1598 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1595)
!1599 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1595)
!1600 = distinct !DILexicalBlock(scope: !1590, file: !1545, line: 97, column: 9)
!1601 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1595)
!1602 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1595)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !1545, line: 97, column: 15)
!1604 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1595)
!1605 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1595)
!1606 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1595)
!1607 = !DILocation(line: 444, column: 2, scope: !1520)
!1608 = !DILocation(line: 444, column: 2, scope: !1518)
!1609 = !DILocation(line: 444, column: 2, scope: !1525)
!1610 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1615)
!1612 = distinct !DISubprogram(name: "preempt_enable", scope: !1545, file: !1545, line: 57, type: !1379, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1613)
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "base", scope: !1612, file: !1545, line: 59, type: !31)
!1615 = distinct !DILocation(line: 444, column: 2, scope: !1510)
!1616 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1615)
!1617 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1615)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !1545, line: 60, column: 9)
!1619 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1615)
!1620 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1615)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !1545, line: 60, column: 15)
!1622 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1615)
!1623 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1615)
!1624 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1615)
!1625 = !DILocation(line: 444, column: 2, scope: !1529)
!1626 = !DILocation(line: 444, column: 2, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !124, line: 444, column: 2)
!1628 = distinct !DILexicalBlock(scope: !1529, file: !124, line: 444, column: 2)
!1629 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 0, scope: !1627)
!1633 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1631)
!1634 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1631)
!1635 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1631)
!1636 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1631)
!1637 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1631)
!1638 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1631)
!1639 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1631)
!1640 = !DILocation(line: 0, scope: !1627)
!1641 = !DILocation(line: 444, column: 2, scope: !1628)
!1642 = !DILocation(line: 444, column: 2, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1627, file: !124, line: 444, column: 2)
!1644 = !DILocation(line: 444, column: 2, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1627, file: !124, line: 444, column: 2)
!1646 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 444, column: 2, scope: !1529)
!1649 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1648)
!1650 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1648)
!1651 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1648)
!1652 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1648)
!1653 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1648)
!1654 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1648)
!1655 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1648)
!1656 = !DILocation(line: 0, scope: !1501)
!1657 = !DILocation(line: 449, column: 1, scope: !1501)
!1658 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !1659, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!280}
!1661 = !{!1662, !1663, !1665, !1667, !1669, !1675, !1676, !1681, !1683, !1686, !1688}
!1662 = !DILocalVariable(name: "state", scope: !1658, file: !124, line: 412, type: !280)
!1663 = !DILocalVariable(name: "p", scope: !1664, file: !124, line: 412, type: !31)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !124, line: 412, column: 74)
!1665 = !DILocalVariable(name: "__r", scope: !1666, file: !124, line: 412, type: !291)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !124, line: 412, column: 74)
!1667 = !DILocalVariable(name: "__r", scope: !1668, file: !124, line: 412, type: !291)
!1668 = distinct !DILexicalBlock(scope: !1666, file: !124, line: 412, column: 74)
!1669 = !DILocalVariable(name: "_p", scope: !1670, file: !124, line: 415, type: !48)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !124, line: 415, column: 9)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !124, line: 415, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !124, line: 415, column: 9)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 414, column: 17)
!1674 = distinct !DILexicalBlock(scope: !1658, file: !124, line: 414, column: 9)
!1675 = !DILocalVariable(name: "_t", scope: !1670, file: !124, line: 415, type: !160)
!1676 = !DILocalVariable(name: "__r", scope: !1677, file: !124, line: 415, type: !291)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !124, line: 415, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !124, line: 415, column: 9)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !124, line: 415, column: 9)
!1680 = distinct !DILexicalBlock(scope: !1670, file: !124, line: 415, column: 9)
!1681 = !DILocalVariable(name: "__r", scope: !1682, file: !124, line: 415, type: !291)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !124, line: 415, column: 9)
!1683 = !DILocalVariable(name: "__r", scope: !1684, file: !124, line: 415, type: !291)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !124, line: 415, column: 9)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !124, line: 415, column: 9)
!1686 = !DILocalVariable(name: "__r", scope: !1687, file: !124, line: 415, type: !291)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !124, line: 415, column: 9)
!1688 = !DILocalVariable(name: "_p", scope: !1689, file: !124, line: 415, type: !48)
!1689 = distinct !DILexicalBlock(scope: !1671, file: !124, line: 415, column: 9)
!1690 = !DILocation(line: 412, column: 74, scope: !1668)
!1691 = !{i32 -2147173852}
!1692 = !DILocation(line: 412, column: 74, scope: !1666)
!1693 = !DILocation(line: 412, column: 74, scope: !1664)
!1694 = !DILocation(line: 414, column: 10, scope: !1674)
!1695 = !DILocation(line: 414, column: 9, scope: !1658)
!1696 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 415, column: 9, scope: !1671)
!1698 = !DILocation(line: 415, column: 9, scope: !1671)
!1699 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 0, scope: !1671)
!1702 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !1701)
!1703 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !1701)
!1704 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !1701)
!1705 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !1701)
!1706 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !1701)
!1707 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !1701)
!1708 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !1701)
!1709 = !DILocation(line: 0, scope: !1558, inlinedAt: !1701)
!1710 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 0, scope: !1671)
!1713 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !1712)
!1714 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !1712)
!1715 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !1712)
!1716 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !1712)
!1717 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !1712)
!1718 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !1712)
!1719 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !1712)
!1720 = !DILocation(line: 415, column: 9, scope: !1672)
!1721 = !DILocation(line: 415, column: 9, scope: !1670)
!1722 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 415, column: 9, scope: !1670)
!1724 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1723)
!1725 = !DILocation(line: 415, column: 9, scope: !1679)
!1726 = !DILocation(line: 0, scope: !1679)
!1727 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 0, scope: !1679)
!1731 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1729)
!1732 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1729)
!1733 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1729)
!1734 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1729)
!1735 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1729)
!1736 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1729)
!1737 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1729)
!1738 = !DILocation(line: 415, column: 9, scope: !1680)
!1739 = !DILocation(line: 415, column: 9, scope: !1678)
!1740 = !DILocation(line: 415, column: 9, scope: !1685)
!1741 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 415, column: 9, scope: !1670)
!1744 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1743)
!1745 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1743)
!1746 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1743)
!1747 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1743)
!1748 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1743)
!1749 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1743)
!1750 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1743)
!1751 = !DILocation(line: 415, column: 9, scope: !1689)
!1752 = !DILocation(line: 415, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !124, line: 415, column: 9)
!1754 = distinct !DILexicalBlock(scope: !1689, file: !124, line: 415, column: 9)
!1755 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 0, scope: !1753)
!1759 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1757)
!1760 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1757)
!1761 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1757)
!1762 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1757)
!1763 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1757)
!1764 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1757)
!1765 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1757)
!1766 = !DILocation(line: 0, scope: !1753)
!1767 = !DILocation(line: 415, column: 9, scope: !1754)
!1768 = !DILocation(line: 415, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1753, file: !124, line: 415, column: 9)
!1770 = !DILocation(line: 415, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1753, file: !124, line: 415, column: 9)
!1772 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 415, column: 9, scope: !1689)
!1775 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1774)
!1776 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1774)
!1777 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1774)
!1778 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1774)
!1779 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1774)
!1780 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1774)
!1781 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1774)
!1782 = !DILocation(line: 412, column: 43, scope: !1658)
!1783 = !DILocation(line: 412, column: 35, scope: !1658)
!1784 = !DILocation(line: 419, column: 2, scope: !1658)
!1785 = !DILocation(line: 421, column: 27, scope: !1658)
!1786 = !DILocation(line: 421, column: 5, scope: !1658)
!1787 = !DILocation(line: 424, column: 29, scope: !1658)
!1788 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 424, column: 5, scope: !1658)
!1790 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !1789)
!1791 = !DILocation(line: 76, column: 8, scope: !831, inlinedAt: !1789)
!1792 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !1789)
!1793 = !DILocation(line: 426, column: 5, scope: !1658)
!1794 = !DILocation(line: 429, column: 5, scope: !1658)
!1795 = !DILocation(line: 431, column: 5, scope: !1658)
!1796 = !DILocation(line: 0, scope: !1658)
!1797 = !DILocation(line: 432, column: 1, scope: !1658)
!1798 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1799)
!1799 = !{!1800, !1801, !1805, !1806, !1811, !1813, !1816, !1818, !1820, !1826, !1827, !1832, !1834, !1837, !1839}
!1800 = !DILocalVariable(name: "my_cpu", scope: !1798, file: !124, line: 454, type: !270)
!1801 = !DILocalVariable(name: "_p", scope: !1802, file: !124, line: 456, type: !48)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !124, line: 456, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !124, line: 456, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !124, line: 456, column: 5)
!1805 = !DILocalVariable(name: "_t", scope: !1802, file: !124, line: 456, type: !160)
!1806 = !DILocalVariable(name: "__r", scope: !1807, file: !124, line: 456, type: !291)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !124, line: 456, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !124, line: 456, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !124, line: 456, column: 5)
!1810 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 456, column: 5)
!1811 = !DILocalVariable(name: "__r", scope: !1812, file: !124, line: 456, type: !291)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !124, line: 456, column: 5)
!1813 = !DILocalVariable(name: "__r", scope: !1814, file: !124, line: 456, type: !291)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !124, line: 456, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !124, line: 456, column: 5)
!1816 = !DILocalVariable(name: "__r", scope: !1817, file: !124, line: 456, type: !291)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !124, line: 456, column: 5)
!1818 = !DILocalVariable(name: "_p", scope: !1819, file: !124, line: 456, type: !48)
!1819 = distinct !DILexicalBlock(scope: !1803, file: !124, line: 456, column: 5)
!1820 = !DILocalVariable(name: "_p", scope: !1821, file: !124, line: 464, type: !48)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !124, line: 464, column: 2)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !124, line: 464, column: 2)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !124, line: 464, column: 2)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !124, line: 463, column: 29)
!1825 = distinct !DILexicalBlock(scope: !1798, file: !124, line: 463, column: 9)
!1826 = !DILocalVariable(name: "_t", scope: !1821, file: !124, line: 464, type: !160)
!1827 = !DILocalVariable(name: "__r", scope: !1828, file: !124, line: 464, type: !291)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !124, line: 464, column: 2)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !124, line: 464, column: 2)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !124, line: 464, column: 2)
!1831 = distinct !DILexicalBlock(scope: !1821, file: !124, line: 464, column: 2)
!1832 = !DILocalVariable(name: "__r", scope: !1833, file: !124, line: 464, type: !291)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !124, line: 464, column: 2)
!1834 = !DILocalVariable(name: "__r", scope: !1835, file: !124, line: 464, type: !291)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !124, line: 464, column: 2)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !124, line: 464, column: 2)
!1837 = !DILocalVariable(name: "__r", scope: !1838, file: !124, line: 464, type: !291)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !124, line: 464, column: 2)
!1839 = !DILocalVariable(name: "_p", scope: !1840, file: !124, line: 464, type: !48)
!1840 = distinct !DILexicalBlock(scope: !1822, file: !124, line: 464, column: 2)
!1841 = !DILocation(line: 454, column: 88, scope: !1798)
!1842 = !DILocation(line: 454, column: 27, scope: !1798)
!1843 = !DILocation(line: 454, column: 18, scope: !1798)
!1844 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 456, column: 5, scope: !1803)
!1846 = !DILocation(line: 456, column: 5, scope: !1803)
!1847 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 0, scope: !1803)
!1850 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !1849)
!1851 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !1849)
!1852 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !1849)
!1853 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !1849)
!1854 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !1849)
!1855 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !1849)
!1856 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !1849)
!1857 = !DILocation(line: 0, scope: !1558, inlinedAt: !1849)
!1858 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 0, scope: !1803)
!1861 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !1860)
!1862 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !1860)
!1863 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !1860)
!1864 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !1860)
!1865 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !1860)
!1866 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !1860)
!1867 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !1860)
!1868 = !DILocation(line: 456, column: 5, scope: !1804)
!1869 = !DILocation(line: 456, column: 5, scope: !1802)
!1870 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 456, column: 5, scope: !1802)
!1872 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1871)
!1873 = !DILocation(line: 456, column: 5, scope: !1809)
!1874 = !DILocation(line: 0, scope: !1809)
!1875 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 0, scope: !1809)
!1879 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1877)
!1880 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1877)
!1881 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1877)
!1882 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1877)
!1883 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1877)
!1884 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1877)
!1885 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1877)
!1886 = !DILocation(line: 456, column: 5, scope: !1810)
!1887 = !DILocation(line: 456, column: 5, scope: !1808)
!1888 = !DILocation(line: 456, column: 5, scope: !1815)
!1889 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 456, column: 5, scope: !1802)
!1892 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1891)
!1893 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1891)
!1894 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1891)
!1895 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1891)
!1896 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1891)
!1897 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1891)
!1898 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1891)
!1899 = !DILocation(line: 456, column: 5, scope: !1819)
!1900 = !DILocation(line: 456, column: 5, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !124, line: 456, column: 5)
!1902 = distinct !DILexicalBlock(scope: !1819, file: !124, line: 456, column: 5)
!1903 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 0, scope: !1901)
!1907 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1905)
!1908 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1905)
!1909 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1905)
!1910 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1905)
!1911 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1905)
!1912 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1905)
!1913 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1905)
!1914 = !DILocation(line: 0, scope: !1901)
!1915 = !DILocation(line: 456, column: 5, scope: !1902)
!1916 = !DILocation(line: 456, column: 5, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1901, file: !124, line: 456, column: 5)
!1918 = !DILocation(line: 456, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1901, file: !124, line: 456, column: 5)
!1920 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 456, column: 5, scope: !1819)
!1923 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1922)
!1924 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1922)
!1925 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1922)
!1926 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1922)
!1927 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1922)
!1928 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1922)
!1929 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1922)
!1930 = !DILocation(line: 462, column: 23, scope: !1798)
!1931 = !DILocation(line: 462, column: 13, scope: !1798)
!1932 = !DILocation(line: 462, column: 21, scope: !1798)
!1933 = !DILocation(line: 463, column: 10, scope: !1825)
!1934 = !DILocation(line: 463, column: 9, scope: !1798)
!1935 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 464, column: 2, scope: !1822)
!1937 = !DILocation(line: 464, column: 2, scope: !1822)
!1938 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 0, scope: !1822)
!1941 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !1940)
!1942 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !1940)
!1943 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !1940)
!1944 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !1940)
!1945 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !1940)
!1946 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !1940)
!1947 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !1940)
!1948 = !DILocation(line: 0, scope: !1558, inlinedAt: !1940)
!1949 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 0, scope: !1822)
!1952 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !1951)
!1953 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !1951)
!1954 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !1951)
!1955 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !1951)
!1956 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !1951)
!1957 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !1951)
!1958 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !1951)
!1959 = !DILocation(line: 464, column: 2, scope: !1823)
!1960 = !DILocation(line: 464, column: 2, scope: !1821)
!1961 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 464, column: 2, scope: !1821)
!1963 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !1962)
!1964 = !DILocation(line: 464, column: 2, scope: !1830)
!1965 = !DILocation(line: 0, scope: !1830)
!1966 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 0, scope: !1830)
!1970 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1968)
!1971 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1968)
!1972 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1968)
!1973 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1968)
!1974 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1968)
!1975 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1968)
!1976 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1968)
!1977 = !DILocation(line: 464, column: 2, scope: !1831)
!1978 = !DILocation(line: 464, column: 2, scope: !1829)
!1979 = !DILocation(line: 464, column: 2, scope: !1836)
!1980 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 464, column: 2, scope: !1821)
!1983 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !1982)
!1984 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !1982)
!1985 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !1982)
!1986 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !1982)
!1987 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !1982)
!1988 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !1982)
!1989 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !1982)
!1990 = !DILocation(line: 464, column: 2, scope: !1840)
!1991 = !DILocation(line: 464, column: 2, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !124, line: 464, column: 2)
!1993 = distinct !DILexicalBlock(scope: !1840, file: !124, line: 464, column: 2)
!1994 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 0, scope: !1992)
!1998 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !1996)
!1999 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !1996)
!2000 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !1996)
!2001 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !1996)
!2002 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !1996)
!2003 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !1996)
!2004 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !1996)
!2005 = !DILocation(line: 0, scope: !1992)
!2006 = !DILocation(line: 464, column: 2, scope: !1993)
!2007 = !DILocation(line: 464, column: 2, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1992, file: !124, line: 464, column: 2)
!2009 = !DILocation(line: 464, column: 2, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1992, file: !124, line: 464, column: 2)
!2011 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 464, column: 2, scope: !1840)
!2014 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2013)
!2015 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2013)
!2016 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2013)
!2017 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2013)
!2018 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2013)
!2019 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2013)
!2020 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2013)
!2021 = !DILocation(line: 0, scope: !1798)
!2022 = !DILocation(line: 469, column: 1, scope: !1798)
!2023 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2024)
!2024 = !{!2025, !2026, !2027, !2033, !2034, !2039, !2041, !2044, !2046, !2048, !2074, !2080, !2081, !2086, !2088, !2091, !2093, !2095, !2096, !2102, !2103, !2108, !2110, !2113, !2115, !2117, !2118, !2124, !2125, !2130, !2132, !2135, !2137}
!2025 = !DILocalVariable(name: "in", arg: 1, scope: !2023, file: !124, line: 511, type: !31)
!2026 = !DILocalVariable(name: "out", arg: 2, scope: !2023, file: !124, line: 511, type: !75)
!2027 = !DILocalVariable(name: "_p", scope: !2028, file: !124, line: 515, type: !48)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !124, line: 515, column: 5)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !124, line: 515, column: 5)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !124, line: 515, column: 5)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !124, line: 514, column: 51)
!2032 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 514, column: 7)
!2033 = !DILocalVariable(name: "_t", scope: !2028, file: !124, line: 515, type: !160)
!2034 = !DILocalVariable(name: "__r", scope: !2035, file: !124, line: 515, type: !291)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !124, line: 515, column: 5)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !124, line: 515, column: 5)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !124, line: 515, column: 5)
!2038 = distinct !DILexicalBlock(scope: !2028, file: !124, line: 515, column: 5)
!2039 = !DILocalVariable(name: "__r", scope: !2040, file: !124, line: 515, type: !291)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !124, line: 515, column: 5)
!2041 = !DILocalVariable(name: "__r", scope: !2042, file: !124, line: 515, type: !291)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !124, line: 515, column: 5)
!2043 = distinct !DILexicalBlock(scope: !2037, file: !124, line: 515, column: 5)
!2044 = !DILocalVariable(name: "__r", scope: !2045, file: !124, line: 515, type: !291)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !124, line: 515, column: 5)
!2046 = !DILocalVariable(name: "_p", scope: !2047, file: !124, line: 515, type: !48)
!2047 = distinct !DILexicalBlock(scope: !2029, file: !124, line: 515, column: 5)
!2048 = !DILocalVariable(name: "c", scope: !2023, file: !124, line: 520, type: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2050)
!2050 = !{!2051, !2053, !2054}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2049, file: !86, line: 68, baseType: !2052, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2049, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !86, line: 80, baseType: !2055, size: 256, offset: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !86, line: 80, size: 256, elements: !2056)
!2056 = !{!2057, !2063, !2070}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2055, file: !86, line: 81, baseType: !2058, size: 192)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2058, file: !86, line: 50, baseType: !25, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2058, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2058, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2055, file: !86, line: 82, baseType: !2064, size: 256)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2064, file: !86, line: 56, baseType: !25, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2064, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2064, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2064, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2055, file: !86, line: 83, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2071, file: !86, line: 63, baseType: !25, size: 64)
!2074 = !DILocalVariable(name: "_p", scope: !2075, file: !124, line: 525, type: !48)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !124, line: 525, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !124, line: 525, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !124, line: 525, column: 5)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !124, line: 524, column: 47)
!2079 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 524, column: 7)
!2080 = !DILocalVariable(name: "_t", scope: !2075, file: !124, line: 525, type: !160)
!2081 = !DILocalVariable(name: "__r", scope: !2082, file: !124, line: 525, type: !291)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !124, line: 525, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !124, line: 525, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !124, line: 525, column: 5)
!2085 = distinct !DILexicalBlock(scope: !2075, file: !124, line: 525, column: 5)
!2086 = !DILocalVariable(name: "__r", scope: !2087, file: !124, line: 525, type: !291)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !124, line: 525, column: 5)
!2088 = !DILocalVariable(name: "__r", scope: !2089, file: !124, line: 525, type: !291)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !124, line: 525, column: 5)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !124, line: 525, column: 5)
!2091 = !DILocalVariable(name: "__r", scope: !2092, file: !124, line: 525, type: !291)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !124, line: 525, column: 5)
!2093 = !DILocalVariable(name: "_p", scope: !2094, file: !124, line: 525, type: !48)
!2094 = distinct !DILexicalBlock(scope: !2076, file: !124, line: 525, column: 5)
!2095 = !DILocalVariable(name: "state", scope: !2023, file: !124, line: 534, type: !710)
!2096 = !DILocalVariable(name: "_p", scope: !2097, file: !124, line: 536, type: !48)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !124, line: 536, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !124, line: 536, column: 5)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !124, line: 536, column: 5)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !124, line: 535, column: 17)
!2101 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 535, column: 7)
!2102 = !DILocalVariable(name: "_t", scope: !2097, file: !124, line: 536, type: !160)
!2103 = !DILocalVariable(name: "__r", scope: !2104, file: !124, line: 536, type: !291)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !124, line: 536, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !124, line: 536, column: 5)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !124, line: 536, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2097, file: !124, line: 536, column: 5)
!2108 = !DILocalVariable(name: "__r", scope: !2109, file: !124, line: 536, type: !291)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !124, line: 536, column: 5)
!2110 = !DILocalVariable(name: "__r", scope: !2111, file: !124, line: 536, type: !291)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !124, line: 536, column: 5)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !124, line: 536, column: 5)
!2113 = !DILocalVariable(name: "__r", scope: !2114, file: !124, line: 536, type: !291)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !124, line: 536, column: 5)
!2115 = !DILocalVariable(name: "_p", scope: !2116, file: !124, line: 536, type: !48)
!2116 = distinct !DILexicalBlock(scope: !2098, file: !124, line: 536, column: 5)
!2117 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2023, file: !124, line: 541, type: !240)
!2118 = !DILocalVariable(name: "_p", scope: !2119, file: !124, line: 543, type: !48)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !124, line: 543, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !124, line: 543, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !124, line: 543, column: 5)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !124, line: 542, column: 71)
!2123 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 542, column: 7)
!2124 = !DILocalVariable(name: "_t", scope: !2119, file: !124, line: 543, type: !160)
!2125 = !DILocalVariable(name: "__r", scope: !2126, file: !124, line: 543, type: !291)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !124, line: 543, column: 5)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !124, line: 543, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !124, line: 543, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2119, file: !124, line: 543, column: 5)
!2130 = !DILocalVariable(name: "__r", scope: !2131, file: !124, line: 543, type: !291)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !124, line: 543, column: 5)
!2132 = !DILocalVariable(name: "__r", scope: !2133, file: !124, line: 543, type: !291)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !124, line: 543, column: 5)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !124, line: 543, column: 5)
!2135 = !DILocalVariable(name: "__r", scope: !2136, file: !124, line: 543, type: !291)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !124, line: 543, column: 5)
!2137 = !DILocalVariable(name: "_p", scope: !2138, file: !124, line: 543, type: !48)
!2138 = distinct !DILexicalBlock(scope: !2120, file: !124, line: 543, column: 5)
!2139 = !DILocation(line: 511, column: 27, scope: !2023)
!2140 = !DILocation(line: 511, column: 38, scope: !2023)
!2141 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 514, column: 22, scope: !2032)
!2143 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2142)
!2144 = !DILocation(line: 514, column: 22, scope: !2032)
!2145 = !DILocation(line: 514, column: 7, scope: !2032)
!2146 = !DILocation(line: 514, column: 7, scope: !2023)
!2147 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 515, column: 5, scope: !2029)
!2149 = !DILocation(line: 515, column: 5, scope: !2029)
!2150 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 0, scope: !2029)
!2153 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !2152)
!2154 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !2152)
!2155 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !2152)
!2156 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !2152)
!2157 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !2152)
!2158 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !2152)
!2159 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !2152)
!2160 = !DILocation(line: 0, scope: !1558, inlinedAt: !2152)
!2161 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 0, scope: !2029)
!2164 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !2163)
!2165 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !2163)
!2166 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !2163)
!2167 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !2163)
!2168 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !2163)
!2169 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !2163)
!2170 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !2163)
!2171 = !DILocation(line: 515, column: 5, scope: !2030)
!2172 = !DILocation(line: 515, column: 5, scope: !2028)
!2173 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 515, column: 5, scope: !2028)
!2175 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2174)
!2176 = !DILocation(line: 515, column: 5, scope: !2037)
!2177 = !DILocation(line: 0, scope: !2037)
!2178 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 0, scope: !2037)
!2182 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2180)
!2183 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2180)
!2184 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2180)
!2185 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2180)
!2186 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2180)
!2187 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2180)
!2188 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2180)
!2189 = !DILocation(line: 515, column: 5, scope: !2038)
!2190 = !DILocation(line: 515, column: 5, scope: !2036)
!2191 = !DILocation(line: 515, column: 5, scope: !2043)
!2192 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 515, column: 5, scope: !2028)
!2195 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2194)
!2196 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2194)
!2197 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2194)
!2198 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2194)
!2199 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2194)
!2200 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2194)
!2201 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2194)
!2202 = !DILocation(line: 515, column: 5, scope: !2047)
!2203 = !DILocation(line: 515, column: 5, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !124, line: 515, column: 5)
!2205 = distinct !DILexicalBlock(scope: !2047, file: !124, line: 515, column: 5)
!2206 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 0, scope: !2204)
!2210 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2208)
!2211 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2208)
!2212 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2208)
!2213 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2208)
!2214 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2208)
!2215 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2208)
!2216 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2208)
!2217 = !DILocation(line: 0, scope: !2204)
!2218 = !DILocation(line: 515, column: 5, scope: !2205)
!2219 = !DILocation(line: 515, column: 5, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2204, file: !124, line: 515, column: 5)
!2221 = !DILocation(line: 515, column: 5, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2204, file: !124, line: 515, column: 5)
!2223 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 515, column: 5, scope: !2047)
!2226 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2225)
!2227 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2225)
!2228 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2225)
!2229 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2225)
!2230 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2225)
!2231 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2225)
!2232 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2225)
!2233 = !DILocation(line: 520, column: 3, scope: !2023)
!2234 = !DILocation(line: 520, column: 31, scope: !2023)
!2235 = !DILocation(line: 524, column: 7, scope: !2079)
!2236 = !DILocation(line: 0, scope: !2023)
!2237 = !DILocation(line: 524, column: 7, scope: !2023)
!2238 = !DILocation(line: 525, column: 5, scope: !2076)
!2239 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 0, scope: !2076)
!2242 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !2241)
!2243 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !2241)
!2244 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !2241)
!2245 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !2241)
!2246 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !2241)
!2247 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !2241)
!2248 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !2241)
!2249 = !DILocation(line: 0, scope: !1558, inlinedAt: !2241)
!2250 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 0, scope: !2076)
!2253 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !2252)
!2254 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !2252)
!2255 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !2252)
!2256 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !2252)
!2257 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !2252)
!2258 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !2252)
!2259 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !2252)
!2260 = !DILocation(line: 525, column: 5, scope: !2077)
!2261 = !DILocation(line: 525, column: 5, scope: !2075)
!2262 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 525, column: 5, scope: !2075)
!2264 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2263)
!2265 = !DILocation(line: 525, column: 5, scope: !2084)
!2266 = !DILocation(line: 0, scope: !2084)
!2267 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 0, scope: !2084)
!2271 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2269)
!2272 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2269)
!2273 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2269)
!2274 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2269)
!2275 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2269)
!2276 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2269)
!2277 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2269)
!2278 = !DILocation(line: 525, column: 5, scope: !2085)
!2279 = !DILocation(line: 525, column: 5, scope: !2083)
!2280 = !DILocation(line: 525, column: 5, scope: !2090)
!2281 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 525, column: 5, scope: !2075)
!2284 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2283)
!2285 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2283)
!2286 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2283)
!2287 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2283)
!2288 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2283)
!2289 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2283)
!2290 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2283)
!2291 = !DILocation(line: 525, column: 5, scope: !2094)
!2292 = !DILocation(line: 525, column: 5, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !124, line: 525, column: 5)
!2294 = distinct !DILexicalBlock(scope: !2094, file: !124, line: 525, column: 5)
!2295 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 0, scope: !2293)
!2299 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2297)
!2300 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2297)
!2301 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2297)
!2302 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2297)
!2303 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2297)
!2304 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2297)
!2305 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2297)
!2306 = !DILocation(line: 0, scope: !2293)
!2307 = !DILocation(line: 525, column: 5, scope: !2294)
!2308 = !DILocation(line: 525, column: 5, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2293, file: !124, line: 525, column: 5)
!2310 = !DILocation(line: 525, column: 5, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2293, file: !124, line: 525, column: 5)
!2312 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 525, column: 5, scope: !2094)
!2315 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2314)
!2316 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2314)
!2317 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2314)
!2318 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2314)
!2319 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2314)
!2320 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2314)
!2321 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2314)
!2322 = !DILocation(line: 526, column: 5, scope: !2078)
!2323 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 534, column: 24, scope: !2023)
!2326 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2325)
!2327 = !DILocation(line: 534, column: 16, scope: !2023)
!2328 = !DILocation(line: 535, column: 8, scope: !2101)
!2329 = !DILocation(line: 535, column: 7, scope: !2023)
!2330 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 536, column: 5, scope: !2098)
!2332 = !DILocation(line: 536, column: 5, scope: !2098)
!2333 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 0, scope: !2098)
!2336 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !2335)
!2337 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !2335)
!2338 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !2335)
!2339 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !2335)
!2340 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !2335)
!2341 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !2335)
!2342 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !2335)
!2343 = !DILocation(line: 0, scope: !1558, inlinedAt: !2335)
!2344 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 0, scope: !2098)
!2347 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !2346)
!2348 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !2346)
!2349 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !2346)
!2350 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !2346)
!2351 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !2346)
!2352 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !2346)
!2353 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !2346)
!2354 = !DILocation(line: 536, column: 5, scope: !2099)
!2355 = !DILocation(line: 536, column: 5, scope: !2097)
!2356 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 536, column: 5, scope: !2097)
!2358 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2357)
!2359 = !DILocation(line: 536, column: 5, scope: !2106)
!2360 = !DILocation(line: 0, scope: !2106)
!2361 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 0, scope: !2106)
!2365 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2363)
!2366 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2363)
!2367 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2363)
!2368 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2363)
!2369 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2363)
!2370 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2363)
!2371 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2363)
!2372 = !DILocation(line: 536, column: 5, scope: !2107)
!2373 = !DILocation(line: 536, column: 5, scope: !2105)
!2374 = !DILocation(line: 536, column: 5, scope: !2112)
!2375 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 536, column: 5, scope: !2097)
!2378 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2377)
!2379 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2377)
!2380 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2377)
!2381 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2377)
!2382 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2377)
!2383 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2377)
!2384 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2377)
!2385 = !DILocation(line: 536, column: 5, scope: !2116)
!2386 = !DILocation(line: 536, column: 5, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !124, line: 536, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2116, file: !124, line: 536, column: 5)
!2389 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 0, scope: !2387)
!2393 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2391)
!2394 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2391)
!2395 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2391)
!2396 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2391)
!2397 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2391)
!2398 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2391)
!2399 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2391)
!2400 = !DILocation(line: 0, scope: !2387)
!2401 = !DILocation(line: 536, column: 5, scope: !2388)
!2402 = !DILocation(line: 536, column: 5, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2387, file: !124, line: 536, column: 5)
!2404 = !DILocation(line: 536, column: 5, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2387, file: !124, line: 536, column: 5)
!2406 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 536, column: 5, scope: !2116)
!2409 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2408)
!2410 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2408)
!2411 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2408)
!2412 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2408)
!2413 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2408)
!2414 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2408)
!2415 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2408)
!2416 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 538, column: 25, scope: !2023)
!2418 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2417)
!2419 = !DILocation(line: 538, column: 10, scope: !2023)
!2420 = !DILocation(line: 538, column: 23, scope: !2023)
!2421 = !DILocation(line: 541, column: 3, scope: !2023)
!2422 = !DILocation(line: 541, column: 15, scope: !2023)
!2423 = !DILocation(line: 542, column: 7, scope: !2123)
!2424 = !DILocation(line: 542, column: 66, scope: !2123)
!2425 = !DILocation(line: 542, column: 7, scope: !2023)
!2426 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 543, column: 5, scope: !2120)
!2428 = !DILocation(line: 543, column: 5, scope: !2120)
!2429 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 0, scope: !2120)
!2432 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !2431)
!2433 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !2431)
!2434 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !2431)
!2435 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !2431)
!2436 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !2431)
!2437 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !2431)
!2438 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !2431)
!2439 = !DILocation(line: 0, scope: !1558, inlinedAt: !2431)
!2440 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 0, scope: !2120)
!2443 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !2442)
!2444 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !2442)
!2445 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !2442)
!2446 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !2442)
!2447 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !2442)
!2448 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !2442)
!2449 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !2442)
!2450 = !DILocation(line: 543, column: 5, scope: !2121)
!2451 = !DILocation(line: 543, column: 5, scope: !2119)
!2452 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 543, column: 5, scope: !2119)
!2454 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2453)
!2455 = !DILocation(line: 543, column: 5, scope: !2128)
!2456 = !DILocation(line: 0, scope: !2128)
!2457 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 0, scope: !2128)
!2461 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2459)
!2462 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2459)
!2463 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2459)
!2464 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2459)
!2465 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2459)
!2466 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2459)
!2467 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2459)
!2468 = !DILocation(line: 543, column: 5, scope: !2129)
!2469 = !DILocation(line: 543, column: 5, scope: !2127)
!2470 = !DILocation(line: 543, column: 5, scope: !2134)
!2471 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 543, column: 5, scope: !2119)
!2474 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2473)
!2475 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2473)
!2476 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2473)
!2477 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2473)
!2478 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2473)
!2479 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2473)
!2480 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2473)
!2481 = !DILocation(line: 543, column: 5, scope: !2138)
!2482 = !DILocation(line: 543, column: 5, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !124, line: 543, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2138, file: !124, line: 543, column: 5)
!2485 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 0, scope: !2483)
!2489 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2487)
!2490 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2487)
!2491 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2487)
!2492 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2487)
!2493 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2487)
!2494 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2487)
!2495 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2487)
!2496 = !DILocation(line: 0, scope: !2483)
!2497 = !DILocation(line: 543, column: 5, scope: !2484)
!2498 = !DILocation(line: 543, column: 5, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2483, file: !124, line: 543, column: 5)
!2500 = !DILocation(line: 543, column: 5, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2483, file: !124, line: 543, column: 5)
!2502 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 543, column: 5, scope: !2138)
!2505 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2504)
!2506 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2504)
!2507 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2504)
!2508 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2504)
!2509 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2504)
!2510 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2504)
!2511 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2504)
!2512 = !DILocation(line: 547, column: 23, scope: !2023)
!2513 = !DILocation(line: 547, column: 10, scope: !2023)
!2514 = !DILocation(line: 547, column: 21, scope: !2023)
!2515 = !DILocation(line: 548, column: 10, scope: !2023)
!2516 = !DILocation(line: 548, column: 21, scope: !2023)
!2517 = !DILocation(line: 551, column: 3, scope: !2023)
!2518 = !DILocation(line: 551, column: 19, scope: !2023)
!2519 = !DILocation(line: 551, column: 27, scope: !2023)
!2520 = !DILocation(line: 198, column: 33, scope: !1135, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 554, column: 3, scope: !2023)
!2522 = !DILocation(line: 202, column: 9, scope: !1135, inlinedAt: !2521)
!2523 = !DILocation(line: 202, column: 19, scope: !1135, inlinedAt: !2521)
!2524 = !DILocation(line: 202, column: 32, scope: !1135, inlinedAt: !2521)
!2525 = !DILocation(line: 202, column: 3, scope: !1135, inlinedAt: !2521)
!2526 = !DILocation(line: 208, column: 3, scope: !1135, inlinedAt: !2521)
!2527 = !DILocation(line: 557, column: 1, scope: !2023)
!2528 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2529)
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "in", arg: 1, scope: !2528, file: !124, line: 479, type: !31)
!2531 = !DILocalVariable(name: "out", arg: 2, scope: !2528, file: !124, line: 479, type: !75)
!2532 = !DILocation(line: 479, column: 35, scope: !2528)
!2533 = !DILocation(line: 479, column: 46, scope: !2528)
!2534 = !DILocation(line: 481, column: 3, scope: !2528)
!2535 = !DILocation(line: 489, column: 5, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2528, file: !124, line: 481, column: 13)
!2537 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 490, column: 28, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2536, file: !124, line: 490, column: 9)
!2542 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2538)
!2543 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2539)
!2544 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !2540)
!2545 = !DILocalVariable(name: "head", arg: 1, scope: !2546, file: !53, line: 201, type: !785)
!2546 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !798, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2547)
!2547 = !{!2545, !2548}
!2548 = !DILocalVariable(name: "next", scope: !2546, file: !53, line: 203, type: !150)
!2549 = !DILocation(line: 201, column: 62, scope: !2546, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 490, column: 9, scope: !2541)
!2551 = !DILocation(line: 203, column: 33, scope: !2546, inlinedAt: !2550)
!2552 = !DILocation(line: 203, column: 20, scope: !2546, inlinedAt: !2550)
!2553 = !DILocation(line: 204, column: 15, scope: !2546, inlinedAt: !2550)
!2554 = !DILocation(line: 204, column: 24, scope: !2546, inlinedAt: !2550)
!2555 = !DILocation(line: 204, column: 42, scope: !2546, inlinedAt: !2550)
!2556 = !DILocation(line: 204, column: 33, scope: !2546, inlinedAt: !2550)
!2557 = !DILocation(line: 490, column: 9, scope: !2536)
!2558 = distinct !{!2558, !2534, !2559}
!2559 = !DILocation(line: 508, column: 3, scope: !2528)
!2560 = !DILocation(line: 492, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2541, file: !124, line: 490, column: 47)
!2562 = !DILocation(line: 494, column: 5, scope: !2561)
!2563 = distinct !DISubprogram(name: "nk_fiber_create", scope: !124, file: !124, line: 602, type: !2564, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2567)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!48, !259, !31, !75, !45, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2577}
!2568 = !DILocalVariable(name: "fun", arg: 1, scope: !2563, file: !124, line: 602, type: !259)
!2569 = !DILocalVariable(name: "input", arg: 2, scope: !2563, file: !124, line: 602, type: !31)
!2570 = !DILocalVariable(name: "output", arg: 3, scope: !2563, file: !124, line: 602, type: !75)
!2571 = !DILocalVariable(name: "stack_size", arg: 4, scope: !2563, file: !124, line: 602, type: !45)
!2572 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !2563, file: !124, line: 602, type: !2566)
!2573 = !DILocalVariable(name: "fiber", scope: !2563, file: !124, line: 605, type: !240)
!2574 = !DILocalVariable(name: "required_stack_size", scope: !2563, file: !124, line: 608, type: !45)
!2575 = !DILocalVariable(name: "p", scope: !2576, file: !124, line: 611, type: !31)
!2576 = distinct !DILexicalBlock(scope: !2563, file: !124, line: 611, column: 11)
!2577 = !DILocalVariable(name: "p", scope: !2578, file: !124, line: 628, type: !31)
!2578 = distinct !DILexicalBlock(scope: !2563, file: !124, line: 628, column: 26)
!2579 = !DILocation(line: 602, column: 36, scope: !2563)
!2580 = !DILocation(line: 602, column: 47, scope: !2563)
!2581 = !DILocation(line: 602, column: 61, scope: !2563)
!2582 = !DILocation(line: 602, column: 85, scope: !2563)
!2583 = !DILocation(line: 602, column: 110, scope: !2563)
!2584 = !DILocation(line: 605, column: 15, scope: !2563)
!2585 = !DILocation(line: 608, column: 41, scope: !2563)
!2586 = !DILocation(line: 608, column: 19, scope: !2563)
!2587 = !DILocation(line: 611, column: 11, scope: !2576)
!2588 = !DILocation(line: 614, column: 8, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2563, file: !124, line: 614, column: 7)
!2590 = !DILocation(line: 614, column: 7, scope: !2563)
!2591 = !DILocation(line: 620, column: 3, scope: !2563)
!2592 = !DILocation(line: 623, column: 10, scope: !2563)
!2593 = !DILocation(line: 623, column: 19, scope: !2563)
!2594 = !DILocation(line: 625, column: 10, scope: !2563)
!2595 = !DILocation(line: 625, column: 21, scope: !2563)
!2596 = !DILocation(line: 628, column: 26, scope: !2578)
!2597 = !DILocation(line: 628, column: 10, scope: !2563)
!2598 = !DILocation(line: 628, column: 16, scope: !2563)
!2599 = !DILocation(line: 631, column: 8, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2563, file: !124, line: 631, column: 7)
!2601 = !DILocation(line: 631, column: 7, scope: !2563)
!2602 = !DILocation(line: 634, column: 5, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !124, line: 631, column: 21)
!2604 = !DILocation(line: 635, column: 5, scope: !2603)
!2605 = !DILocation(line: 639, column: 10, scope: !2563)
!2606 = !DILocation(line: 639, column: 14, scope: !2563)
!2607 = !DILocation(line: 640, column: 10, scope: !2563)
!2608 = !DILocation(line: 640, column: 16, scope: !2563)
!2609 = !DILocation(line: 641, column: 10, scope: !2563)
!2610 = !DILocation(line: 641, column: 17, scope: !2563)
!2611 = !DILocation(line: 274, column: 33, scope: !1145, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 644, column: 3, scope: !2563)
!2613 = !DILocation(line: 276, column: 37, scope: !1145, inlinedAt: !2612)
!2614 = !DILocation(line: 276, column: 6, scope: !1145, inlinedAt: !2612)
!2615 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 277, column: 3, scope: !1145, inlinedAt: !2612)
!2617 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2616)
!2618 = !DILocation(line: 276, column: 32, scope: !1145, inlinedAt: !2612)
!2619 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2616)
!2620 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2616)
!2621 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2616)
!2622 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 278, column: 3, scope: !1145, inlinedAt: !2612)
!2624 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2623)
!2625 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2623)
!2626 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2623)
!2627 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2623)
!2628 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 279, column: 3, scope: !1145, inlinedAt: !2612)
!2630 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2629)
!2631 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2629)
!2632 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2629)
!2633 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2629)
!2634 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 280, column: 3, scope: !1145, inlinedAt: !2612)
!2636 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2635)
!2637 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2635)
!2638 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2635)
!2639 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2635)
!2640 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 281, column: 3, scope: !1145, inlinedAt: !2612)
!2642 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2641)
!2643 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2641)
!2644 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2641)
!2645 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2641)
!2646 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 282, column: 3, scope: !1145, inlinedAt: !2612)
!2648 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2647)
!2649 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2647)
!2650 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2647)
!2651 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2647)
!2652 = !DILocation(line: 283, column: 18, scope: !1145, inlinedAt: !2612)
!2653 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 283, column: 3, scope: !1145, inlinedAt: !2612)
!2655 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2654)
!2656 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2654)
!2657 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2654)
!2658 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2654)
!2659 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 284, column: 3, scope: !1145, inlinedAt: !2612)
!2661 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2660)
!2662 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2660)
!2663 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2660)
!2664 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2660)
!2665 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 285, column: 3, scope: !1145, inlinedAt: !2612)
!2667 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2666)
!2668 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2666)
!2669 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2666)
!2670 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2666)
!2671 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 286, column: 3, scope: !1145, inlinedAt: !2612)
!2673 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2672)
!2674 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2672)
!2675 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2672)
!2676 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2672)
!2677 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 287, column: 3, scope: !1145, inlinedAt: !2612)
!2679 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2678)
!2680 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2678)
!2681 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2678)
!2682 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2678)
!2683 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 288, column: 3, scope: !1145, inlinedAt: !2612)
!2685 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2684)
!2686 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2684)
!2687 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2684)
!2688 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2684)
!2689 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 289, column: 3, scope: !1145, inlinedAt: !2612)
!2691 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2690)
!2692 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2690)
!2693 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2690)
!2694 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2690)
!2695 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 290, column: 3, scope: !1145, inlinedAt: !2612)
!2697 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2696)
!2698 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2696)
!2699 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2696)
!2700 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2696)
!2701 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 291, column: 3, scope: !1145, inlinedAt: !2612)
!2703 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2702)
!2704 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2702)
!2705 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2702)
!2706 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2702)
!2707 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 292, column: 3, scope: !1145, inlinedAt: !2612)
!2709 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !2708)
!2710 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !2708)
!2711 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !2708)
!2712 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !2708)
!2713 = !DILocation(line: 647, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2563, file: !124, line: 647, column: 7)
!2715 = !DILocation(line: 647, column: 7, scope: !2563)
!2716 = !DILocation(line: 648, column: 19, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !124, line: 647, column: 20)
!2718 = !DILocation(line: 649, column: 3, scope: !2717)
!2719 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 650, column: 15, scope: !2563)
!2721 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2720)
!2722 = !DILocation(line: 650, column: 33, scope: !2563)
!2723 = !DILocation(line: 650, column: 10, scope: !2563)
!2724 = !DILocation(line: 650, column: 13, scope: !2563)
!2725 = !DILocation(line: 653, column: 27, scope: !2563)
!2726 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 653, column: 3, scope: !2563)
!2728 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !2727)
!2729 = !DILocation(line: 76, column: 8, scope: !831, inlinedAt: !2727)
!2730 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !2727)
!2731 = !DILocation(line: 656, column: 10, scope: !2563)
!2732 = !DILocation(line: 656, column: 19, scope: !2563)
!2733 = !DILocation(line: 657, column: 27, scope: !2563)
!2734 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 657, column: 3, scope: !2563)
!2736 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !2735)
!2737 = !DILocation(line: 76, column: 8, scope: !831, inlinedAt: !2735)
!2738 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !2735)
!2739 = !DILocation(line: 658, column: 27, scope: !2563)
!2740 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 658, column: 3, scope: !2563)
!2742 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !2741)
!2743 = !DILocation(line: 76, column: 8, scope: !831, inlinedAt: !2741)
!2744 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !2741)
!2745 = !DILocation(line: 660, column: 3, scope: !2563)
!2746 = !DILocation(line: 0, scope: !2563)
!2747 = !DILocation(line: 661, column: 1, scope: !2563)
!2748 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 709, type: !507, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2749)
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "f_to", scope: !2748, file: !124, line: 715, type: !240)
!2751 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 98, column: 10, scope: !740, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 711, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2748, file: !124, line: 711, column: 7)
!2756 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2752)
!2757 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2753)
!2758 = !DILocation(line: 98, column: 30, scope: !740, inlinedAt: !2754)
!2759 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 711, column: 30, scope: !2755)
!2761 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2760)
!2762 = !DILocation(line: 711, column: 27, scope: !2755)
!2763 = !DILocation(line: 711, column: 7, scope: !2748)
!2764 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 122, column: 41, scope: !773, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 715, column: 22, scope: !2748)
!2769 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2765)
!2770 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2766)
!2771 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !2767)
!2772 = !DILocation(line: 122, column: 21, scope: !773, inlinedAt: !2768)
!2773 = !DILocation(line: 125, column: 15, scope: !773, inlinedAt: !2768)
!2774 = !DILocation(line: 184, column: 54, scope: !797, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 126, column: 9, scope: !780, inlinedAt: !2768)
!2776 = !DILocation(line: 186, column: 15, scope: !797, inlinedAt: !2775)
!2777 = !DILocation(line: 186, column: 20, scope: !797, inlinedAt: !2775)
!2778 = !DILocation(line: 126, column: 7, scope: !773, inlinedAt: !2768)
!2779 = !DILocation(line: 128, column: 25, scope: !778, inlinedAt: !2768)
!2780 = !DILocation(line: 131, column: 40, scope: !779, inlinedAt: !2768)
!2781 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 131, column: 5, scope: !779, inlinedAt: !2768)
!2783 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !2782)
!2784 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !2782)
!2785 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !2782)
!2787 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !2786)
!2788 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !2786)
!2789 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !2786)
!2790 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !2786)
!2791 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !2786)
!2792 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !2782)
!2794 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !2793)
!2795 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !2793)
!2796 = !DILocation(line: 715, column: 15, scope: !2748)
!2797 = !DILocation(line: 725, column: 12, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2748, file: !124, line: 725, column: 7)
!2799 = !DILocation(line: 725, column: 7, scope: !2748)
!2800 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 726, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !124, line: 726, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !124, line: 725, column: 21)
!2806 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2801)
!2807 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2802)
!2808 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !2803)
!2809 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 726, column: 31, scope: !2804)
!2813 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2810)
!2814 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2811)
!2815 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !2812)
!2816 = !DILocation(line: 726, column: 28, scope: !2804)
!2817 = !DILocation(line: 726, column: 9, scope: !2805)
!2818 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 730, column: 16, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2804, file: !124, line: 729, column: 12)
!2823 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2819)
!2824 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !2820)
!2825 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !2821)
!2826 = !DILocation(line: 732, column: 3, scope: !2805)
!2827 = !DILocation(line: 0, scope: !2748)
!2828 = !DILocation(line: 734, column: 10, scope: !2748)
!2829 = !DILocation(line: 734, column: 3, scope: !2748)
!2830 = !DILocation(line: 735, column: 1, scope: !2748)
!2831 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !1379, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2832)
!2832 = !{!2833, !2834, !2838, !2839, !2844, !2846, !2849, !2851, !2853, !2859, !2860, !2865, !2867, !2870, !2872}
!2833 = !DILocalVariable(name: "my_cpu", scope: !2831, file: !124, line: 572, type: !270)
!2834 = !DILocalVariable(name: "_p", scope: !2835, file: !124, line: 573, type: !48)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !124, line: 573, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !124, line: 573, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 573, column: 5)
!2838 = !DILocalVariable(name: "_t", scope: !2835, file: !124, line: 573, type: !160)
!2839 = !DILocalVariable(name: "__r", scope: !2840, file: !124, line: 573, type: !291)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !124, line: 573, column: 5)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !124, line: 573, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !124, line: 573, column: 5)
!2843 = distinct !DILexicalBlock(scope: !2835, file: !124, line: 573, column: 5)
!2844 = !DILocalVariable(name: "__r", scope: !2845, file: !124, line: 573, type: !291)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !124, line: 573, column: 5)
!2846 = !DILocalVariable(name: "__r", scope: !2847, file: !124, line: 573, type: !291)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !124, line: 573, column: 5)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !124, line: 573, column: 5)
!2849 = !DILocalVariable(name: "__r", scope: !2850, file: !124, line: 573, type: !291)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !124, line: 573, column: 5)
!2851 = !DILocalVariable(name: "_p", scope: !2852, file: !124, line: 573, type: !48)
!2852 = distinct !DILexicalBlock(scope: !2836, file: !124, line: 573, column: 5)
!2853 = !DILocalVariable(name: "_p", scope: !2854, file: !124, line: 575, type: !48)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !124, line: 575, column: 2)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !124, line: 575, column: 2)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !124, line: 575, column: 2)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !124, line: 574, column: 45)
!2858 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 574, column: 9)
!2859 = !DILocalVariable(name: "_t", scope: !2854, file: !124, line: 575, type: !160)
!2860 = !DILocalVariable(name: "__r", scope: !2861, file: !124, line: 575, type: !291)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !124, line: 575, column: 2)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !124, line: 575, column: 2)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !124, line: 575, column: 2)
!2864 = distinct !DILexicalBlock(scope: !2854, file: !124, line: 575, column: 2)
!2865 = !DILocalVariable(name: "__r", scope: !2866, file: !124, line: 575, type: !291)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !124, line: 575, column: 2)
!2867 = !DILocalVariable(name: "__r", scope: !2868, file: !124, line: 575, type: !291)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !124, line: 575, column: 2)
!2869 = distinct !DILexicalBlock(scope: !2863, file: !124, line: 575, column: 2)
!2870 = !DILocalVariable(name: "__r", scope: !2871, file: !124, line: 575, type: !291)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !124, line: 575, column: 2)
!2872 = !DILocalVariable(name: "_p", scope: !2873, file: !124, line: 575, type: !48)
!2873 = distinct !DILexicalBlock(scope: !2855, file: !124, line: 575, column: 2)
!2874 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 572, column: 26, scope: !2831)
!2876 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !2875)
!2877 = !DILocation(line: 572, column: 17, scope: !2831)
!2878 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 573, column: 5, scope: !2836)
!2880 = !DILocation(line: 573, column: 5, scope: !2836)
!2881 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 0, scope: !2836)
!2884 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !2883)
!2885 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !2883)
!2886 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !2883)
!2887 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !2883)
!2888 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !2883)
!2889 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !2883)
!2890 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !2883)
!2891 = !DILocation(line: 0, scope: !1558, inlinedAt: !2883)
!2892 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 0, scope: !2836)
!2895 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !2894)
!2896 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !2894)
!2897 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !2894)
!2898 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !2894)
!2899 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !2894)
!2900 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !2894)
!2901 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !2894)
!2902 = !DILocation(line: 573, column: 5, scope: !2837)
!2903 = !DILocation(line: 573, column: 5, scope: !2835)
!2904 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 573, column: 5, scope: !2835)
!2906 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !2905)
!2907 = !DILocation(line: 573, column: 5, scope: !2842)
!2908 = !DILocation(line: 0, scope: !2842)
!2909 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 0, scope: !2842)
!2913 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2911)
!2914 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2911)
!2915 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2911)
!2916 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2911)
!2917 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2911)
!2918 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2911)
!2919 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2911)
!2920 = !DILocation(line: 573, column: 5, scope: !2843)
!2921 = !DILocation(line: 573, column: 5, scope: !2841)
!2922 = !DILocation(line: 573, column: 5, scope: !2848)
!2923 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 573, column: 5, scope: !2835)
!2926 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2925)
!2927 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2925)
!2928 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2925)
!2929 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2925)
!2930 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2925)
!2931 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2925)
!2932 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2925)
!2933 = !DILocation(line: 573, column: 5, scope: !2852)
!2934 = !DILocation(line: 573, column: 5, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !124, line: 573, column: 5)
!2936 = distinct !DILexicalBlock(scope: !2852, file: !124, line: 573, column: 5)
!2937 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 0, scope: !2935)
!2941 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !2939)
!2942 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !2939)
!2943 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !2939)
!2944 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !2939)
!2945 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !2939)
!2946 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !2939)
!2947 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !2939)
!2948 = !DILocation(line: 0, scope: !2935)
!2949 = !DILocation(line: 573, column: 5, scope: !2936)
!2950 = !DILocation(line: 573, column: 5, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2935, file: !124, line: 573, column: 5)
!2952 = !DILocation(line: 573, column: 5, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2935, file: !124, line: 573, column: 5)
!2954 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 573, column: 5, scope: !2852)
!2957 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !2956)
!2958 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !2956)
!2959 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !2956)
!2960 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !2956)
!2961 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !2956)
!2962 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !2956)
!2963 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !2956)
!2964 = !DILocation(line: 561, column: 3, scope: !2965, inlinedAt: !2994)
!2965 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2966)
!2966 = !{!2967, !2969, !2972, !2974, !2979, !2980, !2985, !2987, !2990, !2992}
!2967 = !DILocalVariable(name: "tid", scope: !2965, file: !124, line: 561, type: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!2969 = !DILocalVariable(name: "__r", scope: !2970, file: !124, line: 562, type: !291)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !124, line: 562, column: 79)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !124, line: 562, column: 7)
!2972 = !DILocalVariable(name: "__r", scope: !2973, file: !124, line: 562, type: !291)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !124, line: 562, column: 79)
!2974 = !DILocalVariable(name: "_p", scope: !2975, file: !124, line: 563, type: !48)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !124, line: 563, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !124, line: 563, column: 7)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !124, line: 563, column: 7)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !124, line: 562, column: 93)
!2979 = !DILocalVariable(name: "_t", scope: !2975, file: !124, line: 563, type: !160)
!2980 = !DILocalVariable(name: "__r", scope: !2981, file: !124, line: 563, type: !291)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !124, line: 563, column: 7)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !124, line: 563, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !124, line: 563, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2975, file: !124, line: 563, column: 7)
!2985 = !DILocalVariable(name: "__r", scope: !2986, file: !124, line: 563, type: !291)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !124, line: 563, column: 7)
!2987 = !DILocalVariable(name: "__r", scope: !2988, file: !124, line: 563, type: !291)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !124, line: 563, column: 7)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !124, line: 563, column: 7)
!2990 = !DILocalVariable(name: "__r", scope: !2991, file: !124, line: 563, type: !291)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !124, line: 563, column: 7)
!2992 = !DILocalVariable(name: "_p", scope: !2993, file: !124, line: 563, type: !48)
!2993 = distinct !DILexicalBlock(scope: !2976, file: !124, line: 563, column: 7)
!2994 = distinct !DILocation(line: 574, column: 9, scope: !2858)
!2995 = !DILocation(line: 562, column: 79, scope: !2973, inlinedAt: !2994)
!2996 = !{i32 -2147099476}
!2997 = !DILocation(line: 562, column: 79, scope: !2970, inlinedAt: !2994)
!2998 = !DILocation(line: 561, column: 18, scope: !2965, inlinedAt: !2994)
!2999 = !DILocation(line: 562, column: 7, scope: !2971, inlinedAt: !2994)
!3000 = !DILocation(line: 562, column: 7, scope: !2965, inlinedAt: !2994)
!3001 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 563, column: 7, scope: !2976, inlinedAt: !2994)
!3003 = !DILocation(line: 563, column: 7, scope: !2976, inlinedAt: !2994)
!3004 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 0, scope: !2976, inlinedAt: !2994)
!3007 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !3006)
!3008 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !3006)
!3009 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !3006)
!3010 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !3006)
!3011 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !3006)
!3012 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !3006)
!3013 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !3006)
!3014 = !DILocation(line: 0, scope: !1558, inlinedAt: !3006)
!3015 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 0, scope: !2976, inlinedAt: !2994)
!3018 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !3017)
!3019 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !3017)
!3020 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !3017)
!3021 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !3017)
!3022 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !3017)
!3023 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !3017)
!3024 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !3017)
!3025 = !DILocation(line: 563, column: 7, scope: !2977, inlinedAt: !2994)
!3026 = !DILocation(line: 563, column: 7, scope: !2975, inlinedAt: !2994)
!3027 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 563, column: 7, scope: !2975, inlinedAt: !2994)
!3029 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !3028)
!3030 = !DILocation(line: 563, column: 7, scope: !2983, inlinedAt: !2994)
!3031 = !DILocation(line: 0, scope: !2983, inlinedAt: !2994)
!3032 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 0, scope: !2983, inlinedAt: !2994)
!3036 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !3034)
!3037 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !3034)
!3038 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !3034)
!3039 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !3034)
!3040 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !3034)
!3041 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !3034)
!3042 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !3034)
!3043 = !DILocation(line: 563, column: 7, scope: !2984, inlinedAt: !2994)
!3044 = !DILocation(line: 563, column: 7, scope: !2982, inlinedAt: !2994)
!3045 = !DILocation(line: 563, column: 7, scope: !2989, inlinedAt: !2994)
!3046 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 563, column: 7, scope: !2975, inlinedAt: !2994)
!3049 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !3048)
!3050 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !3048)
!3051 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !3048)
!3052 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !3048)
!3053 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !3048)
!3054 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !3048)
!3055 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !3048)
!3056 = !DILocation(line: 563, column: 7, scope: !2993, inlinedAt: !2994)
!3057 = !DILocation(line: 563, column: 7, scope: !3058, inlinedAt: !2994)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !124, line: 563, column: 7)
!3059 = distinct !DILexicalBlock(scope: !2993, file: !124, line: 563, column: 7)
!3060 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 0, scope: !3058, inlinedAt: !2994)
!3064 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !3062)
!3065 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !3062)
!3066 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !3062)
!3067 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !3062)
!3068 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !3062)
!3069 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !3062)
!3070 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !3062)
!3071 = !DILocation(line: 0, scope: !3058, inlinedAt: !2994)
!3072 = !DILocation(line: 563, column: 7, scope: !3059, inlinedAt: !2994)
!3073 = !DILocation(line: 563, column: 7, scope: !3074, inlinedAt: !2994)
!3074 = distinct !DILexicalBlock(scope: !3058, file: !124, line: 563, column: 7)
!3075 = !DILocation(line: 563, column: 7, scope: !3076, inlinedAt: !2994)
!3076 = distinct !DILexicalBlock(scope: !3058, file: !124, line: 563, column: 7)
!3077 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 563, column: 7, scope: !2993, inlinedAt: !2994)
!3080 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !3079)
!3081 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !3079)
!3082 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !3079)
!3083 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !3079)
!3084 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !3079)
!3085 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !3079)
!3086 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !3079)
!3087 = !DILocation(line: 568, column: 1, scope: !2965, inlinedAt: !2994)
!3088 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 575, column: 2, scope: !2855)
!3090 = !DILocation(line: 575, column: 2, scope: !2855)
!3091 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 84, column: 18, scope: !1552, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 0, scope: !2855)
!3094 = !DILocation(line: 84, column: 11, scope: !1552, inlinedAt: !3093)
!3095 = !DILocation(line: 85, column: 9, scope: !1558, inlinedAt: !3093)
!3096 = !DILocation(line: 85, column: 9, scope: !1552, inlinedAt: !3093)
!3097 = !DILocation(line: 87, column: 57, scope: !1561, inlinedAt: !3093)
!3098 = !DILocation(line: 87, column: 30, scope: !1561, inlinedAt: !3093)
!3099 = !DILocation(line: 87, column: 9, scope: !1561, inlinedAt: !3093)
!3100 = !DILocation(line: 87, column: 2, scope: !1561, inlinedAt: !3093)
!3101 = !DILocation(line: 0, scope: !1558, inlinedAt: !3093)
!3102 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 48, column: 18, scope: !1568, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 0, scope: !2855)
!3105 = !DILocation(line: 48, column: 11, scope: !1568, inlinedAt: !3104)
!3106 = !DILocation(line: 49, column: 9, scope: !1574, inlinedAt: !3104)
!3107 = !DILocation(line: 49, column: 9, scope: !1568, inlinedAt: !3104)
!3108 = !DILocation(line: 51, column: 50, scope: !1577, inlinedAt: !3104)
!3109 = !DILocation(line: 51, column: 23, scope: !1577, inlinedAt: !3104)
!3110 = !DILocation(line: 51, column: 2, scope: !1577, inlinedAt: !3104)
!3111 = !DILocation(line: 52, column: 5, scope: !1577, inlinedAt: !3104)
!3112 = !DILocation(line: 575, column: 2, scope: !2856)
!3113 = !DILocation(line: 575, column: 2, scope: !2854)
!3114 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 575, column: 2, scope: !2854)
!3116 = !DILocation(line: 258, column: 26, scope: !1338, inlinedAt: !3115)
!3117 = !DILocation(line: 575, column: 2, scope: !2863)
!3118 = !DILocation(line: 0, scope: !2863)
!3119 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 0, scope: !2863)
!3123 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !3121)
!3124 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !3121)
!3125 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !3121)
!3126 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !3121)
!3127 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !3121)
!3128 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !3121)
!3129 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !3121)
!3130 = !DILocation(line: 575, column: 2, scope: !2864)
!3131 = !DILocation(line: 575, column: 2, scope: !2862)
!3132 = !DILocation(line: 575, column: 2, scope: !2869)
!3133 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 575, column: 2, scope: !2854)
!3136 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !3135)
!3137 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !3135)
!3138 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !3135)
!3139 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !3135)
!3140 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !3135)
!3141 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !3135)
!3142 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !3135)
!3143 = !DILocation(line: 575, column: 2, scope: !2873)
!3144 = !DILocation(line: 575, column: 2, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !124, line: 575, column: 2)
!3146 = distinct !DILexicalBlock(scope: !2873, file: !124, line: 575, column: 2)
!3147 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 96, column: 18, scope: !1590, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 107, column: 12, scope: !1596, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 0, scope: !3145)
!3151 = !DILocation(line: 96, column: 11, scope: !1590, inlinedAt: !3149)
!3152 = !DILocation(line: 97, column: 9, scope: !1600, inlinedAt: !3149)
!3153 = !DILocation(line: 97, column: 9, scope: !1590, inlinedAt: !3149)
!3154 = !DILocation(line: 98, column: 57, scope: !1603, inlinedAt: !3149)
!3155 = !DILocation(line: 98, column: 30, scope: !1603, inlinedAt: !3149)
!3156 = !DILocation(line: 98, column: 9, scope: !1603, inlinedAt: !3149)
!3157 = !DILocation(line: 98, column: 2, scope: !1603, inlinedAt: !3149)
!3158 = !DILocation(line: 0, scope: !3145)
!3159 = !DILocation(line: 575, column: 2, scope: !3146)
!3160 = !DILocation(line: 575, column: 2, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3145, file: !124, line: 575, column: 2)
!3162 = !DILocation(line: 575, column: 2, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3145, file: !124, line: 575, column: 2)
!3164 = !DILocation(line: 43, column: 21, scope: !1544, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 59, column: 18, scope: !1612, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 575, column: 2, scope: !2873)
!3167 = !DILocation(line: 59, column: 11, scope: !1612, inlinedAt: !3166)
!3168 = !DILocation(line: 60, column: 9, scope: !1618, inlinedAt: !3166)
!3169 = !DILocation(line: 60, column: 9, scope: !1612, inlinedAt: !3166)
!3170 = !DILocation(line: 62, column: 50, scope: !1621, inlinedAt: !3166)
!3171 = !DILocation(line: 62, column: 23, scope: !1621, inlinedAt: !3166)
!3172 = !DILocation(line: 62, column: 2, scope: !1621, inlinedAt: !3166)
!3173 = !DILocation(line: 63, column: 5, scope: !1621, inlinedAt: !3166)
!3174 = !DILocation(line: 576, column: 2, scope: !2857)
!3175 = !DILocation(line: 579, column: 1, scope: !2831)
!3176 = distinct !DISubprogram(name: "nk_fiber_start", scope: !124, file: !124, line: 693, type: !3177, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!48, !259, !31, !75, !45, !29, !2566}
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185}
!3180 = !DILocalVariable(name: "fun", arg: 1, scope: !3176, file: !124, line: 693, type: !259)
!3181 = !DILocalVariable(name: "input", arg: 2, scope: !3176, file: !124, line: 693, type: !31)
!3182 = !DILocalVariable(name: "output", arg: 3, scope: !3176, file: !124, line: 693, type: !75)
!3183 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3176, file: !124, line: 693, type: !45)
!3184 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3176, file: !124, line: 693, type: !29)
!3185 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3176, file: !124, line: 693, type: !2566)
!3186 = !DILocation(line: 693, column: 35, scope: !3176)
!3187 = !DILocation(line: 693, column: 46, scope: !3176)
!3188 = !DILocation(line: 693, column: 60, scope: !3176)
!3189 = !DILocation(line: 693, column: 84, scope: !3176)
!3190 = !DILocation(line: 693, column: 104, scope: !3176)
!3191 = !DILocation(line: 693, column: 134, scope: !3176)
!3192 = !DILocation(line: 695, column: 3, scope: !3176)
!3193 = !DILocation(line: 696, column: 16, scope: !3176)
!3194 = !DILocation(line: 696, column: 3, scope: !3176)
!3195 = !DILocation(line: 698, column: 3, scope: !3176)
!3196 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 701, type: !507, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !712)
!3197 = !DILocation(line: 703, column: 3, scope: !3196)
!3198 = !DILocation(line: 704, column: 10, scope: !3196)
!3199 = !DILocation(line: 704, column: 3, scope: !3196)
!3200 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 737, type: !1252, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3201)
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "f_to", arg: 1, scope: !3200, file: !124, line: 737, type: !240)
!3203 = !DILocalVariable(name: "new_to", scope: !3204, file: !124, line: 745, type: !240)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !124, line: 741, column: 38)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !124, line: 741, column: 7)
!3206 = !DILocation(line: 737, column: 35, scope: !3200)
!3207 = !DILocation(line: 383, column: 42, scope: !1434, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 741, column: 7, scope: !3205)
!3209 = !DILocation(line: 386, column: 26, scope: !1441, inlinedAt: !3208)
!3210 = !DILocation(line: 386, column: 26, scope: !1439, inlinedAt: !3208)
!3211 = !DILocation(line: 386, column: 20, scope: !1434, inlinedAt: !3208)
!3212 = !DILocation(line: 387, column: 23, scope: !1434, inlinedAt: !3208)
!3213 = !DILocation(line: 387, column: 7, scope: !1434, inlinedAt: !3208)
!3214 = !DILocation(line: 392, column: 12, scope: !1446, inlinedAt: !3208)
!3215 = !DILocation(line: 392, column: 27, scope: !1451, inlinedAt: !3208)
!3216 = !DILocation(line: 392, column: 3, scope: !1446, inlinedAt: !3208)
!3217 = !DILocation(line: 394, column: 14, scope: !1450, inlinedAt: !3208)
!3218 = !DILocation(line: 394, column: 31, scope: !1450, inlinedAt: !3208)
!3219 = !DILocation(line: 394, column: 40, scope: !1450, inlinedAt: !3208)
!3220 = !DILocation(line: 390, column: 21, scope: !1434, inlinedAt: !3208)
!3221 = !DILocation(line: 395, column: 5, scope: !1448, inlinedAt: !3208)
!3222 = !DILocation(line: 391, column: 15, scope: !1434, inlinedAt: !3208)
!3223 = !DILocation(line: 0, scope: !1449, inlinedAt: !3208)
!3224 = !DILocation(line: 395, column: 5, scope: !1449, inlinedAt: !3208)
!3225 = !DILocation(line: 395, column: 5, scope: !1454, inlinedAt: !3208)
!3226 = !DILocation(line: 400, column: 16, scope: !1475, inlinedAt: !3208)
!3227 = !DILocation(line: 400, column: 11, scope: !1476, inlinedAt: !3208)
!3228 = !DILocation(line: 392, column: 43, scope: !1451, inlinedAt: !3208)
!3229 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 122, column: 41, scope: !773, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 745, column: 26, scope: !3204)
!3234 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3230)
!3235 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3231)
!3236 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !3232)
!3237 = !DILocation(line: 122, column: 21, scope: !773, inlinedAt: !3233)
!3238 = !DILocation(line: 125, column: 15, scope: !773, inlinedAt: !3233)
!3239 = !DILocation(line: 184, column: 54, scope: !797, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 126, column: 9, scope: !780, inlinedAt: !3233)
!3241 = !DILocation(line: 186, column: 15, scope: !797, inlinedAt: !3240)
!3242 = !DILocation(line: 186, column: 20, scope: !797, inlinedAt: !3240)
!3243 = !DILocation(line: 126, column: 7, scope: !773, inlinedAt: !3233)
!3244 = !DILocation(line: 128, column: 25, scope: !778, inlinedAt: !3233)
!3245 = !DILocation(line: 131, column: 40, scope: !779, inlinedAt: !3233)
!3246 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 131, column: 5, scope: !779, inlinedAt: !3233)
!3248 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !3247)
!3249 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !3247)
!3250 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !3247)
!3252 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !3251)
!3253 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !3251)
!3254 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !3251)
!3255 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !3251)
!3256 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !3251)
!3257 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !3247)
!3259 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !3258)
!3260 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !3258)
!3261 = !DILocation(line: 745, column: 17, scope: !3204)
!3262 = !DILocation(line: 747, column: 16, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3204, file: !124, line: 747, column: 9)
!3264 = !DILocation(line: 747, column: 9, scope: !3204)
!3265 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 748, column: 11, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !124, line: 748, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3263, file: !124, line: 747, column: 25)
!3271 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3266)
!3272 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3267)
!3273 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !3268)
!3274 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 748, column: 33, scope: !3269)
!3278 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3275)
!3279 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3276)
!3280 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !3277)
!3281 = !DILocation(line: 748, column: 30, scope: !3269)
!3282 = !DILocation(line: 748, column: 11, scope: !3270)
!3283 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 92, column: 10, scope: !732, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 752, column: 20, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3269, file: !124, line: 751, column: 14)
!3288 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3284)
!3289 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3285)
!3290 = !DILocation(line: 92, column: 30, scope: !732, inlinedAt: !3286)
!3291 = !DILocation(line: 754, column: 5, scope: !3270)
!3292 = !DILocation(line: 0, scope: !3204)
!3293 = !DILocation(line: 757, column: 5, scope: !3204)
!3294 = !DILocation(line: 759, column: 5, scope: !3204)
!3295 = !DILocation(line: 401, column: 33, scope: !1484, inlinedAt: !3208)
!3296 = !DILocation(line: 151, column: 52, scope: !809, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 401, column: 9, scope: !1484, inlinedAt: !3208)
!3298 = !DILocation(line: 153, column: 20, scope: !809, inlinedAt: !3297)
!3299 = !DILocation(line: 153, column: 33, scope: !809, inlinedAt: !3297)
!3300 = !DILocation(line: 128, column: 50, scope: !818, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 153, column: 2, scope: !809, inlinedAt: !3297)
!3302 = !DILocation(line: 128, column: 75, scope: !818, inlinedAt: !3301)
!3303 = !DILocation(line: 130, column: 8, scope: !818, inlinedAt: !3301)
!3304 = !DILocation(line: 130, column: 13, scope: !818, inlinedAt: !3301)
!3305 = !DILocation(line: 131, column: 8, scope: !818, inlinedAt: !3301)
!3306 = !DILocation(line: 131, column: 13, scope: !818, inlinedAt: !3301)
!3307 = !DILocation(line: 73, column: 53, scope: !831, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 154, column: 2, scope: !809, inlinedAt: !3297)
!3309 = !DILocation(line: 75, column: 13, scope: !831, inlinedAt: !3308)
!3310 = !DILocation(line: 76, column: 13, scope: !831, inlinedAt: !3308)
!3311 = !DILocation(line: 763, column: 3, scope: !3200)
!3312 = !DILocation(line: 766, column: 3, scope: !3200)
!3313 = !DILocation(line: 0, scope: !3200)
!3314 = !DILocation(line: 767, column: 1, scope: !3200)
!3315 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 769, type: !3316, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3321)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!48, !3318, !31}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!29, !31}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "cond_function", arg: 1, scope: !3315, file: !124, line: 769, type: !3318)
!3323 = !DILocalVariable(name: "state", arg: 2, scope: !3315, file: !124, line: 769, type: !31)
!3324 = !DILocation(line: 769, column: 42, scope: !3315)
!3325 = !DILocation(line: 769, column: 77, scope: !3315)
!3326 = !DILocation(line: 771, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3315, file: !124, line: 771, column: 7)
!3328 = !DILocation(line: 771, column: 7, scope: !3315)
!3329 = !DILocation(line: 772, column: 12, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3327, file: !124, line: 771, column: 28)
!3331 = !DILocation(line: 772, column: 5, scope: !3330)
!3332 = !DILocation(line: 0, scope: !3315)
!3333 = !DILocation(line: 775, column: 1, scope: !3315)
!3334 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 777, type: !3335, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!48, !240, !3318, !31}
!3337 = !{!3338, !3339, !3340}
!3338 = !DILocalVariable(name: "fib", arg: 1, scope: !3334, file: !124, line: 777, type: !240)
!3339 = !DILocalVariable(name: "cond_function", arg: 2, scope: !3334, file: !124, line: 777, type: !3318)
!3340 = !DILocalVariable(name: "state", arg: 3, scope: !3334, file: !124, line: 777, type: !31)
!3341 = !DILocation(line: 777, column: 47, scope: !3334)
!3342 = !DILocation(line: 777, column: 62, scope: !3334)
!3343 = !DILocation(line: 777, column: 97, scope: !3334)
!3344 = !DILocation(line: 779, column: 7, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3334, file: !124, line: 779, column: 7)
!3346 = !DILocation(line: 779, column: 7, scope: !3334)
!3347 = !DILocation(line: 780, column: 12, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3345, file: !124, line: 779, column: 28)
!3349 = !DILocation(line: 780, column: 5, scope: !3348)
!3350 = !DILocation(line: 0, scope: !3334)
!3351 = !DILocation(line: 783, column: 1, scope: !3334)
!3352 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 785, type: !723, scopeLine: 786, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3354 = !DILocalVariable(name: "curr", scope: !3352, file: !124, line: 788, type: !240)
!3355 = !DILocalVariable(name: "size", scope: !3352, file: !124, line: 791, type: !25)
!3356 = !DILocalVariable(name: "alloc_size", scope: !3352, file: !124, line: 791, type: !25)
!3357 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !3352, file: !124, line: 792, type: !25)
!3358 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !3352, file: !124, line: 793, type: !25)
!3359 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !3352, file: !124, line: 794, type: !25)
!3360 = !DILocalVariable(name: "child_stack", scope: !3352, file: !124, line: 795, type: !31)
!3361 = !DILocalVariable(name: "rsp", scope: !3352, file: !124, line: 796, type: !25)
!3362 = !DILocalVariable(name: "rbp0", scope: !3352, file: !124, line: 801, type: !31)
!3363 = !DILocalVariable(name: "rbp1", scope: !3352, file: !124, line: 802, type: !31)
!3364 = !DILocalVariable(name: "rbp_tos", scope: !3352, file: !124, line: 803, type: !31)
!3365 = !DILocalVariable(name: "ret0_addr", scope: !3352, file: !124, line: 804, type: !31)
!3366 = !DILocalVariable(name: "rbp_stash_addr", scope: !3352, file: !124, line: 816, type: !31)
!3367 = !DILocalVariable(name: "new", scope: !3352, file: !124, line: 832, type: !240)
!3368 = !DILocalVariable(name: "rbp_stash_ptr", scope: !3352, file: !124, line: 848, type: !75)
!3369 = !DILocalVariable(name: "rbp2_ptr", scope: !3352, file: !124, line: 852, type: !75)
!3370 = !DILocalVariable(name: "ret2_ptr", scope: !3352, file: !124, line: 853, type: !75)
!3371 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 788, column: 22, scope: !3352)
!3375 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3372)
!3376 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3373)
!3377 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !3374)
!3378 = !DILocation(line: 788, column: 15, scope: !3352)
!3379 = !DILocation(line: 799, column: 3, scope: !3352)
!3380 = !{i32 23632}
!3381 = !DILocation(line: 796, column: 16, scope: !3352)
!3382 = !DILocation(line: 801, column: 21, scope: !3352)
!3383 = !DILocation(line: 801, column: 9, scope: !3352)
!3384 = !DILocation(line: 802, column: 21, scope: !3352)
!3385 = !DILocation(line: 802, column: 9, scope: !3352)
!3386 = !DILocation(line: 803, column: 21, scope: !3352)
!3387 = !DILocation(line: 803, column: 9, scope: !3352)
!3388 = !DILocation(line: 804, column: 26, scope: !3352)
!3389 = !DILocation(line: 804, column: 9, scope: !3352)
!3390 = !DILocation(line: 806, column: 44, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3352, file: !124, line: 806, column: 7)
!3392 = !DILocation(line: 806, column: 25, scope: !3391)
!3393 = !DILocation(line: 0, scope: !3352)
!3394 = !DILocation(line: 807, column: 46, scope: !3391)
!3395 = !DILocation(line: 807, column: 20, scope: !3391)
!3396 = !DILocation(line: 806, column: 50, scope: !3391)
!3397 = !DILocation(line: 816, column: 36, scope: !3352)
!3398 = !DILocation(line: 816, column: 9, scope: !3352)
!3399 = !DILocation(line: 822, column: 19, scope: !3352)
!3400 = !DILocation(line: 822, column: 24, scope: !3352)
!3401 = !DILocation(line: 791, column: 12, scope: !3352)
!3402 = !DILocation(line: 823, column: 37, scope: !3352)
!3403 = !DILocation(line: 792, column: 16, scope: !3352)
!3404 = !DILocation(line: 793, column: 16, scope: !3352)
!3405 = !DILocation(line: 826, column: 32, scope: !3352)
!3406 = !DILocation(line: 826, column: 57, scope: !3352)
!3407 = !DILocation(line: 794, column: 16, scope: !3352)
!3408 = !DILocation(line: 791, column: 18, scope: !3352)
!3409 = !DILocation(line: 832, column: 3, scope: !3352)
!3410 = !DILocation(line: 832, column: 15, scope: !3352)
!3411 = !DILocation(line: 833, column: 3, scope: !3352)
!3412 = !DILocation(line: 836, column: 15, scope: !3352)
!3413 = !DILocation(line: 113, column: 31, scope: !760, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 836, column: 3, scope: !3352)
!3415 = !DILocation(line: 113, column: 43, scope: !760, inlinedAt: !3414)
!3416 = !DILocation(line: 115, column: 8, scope: !760, inlinedAt: !3414)
!3417 = !DILocation(line: 115, column: 12, scope: !760, inlinedAt: !3414)
!3418 = !DILocation(line: 116, column: 6, scope: !760, inlinedAt: !3414)
!3419 = !DILocation(line: 116, column: 26, scope: !760, inlinedAt: !3414)
!3420 = !DILocation(line: 838, column: 17, scope: !3352)
!3421 = !DILocation(line: 838, column: 22, scope: !3352)
!3422 = !DILocation(line: 795, column: 17, scope: !3352)
!3423 = !DILocation(line: 840, column: 22, scope: !3352)
!3424 = !DILocation(line: 840, column: 35, scope: !3352)
!3425 = !DILocation(line: 840, column: 3, scope: !3352)
!3426 = !DILocation(line: 841, column: 57, scope: !3352)
!3427 = !DILocation(line: 841, column: 14, scope: !3352)
!3428 = !DILocation(line: 841, column: 3, scope: !3352)
!3429 = !DILocation(line: 841, column: 8, scope: !3352)
!3430 = !DILocation(line: 841, column: 12, scope: !3352)
!3431 = !DILocation(line: 848, column: 35, scope: !3352)
!3432 = !DILocation(line: 848, column: 40, scope: !3352)
!3433 = !DILocation(line: 848, column: 78, scope: !3352)
!3434 = !DILocation(line: 848, column: 26, scope: !3352)
!3435 = !DILocation(line: 848, column: 10, scope: !3352)
!3436 = !DILocation(line: 849, column: 37, scope: !3352)
!3437 = !DILocation(line: 849, column: 20, scope: !3352)
!3438 = !DILocation(line: 849, column: 18, scope: !3352)
!3439 = !DILocation(line: 852, column: 30, scope: !3352)
!3440 = !DILocation(line: 852, column: 35, scope: !3352)
!3441 = !DILocation(line: 852, column: 39, scope: !3352)
!3442 = !DILocation(line: 852, column: 68, scope: !3352)
!3443 = !DILocation(line: 852, column: 21, scope: !3352)
!3444 = !DILocation(line: 852, column: 10, scope: !3352)
!3445 = !DILocation(line: 853, column: 29, scope: !3352)
!3446 = !DILocation(line: 853, column: 10, scope: !3352)
!3447 = !DILocation(line: 862, column: 13, scope: !3352)
!3448 = !DILocation(line: 869, column: 16, scope: !3352)
!3449 = !DILocation(line: 869, column: 21, scope: !3352)
!3450 = !DILocation(line: 869, column: 24, scope: !3352)
!3451 = !DILocation(line: 869, column: 4, scope: !3352)
!3452 = !DILocation(line: 869, column: 41, scope: !3352)
!3453 = !DILocation(line: 872, column: 16, scope: !3352)
!3454 = !DILocation(line: 663, column: 30, scope: !888, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 872, column: 3, scope: !3352)
!3456 = !DILocation(line: 663, column: 41, scope: !888, inlinedAt: !3455)
!3457 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 98, column: 10, scope: !740, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 666, column: 30, scope: !888, inlinedAt: !3455)
!3461 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3458)
!3462 = !DILocation(line: 666, column: 16, scope: !888, inlinedAt: !3455)
!3463 = !DILocation(line: 0, scope: !888, inlinedAt: !3455)
!3464 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 105, column: 12, scope: !750, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 674, column: 41, scope: !888, inlinedAt: !3455)
!3468 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3465)
!3469 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3466)
!3470 = !DILocation(line: 105, column: 32, scope: !750, inlinedAt: !3467)
!3471 = !DILocation(line: 674, column: 21, scope: !888, inlinedAt: !3455)
!3472 = !DILocation(line: 678, column: 6, scope: !888, inlinedAt: !3455)
!3473 = !DILocation(line: 678, column: 15, scope: !888, inlinedAt: !3455)
!3474 = !DILocation(line: 679, column: 22, scope: !888, inlinedAt: !3455)
!3475 = !DILocation(line: 116, column: 52, scope: !959, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 679, column: 3, scope: !888, inlinedAt: !3455)
!3477 = !DILocation(line: 116, column: 76, scope: !959, inlinedAt: !3476)
!3478 = !DILocation(line: 118, column: 25, scope: !959, inlinedAt: !3476)
!3479 = !DILocation(line: 85, column: 49, scope: !967, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 118, column: 2, scope: !959, inlinedAt: !3476)
!3481 = !DILocation(line: 86, column: 28, scope: !967, inlinedAt: !3480)
!3482 = !DILocation(line: 87, column: 28, scope: !967, inlinedAt: !3480)
!3483 = !DILocation(line: 89, column: 13, scope: !967, inlinedAt: !3480)
!3484 = !DILocation(line: 90, column: 8, scope: !967, inlinedAt: !3480)
!3485 = !DILocation(line: 90, column: 13, scope: !967, inlinedAt: !3480)
!3486 = !DILocation(line: 91, column: 8, scope: !967, inlinedAt: !3480)
!3487 = !DILocation(line: 91, column: 13, scope: !967, inlinedAt: !3480)
!3488 = !DILocation(line: 92, column: 8, scope: !967, inlinedAt: !3480)
!3489 = !DILocation(line: 92, column: 13, scope: !967, inlinedAt: !3480)
!3490 = !DILocation(line: 683, column: 20, scope: !985, inlinedAt: !3455)
!3491 = !DILocation(line: 683, column: 7, scope: !985, inlinedAt: !3455)
!3492 = !DILocation(line: 683, column: 7, scope: !888, inlinedAt: !3455)
!3493 = !DILocation(line: 687, column: 5, scope: !989, inlinedAt: !3455)
!3494 = !DILocation(line: 688, column: 3, scope: !989, inlinedAt: !3455)
!3495 = !DILocation(line: 874, column: 10, scope: !3352)
!3496 = !DILocation(line: 875, column: 1, scope: !3352)
!3497 = !DILocation(line: 874, column: 3, scope: !3352)
!3498 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 878, type: !1252, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3499)
!3499 = !{!3500, !3501, !3502}
!3500 = !DILocalVariable(name: "wait_on", arg: 1, scope: !3498, file: !124, line: 878, type: !240)
!3501 = !DILocalVariable(name: "curr_fiber", scope: !3498, file: !124, line: 888, type: !240)
!3502 = !DILocalVariable(name: "wait_q", scope: !3498, file: !124, line: 897, type: !150)
!3503 = !DILocation(line: 878, column: 31, scope: !3498)
!3504 = !DILocation(line: 884, column: 8, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3498, file: !124, line: 884, column: 7)
!3506 = !DILocation(line: 884, column: 7, scope: !3498)
!3507 = !DILocation(line: 129, column: 25, scope: !714, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 78, column: 10, scope: !707, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 85, column: 10, scope: !722, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 888, column: 28, scope: !3498)
!3511 = !DILocation(line: 129, column: 12, scope: !714, inlinedAt: !3508)
!3512 = !DILocation(line: 78, column: 21, scope: !707, inlinedAt: !3509)
!3513 = !DILocation(line: 85, column: 30, scope: !722, inlinedAt: !3510)
!3514 = !DILocation(line: 888, column: 15, scope: !3498)
!3515 = !DILocation(line: 897, column: 41, scope: !3498)
!3516 = !DILocation(line: 897, column: 21, scope: !3498)
!3517 = !DILocation(line: 898, column: 31, scope: !3498)
!3518 = !DILocation(line: 116, column: 52, scope: !959, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 898, column: 3, scope: !3498)
!3520 = !DILocation(line: 116, column: 76, scope: !959, inlinedAt: !3519)
!3521 = !DILocation(line: 118, column: 25, scope: !959, inlinedAt: !3519)
!3522 = !DILocation(line: 85, column: 49, scope: !967, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 118, column: 2, scope: !959, inlinedAt: !3519)
!3524 = !DILocation(line: 86, column: 28, scope: !967, inlinedAt: !3523)
!3525 = !DILocation(line: 87, column: 28, scope: !967, inlinedAt: !3523)
!3526 = !DILocation(line: 89, column: 13, scope: !967, inlinedAt: !3523)
!3527 = !DILocation(line: 90, column: 8, scope: !967, inlinedAt: !3523)
!3528 = !DILocation(line: 90, column: 13, scope: !967, inlinedAt: !3523)
!3529 = !DILocation(line: 91, column: 8, scope: !967, inlinedAt: !3523)
!3530 = !DILocation(line: 91, column: 13, scope: !967, inlinedAt: !3523)
!3531 = !DILocation(line: 92, column: 8, scope: !967, inlinedAt: !3523)
!3532 = !DILocation(line: 92, column: 13, scope: !967, inlinedAt: !3523)
!3533 = !DILocation(line: 899, column: 12, scope: !3498)
!3534 = !DILocation(line: 899, column: 20, scope: !3498)
!3535 = !DILocation(line: 900, column: 15, scope: !3498)
!3536 = !DILocation(line: 900, column: 24, scope: !3498)
!3537 = !DILocation(line: 904, column: 10, scope: !3498)
!3538 = !DILocation(line: 0, scope: !3498)
!3539 = !DILocation(line: 905, column: 1, scope: !3498)
