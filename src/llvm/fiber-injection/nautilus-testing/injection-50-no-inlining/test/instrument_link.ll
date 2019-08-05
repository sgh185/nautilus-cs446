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
  br i1 %6, label %14, label %7, !dbg !604

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !594, metadata !DIExpression()), !dbg !601
  %9 = add i32 %8, 1, !dbg !605
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #11, !dbg !607
  call void @llvm.dbg.value(metadata i32 %9, metadata !594, metadata !DIExpression()), !dbg !601
  %11 = zext i32 %9 to i64, !dbg !608
  %12 = load i64, i64* %3, align 8, !dbg !602
  %13 = icmp ugt i64 %12, %11, !dbg !603
  br i1 %13, label %7, label %14, !dbg !604, !llvm.loop !609

; <label>:14:                                     ; preds = %7, %2
  %15 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !611
  call void @llvm.dbg.value(metadata i32 %15, metadata !594, metadata !DIExpression()), !dbg !601
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %15) #11, !dbg !612
  tail call void @kmem_free(i8* nonnull %0) #11, !dbg !613
  ret void, !dbg !614
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !617, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i8** undef, metadata !618, metadata !DIExpression()), !dbg !622
  %3 = bitcast i8* %0 to i64*, !dbg !623
  call void @llvm.dbg.value(metadata i64* %3, metadata !619, metadata !DIExpression()), !dbg !624
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !625
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #11, !dbg !626
  call void @llvm.dbg.value(metadata i32 0, metadata !620, metadata !DIExpression()), !dbg !627
  %5 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #11, !dbg !628
  call void @llvm.dbg.value(metadata i32 0, metadata !620, metadata !DIExpression()), !dbg !627
  %6 = load i64, i64* %3, align 8, !dbg !629
  %7 = icmp eq i64 %6, 0, !dbg !630
  br i1 %7, label %15, label %8, !dbg !631

; <label>:8:                                      ; preds = %2, %8
  %9 = phi i32 [ %10, %8 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !620, metadata !DIExpression()), !dbg !627
  %10 = add i32 %9, 1, !dbg !632
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %9) #11, !dbg !634
  call void @llvm.dbg.value(metadata i32 %10, metadata !620, metadata !DIExpression()), !dbg !627
  %12 = zext i32 %10 to i64, !dbg !635
  %13 = load i64, i64* %3, align 8, !dbg !629
  %14 = icmp ugt i64 %13, %12, !dbg !630
  br i1 %14, label %8, label %15, !dbg !631, !llvm.loop !636

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %10, %8 ], !dbg !638
  call void @llvm.dbg.value(metadata i32 %16, metadata !620, metadata !DIExpression()), !dbg !627
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #11, !dbg !639
  tail call void @kmem_free(i8* nonnull %0) #11, !dbg !640
  ret void, !dbg !641
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !642 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !644, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i8* %1, metadata !645, metadata !DIExpression()), !dbg !647
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !648
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #10, !dbg !648
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !657, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #10, !dbg !657
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #10, !dbg !659
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !660
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !660
  %9 = load i64, i64* %8, align 8, !dbg !660
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !661
  %10 = bitcast i64* %4 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10, !dbg !662
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11, !dbg !663
  %11 = call i8* @kmem_malloc(i64 8) #11, !dbg !664
  call void @llvm.dbg.value(metadata i8* %11, metadata !654, metadata !DIExpression()) #10, !dbg !664
  %12 = icmp eq i8* %11, null, !dbg !665
  br i1 %12, label %13, label %15, !dbg !667

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !668
  br label %20, !dbg !670

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !671
  call void @llvm.dbg.value(metadata i64* %16, metadata !653, metadata !DIExpression()) #10, !dbg !672
  %17 = load i64, i64* %4, align 8, !dbg !673
  call void @llvm.dbg.value(metadata i64 %17, metadata !652, metadata !DIExpression()) #10, !dbg !674
  %18 = urem i64 %17, 5000, !dbg !675
  store i64 %18, i64* %16, align 8, !dbg !676
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !651, metadata !DIExpression(DW_OP_deref)) #10, !dbg !677
  %19 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %11, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %3) #11, !dbg !678
  br label %20, !dbg !679

; <label>:20:                                     ; preds = %13, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10, !dbg !680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #10, !dbg !680
  ret i32 0, !dbg !681
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !649 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !682
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !683, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #10, !dbg !683
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #10, !dbg !685
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !686
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !686
  %7 = load i64, i64* %6, align 8, !dbg !686
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !687
  %8 = bitcast i64* %2 to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10, !dbg !688
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #11, !dbg !689
  %9 = call i8* @kmem_malloc(i64 8) #11, !dbg !690
  call void @llvm.dbg.value(metadata i8* %9, metadata !654, metadata !DIExpression()), !dbg !690
  %10 = icmp eq i8* %9, null, !dbg !691
  br i1 %10, label %11, label %13, !dbg !692

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !693
  br label %18, !dbg !694

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !695
  call void @llvm.dbg.value(metadata i64* %14, metadata !653, metadata !DIExpression()), !dbg !696
  %15 = load i64, i64* %2, align 8, !dbg !697
  call void @llvm.dbg.value(metadata i64 %15, metadata !652, metadata !DIExpression()), !dbg !698
  %16 = urem i64 %15, 5000, !dbg !699
  store i64 %16, i64* %14, align 8, !dbg !700
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !651, metadata !DIExpression(DW_OP_deref)), !dbg !701
  %17 = call i32 @nk_fiber_start(void (i8*, i8**)* nonnull @routine_simple_1, i8* nonnull %9, i8** null, i64 0, i8 zeroext 1, %struct.nk_fiber** nonnull %1) #11, !dbg !702
  br label %18, !dbg !703

; <label>:18:                                     ; preds = %13, %11
  %19 = phi i32 [ 0, %13 ], [ -1, %11 ], !dbg !704
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10, !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !705
  ret i32 %19, !dbg !705
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !706 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !712
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !718
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !719
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !719
  ret %struct.nk_fiber_percpu_state* %4, !dbg !720
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !721 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !724
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !727
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !728
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !728
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !729
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !729
  ret %struct.nk_fiber* %6, !dbg !730
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !731 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !732
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !735
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !736
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !736
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !737
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !737
  ret %struct.nk_fiber* %6, !dbg !738
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !739 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !742
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !745
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !746
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !746
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !747
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !747
  ret %struct.nk_thread* %6, !dbg !748
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !749 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !752
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !755
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !756
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !756
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !757
  ret %struct.list_head* %5, !dbg !758
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !759 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i64 %1, metadata !764, metadata !DIExpression()), !dbg !766
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !767
  %4 = load i64, i64* %3, align 8, !dbg !768
  %5 = add i64 %4, -8, !dbg !768
  store i64 %5, i64* %3, align 8, !dbg !768
  %6 = inttoptr i64 %5 to i64*, !dbg !769
  store i64 %1, i64* %6, align 8, !dbg !770
  ret void, !dbg !771
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !772 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !786
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !790
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !791
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !791
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !792
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !774, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !775, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !795, metadata !DIExpression()), !dbg !800
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !802
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !802
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !803
  br i1 %8, label %20, label %9, !dbg !804

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()), !dbg !805
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !805
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !776, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !775, metadata !DIExpression()), !dbg !794
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !806
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !807, metadata !DIExpression()), !dbg !812
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !814
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !814
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !815
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !816, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !821, metadata !DIExpression()), !dbg !824
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !825
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !826
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !827
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !828
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !829, metadata !DIExpression()), !dbg !832
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !834
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !834
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !835
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !835
  br label %20, !dbg !836

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !837
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !775, metadata !DIExpression()), !dbg !794
  ret %struct.nk_fiber* %21, !dbg !838
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !839 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !843, metadata !DIExpression()), !dbg !854
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !855
  store i32 4, i32* %3, align 4, !dbg !856
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !844, metadata !DIExpression()), !dbg !857
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !858
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !846, metadata !DIExpression()), !dbg !859
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !860
  %6 = load i32, i32* %5, align 8, !dbg !860
  %7 = icmp sgt i32 %6, 0, !dbg !861
  br i1 %7, label %8, label %66, !dbg !862

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !862

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !847, metadata !DIExpression()), !dbg !863
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !864
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !864
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !863
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !863
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !863
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !847, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !845, metadata !DIExpression()), !dbg !865
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !866
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !807, metadata !DIExpression()), !dbg !867
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !869
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !869
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !870
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !870
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !816, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !821, metadata !DIExpression()), !dbg !873
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !874
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !875
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !876
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !877
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !829, metadata !DIExpression()), !dbg !878
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !880
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !881
  %24 = load i32, i32* %5, align 8, !dbg !882
  %25 = add i32 %24, -1, !dbg !882
  store i32 %25, i32* %5, align 8, !dbg !882
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !883
  br i1 %26, label %63, label %27, !dbg !885

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !886, metadata !DIExpression()) #10, !dbg !894
  call void @llvm.dbg.value(metadata i8 1, metadata !891, metadata !DIExpression()) #10, !dbg !897
  %28 = call i64 @msr_read(i32 -1073741567) #11, !dbg !898
  call void @llvm.dbg.value(metadata i64 %28, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !902
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !903, !srcloc !923
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !910, metadata !DIExpression()) #10, !dbg !903
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !909, metadata !DIExpression()) #10, !dbg !924
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !908, metadata !DIExpression()) #10, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10, !dbg !926
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #11, !dbg !933
  %30 = load i64, i64* %2, align 8, !dbg !934
  call void @llvm.dbg.value(metadata i64 %30, metadata !931, metadata !DIExpression()) #10, !dbg !935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10, !dbg !936
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !937
  %32 = load i32, i32* %31, align 8, !dbg !937
  %33 = zext i32 %32 to i64, !dbg !938
  %34 = urem i64 %30, %33, !dbg !939
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !940, !srcloc !941
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !918, metadata !DIExpression()) #10, !dbg !940
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !916, metadata !DIExpression()) #10, !dbg !942
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !915, metadata !DIExpression()) #10, !dbg !943
  %36 = shl nuw i64 %34, 32, !dbg !944
  %37 = ashr exact i64 %36, 32, !dbg !944
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !944
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !944
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !902
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !945
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !945
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !945
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !945
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !892, metadata !DIExpression()) #10, !dbg !902
  %44 = call i64 @msr_read(i32 -1073741567) #11, !dbg !946
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !950
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !951
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !951
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !952
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !893, metadata !DIExpression()) #10, !dbg !953
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !954
  store i32 1, i32* %49, align 4, !dbg !955
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !956
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !957, metadata !DIExpression()) #10, !dbg !961
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !960, metadata !DIExpression()) #10, !dbg !963
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !964
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !964
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !965, metadata !DIExpression()) #10, !dbg !972
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !970, metadata !DIExpression()) #10, !dbg !974
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !971, metadata !DIExpression()) #10, !dbg !975
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !976
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !977
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !978
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !979
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !980
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !981
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !982
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !983
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !983
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !985
  br i1 %58, label %61, label %59, !dbg !986

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #11, !dbg !987
  br label %61, !dbg !989

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !860
  br label %63, !dbg !860

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !860
  %65 = icmp sgt i32 %64, 0, !dbg !861
  br i1 %65, label %11, label %66, !dbg !862, !llvm.loop !990

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !992
  store i8 1, i8* %67, align 8, !dbg !993
  %68 = call i64 @msr_read(i32 -1073741567) #11, !dbg !994
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !999
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1000
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1000
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1001
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !774, metadata !DIExpression()) #10, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !775, metadata !DIExpression()) #10, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !795, metadata !DIExpression()) #10, !dbg !1004
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1006
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1006
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1007
  br i1 %75, label %88, label %76, !dbg !1008

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !1009
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1009
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !776, metadata !DIExpression()) #10, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !775, metadata !DIExpression()) #10, !dbg !1003
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !807, metadata !DIExpression()) #10, !dbg !1011
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1013
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1013
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1014
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !816, metadata !DIExpression()) #10, !dbg !1015
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !821, metadata !DIExpression()) #10, !dbg !1017
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1018
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1019
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1020
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1021
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !829, metadata !DIExpression()) #10, !dbg !1022
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1024
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1024
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1025
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !775, metadata !DIExpression()) #10, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !844, metadata !DIExpression()), !dbg !857
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1026
  br i1 %87, label %88, label %95, !dbg !1028

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1029
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1034
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1035
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1035
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1036
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1036
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !844, metadata !DIExpression()), !dbg !857
  br label %95, !dbg !1037

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1038
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !844, metadata !DIExpression()), !dbg !857
  %97 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1039
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1042
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1043
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1043
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1044
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1045
  %102 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1046
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1049
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1050
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1050
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1051
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1051
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !807, metadata !DIExpression()), !dbg !1053
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1055
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1055
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1056
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1056
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !816, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !821, metadata !DIExpression()), !dbg !1059
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1060
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1061
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1062
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1063
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !829, metadata !DIExpression()), !dbg !1064
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1066
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1067
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1068
  %116 = load i8*, i8** %115, align 8, !dbg !1068
  call void @kmem_free(i8* %116) #11, !dbg !1068
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1069
  call void @kmem_free(i8* %117) #11, !dbg !1069
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #11, !dbg !1070
  ret void, !dbg !1071
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !887 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !886, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i8 %1, metadata !891, metadata !DIExpression()), !dbg !1073
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1074
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1079
  %6 = icmp eq i8 %1, 0, !dbg !1080
  br i1 %6, label %20, label %7, !dbg !1081

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1082, !srcloc !923
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !910, metadata !DIExpression()) #10, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !909, metadata !DIExpression()) #10, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !908, metadata !DIExpression()) #10, !dbg !1086
  %9 = bitcast i64* %3 to i8*, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10, !dbg !1087
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #11, !dbg !1089
  %10 = load i64, i64* %3, align 8, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %10, metadata !931, metadata !DIExpression()) #10, !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10, !dbg !1092
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1093
  %12 = load i32, i32* %11, align 8, !dbg !1093
  %13 = zext i32 %12 to i64, !dbg !1094
  %14 = urem i64 %10, %13, !dbg !1095
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1096, !srcloc !941
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !918, metadata !DIExpression()) #10, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !916, metadata !DIExpression()) #10, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !915, metadata !DIExpression()) #10, !dbg !1098
  %16 = shl nuw i64 %14, 32, !dbg !1099
  %17 = ashr exact i64 %16, 32, !dbg !1099
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1099
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1099
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1079
  br label %20, !dbg !1100

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1101
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1101
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1101
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1101
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !892, metadata !DIExpression()), !dbg !1079
  %26 = call i64 @msr_read(i32 -1073741567) #11, !dbg !1102
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1106
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1107
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1107
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !893, metadata !DIExpression()), !dbg !1109
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1110
  store i32 1, i32* %31, align 4, !dbg !1111
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1112
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !957, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !960, metadata !DIExpression()), !dbg !1115
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1116
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1116
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !965, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !970, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !971, metadata !DIExpression()), !dbg !1120
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1121
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1122
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1123
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1124
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1125
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1126
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1127
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1128
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1128
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1129
  br i1 %40, label %43, label %41, !dbg !1130

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #11, !dbg !1131
  br label %43, !dbg !1132

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1133
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1134 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1136, metadata !DIExpression()), !dbg !1137
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1138
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1138
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1139
  %5 = load i8*, i8** %4, align 8, !dbg !1139
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1140
  %7 = load i8**, i8*** %6, align 8, !dbg !1140
  tail call void %3(i8* %5, i8** %7) #11, !dbg !1141
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #9, !dbg !1142
  ret void, !dbg !1143
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1144 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1146, metadata !DIExpression()), !dbg !1147
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1148
  %3 = bitcast i8** %2 to i64*, !dbg !1148
  %4 = load i64, i64* %3, align 8, !dbg !1148
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1149
  %6 = load i64, i64* %5, align 8, !dbg !1149
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1150
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !764, metadata !DIExpression()), !dbg !1153
  %8 = add i64 %4, -8, !dbg !1154
  %9 = add i64 %8, %6, !dbg !1155
  store i64 %9, i64* %7, align 8, !dbg !1155
  %10 = inttoptr i64 %9 to i64*, !dbg !1156
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1160
  %11 = load i64, i64* %7, align 8, !dbg !1161
  %12 = add i64 %11, -8, !dbg !1161
  store i64 %12, i64* %7, align 8, !dbg !1161
  %13 = inttoptr i64 %12 to i64*, !dbg !1162
  store i64 0, i64* %13, align 8, !dbg !1163
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1166
  %14 = load i64, i64* %7, align 8, !dbg !1167
  %15 = add i64 %14, -8, !dbg !1167
  store i64 %15, i64* %7, align 8, !dbg !1167
  %16 = inttoptr i64 %15 to i64*, !dbg !1168
  store i64 0, i64* %16, align 8, !dbg !1169
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1172
  %17 = load i64, i64* %7, align 8, !dbg !1173
  %18 = add i64 %17, -8, !dbg !1173
  store i64 %18, i64* %7, align 8, !dbg !1173
  %19 = inttoptr i64 %18 to i64*, !dbg !1174
  store i64 0, i64* %19, align 8, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1178
  %20 = load i64, i64* %7, align 8, !dbg !1179
  %21 = add i64 %20, -8, !dbg !1179
  store i64 %21, i64* %7, align 8, !dbg !1179
  %22 = inttoptr i64 %21 to i64*, !dbg !1180
  store i64 0, i64* %22, align 8, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1184
  %23 = load i64, i64* %7, align 8, !dbg !1185
  %24 = add i64 %23, -8, !dbg !1185
  store i64 %24, i64* %7, align 8, !dbg !1185
  %25 = inttoptr i64 %24 to i64*, !dbg !1186
  store i64 0, i64* %25, align 8, !dbg !1187
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1188
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %26, metadata !764, metadata !DIExpression()), !dbg !1191
  %27 = load i64, i64* %7, align 8, !dbg !1192
  %28 = add i64 %27, -8, !dbg !1192
  store i64 %28, i64* %7, align 8, !dbg !1192
  %29 = inttoptr i64 %28 to i64*, !dbg !1193
  store i64 %26, i64* %29, align 8, !dbg !1194
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1197
  %30 = load i64, i64* %7, align 8, !dbg !1198
  %31 = add i64 %30, -8, !dbg !1198
  store i64 %31, i64* %7, align 8, !dbg !1198
  %32 = inttoptr i64 %31 to i64*, !dbg !1199
  store i64 0, i64* %32, align 8, !dbg !1200
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1203
  %33 = load i64, i64* %7, align 8, !dbg !1204
  %34 = add i64 %33, -8, !dbg !1204
  store i64 %34, i64* %7, align 8, !dbg !1204
  %35 = inttoptr i64 %34 to i64*, !dbg !1205
  store i64 0, i64* %35, align 8, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1209
  %36 = load i64, i64* %7, align 8, !dbg !1210
  %37 = add i64 %36, -8, !dbg !1210
  store i64 %37, i64* %7, align 8, !dbg !1210
  %38 = inttoptr i64 %37 to i64*, !dbg !1211
  store i64 0, i64* %38, align 8, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1215
  %39 = load i64, i64* %7, align 8, !dbg !1216
  %40 = add i64 %39, -8, !dbg !1216
  store i64 %40, i64* %7, align 8, !dbg !1216
  %41 = inttoptr i64 %40 to i64*, !dbg !1217
  store i64 0, i64* %41, align 8, !dbg !1218
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1221
  %42 = load i64, i64* %7, align 8, !dbg !1222
  %43 = add i64 %42, -8, !dbg !1222
  store i64 %43, i64* %7, align 8, !dbg !1222
  %44 = inttoptr i64 %43 to i64*, !dbg !1223
  store i64 0, i64* %44, align 8, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1227
  %45 = load i64, i64* %7, align 8, !dbg !1228
  %46 = add i64 %45, -8, !dbg !1228
  store i64 %46, i64* %7, align 8, !dbg !1228
  %47 = inttoptr i64 %46 to i64*, !dbg !1229
  store i64 0, i64* %47, align 8, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1233
  %48 = load i64, i64* %7, align 8, !dbg !1234
  %49 = add i64 %48, -8, !dbg !1234
  store i64 %49, i64* %7, align 8, !dbg !1234
  %50 = inttoptr i64 %49 to i64*, !dbg !1235
  store i64 0, i64* %50, align 8, !dbg !1236
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1239
  %51 = load i64, i64* %7, align 8, !dbg !1240
  %52 = add i64 %51, -8, !dbg !1240
  store i64 %52, i64* %7, align 8, !dbg !1240
  %53 = inttoptr i64 %52 to i64*, !dbg !1241
  store i64 0, i64* %53, align 8, !dbg !1242
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !763, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !1245
  %54 = load i64, i64* %7, align 8, !dbg !1246
  %55 = add i64 %54, -8, !dbg !1246
  store i64 %55, i64* %7, align 8, !dbg !1246
  %56 = inttoptr i64 %55 to i64*, !dbg !1247
  store i64 0, i64* %56, align 8, !dbg !1248
  ret void, !dbg !1249
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1250 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1254, metadata !DIExpression()), !dbg !1259
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1260
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1264
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1265
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1265
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1266
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1266
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1255, metadata !DIExpression()), !dbg !1267
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1268
  %9 = load i32, i32* %8, align 4, !dbg !1268
  %10 = add i32 %9, -3, !dbg !1270
  %11 = icmp ult i32 %10, 2, !dbg !1270
  br i1 %11, label %13, label %12, !dbg !1270

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1271
  br label %13, !dbg !1273

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1274
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1278
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1279
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1279
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1280
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1280
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1281
  br i1 %20, label %36, label %21, !dbg !1282

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1283
  %23 = icmp eq i32 %22, 3, !dbg !1284
  br i1 %23, label %36, label %24, !dbg !1285

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1286
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !1290
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !1291
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !1291
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !1292
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1256, metadata !DIExpression()), !dbg !1293
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !1294
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !957, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !960, metadata !DIExpression()), !dbg !1297
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !1298
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !1298
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !965, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !970, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !971, metadata !DIExpression()), !dbg !1302
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !1303
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !1304
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !1305
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !1306
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !1307
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1308
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1309
  br label %36, !dbg !1310

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !1311
  %38 = load i32, i32* %37, align 8, !dbg !1311
  %39 = icmp eq i32 %38, 0, !dbg !1313
  br i1 %39, label %40, label %55, !dbg !1314

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1315
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !1315
  %43 = load i64, i64* %42, align 8, !dbg !1315
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !1317, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1323
  %44 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1325
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1329
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1330
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1330
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !1331
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !1322, metadata !DIExpression()) #10, !dbg !1332
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !1333
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !1334
  store i64 %43, i64* %51, align 8, !dbg !1334
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1335, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1341, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1340, metadata !DIExpression()) #10, !dbg !1344
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !1345
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !1346
  store i64 %43, i64* %54, align 8, !dbg !1346
  br label %55, !dbg !1347

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1348
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !1351
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !1352
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !1352
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !1353
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !1354
  store i32 1, i32* %8, align 4, !dbg !1355
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1356
  store i32 5, i32* %61, align 4, !dbg !1357
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #11, !dbg !1358
  ret i32 0, !dbg !1359
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !1318 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !1317, metadata !DIExpression()), !dbg !1360
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1361
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1365
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1366
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1366
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1367
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1322, metadata !DIExpression()), !dbg !1368
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1369
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !1370
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1371, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1341, metadata !DIExpression()) #10, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1340, metadata !DIExpression()) #10, !dbg !1373
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1374
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !1375
  ret void, !dbg !1376
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !1377 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1382
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1386
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1387
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1387
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1388
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !1381, metadata !DIExpression()), !dbg !1389
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #9, !dbg !1390
  ret void, !dbg !1391
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !1392 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1396, metadata !DIExpression()), !dbg !1399
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1400
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1404
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1405
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1405
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !1406
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1406
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1397, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1398, metadata !DIExpression()), !dbg !1408
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !1409
  %9 = zext i1 %8 to i8, !dbg !1411
  call void @llvm.dbg.value(metadata i8 %9, metadata !1398, metadata !DIExpression()), !dbg !1408
  ret i8 %9, !dbg !1412
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !912 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1413, !srcloc !923
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !910, metadata !DIExpression()) #10, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !909, metadata !DIExpression()) #10, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !908, metadata !DIExpression()) #10, !dbg !1416
  %3 = bitcast i64* %1 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1417
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #11, !dbg !1419
  %4 = load i64, i64* %1, align 8, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %4, metadata !931, metadata !DIExpression()) #10, !dbg !1421
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1422
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1423
  %6 = load i32, i32* %5, align 8, !dbg !1423
  %7 = zext i32 %6 to i64, !dbg !1424
  %8 = urem i64 %4, %7, !dbg !1425
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1426, !srcloc !941
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !918, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !916, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !915, metadata !DIExpression()), !dbg !1428
  %10 = shl nuw i64 %8, 32, !dbg !1429
  %11 = ashr exact i64 %10, 32, !dbg !1429
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !1429
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !1429
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !1430
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !1430
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !1431
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !1431
  ret %struct.nk_thread* %17, !dbg !1432
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1433 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1435, metadata !DIExpression()), !dbg !1454
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !1455, !srcloc !1456
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1439, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1437, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1436, metadata !DIExpression()), !dbg !1458
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1459
  %4 = load i32, i32* %3, align 8, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %4, metadata !1441, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 0, metadata !1444, metadata !DIExpression()), !dbg !1461
  %5 = icmp sgt i32 %4, 0, !dbg !1462
  br i1 %5, label %6, label %38, !dbg !1463

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !1464
  br label %8, !dbg !1464

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1444, metadata !DIExpression()), !dbg !1461
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !1464
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !1464
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !1465
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !1465
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !1466
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1442, metadata !DIExpression()), !dbg !1467
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !1468
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1446, metadata !DIExpression(DW_OP_deref)), !dbg !1468
  call void @llvm.dbg.value(metadata i8** %15, metadata !1443, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !1469
  %16 = load i8*, i8** %15, align 8, !dbg !1470
  br label %17, !dbg !1471

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !1470
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !1472
  %20 = bitcast i8* %18 to i8**, !dbg !1472
  %21 = load i8*, i8** %20, align 8, !dbg !1472
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !1472
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !1472
  br i1 %22, label %27, label %23, !dbg !1471

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !1470
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !1470
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1443, metadata !DIExpression()), !dbg !1469
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !1473
  br i1 %26, label %30, label %17, !dbg !1476, !llvm.loop !1477

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i32 undef, metadata !1444, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1461
  %29 = icmp slt i64 %28, %7, !dbg !1462
  br i1 %29, label %8, label %38, !dbg !1463, !llvm.loop !1480

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !807, metadata !DIExpression()), !dbg !1484
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1486
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !1486
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !1487
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !816, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !821, metadata !DIExpression()), !dbg !1490
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !1491
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !1492
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !1493
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !829, metadata !DIExpression()), !dbg !1495
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !1497
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !1498
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !1499
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !1500 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1529, !srcloc !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !1505, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 %1, metadata !1503, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %1, metadata !1502, metadata !DIExpression()), !dbg !1532
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1533
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1535
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !1507, metadata !DIExpression()), !dbg !1536
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #9, !dbg !1537
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1538
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !1539
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !1540
  br i1 %6, label %7, label %109, !dbg !1541

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1542
  %9 = icmp eq i64 %8, 0, !dbg !1548
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %10, metadata !1553, metadata !DIExpression()) #10, !dbg !1555
  %11 = icmp eq i64 %10, 0, !dbg !1556
  br i1 %11, label %17, label %12, !dbg !1558

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !1559
  %14 = inttoptr i64 %13 to i16*, !dbg !1561
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !1562
  %16 = zext i16 %15 to i32, !dbg !1562
  br label %17, !dbg !1563

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !1564
  %19 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %19, metadata !1569, metadata !DIExpression()) #10, !dbg !1571
  %20 = icmp eq i64 %19, 0, !dbg !1572
  br i1 %20, label %25, label %21, !dbg !1574

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !1575
  %23 = inttoptr i64 %22 to i16*, !dbg !1577
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !1578
  br label %25, !dbg !1579

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !1580

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1508, metadata !DIExpression()), !dbg !1581
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1582, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1341, metadata !DIExpression()) #10, !dbg !1582
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1340, metadata !DIExpression()) #10, !dbg !1584
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1514, metadata !DIExpression()), !dbg !1581
  %28 = tail call i32 @nk_vc_is_active() #11, !dbg !1585
  %29 = icmp eq i32 %28, 0, !dbg !1585
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1586
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %31, metadata !1593, metadata !DIExpression()) #10, !dbg !1597
  %32 = icmp eq i64 %31, 0, !dbg !1598
  br i1 %32, label %38, label %33, !dbg !1600

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !1601
  %35 = inttoptr i64 %34 to i16*, !dbg !1603
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !1604
  %37 = icmp eq i16 %36, 0, !dbg !1605
  br i1 %37, label %38, label %39, !dbg !1586

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !1586

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !1586
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1586
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !1586
  br i1 %29, label %60, label %44, !dbg !1606

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !1607

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1607
  %47 = load i64, i64* %46, align 32, !dbg !1607
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1607
  %49 = load i8, i8* %48, align 8, !dbg !1607
  %50 = icmp eq i8 %49, 0, !dbg !1607
  br i1 %50, label %51, label %56, !dbg !1607

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1607
  %53 = load i8, i8* %52, align 64, !dbg !1607
  %54 = icmp eq i8 %53, 0, !dbg !1607
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !1607
  br label %56, !dbg !1607

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !1607
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1607
  br label %76, !dbg !1607

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !1608

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1608
  %63 = load i64, i64* %62, align 32, !dbg !1608
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1608
  %65 = load i8, i8* %64, align 8, !dbg !1608
  %66 = icmp eq i8 %65, 0, !dbg !1608
  br i1 %66, label %67, label %72, !dbg !1608

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1608
  %69 = load i8, i8* %68, align 64, !dbg !1608
  %70 = icmp eq i8 %69, 0, !dbg !1608
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !1608
  br label %72, !dbg !1608

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !1608
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1608
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %77, metadata !1613, metadata !DIExpression()) #10, !dbg !1615
  %78 = icmp eq i64 %77, 0, !dbg !1616
  br i1 %78, label %109, label %79, !dbg !1618

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !1619
  %81 = inttoptr i64 %80 to i16*, !dbg !1621
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !1622
  br label %109, !dbg !1623

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1527, metadata !DIExpression()), !dbg !1624
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !1625
  %85 = icmp eq i32 %84, 0, !dbg !1625
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %86, metadata !1593, metadata !DIExpression()) #10, !dbg !1632
  %87 = icmp eq i64 %86, 0, !dbg !1633
  br i1 %87, label %93, label %88, !dbg !1634

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !1635
  %90 = inttoptr i64 %89 to i16*, !dbg !1636
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !1637
  %92 = icmp eq i16 %91, 0, !dbg !1638
  br i1 %92, label %93, label %94, !dbg !1639

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !1639

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !1639
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1639
  br i1 %85, label %100, label %98, !dbg !1640

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1641
  br label %102, !dbg !1641

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #11, !dbg !1643
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %103, metadata !1613, metadata !DIExpression()) #10, !dbg !1648
  %104 = icmp eq i64 %103, 0, !dbg !1649
  br i1 %104, label %109, label %105, !dbg !1650

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !1651
  %107 = inttoptr i64 %106 to i16*, !dbg !1652
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !1653
  br label %109, !dbg !1654

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !1655
  ret i32 %110, !dbg !1656
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !1657 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1689, !srcloc !1690
  call void @llvm.dbg.value(metadata i32 %1, metadata !1666, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %1, metadata !1664, metadata !DIExpression()), !dbg !1691
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #11, !dbg !1692
  call void @llvm.dbg.value(metadata i8* %2, metadata !1662, metadata !DIExpression()), !dbg !1692
  %3 = icmp eq i8* %2, null, !dbg !1693
  br i1 %3, label %4, label %106, !dbg !1694

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1695
  %6 = icmp eq i64 %5, 0, !dbg !1697
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %7, metadata !1553, metadata !DIExpression()) #10, !dbg !1701
  %8 = icmp eq i64 %7, 0, !dbg !1702
  br i1 %8, label %14, label %9, !dbg !1703

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !1704
  %11 = inttoptr i64 %10 to i16*, !dbg !1705
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1706
  %13 = zext i16 %12 to i32, !dbg !1706
  br label %14, !dbg !1707

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !1708
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %16, metadata !1569, metadata !DIExpression()) #10, !dbg !1712
  %17 = icmp eq i64 %16, 0, !dbg !1713
  br i1 %17, label %22, label %18, !dbg !1714

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1715
  %20 = inttoptr i64 %19 to i16*, !dbg !1716
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1717
  br label %22, !dbg !1718

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1719

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1668, metadata !DIExpression()), !dbg !1720
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1721, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1341, metadata !DIExpression()) #10, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1340, metadata !DIExpression()) #10, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1674, metadata !DIExpression()), !dbg !1720
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !1724
  %26 = icmp eq i32 %25, 0, !dbg !1724
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1725
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %28, metadata !1593, metadata !DIExpression()) #10, !dbg !1730
  %29 = icmp eq i64 %28, 0, !dbg !1731
  br i1 %29, label %35, label %30, !dbg !1732

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1733
  %32 = inttoptr i64 %31 to i16*, !dbg !1734
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1735
  %34 = icmp eq i16 %33, 0, !dbg !1736
  br i1 %34, label %35, label %36, !dbg !1725

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1725

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1725
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1725
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1725
  br i1 %26, label %57, label %41, !dbg !1737

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1738

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1738
  %44 = load i64, i64* %43, align 32, !dbg !1738
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1738
  %46 = load i8, i8* %45, align 8, !dbg !1738
  %47 = icmp eq i8 %46, 0, !dbg !1738
  br i1 %47, label %48, label %53, !dbg !1738

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1738
  %50 = load i8, i8* %49, align 64, !dbg !1738
  %51 = icmp eq i8 %50, 0, !dbg !1738
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1738
  br label %53, !dbg !1738

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1738
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1738
  br label %73, !dbg !1738

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1739

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1739
  %60 = load i64, i64* %59, align 32, !dbg !1739
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1739
  %62 = load i8, i8* %61, align 8, !dbg !1739
  %63 = icmp eq i8 %62, 0, !dbg !1739
  br i1 %63, label %64, label %69, !dbg !1739

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1739
  %66 = load i8, i8* %65, align 64, !dbg !1739
  %67 = icmp eq i8 %66, 0, !dbg !1739
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1739
  br label %69, !dbg !1739

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1739
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1739
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %74, metadata !1613, metadata !DIExpression()) #10, !dbg !1743
  %75 = icmp eq i64 %74, 0, !dbg !1744
  br i1 %75, label %114, label %76, !dbg !1745

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1746
  %78 = inttoptr i64 %77 to i16*, !dbg !1747
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1748
  br label %114, !dbg !1749

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1687, metadata !DIExpression()), !dbg !1750
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !1751
  %82 = icmp eq i32 %81, 0, !dbg !1751
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %83, metadata !1593, metadata !DIExpression()) #10, !dbg !1758
  %84 = icmp eq i64 %83, 0, !dbg !1759
  br i1 %84, label %90, label %85, !dbg !1760

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1761
  %87 = inttoptr i64 %86 to i16*, !dbg !1762
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1763
  %89 = icmp eq i16 %88, 0, !dbg !1764
  br i1 %89, label %90, label %91, !dbg !1765

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1765

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1765
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1765
  br i1 %82, label %97, label %95, !dbg !1766

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1767
  br label %99, !dbg !1767

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #11, !dbg !1769
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %100, metadata !1613, metadata !DIExpression()) #10, !dbg !1774
  %101 = icmp eq i64 %100, 0, !dbg !1775
  br i1 %101, label %114, label %102, !dbg !1776

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1777
  %104 = inttoptr i64 %103 to i16*, !dbg !1778
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1779
  br label %114, !dbg !1780

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !1661, metadata !DIExpression()), !dbg !1782
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #11, !dbg !1783
  %109 = bitcast i8* %2 to i32*, !dbg !1784
  tail call void @spinlock_init(i32* %109) #11, !dbg !1785
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1786
  call void @llvm.dbg.value(metadata i8* %110, metadata !829, metadata !DIExpression()), !dbg !1787
  %111 = bitcast i8* %110 to i8**, !dbg !1789
  store i8* %110, i8** %111, align 8, !dbg !1789
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1790
  %113 = bitcast i8* %112 to i8**, !dbg !1791
  store i8* %110, i8** %113, align 8, !dbg !1791
  br label %115, !dbg !1792

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #11, !dbg !1793
  br label %115, !dbg !1794

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !1795
  ret %struct.nk_fiber_percpu_state* %116, !dbg !1796
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !1797 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !1840
  %2 = zext i32 %1 to i64, !dbg !1841
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !1841
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !1799, metadata !DIExpression()), !dbg !1842
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1843
  %6 = icmp eq i64 %5, 0, !dbg !1845
  %7 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %7, metadata !1553, metadata !DIExpression()) #10, !dbg !1849
  %8 = icmp eq i64 %7, 0, !dbg !1850
  br i1 %8, label %14, label %9, !dbg !1851

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !1852
  %11 = inttoptr i64 %10 to i16*, !dbg !1853
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1854
  %13 = zext i16 %12 to i32, !dbg !1854
  br label %14, !dbg !1855

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !1856
  %16 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %16, metadata !1569, metadata !DIExpression()) #10, !dbg !1860
  %17 = icmp eq i64 %16, 0, !dbg !1861
  br i1 %17, label %22, label %18, !dbg !1862

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1863
  %20 = inttoptr i64 %19 to i16*, !dbg !1864
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1865
  br label %22, !dbg !1866

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1867

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1800, metadata !DIExpression()), !dbg !1868
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1869, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1341, metadata !DIExpression()) #10, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1340, metadata !DIExpression()) #10, !dbg !1871
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1804, metadata !DIExpression()), !dbg !1868
  %25 = tail call i32 @nk_vc_is_active() #11, !dbg !1872
  %26 = icmp eq i32 %25, 0, !dbg !1872
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1873
  %28 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %28, metadata !1593, metadata !DIExpression()) #10, !dbg !1878
  %29 = icmp eq i64 %28, 0, !dbg !1879
  br i1 %29, label %35, label %30, !dbg !1880

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1881
  %32 = inttoptr i64 %31 to i16*, !dbg !1882
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1883
  %34 = icmp eq i16 %33, 0, !dbg !1884
  br i1 %34, label %35, label %36, !dbg !1873

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1873

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1873
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1873
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1873
  br i1 %26, label %57, label %41, !dbg !1885

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1886

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1886
  %44 = load i64, i64* %43, align 32, !dbg !1886
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1886
  %46 = load i8, i8* %45, align 8, !dbg !1886
  %47 = icmp eq i8 %46, 0, !dbg !1886
  br i1 %47, label %48, label %53, !dbg !1886

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1886
  %50 = load i8, i8* %49, align 64, !dbg !1886
  %51 = icmp eq i8 %50, 0, !dbg !1886
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1886
  br label %53, !dbg !1886

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1886
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #11, !dbg !1886
  br label %73, !dbg !1886

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1887

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1887
  %60 = load i64, i64* %59, align 32, !dbg !1887
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1887
  %62 = load i8, i8* %61, align 8, !dbg !1887
  %63 = icmp eq i8 %62, 0, !dbg !1887
  br i1 %63, label %64, label %69, !dbg !1887

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1887
  %66 = load i8, i8* %65, align 64, !dbg !1887
  %67 = icmp eq i8 %66, 0, !dbg !1887
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1887
  br label %69, !dbg !1887

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1887
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #11, !dbg !1887
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %74, metadata !1613, metadata !DIExpression()) #10, !dbg !1891
  %75 = icmp eq i64 %74, 0, !dbg !1892
  br i1 %75, label %106, label %76, !dbg !1893

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1894
  %78 = inttoptr i64 %77 to i16*, !dbg !1895
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1896
  br label %106, !dbg !1897

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1817, metadata !DIExpression()), !dbg !1898
  %81 = tail call i32 @nk_vc_is_active() #11, !dbg !1899
  %82 = icmp eq i32 %81, 0, !dbg !1899
  %83 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %83, metadata !1593, metadata !DIExpression()) #10, !dbg !1906
  %84 = icmp eq i64 %83, 0, !dbg !1907
  br i1 %84, label %90, label %85, !dbg !1908

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1909
  %87 = inttoptr i64 %86 to i16*, !dbg !1910
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1911
  %89 = icmp eq i16 %88, 0, !dbg !1912
  br i1 %89, label %90, label %91, !dbg !1913

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1913

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1913
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1913
  br i1 %82, label %97, label %95, !dbg !1914

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !1915
  br label %99, !dbg !1915

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #11, !dbg !1917
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %100, metadata !1613, metadata !DIExpression()) #10, !dbg !1922
  %101 = icmp eq i64 %100, 0, !dbg !1923
  br i1 %101, label %106, label %102, !dbg !1924

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1925
  %104 = inttoptr i64 %103 to i16*, !dbg !1926
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1927
  br label %106, !dbg !1928

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #9, !dbg !1929
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !1930
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !1931
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !1932
  br i1 %109, label %110, label %212, !dbg !1933

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1934
  %112 = icmp eq i64 %111, 0, !dbg !1936
  %113 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %113, metadata !1553, metadata !DIExpression()) #10, !dbg !1940
  %114 = icmp eq i64 %113, 0, !dbg !1941
  br i1 %114, label %120, label %115, !dbg !1942

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !1943
  %117 = inttoptr i64 %116 to i16*, !dbg !1944
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !1945
  %119 = zext i16 %118 to i32, !dbg !1945
  br label %120, !dbg !1946

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !1947
  %122 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %122, metadata !1569, metadata !DIExpression()) #10, !dbg !1951
  %123 = icmp eq i64 %122, 0, !dbg !1952
  br i1 %123, label %128, label %124, !dbg !1953

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !1954
  %126 = inttoptr i64 %125 to i16*, !dbg !1955
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !1956
  br label %128, !dbg !1957

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !1958

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1819, metadata !DIExpression()), !dbg !1959
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !1960, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1341, metadata !DIExpression()) #10, !dbg !1960
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1340, metadata !DIExpression()) #10, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1825, metadata !DIExpression()), !dbg !1959
  %131 = tail call i32 @nk_vc_is_active() #11, !dbg !1963
  %132 = icmp eq i32 %131, 0, !dbg !1963
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !1964
  %134 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %134, metadata !1593, metadata !DIExpression()) #10, !dbg !1969
  %135 = icmp eq i64 %134, 0, !dbg !1970
  br i1 %135, label %141, label %136, !dbg !1971

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !1972
  %138 = inttoptr i64 %137 to i16*, !dbg !1973
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !1974
  %140 = icmp eq i16 %139, 0, !dbg !1975
  br i1 %140, label %141, label %142, !dbg !1964

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !1964

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !1964
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1964
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !1964
  br i1 %132, label %163, label %147, !dbg !1976

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !1977

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !1977
  %150 = load i64, i64* %149, align 32, !dbg !1977
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !1977
  %152 = load i8, i8* %151, align 8, !dbg !1977
  %153 = icmp eq i8 %152, 0, !dbg !1977
  br i1 %153, label %154, label %159, !dbg !1977

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !1977
  %156 = load i8, i8* %155, align 64, !dbg !1977
  %157 = icmp eq i8 %156, 0, !dbg !1977
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !1977
  br label %159, !dbg !1977

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !1977
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !1977
  br label %179, !dbg !1977

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !1978

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !1978
  %166 = load i64, i64* %165, align 32, !dbg !1978
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !1978
  %168 = load i8, i8* %167, align 8, !dbg !1978
  %169 = icmp eq i8 %168, 0, !dbg !1978
  br i1 %169, label %170, label %175, !dbg !1978

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !1978
  %172 = load i8, i8* %171, align 64, !dbg !1978
  %173 = icmp eq i8 %172, 0, !dbg !1978
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !1978
  br label %175, !dbg !1978

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !1978
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !1978
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %180, metadata !1613, metadata !DIExpression()) #10, !dbg !1982
  %181 = icmp eq i64 %180, 0, !dbg !1983
  br i1 %181, label %212, label %182, !dbg !1984

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !1985
  %184 = inttoptr i64 %183 to i16*, !dbg !1986
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !1987
  br label %212, !dbg !1988

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1838, metadata !DIExpression()), !dbg !1989
  %187 = tail call i32 @nk_vc_is_active() #11, !dbg !1990
  %188 = icmp eq i32 %187, 0, !dbg !1990
  %189 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %189, metadata !1593, metadata !DIExpression()) #10, !dbg !1997
  %190 = icmp eq i64 %189, 0, !dbg !1998
  br i1 %190, label %196, label %191, !dbg !1999

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2000
  %193 = inttoptr i64 %192 to i16*, !dbg !2001
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2002
  %195 = icmp eq i16 %194, 0, !dbg !2003
  br i1 %195, label %196, label %197, !dbg !2004

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2004

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2004
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2004
  br i1 %188, label %203, label %201, !dbg !2005

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !2006
  br label %205, !dbg !2006

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #11, !dbg !2008
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %206, metadata !1613, metadata !DIExpression()) #10, !dbg !2013
  %207 = icmp eq i64 %206, 0, !dbg !2014
  br i1 %207, label %212, label %208, !dbg !2015

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2016
  %210 = inttoptr i64 %209 to i16*, !dbg !2017
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2018
  br label %212, !dbg !2019

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2020
  ret i32 %213, !dbg !2021
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2022 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2024, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8** undef, metadata !2025, metadata !DIExpression()), !dbg !2139
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2140, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1341, metadata !DIExpression()) #10, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1340, metadata !DIExpression()) #10, !dbg !2142
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2143
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !2144
  %8 = icmp eq i32 %7, 0, !dbg !2144
  br i1 %8, label %111, label %9, !dbg !2145

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2146
  %11 = icmp eq i64 %10, 0, !dbg !2148
  %12 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %12, metadata !1553, metadata !DIExpression()) #10, !dbg !2152
  %13 = icmp eq i64 %12, 0, !dbg !2153
  br i1 %13, label %19, label %14, !dbg !2154

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2155
  %16 = inttoptr i64 %15 to i16*, !dbg !2156
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2157
  %18 = zext i16 %17 to i32, !dbg !2157
  br label %19, !dbg !2158

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2159
  %21 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %21, metadata !1569, metadata !DIExpression()) #10, !dbg !2163
  %22 = icmp eq i64 %21, 0, !dbg !2164
  br i1 %22, label %27, label %23, !dbg !2165

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2166
  %25 = inttoptr i64 %24 to i16*, !dbg !2167
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2168
  br label %27, !dbg !2169

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2170

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2026, metadata !DIExpression()), !dbg !2171
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2172, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1341, metadata !DIExpression()) #10, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1340, metadata !DIExpression()) #10, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2032, metadata !DIExpression()), !dbg !2171
  %30 = tail call i32 @nk_vc_is_active() #11, !dbg !2175
  %31 = icmp eq i32 %30, 0, !dbg !2175
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2176
  %33 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %33, metadata !1593, metadata !DIExpression()) #10, !dbg !2181
  %34 = icmp eq i64 %33, 0, !dbg !2182
  br i1 %34, label %40, label %35, !dbg !2183

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2184
  %37 = inttoptr i64 %36 to i16*, !dbg !2185
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2186
  %39 = icmp eq i16 %38, 0, !dbg !2187
  br i1 %39, label %40, label %41, !dbg !2176

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2176

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2176
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2176
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2176
  br i1 %31, label %62, label %46, !dbg !2188

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2189

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2189
  %49 = load i64, i64* %48, align 32, !dbg !2189
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2189
  %51 = load i8, i8* %50, align 8, !dbg !2189
  %52 = icmp eq i8 %51, 0, !dbg !2189
  br i1 %52, label %53, label %58, !dbg !2189

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2189
  %55 = load i8, i8* %54, align 64, !dbg !2189
  %56 = icmp eq i8 %55, 0, !dbg !2189
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2189
  br label %58, !dbg !2189

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2189
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2189
  br label %78, !dbg !2189

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2190

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2190
  %65 = load i64, i64* %64, align 32, !dbg !2190
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2190
  %67 = load i8, i8* %66, align 8, !dbg !2190
  %68 = icmp eq i8 %67, 0, !dbg !2190
  br i1 %68, label %69, label %74, !dbg !2190

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2190
  %71 = load i8, i8* %70, align 64, !dbg !2190
  %72 = icmp eq i8 %71, 0, !dbg !2190
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2190
  br label %74, !dbg !2190

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2190
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2190
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %79, metadata !1613, metadata !DIExpression()) #10, !dbg !2194
  %80 = icmp eq i64 %79, 0, !dbg !2195
  br i1 %80, label %449, label %81, !dbg !2196

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2197
  %83 = inttoptr i64 %82 to i16*, !dbg !2198
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2199
  br label %449, !dbg !2200

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2045, metadata !DIExpression()), !dbg !2201
  %86 = tail call i32 @nk_vc_is_active() #11, !dbg !2202
  %87 = icmp eq i32 %86, 0, !dbg !2202
  %88 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %88, metadata !1593, metadata !DIExpression()) #10, !dbg !2209
  %89 = icmp eq i64 %88, 0, !dbg !2210
  br i1 %89, label %95, label %90, !dbg !2211

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2212
  %92 = inttoptr i64 %91 to i16*, !dbg !2213
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2214
  %94 = icmp eq i16 %93, 0, !dbg !2215
  br i1 %94, label %95, label %96, !dbg !2216

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2216

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2216
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2216
  br i1 %87, label %102, label %100, !dbg !2217

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2218
  br label %104, !dbg !2218

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #11, !dbg !2220
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %105, metadata !1613, metadata !DIExpression()) #10, !dbg !2225
  %106 = icmp eq i64 %105, 0, !dbg !2226
  br i1 %106, label %449, label %107, !dbg !2227

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2228
  %109 = inttoptr i64 %108 to i16*, !dbg !2229
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2230
  br label %449, !dbg !2231

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2232
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2232
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2233
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2233
  store i64 100000000, i64* %113, align 8, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2047, metadata !DIExpression(DW_OP_deref)), !dbg !2233
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #11, !dbg !2234
  %115 = icmp eq i32 %114, 0, !dbg !2234
  %116 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2235
  br i1 %115, label %219, label %117, !dbg !2236

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2237
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %119, metadata !1553, metadata !DIExpression()) #10, !dbg !2241
  %120 = icmp eq i64 %119, 0, !dbg !2242
  br i1 %120, label %126, label %121, !dbg !2243

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2244
  %123 = inttoptr i64 %122 to i16*, !dbg !2245
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2246
  %125 = zext i16 %124 to i32, !dbg !2246
  br label %126, !dbg !2247

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2248
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %128, metadata !1569, metadata !DIExpression()) #10, !dbg !2252
  %129 = icmp eq i64 %128, 0, !dbg !2253
  br i1 %129, label %134, label %130, !dbg !2254

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2255
  %132 = inttoptr i64 %131 to i16*, !dbg !2256
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2257
  br label %134, !dbg !2258

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2259

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2073, metadata !DIExpression()), !dbg !2260
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2261, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1341, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1340, metadata !DIExpression()) #10, !dbg !2263
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2079, metadata !DIExpression()), !dbg !2260
  %137 = call i32 @nk_vc_is_active() #11, !dbg !2264
  %138 = icmp eq i32 %137, 0, !dbg !2264
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2265
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %140, metadata !1593, metadata !DIExpression()) #10, !dbg !2270
  %141 = icmp eq i64 %140, 0, !dbg !2271
  br i1 %141, label %147, label %142, !dbg !2272

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2273
  %144 = inttoptr i64 %143 to i16*, !dbg !2274
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2275
  %146 = icmp eq i16 %145, 0, !dbg !2276
  br i1 %146, label %147, label %148, !dbg !2265

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2265

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2265
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2265
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2265
  br i1 %138, label %169, label %153, !dbg !2277

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2278

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2278
  %156 = load i64, i64* %155, align 32, !dbg !2278
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2278
  %158 = load i8, i8* %157, align 8, !dbg !2278
  %159 = icmp eq i8 %158, 0, !dbg !2278
  br i1 %159, label %160, label %165, !dbg !2278

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2278
  %162 = load i8, i8* %161, align 64, !dbg !2278
  %163 = icmp eq i8 %162, 0, !dbg !2278
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !2278
  br label %165, !dbg !2278

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !2278
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2278
  br label %185, !dbg !2278

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2279

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2279
  %172 = load i64, i64* %171, align 32, !dbg !2279
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2279
  %174 = load i8, i8* %173, align 8, !dbg !2279
  %175 = icmp eq i8 %174, 0, !dbg !2279
  br i1 %175, label %176, label %181, !dbg !2279

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2279
  %178 = load i8, i8* %177, align 64, !dbg !2279
  %179 = icmp eq i8 %178, 0, !dbg !2279
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !2279
  br label %181, !dbg !2279

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !2279
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2279
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %186, metadata !1613, metadata !DIExpression()) #10, !dbg !2283
  %187 = icmp eq i64 %186, 0, !dbg !2284
  br i1 %187, label %218, label %188, !dbg !2285

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2286
  %190 = inttoptr i64 %189 to i16*, !dbg !2287
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2288
  br label %218, !dbg !2289

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2092, metadata !DIExpression()), !dbg !2290
  %193 = call i32 @nk_vc_is_active() #11, !dbg !2291
  %194 = icmp eq i32 %193, 0, !dbg !2291
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %195, metadata !1593, metadata !DIExpression()) #10, !dbg !2298
  %196 = icmp eq i64 %195, 0, !dbg !2299
  br i1 %196, label %202, label %197, !dbg !2300

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !2301
  %199 = inttoptr i64 %198 to i16*, !dbg !2302
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !2303
  %201 = icmp eq i16 %200, 0, !dbg !2304
  br i1 %201, label %202, label %203, !dbg !2305

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !2305

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !2305
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2305
  br i1 %194, label %209, label %207, !dbg !2306

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2307
  br label %211, !dbg !2307

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #11, !dbg !2309
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %212, metadata !1613, metadata !DIExpression()) #10, !dbg !2314
  %213 = icmp eq i64 %212, 0, !dbg !2315
  br i1 %213, label %218, label %214, !dbg !2316

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !2317
  %216 = inttoptr i64 %215 to i16*, !dbg !2318
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !2319
  br label %218, !dbg !2320

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #12, !dbg !2321
  unreachable, !dbg !2321

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !2322
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !2325
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !2325
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2094, metadata !DIExpression()), !dbg !2326
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !2327
  br i1 %223, label %224, label %326, !dbg !2328

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2329
  %226 = icmp eq i64 %225, 0, !dbg !2331
  %227 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %227, metadata !1553, metadata !DIExpression()) #10, !dbg !2335
  %228 = icmp eq i64 %227, 0, !dbg !2336
  br i1 %228, label %234, label %229, !dbg !2337

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !2338
  %231 = inttoptr i64 %230 to i16*, !dbg !2339
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !2340
  %233 = zext i16 %232 to i32, !dbg !2340
  br label %234, !dbg !2341

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !2342
  %236 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %236, metadata !1569, metadata !DIExpression()) #10, !dbg !2346
  %237 = icmp eq i64 %236, 0, !dbg !2347
  br i1 %237, label %242, label %238, !dbg !2348

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !2349
  %240 = inttoptr i64 %239 to i16*, !dbg !2350
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !2351
  br label %242, !dbg !2352

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !2353

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2095, metadata !DIExpression()), !dbg !2354
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2355, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1341, metadata !DIExpression()) #10, !dbg !2355
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1340, metadata !DIExpression()) #10, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2101, metadata !DIExpression()), !dbg !2354
  %245 = call i32 @nk_vc_is_active() #11, !dbg !2358
  %246 = icmp eq i32 %245, 0, !dbg !2358
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2359
  %248 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %248, metadata !1593, metadata !DIExpression()) #10, !dbg !2364
  %249 = icmp eq i64 %248, 0, !dbg !2365
  br i1 %249, label %255, label %250, !dbg !2366

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !2367
  %252 = inttoptr i64 %251 to i16*, !dbg !2368
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !2369
  %254 = icmp eq i16 %253, 0, !dbg !2370
  br i1 %254, label %255, label %256, !dbg !2359

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !2359

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !2359
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2359
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !2359
  br i1 %246, label %277, label %261, !dbg !2371

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !2372

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2372
  %264 = load i64, i64* %263, align 32, !dbg !2372
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2372
  %266 = load i8, i8* %265, align 8, !dbg !2372
  %267 = icmp eq i8 %266, 0, !dbg !2372
  br i1 %267, label %268, label %273, !dbg !2372

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2372
  %270 = load i8, i8* %269, align 64, !dbg !2372
  %271 = icmp eq i8 %270, 0, !dbg !2372
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !2372
  br label %273, !dbg !2372

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !2372
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2372
  br label %293, !dbg !2372

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !2373

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2373
  %280 = load i64, i64* %279, align 32, !dbg !2373
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2373
  %282 = load i8, i8* %281, align 8, !dbg !2373
  %283 = icmp eq i8 %282, 0, !dbg !2373
  br i1 %283, label %284, label %289, !dbg !2373

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2373
  %286 = load i8, i8* %285, align 64, !dbg !2373
  %287 = icmp eq i8 %286, 0, !dbg !2373
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !2373
  br label %289, !dbg !2373

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !2373
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2373
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %294, metadata !1613, metadata !DIExpression()) #10, !dbg !2377
  %295 = icmp eq i64 %294, 0, !dbg !2378
  br i1 %295, label %326, label %296, !dbg !2379

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !2380
  %298 = inttoptr i64 %297 to i16*, !dbg !2381
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !2382
  br label %326, !dbg !2383

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2114, metadata !DIExpression()), !dbg !2384
  %301 = call i32 @nk_vc_is_active() #11, !dbg !2385
  %302 = icmp eq i32 %301, 0, !dbg !2385
  %303 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2388
  call void @llvm.dbg.value(metadata i64 %303, metadata !1593, metadata !DIExpression()) #10, !dbg !2392
  %304 = icmp eq i64 %303, 0, !dbg !2393
  br i1 %304, label %310, label %305, !dbg !2394

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !2395
  %307 = inttoptr i64 %306 to i16*, !dbg !2396
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !2397
  %309 = icmp eq i16 %308, 0, !dbg !2398
  br i1 %309, label %310, label %311, !dbg !2399

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !2399

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !2399
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2399
  br i1 %302, label %317, label %315, !dbg !2400

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2401
  br label %319, !dbg !2401

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #11, !dbg !2403
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %320, metadata !1613, metadata !DIExpression()) #10, !dbg !2408
  %321 = icmp eq i64 %320, 0, !dbg !2409
  br i1 %321, label %326, label %322, !dbg !2410

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !2411
  %324 = inttoptr i64 %323 to i16*, !dbg !2412
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !2413
  br label %326, !dbg !2414

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2415, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1341, metadata !DIExpression()) #10, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1340, metadata !DIExpression()) #10, !dbg !2417
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !2418
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !2419
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !2420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #10, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #9, !dbg !2422
  %331 = icmp slt i32 %330, 0, !dbg !2423
  br i1 %331, label %332, label %434, !dbg !2424

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2425
  %334 = icmp eq i64 %333, 0, !dbg !2427
  %335 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %335, metadata !1553, metadata !DIExpression()) #10, !dbg !2431
  %336 = icmp eq i64 %335, 0, !dbg !2432
  br i1 %336, label %342, label %337, !dbg !2433

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !2434
  %339 = inttoptr i64 %338 to i16*, !dbg !2435
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !2436
  %341 = zext i16 %340 to i32, !dbg !2436
  br label %342, !dbg !2437

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !2438
  %344 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %344, metadata !1569, metadata !DIExpression()) #10, !dbg !2442
  %345 = icmp eq i64 %344, 0, !dbg !2443
  br i1 %345, label %350, label %346, !dbg !2444

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !2445
  %348 = inttoptr i64 %347 to i16*, !dbg !2446
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !2447
  br label %350, !dbg !2448

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !2449

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2117, metadata !DIExpression()), !dbg !2450
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2451, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1341, metadata !DIExpression()) #10, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1340, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2123, metadata !DIExpression()), !dbg !2450
  %353 = call i32 @nk_vc_is_active() #11, !dbg !2454
  %354 = icmp eq i32 %353, 0, !dbg !2454
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2455
  %356 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %356, metadata !1593, metadata !DIExpression()) #10, !dbg !2460
  %357 = icmp eq i64 %356, 0, !dbg !2461
  br i1 %357, label %363, label %358, !dbg !2462

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !2463
  %360 = inttoptr i64 %359 to i16*, !dbg !2464
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !2465
  %362 = icmp eq i16 %361, 0, !dbg !2466
  br i1 %362, label %363, label %364, !dbg !2455

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !2455

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !2455
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2455
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !2455
  br i1 %354, label %385, label %369, !dbg !2467

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !2468

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2468
  %372 = load i64, i64* %371, align 32, !dbg !2468
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2468
  %374 = load i8, i8* %373, align 8, !dbg !2468
  %375 = icmp eq i8 %374, 0, !dbg !2468
  br i1 %375, label %376, label %381, !dbg !2468

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2468
  %378 = load i8, i8* %377, align 64, !dbg !2468
  %379 = icmp eq i8 %378, 0, !dbg !2468
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !2468
  br label %381, !dbg !2468

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !2468
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2468
  br label %401, !dbg !2468

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !2469

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2469
  %388 = load i64, i64* %387, align 32, !dbg !2469
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2469
  %390 = load i8, i8* %389, align 8, !dbg !2469
  %391 = icmp eq i8 %390, 0, !dbg !2469
  br i1 %391, label %392, label %397, !dbg !2469

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2469
  %394 = load i8, i8* %393, align 64, !dbg !2469
  %395 = icmp eq i8 %394, 0, !dbg !2469
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !2469
  br label %397, !dbg !2469

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !2469
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2469
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %402, metadata !1613, metadata !DIExpression()) #10, !dbg !2473
  %403 = icmp eq i64 %402, 0, !dbg !2474
  br i1 %403, label %434, label %404, !dbg !2475

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !2476
  %406 = inttoptr i64 %405 to i16*, !dbg !2477
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !2478
  br label %434, !dbg !2479

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2136, metadata !DIExpression()), !dbg !2480
  %409 = call i32 @nk_vc_is_active() #11, !dbg !2481
  %410 = icmp eq i32 %409, 0, !dbg !2481
  %411 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %411, metadata !1593, metadata !DIExpression()) #10, !dbg !2488
  %412 = icmp eq i64 %411, 0, !dbg !2489
  br i1 %412, label %418, label %413, !dbg !2490

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !2491
  %415 = inttoptr i64 %414 to i16*, !dbg !2492
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !2493
  %417 = icmp eq i16 %416, 0, !dbg !2494
  br i1 %417, label %418, label %419, !dbg !2495

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !2495

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !2495
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2495
  br i1 %410, label %425, label %423, !dbg !2496

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2497
  br label %427, !dbg !2497

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #11, !dbg !2499
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #11, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %428, metadata !1613, metadata !DIExpression()) #10, !dbg !2504
  %429 = icmp eq i64 %428, 0, !dbg !2505
  br i1 %429, label %434, label %430, !dbg !2506

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !2507
  %432 = inttoptr i64 %431 to i16*, !dbg !2508
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !2509
  br label %434, !dbg !2510

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !2511
  %436 = load i64, i64* %435, align 8, !dbg !2511
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !2512
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !2513
  store i64 %436, i64* %438, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !2514
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !2515
  store i64 %436, i64* %440, align 8, !dbg !2515
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2116, metadata !DIExpression()), !dbg !2421
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !2517
  store i32 1, i32* %442, align 8, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2116, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1136, metadata !DIExpression()) #10, !dbg !2519
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !2521
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !2521
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !2522
  %446 = load i8*, i8** %445, align 8, !dbg !2522
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !2523
  %448 = load i8**, i8*** %447, align 8, !dbg !2523
  call void %444(i8* %446, i8** %448) #11, !dbg !2524
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #11, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #10, !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #10, !dbg !2526
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !2526
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !2527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8** %1, metadata !2530, metadata !DIExpression()), !dbg !2532
  br label %3, !dbg !2533

; <label>:3:                                      ; preds = %17, %2
  %4 = tail call i32 @nk_fiber_yield() #9, !dbg !2534
  %5 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2536
  %6 = inttoptr i64 %5 to %struct.cpu*, !dbg !2541
  %7 = getelementptr inbounds %struct.cpu, %struct.cpu* %6, i64 0, i32 5, !dbg !2542
  %8 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %7, align 8, !dbg !2542
  %9 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.list_head* %9, metadata !2544, metadata !DIExpression()), !dbg !2548
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i64 0, i32 0, !dbg !2550
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !2547, metadata !DIExpression()), !dbg !2551
  %12 = icmp eq %struct.list_head* %11, %9, !dbg !2552
  br i1 %12, label %13, label %17, !dbg !2553

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %8, i64 0, i32 4, i32 1, !dbg !2554
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !2554
  %16 = icmp eq %struct.list_head* %15, %9, !dbg !2555
  br i1 %16, label %18, label %17, !dbg !2556

; <label>:17:                                     ; preds = %13, %3, %18
  br label %3, !dbg !2534, !llvm.loop !2557

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @nk_sleep(i64 10000000) #11, !dbg !2559
  br label %17, !dbg !2561
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !2562 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !2567, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8** %2, metadata !2569, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 %3, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2571, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2572, metadata !DIExpression()), !dbg !2583
  %6 = icmp eq i64 %3, 0, !dbg !2584
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %7, metadata !2573, metadata !DIExpression()), !dbg !2585
  %8 = tail call i8* @kmem_malloc(i64 152) #11, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %8, metadata !2574, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %8, metadata !2572, metadata !DIExpression()), !dbg !2583
  %9 = icmp eq i8* %8, null, !dbg !2587
  br i1 %9, label %104, label %10, !dbg !2589

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #11, !dbg !2590
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !2591
  %13 = bitcast i8* %12 to i32*, !dbg !2591
  store i32 0, i32* %13, align 4, !dbg !2592
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !2593
  %15 = bitcast i8* %14 to i64*, !dbg !2593
  store i64 %7, i64* %15, align 8, !dbg !2594
  %16 = tail call i8* @kmem_malloc(i64 %7) #11, !dbg !2595
  call void @llvm.dbg.value(metadata i8* %16, metadata !2576, metadata !DIExpression()), !dbg !2595
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !2596
  %18 = bitcast i8* %17 to i8**, !dbg !2596
  store i8* %16, i8** %18, align 8, !dbg !2597
  %19 = icmp eq i8* %16, null, !dbg !2598
  br i1 %19, label %20, label %21, !dbg !2600

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #11, !dbg !2601
  br label %104, !dbg !2603

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !2600
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !2604
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !2604
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !2605
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !2606
  %26 = bitcast i8* %25 to i8**, !dbg !2606
  store i8* %1, i8** %26, align 8, !dbg !2607
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !2608
  %28 = bitcast i8* %27 to i8***, !dbg !2608
  store i8** %2, i8*** %28, align 8, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %8, metadata !1146, metadata !DIExpression()), !dbg !2610
  %29 = load i64, i64* %15, align 8, !dbg !2612
  %30 = bitcast i8* %8 to i64*, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !764, metadata !DIExpression()), !dbg !2616
  %31 = add i64 %22, -8, !dbg !2617
  %32 = add i64 %31, %29, !dbg !2618
  store i64 %32, i64* %30, align 8, !dbg !2618
  %33 = inttoptr i64 %32 to i64*, !dbg !2619
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2623
  %34 = load i64, i64* %30, align 8, !dbg !2624
  %35 = add i64 %34, -8, !dbg !2624
  store i64 %35, i64* %30, align 8, !dbg !2624
  %36 = inttoptr i64 %35 to i64*, !dbg !2625
  store i64 0, i64* %36, align 8, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2629
  %37 = load i64, i64* %30, align 8, !dbg !2630
  %38 = add i64 %37, -8, !dbg !2630
  store i64 %38, i64* %30, align 8, !dbg !2630
  %39 = inttoptr i64 %38 to i64*, !dbg !2631
  store i64 0, i64* %39, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2635
  %40 = load i64, i64* %30, align 8, !dbg !2636
  %41 = add i64 %40, -8, !dbg !2636
  store i64 %41, i64* %30, align 8, !dbg !2636
  %42 = inttoptr i64 %41 to i64*, !dbg !2637
  store i64 0, i64* %42, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2641
  %43 = load i64, i64* %30, align 8, !dbg !2642
  %44 = add i64 %43, -8, !dbg !2642
  store i64 %44, i64* %30, align 8, !dbg !2642
  %45 = inttoptr i64 %44 to i64*, !dbg !2643
  store i64 0, i64* %45, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %8, metadata !763, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2647
  %46 = load i64, i64* %30, align 8, !dbg !2648
  %47 = add i64 %46, -8, !dbg !2648
  store i64 %47, i64* %30, align 8, !dbg !2648
  %48 = inttoptr i64 %47 to i64*, !dbg !2649
  store i64 0, i64* %48, align 8, !dbg !2650
  %49 = ptrtoint i8* %8 to i64, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %49, metadata !764, metadata !DIExpression()), !dbg !2654
  %50 = load i64, i64* %30, align 8, !dbg !2655
  %51 = add i64 %50, -8, !dbg !2655
  store i64 %51, i64* %30, align 8, !dbg !2655
  %52 = inttoptr i64 %51 to i64*, !dbg !2656
  store i64 %49, i64* %52, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2660
  %53 = load i64, i64* %30, align 8, !dbg !2661
  %54 = add i64 %53, -8, !dbg !2661
  store i64 %54, i64* %30, align 8, !dbg !2661
  %55 = inttoptr i64 %54 to i64*, !dbg !2662
  store i64 0, i64* %55, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2666
  %56 = load i64, i64* %30, align 8, !dbg !2667
  %57 = add i64 %56, -8, !dbg !2667
  store i64 %57, i64* %30, align 8, !dbg !2667
  %58 = inttoptr i64 %57 to i64*, !dbg !2668
  store i64 0, i64* %58, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2672
  %59 = load i64, i64* %30, align 8, !dbg !2673
  %60 = add i64 %59, -8, !dbg !2673
  store i64 %60, i64* %30, align 8, !dbg !2673
  %61 = inttoptr i64 %60 to i64*, !dbg !2674
  store i64 0, i64* %61, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2678
  %62 = load i64, i64* %30, align 8, !dbg !2679
  %63 = add i64 %62, -8, !dbg !2679
  store i64 %63, i64* %30, align 8, !dbg !2679
  %64 = inttoptr i64 %63 to i64*, !dbg !2680
  store i64 0, i64* %64, align 8, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2684
  %65 = load i64, i64* %30, align 8, !dbg !2685
  %66 = add i64 %65, -8, !dbg !2685
  store i64 %66, i64* %30, align 8, !dbg !2685
  %67 = inttoptr i64 %66 to i64*, !dbg !2686
  store i64 0, i64* %67, align 8, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2690
  %68 = load i64, i64* %30, align 8, !dbg !2691
  %69 = add i64 %68, -8, !dbg !2691
  store i64 %69, i64* %30, align 8, !dbg !2691
  %70 = inttoptr i64 %69 to i64*, !dbg !2692
  store i64 0, i64* %70, align 8, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2696
  %71 = load i64, i64* %30, align 8, !dbg !2697
  %72 = add i64 %71, -8, !dbg !2697
  store i64 %72, i64* %30, align 8, !dbg !2697
  %73 = inttoptr i64 %72 to i64*, !dbg !2698
  store i64 0, i64* %73, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2702
  %74 = load i64, i64* %30, align 8, !dbg !2703
  %75 = add i64 %74, -8, !dbg !2703
  store i64 %75, i64* %30, align 8, !dbg !2703
  %76 = inttoptr i64 %75 to i64*, !dbg !2704
  store i64 0, i64* %76, align 8, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %49, metadata !763, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i64 0, metadata !764, metadata !DIExpression()), !dbg !2708
  %77 = load i64, i64* %30, align 8, !dbg !2709
  %78 = add i64 %77, -8, !dbg !2709
  store i64 %78, i64* %30, align 8, !dbg !2709
  %79 = inttoptr i64 %78 to i64*, !dbg !2710
  store i64 0, i64* %79, align 8, !dbg !2711
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !2712
  br i1 %80, label %83, label %81, !dbg !2714

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !2715
  store i8* %8, i8** %82, align 8, !dbg !2715
  br label %83, !dbg !2717

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2718, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1341, metadata !DIExpression()) #10, !dbg !2718
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1340, metadata !DIExpression()) #10, !dbg !2720
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !2721
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !2721
  %87 = load i64, i64* %86, align 8, !dbg !2721
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !2722
  %89 = bitcast i8* %88 to i64*, !dbg !2723
  store i64 %87, i64* %89, align 8, !dbg !2723
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %90, metadata !829, metadata !DIExpression()), !dbg !2725
  %91 = bitcast i8* %90 to i8**, !dbg !2727
  store i8* %90, i8** %91, align 8, !dbg !2727
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !2728
  %93 = bitcast i8* %92 to i8**, !dbg !2729
  store i8* %90, i8** %93, align 8, !dbg !2729
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !2730
  %95 = bitcast i8* %94 to i32*, !dbg !2730
  store i32 0, i32* %95, align 8, !dbg !2731
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %96, metadata !829, metadata !DIExpression()), !dbg !2733
  %97 = bitcast i8* %96 to i8**, !dbg !2735
  store i8* %96, i8** %97, align 8, !dbg !2735
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !2736
  %99 = bitcast i8* %98 to i8**, !dbg !2737
  store i8* %96, i8** %99, align 8, !dbg !2737
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %100, metadata !829, metadata !DIExpression()), !dbg !2739
  %101 = bitcast i8* %100 to i8**, !dbg !2741
  store i8* %100, i8** %101, align 8, !dbg !2741
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !2742
  %103 = bitcast i8* %102 to i8**, !dbg !2743
  store i8* %100, i8** %103, align 8, !dbg !2743
  br label %104, !dbg !2744

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !2745
  ret i32 %105, !dbg !2746
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #0 !dbg !2747 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2750
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2755
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2756
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2756
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !2757
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !2757
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2758, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1341, metadata !DIExpression()) #10, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1340, metadata !DIExpression()) #10, !dbg !2760
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !2761
  br i1 %8, label %9, label %54, !dbg !2762

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2763
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !2768
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2769
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2769
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !774, metadata !DIExpression()) #10, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !775, metadata !DIExpression()) #10, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !795, metadata !DIExpression()) #10, !dbg !2773
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !2775
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !2775
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !2776
  br i1 %17, label %30, label %18, !dbg !2777

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !2778
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !2778
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !776, metadata !DIExpression()) #10, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !775, metadata !DIExpression()) #10, !dbg !2772
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !807, metadata !DIExpression()) #10, !dbg !2780
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !2782
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !2782
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !816, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !821, metadata !DIExpression()) #10, !dbg !2786
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !2787
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !2788
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !2789
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !829, metadata !DIExpression()) #10, !dbg !2791
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !2793
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !2793
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !2794
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !775, metadata !DIExpression()) #10, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !2749, metadata !DIExpression()), !dbg !2795
  %29 = icmp eq %struct.list_head** %19, null, !dbg !2796
  br i1 %29, label %30, label %51, !dbg !2798

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2799
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !2805
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !2806
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !2806
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !2807
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !2807
  %37 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2808
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !2812
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !2813
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !2813
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !2814
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !2814
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !2815
  br i1 %43, label %54, label %44, !dbg !2816

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2817
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !2822
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !2823
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !2823
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !2824
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !2749, metadata !DIExpression()), !dbg !2795
  br label %51, !dbg !2825

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !2826
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !2749, metadata !DIExpression()), !dbg !2795
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #9, !dbg !2827
  br label %54, !dbg !2828

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !2826
  ret i32 %55, !dbg !2829
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !2830 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2873
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2832, metadata !DIExpression()), !dbg !2876
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2877
  %5 = icmp eq i64 %4, 0, !dbg !2879
  %6 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %6, metadata !1553, metadata !DIExpression()) #10, !dbg !2883
  %7 = icmp eq i64 %6, 0, !dbg !2884
  br i1 %7, label %13, label %8, !dbg !2885

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !2886
  %10 = inttoptr i64 %9 to i16*, !dbg !2887
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !2888
  %12 = zext i16 %11 to i32, !dbg !2888
  br label %13, !dbg !2889

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !2890
  %15 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %15, metadata !1569, metadata !DIExpression()) #10, !dbg !2894
  %16 = icmp eq i64 %15, 0, !dbg !2895
  br i1 %16, label %21, label %17, !dbg !2896

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !2897
  %19 = inttoptr i64 %18 to i16*, !dbg !2898
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !2899
  br label %21, !dbg !2900

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !2901

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2833, metadata !DIExpression()), !dbg !2902
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !2903, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1341, metadata !DIExpression()) #10, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1340, metadata !DIExpression()) #10, !dbg !2905
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2837, metadata !DIExpression()), !dbg !2902
  %24 = tail call i32 @nk_vc_is_active() #11, !dbg !2906
  %25 = icmp eq i32 %24, 0, !dbg !2906
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2907
  %27 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %27, metadata !1593, metadata !DIExpression()) #10, !dbg !2912
  %28 = icmp eq i64 %27, 0, !dbg !2913
  br i1 %28, label %34, label %29, !dbg !2914

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !2915
  %31 = inttoptr i64 %30 to i16*, !dbg !2916
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !2917
  %33 = icmp eq i16 %32, 0, !dbg !2918
  br i1 %33, label %34, label %35, !dbg !2907

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !2907

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !2907
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2907
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !2907
  br i1 %25, label %58, label %40, !dbg !2919

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !2920

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !2920
  %43 = load i64, i64* %42, align 32, !dbg !2920
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !2920
  %45 = load i8, i8* %44, align 8, !dbg !2920
  %46 = icmp eq i8 %45, 0, !dbg !2920
  br i1 %46, label %47, label %52, !dbg !2920

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !2920
  %49 = load i8, i8* %48, align 64, !dbg !2920
  %50 = icmp eq i8 %49, 0, !dbg !2920
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !2920
  br label %52, !dbg !2920

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !2920
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2920
  %56 = load i32, i32* %55, align 8, !dbg !2920
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #11, !dbg !2920
  br label %76, !dbg !2920

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !2921

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !2921
  %61 = load i64, i64* %60, align 32, !dbg !2921
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !2921
  %63 = load i8, i8* %62, align 8, !dbg !2921
  %64 = icmp eq i8 %63, 0, !dbg !2921
  br i1 %64, label %65, label %70, !dbg !2921

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !2921
  %67 = load i8, i8* %66, align 64, !dbg !2921
  %68 = icmp eq i8 %67, 0, !dbg !2921
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !2921
  br label %70, !dbg !2921

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !2921
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2921
  %74 = load i32, i32* %73, align 8, !dbg !2921
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #11, !dbg !2921
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %77, metadata !1613, metadata !DIExpression()) #10, !dbg !2925
  %78 = icmp eq i64 %77, 0, !dbg !2926
  br i1 %78, label %111, label %79, !dbg !2927

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2928
  %81 = inttoptr i64 %80 to i16*, !dbg !2929
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2930
  br label %111, !dbg !2931

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2850, metadata !DIExpression()), !dbg !2932
  %84 = tail call i32 @nk_vc_is_active() #11, !dbg !2933
  %85 = icmp eq i32 %84, 0, !dbg !2933
  %86 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %86, metadata !1593, metadata !DIExpression()) #10, !dbg !2940
  %87 = icmp eq i64 %86, 0, !dbg !2941
  br i1 %87, label %93, label %88, !dbg !2942

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2943
  %90 = inttoptr i64 %89 to i16*, !dbg !2944
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2945
  %92 = icmp eq i16 %91, 0, !dbg !2946
  br i1 %92, label %93, label %94, !dbg !2947

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2947

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !2947
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2947
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !2947
  %99 = load i32, i32* %98, align 8, !dbg !2947
  br i1 %85, label %102, label %100, !dbg !2948

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !2949
  br label %104, !dbg !2949

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #11, !dbg !2951
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %105, metadata !1613, metadata !DIExpression()) #10, !dbg !2956
  %106 = icmp eq i64 %105, 0, !dbg !2957
  br i1 %106, label %111, label %107, !dbg !2958

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2959
  %109 = inttoptr i64 %108 to i16*, !dbg !2960
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2961
  br label %111, !dbg !2962

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #10, !dbg !2963
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !2994, !srcloc !2995
  call void @llvm.dbg.value(metadata i32 %113, metadata !2971, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i32 %113, metadata !2968, metadata !DIExpression()) #10, !dbg !2996
  call void @llvm.dbg.value(metadata i8** %1, metadata !2966, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2997
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #11, !dbg !2998
  %115 = icmp eq i32 %114, 0, !dbg !2998
  br i1 %115, label %321, label %116, !dbg !2999

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3000
  %118 = icmp eq i64 %117, 0, !dbg !3002
  %119 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %119, metadata !1553, metadata !DIExpression()) #10, !dbg !3006
  %120 = icmp eq i64 %119, 0, !dbg !3007
  br i1 %120, label %126, label %121, !dbg !3008

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3009
  %123 = inttoptr i64 %122 to i16*, !dbg !3010
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3011
  %125 = zext i16 %124 to i32, !dbg !3011
  br label %126, !dbg !3012

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3013
  %128 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %128, metadata !1569, metadata !DIExpression()) #10, !dbg !3017
  %129 = icmp eq i64 %128, 0, !dbg !3018
  br i1 %129, label %134, label %130, !dbg !3019

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3020
  %132 = inttoptr i64 %131 to i16*, !dbg !3021
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3022
  br label %134, !dbg !3023

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3024

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2973, metadata !DIExpression()) #10, !dbg !3025
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3026, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1341, metadata !DIExpression()) #10, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1340, metadata !DIExpression()) #10, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2978, metadata !DIExpression()) #10, !dbg !3025
  %137 = call i32 @nk_vc_is_active() #11, !dbg !3029
  %138 = icmp eq i32 %137, 0, !dbg !3029
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3030
  %140 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %140, metadata !1593, metadata !DIExpression()) #10, !dbg !3035
  %141 = icmp eq i64 %140, 0, !dbg !3036
  br i1 %141, label %147, label %142, !dbg !3037

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3038
  %144 = inttoptr i64 %143 to i16*, !dbg !3039
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3040
  %146 = icmp eq i16 %145, 0, !dbg !3041
  br i1 %146, label %147, label %148, !dbg !3030

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3030

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3030
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3030
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3030
  br i1 %138, label %169, label %153, !dbg !3042

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3043

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3043
  %156 = load i64, i64* %155, align 32, !dbg !3043
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3043
  %158 = load i8, i8* %157, align 8, !dbg !3043
  %159 = icmp eq i8 %158, 0, !dbg !3043
  br i1 %159, label %160, label %165, !dbg !3043

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3043
  %162 = load i8, i8* %161, align 64, !dbg !3043
  %163 = icmp eq i8 %162, 0, !dbg !3043
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3043
  br label %165, !dbg !3043

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3043
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3043
  br label %185, !dbg !3043

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3044

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3044
  %172 = load i64, i64* %171, align 32, !dbg !3044
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3044
  %174 = load i8, i8* %173, align 8, !dbg !3044
  %175 = icmp eq i8 %174, 0, !dbg !3044
  br i1 %175, label %176, label %181, !dbg !3044

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3044
  %178 = load i8, i8* %177, align 64, !dbg !3044
  %179 = icmp eq i8 %178, 0, !dbg !3044
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3044
  br label %181, !dbg !3044

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3044
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3044
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %186, metadata !1613, metadata !DIExpression()) #10, !dbg !3048
  %187 = icmp eq i64 %186, 0, !dbg !3049
  br i1 %187, label %218, label %188, !dbg !3050

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3051
  %190 = inttoptr i64 %189 to i16*, !dbg !3052
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3053
  br label %218, !dbg !3054

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2991, metadata !DIExpression()) #10, !dbg !3055
  %193 = call i32 @nk_vc_is_active() #11, !dbg !3056
  %194 = icmp eq i32 %193, 0, !dbg !3056
  %195 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %195, metadata !1593, metadata !DIExpression()) #10, !dbg !3063
  %196 = icmp eq i64 %195, 0, !dbg !3064
  br i1 %196, label %202, label %197, !dbg !3065

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3066
  %199 = inttoptr i64 %198 to i16*, !dbg !3067
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3068
  %201 = icmp eq i16 %200, 0, !dbg !3069
  br i1 %201, label %202, label %203, !dbg !3070

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3070

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3070
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3070
  br i1 %194, label %209, label %207, !dbg !3071

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3072
  br label %211, !dbg !3072

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #11, !dbg !3074
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %212, metadata !1613, metadata !DIExpression()) #10, !dbg !3079
  %213 = icmp eq i64 %212, 0, !dbg !3080
  br i1 %213, label %218, label %214, !dbg !3081

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3082
  %216 = inttoptr i64 %215 to i16*, !dbg !3083
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3084
  br label %218, !dbg !3085

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3086
  %219 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3087
  %220 = icmp eq i64 %219, 0, !dbg !3089
  %221 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %221, metadata !1553, metadata !DIExpression()) #10, !dbg !3093
  %222 = icmp eq i64 %221, 0, !dbg !3094
  br i1 %222, label %228, label %223, !dbg !3095

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3096
  %225 = inttoptr i64 %224 to i16*, !dbg !3097
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3098
  %227 = zext i16 %226 to i32, !dbg !3098
  br label %228, !dbg !3099

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3100
  %230 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %230, metadata !1569, metadata !DIExpression()) #10, !dbg !3104
  %231 = icmp eq i64 %230, 0, !dbg !3105
  br i1 %231, label %236, label %232, !dbg !3106

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3107
  %234 = inttoptr i64 %233 to i16*, !dbg !3108
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3109
  br label %236, !dbg !3110

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3111

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2852, metadata !DIExpression()), !dbg !3112
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #10, !dbg !3113, !srcloc !1343
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1341, metadata !DIExpression()) #10, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1340, metadata !DIExpression()) #10, !dbg !3115
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2858, metadata !DIExpression()), !dbg !3112
  %239 = call i32 @nk_vc_is_active() #11, !dbg !3116
  %240 = icmp eq i32 %239, 0, !dbg !3116
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #10, !dbg !3117
  %242 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %242, metadata !1593, metadata !DIExpression()) #10, !dbg !3122
  %243 = icmp eq i64 %242, 0, !dbg !3123
  br i1 %243, label %249, label %244, !dbg !3124

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3125
  %246 = inttoptr i64 %245 to i16*, !dbg !3126
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3127
  %248 = icmp eq i16 %247, 0, !dbg !3128
  br i1 %248, label %249, label %250, !dbg !3117

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3117

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3117
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3117
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3117
  br i1 %240, label %271, label %255, !dbg !3129

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3130

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3130
  %258 = load i64, i64* %257, align 32, !dbg !3130
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3130
  %260 = load i8, i8* %259, align 8, !dbg !3130
  %261 = icmp eq i8 %260, 0, !dbg !3130
  br i1 %261, label %262, label %267, !dbg !3130

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3130
  %264 = load i8, i8* %263, align 64, !dbg !3130
  %265 = icmp eq i8 %264, 0, !dbg !3130
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3130
  br label %267, !dbg !3130

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3130
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3130
  br label %287, !dbg !3130

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3131

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3131
  %274 = load i64, i64* %273, align 32, !dbg !3131
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3131
  %276 = load i8, i8* %275, align 8, !dbg !3131
  %277 = icmp eq i8 %276, 0, !dbg !3131
  br i1 %277, label %278, label %283, !dbg !3131

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3131
  %280 = load i8, i8* %279, align 64, !dbg !3131
  %281 = icmp eq i8 %280, 0, !dbg !3131
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3131
  br label %283, !dbg !3131

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3131
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3131
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %288, metadata !1613, metadata !DIExpression()) #10, !dbg !3135
  %289 = icmp eq i64 %288, 0, !dbg !3136
  br i1 %289, label %320, label %290, !dbg !3137

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3138
  %292 = inttoptr i64 %291 to i16*, !dbg !3139
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3140
  br label %320, !dbg !3141

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2871, metadata !DIExpression()), !dbg !3142
  %295 = call i32 @nk_vc_is_active() #11, !dbg !3143
  %296 = icmp eq i32 %295, 0, !dbg !3143
  %297 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %297, metadata !1593, metadata !DIExpression()) #10, !dbg !3150
  %298 = icmp eq i64 %297, 0, !dbg !3151
  br i1 %298, label %304, label %299, !dbg !3152

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3153
  %301 = inttoptr i64 %300 to i16*, !dbg !3154
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3155
  %303 = icmp eq i16 %302, 0, !dbg !3156
  br i1 %303, label %304, label %305, !dbg !3157

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3157

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3157
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3157
  br i1 %296, label %311, label %309, !dbg !3158

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3159
  br label %313, !dbg !3159

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #11, !dbg !3161
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %314, metadata !1613, metadata !DIExpression()) #10, !dbg !3166
  %315 = icmp eq i64 %314, 0, !dbg !3167
  br i1 %315, label %320, label %316, !dbg !3168

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3169
  %318 = inttoptr i64 %317 to i16*, !dbg !3170
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3171
  br label %320, !dbg !3172

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #12, !dbg !3173
  unreachable, !dbg !3173

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #10, !dbg !3086
  ret void, !dbg !3174
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #0 !dbg !3175 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !3179, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8** %2, metadata !3181, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %3, metadata !3182, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8 %4, metadata !3183, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !3184, metadata !DIExpression()), !dbg !3190
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #9, !dbg !3191
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3192
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #9, !dbg !3193
  ret i32 0, !dbg !3194
}

; Function Attrs: noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #0 !dbg !3195 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !3196
  %2 = tail call i32 @nk_fiber_yield() #9, !dbg !3197
  ret i32 %2, !dbg !3198
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3199 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1435, metadata !DIExpression()) #10, !dbg !3206
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #10, !dbg !3208, !srcloc !1456
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1439, metadata !DIExpression()) #10, !dbg !3208
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1437, metadata !DIExpression()) #10, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1436, metadata !DIExpression()) #10, !dbg !3210
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3211
  %4 = load i32, i32* %3, align 8, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %4, metadata !1441, metadata !DIExpression()) #10, !dbg !3212
  call void @llvm.dbg.value(metadata i32 0, metadata !1444, metadata !DIExpression()) #10, !dbg !3213
  %5 = icmp sgt i32 %4, 0, !dbg !3214
  br i1 %5, label %6, label %30, !dbg !3215

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3216
  br label %8, !dbg !3216

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1444, metadata !DIExpression()) #10, !dbg !3213
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3216
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3216
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3217
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3217
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1442, metadata !DIExpression()) #10, !dbg !3219
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1446, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3220
  call void @llvm.dbg.value(metadata i8** %15, metadata !1443, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #10, !dbg !3221
  %16 = load i8*, i8** %15, align 8, !dbg !3222
  br label %17, !dbg !3223

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3222
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3224
  %20 = bitcast i8* %18 to i8**, !dbg !3224
  %21 = load i8*, i8** %20, align 8, !dbg !3224
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #10, !dbg !3224
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3224
  br i1 %22, label %27, label %23, !dbg !3223

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3222
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1443, metadata !DIExpression()) #10, !dbg !3221
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3225
  br i1 %26, label %75, label %17, !dbg !3226, !llvm.loop !1477

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i32 undef, metadata !1444, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !3213
  %29 = icmp slt i64 %28, %7, !dbg !3214
  br i1 %29, label %8, label %30, !dbg !3215, !llvm.loop !1480

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3228
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3233
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3234
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3234
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !774, metadata !DIExpression()) #10, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !775, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !795, metadata !DIExpression()) #10, !dbg !3238
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !3240
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !3240
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !3241
  br i1 %38, label %51, label %39, !dbg !3242

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !776, metadata !DIExpression()) #10, !dbg !3243
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !3243
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !3243
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !776, metadata !DIExpression()) #10, !dbg !3243
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !775, metadata !DIExpression()) #10, !dbg !3237
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !807, metadata !DIExpression()) #10, !dbg !3245
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !3247
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !3247
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !816, metadata !DIExpression()) #10, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !821, metadata !DIExpression()) #10, !dbg !3251
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !3252
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3253
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !3254
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !829, metadata !DIExpression()) #10, !dbg !3256
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3258
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !3258
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !3259
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !775, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3202, metadata !DIExpression()), !dbg !3260
  %50 = icmp eq %struct.list_head** %40, null, !dbg !3261
  br i1 %50, label %51, label %72, !dbg !3263

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3264
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !3270
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !3271
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !3271
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !3272
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !3272
  %58 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3273
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3277
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3278
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3278
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !3279
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !3279
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !3280
  br i1 %64, label %84, label %65, !dbg !3281

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3282
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !3287
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !3288
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !3288
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !3289
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3202, metadata !DIExpression()), !dbg !3260
  br label %72, !dbg !3290

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !3291
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3202, metadata !DIExpression()), !dbg !3260
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #9, !dbg !3292
  br label %84, !dbg !3293

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3294
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !807, metadata !DIExpression()) #10, !dbg !3295
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3297
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !3297
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !3298
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !816, metadata !DIExpression()) #10, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !821, metadata !DIExpression()) #10, !dbg !3301
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !3302
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !3303
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !3304
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !829, metadata !DIExpression()) #10, !dbg !3306
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !3308
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !3309
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #9, !dbg !3310
  br label %84, !dbg !3311

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !3312
  ret i32 %85, !dbg !3313
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3314 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !3322, metadata !DIExpression()), !dbg !3324
  %3 = tail call zeroext i8 %0(i8* %1) #11, !dbg !3325
  %4 = icmp eq i8 %3, 0, !dbg !3325
  br i1 %4, label %7, label %5, !dbg !3327

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @nk_fiber_yield() #9, !dbg !3328
  br label %7, !dbg !3330

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ], !dbg !3331
  ret i32 %8, !dbg !3332
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3333 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %2, metadata !3339, metadata !DIExpression()), !dbg !3342
  %4 = tail call zeroext i8 %1(i8* %2) #11, !dbg !3343
  %5 = icmp eq i8 %4, 0, !dbg !3343
  br i1 %5, label %8, label %6, !dbg !3345

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #9, !dbg !3346
  br label %8, !dbg !3348

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !3349
  ret i32 %9, !dbg !3350
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !3351 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3370
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3374
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3375
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3375
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !3376
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3353, metadata !DIExpression()), !dbg !3377
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3378, !srcloc !3379
  call void @llvm.dbg.value(metadata i64 %8, metadata !3360, metadata !DIExpression()), !dbg !3380
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %9, metadata !3361, metadata !DIExpression()), !dbg !3382
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %10, metadata !3362, metadata !DIExpression()), !dbg !3384
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %11, metadata !3363, metadata !DIExpression()), !dbg !3386
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %12, metadata !3364, metadata !DIExpression()), !dbg !3388
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !3389
  %14 = load i8*, i8** %13, align 8, !dbg !3389
  %15 = icmp ugt i8* %11, %14, !dbg !3391
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !3392
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !3393
  %19 = icmp ult i8* %11, %18, !dbg !3394
  %20 = and i1 %15, %19, !dbg !3395
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !3395
  call void @llvm.dbg.value(metadata i8* %21, metadata !3363, metadata !DIExpression()), !dbg !3386
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %22, metadata !3365, metadata !DIExpression()), !dbg !3397
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !3398
  %24 = ptrtoint i8* %23 to i64, !dbg !3399
  %25 = ptrtoint i8* %12 to i64, !dbg !3399
  %26 = sub i64 %24, %25, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %26, metadata !3354, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !3400
  %27 = ptrtoint i8* %10 to i64, !dbg !3401
  call void @llvm.dbg.value(metadata i64 undef, metadata !3356, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 72, metadata !3357, metadata !DIExpression()), !dbg !3403
  %28 = bitcast i8* %22 to i64*, !dbg !3404
  %29 = load i64, i64* %28, align 8, !dbg !3404
  %30 = sub i64 %29, %25, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %30, metadata !3358, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %17, metadata !3355, metadata !DIExpression()), !dbg !3407
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !3408
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #10, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !3366, metadata !DIExpression(DW_OP_deref)), !dbg !3409
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #9, !dbg !3410
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !3366, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !763, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !764, metadata !DIExpression()), !dbg !3414
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !3415
  %35 = load i64, i64* %34, align 8, !dbg !3416
  %36 = add i64 %35, -8, !dbg !3416
  store i64 %36, i64* %34, align 8, !dbg !3416
  %37 = inttoptr i64 %36 to i64*, !dbg !3417
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !3418
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !3366, metadata !DIExpression()), !dbg !3409
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !3420
  %40 = load i8*, i8** %39, align 8, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %40, metadata !3359, metadata !DIExpression()), !dbg !3421
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !3422
  %42 = sub i64 -16, %26, !dbg !3423
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !3423
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #11, !dbg !3424
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !3425
  %46 = ptrtoint i8* %45 to i64, !dbg !3426
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !3366, metadata !DIExpression()), !dbg !3409
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !3428
  store i64 %46, i64* %48, align 8, !dbg !3429
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !3366, metadata !DIExpression()), !dbg !3409
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !3431
  %51 = load i64, i64* %50, align 8, !dbg !3431
  %52 = add i64 %51, 64, !dbg !3432
  %53 = inttoptr i64 %52 to i8**, !dbg !3433
  call void @llvm.dbg.value(metadata i8** %53, metadata !3367, metadata !DIExpression()), !dbg !3434
  %54 = add i64 %30, %51, !dbg !3435
  %55 = inttoptr i64 %54 to i8*, !dbg !3436
  store i8* %55, i8** %53, align 8, !dbg !3437
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !3366, metadata !DIExpression()), !dbg !3409
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !3439
  %58 = load i64, i64* %57, align 8, !dbg !3439
  %59 = sub i64 8, %25, !dbg !3401
  %60 = add i64 %59, %27, !dbg !3440
  %61 = add i64 %60, %58, !dbg !3441
  %62 = inttoptr i64 %61 to i8**, !dbg !3442
  call void @llvm.dbg.value(metadata i8** %62, metadata !3368, metadata !DIExpression()), !dbg !3443
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !3444
  call void @llvm.dbg.value(metadata i8** %63, metadata !3369, metadata !DIExpression()), !dbg !3445
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !3446
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !3446
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !3366, metadata !DIExpression()), !dbg !3409
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !3448
  %67 = load i64, i64* %66, align 8, !dbg !3448
  %68 = add i64 %67, 112, !dbg !3449
  %69 = inttoptr i64 %68 to i64*, !dbg !3450
  store i64 0, i64* %69, align 8, !dbg !3451
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3366, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !886, metadata !DIExpression()) #10, !dbg !3453
  call void @llvm.dbg.value(metadata i8 0, metadata !891, metadata !DIExpression()) #10, !dbg !3455
  %71 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3456
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !3460
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !892, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #10, !dbg !3461
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !3462
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !3462
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !3462
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !892, metadata !DIExpression()) #10, !dbg !3461
  %77 = call i64 @msr_read(i32 -1073741567) #11, !dbg !3463
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !3467
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !3468
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !3468
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !893, metadata !DIExpression()) #10, !dbg !3470
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !3471
  store i32 1, i32* %82, align 4, !dbg !3472
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !3473
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !957, metadata !DIExpression()) #10, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !960, metadata !DIExpression()) #10, !dbg !3476
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !3477
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !965, metadata !DIExpression()) #10, !dbg !3478
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !970, metadata !DIExpression()) #10, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !971, metadata !DIExpression()) #10, !dbg !3481
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !3482
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !3483
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !3484
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !3485
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !3486
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !3487
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !3488
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !3489
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !3489
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !3490
  br i1 %91, label %94, label %92, !dbg !3491

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #11, !dbg !3492
  br label %94, !dbg !3493

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !3366, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #10, !dbg !3495
  ret %struct.nk_fiber* %95, !dbg !3496
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #8

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3497 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3499, metadata !DIExpression()), !dbg !3502
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !3503
  br i1 %2, label %22, label %3, !dbg !3505

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #11, !dbg !3506
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3510
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3511
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3511
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !3512
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !3500, metadata !DIExpression()), !dbg !3513
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !3514
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !3501, metadata !DIExpression()), !dbg !3515
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !3516
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !957, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !960, metadata !DIExpression()), !dbg !3519
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !3520
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !3520
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !965, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !970, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !971, metadata !DIExpression()), !dbg !3524
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !3525
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !3526
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !3527
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !3528
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !3529
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !3530
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !3531
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !3532
  %18 = load i32, i32* %17, align 8, !dbg !3533
  %19 = add i32 %18, 1, !dbg !3533
  store i32 %19, i32* %17, align 8, !dbg !3533
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !3534
  store i32 3, i32* %20, align 4, !dbg !3535
  %21 = tail call i32 @nk_fiber_yield() #9, !dbg !3536
  br label %22

; <label>:22:                                     ; preds = %1, %3
  %23 = phi i32 [ %21, %3 ], [ -1, %1 ], !dbg !3537
  ret i32 %23, !dbg !3538
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
!553 = !{i32 -2147285328}
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
!608 = !DILocation(line: 62, column: 9, scope: !589)
!609 = distinct !{!609, !604, !610}
!610 = !DILocation(line: 65, column: 3, scope: !589)
!611 = !DILocation(line: 0, scope: !589)
!612 = !DILocation(line: 66, column: 3, scope: !589)
!613 = !DILocation(line: 67, column: 3, scope: !589)
!614 = !DILocation(line: 68, column: 1, scope: !589)
!615 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(name: "i", arg: 1, scope: !615, file: !3, line: 70, type: !31)
!618 = !DILocalVariable(name: "o", arg: 2, scope: !615, file: !3, line: 70, type: !75)
!619 = !DILocalVariable(name: "end", scope: !615, file: !3, line: 72, type: !24)
!620 = !DILocalVariable(name: "a", scope: !615, file: !3, line: 74, type: !7)
!621 = !DILocation(line: 70, column: 29, scope: !615)
!622 = !DILocation(line: 70, column: 39, scope: !615)
!623 = !DILocation(line: 72, column: 19, scope: !615)
!624 = !DILocation(line: 72, column: 13, scope: !615)
!625 = !DILocation(line: 73, column: 19, scope: !615)
!626 = !DILocation(line: 73, column: 3, scope: !615)
!627 = !DILocation(line: 74, column: 16, scope: !615)
!628 = !DILocation(line: 75, column: 3, scope: !615)
!629 = !DILocation(line: 76, column: 13, scope: !615)
!630 = !DILocation(line: 76, column: 11, scope: !615)
!631 = !DILocation(line: 76, column: 3, scope: !615)
!632 = !DILocation(line: 77, column: 52, scope: !633)
!633 = distinct !DILexicalBlock(scope: !615, file: !3, line: 76, column: 18)
!634 = !DILocation(line: 77, column: 5, scope: !633)
!635 = !DILocation(line: 76, column: 9, scope: !615)
!636 = distinct !{!636, !631, !637}
!637 = !DILocation(line: 79, column: 3, scope: !615)
!638 = !DILocation(line: 0, scope: !615)
!639 = !DILocation(line: 80, column: 3, scope: !615)
!640 = !DILocation(line: 81, column: 3, scope: !615)
!641 = !DILocation(line: 82, column: 1, scope: !615)
!642 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "buf", arg: 1, scope: !642, file: !3, line: 127, type: !113)
!645 = !DILocalVariable(name: "priv", arg: 2, scope: !642, file: !3, line: 127, type: !31)
!646 = !DILocation(line: 127, column: 23, scope: !642)
!647 = !DILocation(line: 127, column: 35, scope: !642)
!648 = !DILocation(line: 88, column: 3, scope: !649, inlinedAt: !656)
!649 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!650 = !{!651, !652, !653, !654}
!651 = !DILocalVariable(name: "simple", scope: !649, file: !3, line: 88, type: !511)
!652 = !DILocalVariable(name: "t", scope: !649, file: !3, line: 90, type: !25)
!653 = !DILocalVariable(name: "f_input", scope: !649, file: !3, line: 92, type: !24)
!654 = !DILocalVariable(name: "p", scope: !655, file: !3, line: 92, type: !31)
!655 = distinct !DILexicalBlock(scope: !649, file: !3, line: 92, column: 23)
!656 = distinct !DILocation(line: 129, column: 3, scope: !642)
!657 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !658)
!658 = distinct !DILocation(line: 89, column: 8, scope: !649, inlinedAt: !656)
!659 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !658)
!660 = !DILocation(line: 89, column: 26, scope: !649, inlinedAt: !656)
!661 = !DILocation(line: 89, column: 6, scope: !649, inlinedAt: !656)
!662 = !DILocation(line: 90, column: 3, scope: !649, inlinedAt: !656)
!663 = !DILocation(line: 91, column: 3, scope: !649, inlinedAt: !656)
!664 = !DILocation(line: 92, column: 23, scope: !655, inlinedAt: !656)
!665 = !DILocation(line: 93, column: 8, scope: !666, inlinedAt: !656)
!666 = distinct !DILexicalBlock(scope: !649, file: !3, line: 93, column: 7)
!667 = !DILocation(line: 93, column: 7, scope: !649, inlinedAt: !656)
!668 = !DILocation(line: 94, column: 5, scope: !669, inlinedAt: !656)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 93, column: 17)
!670 = !DILocation(line: 95, column: 5, scope: !669, inlinedAt: !656)
!671 = !DILocation(line: 92, column: 23, scope: !649, inlinedAt: !656)
!672 = !DILocation(line: 92, column: 13, scope: !649, inlinedAt: !656)
!673 = !DILocation(line: 97, column: 14, scope: !649, inlinedAt: !656)
!674 = !DILocation(line: 90, column: 12, scope: !649, inlinedAt: !656)
!675 = !DILocation(line: 97, column: 16, scope: !649, inlinedAt: !656)
!676 = !DILocation(line: 97, column: 12, scope: !649, inlinedAt: !656)
!677 = !DILocation(line: 88, column: 15, scope: !649, inlinedAt: !656)
!678 = !DILocation(line: 98, column: 3, scope: !649, inlinedAt: !656)
!679 = !DILocation(line: 99, column: 3, scope: !649, inlinedAt: !656)
!680 = !DILocation(line: 100, column: 1, scope: !649, inlinedAt: !656)
!681 = !DILocation(line: 130, column: 3, scope: !642)
!682 = !DILocation(line: 88, column: 3, scope: !649)
!683 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !684)
!684 = distinct !DILocation(line: 89, column: 8, scope: !649)
!685 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !684)
!686 = !DILocation(line: 89, column: 26, scope: !649)
!687 = !DILocation(line: 89, column: 6, scope: !649)
!688 = !DILocation(line: 90, column: 3, scope: !649)
!689 = !DILocation(line: 91, column: 3, scope: !649)
!690 = !DILocation(line: 92, column: 23, scope: !655)
!691 = !DILocation(line: 93, column: 8, scope: !666)
!692 = !DILocation(line: 93, column: 7, scope: !649)
!693 = !DILocation(line: 94, column: 5, scope: !669)
!694 = !DILocation(line: 95, column: 5, scope: !669)
!695 = !DILocation(line: 92, column: 23, scope: !649)
!696 = !DILocation(line: 92, column: 13, scope: !649)
!697 = !DILocation(line: 97, column: 14, scope: !649)
!698 = !DILocation(line: 90, column: 12, scope: !649)
!699 = !DILocation(line: 97, column: 16, scope: !649)
!700 = !DILocation(line: 97, column: 12, scope: !649)
!701 = !DILocation(line: 88, column: 15, scope: !649)
!702 = !DILocation(line: 98, column: 3, scope: !649)
!703 = !DILocation(line: 99, column: 3, scope: !649)
!704 = !DILocation(line: 0, scope: !649)
!705 = !DILocation(line: 100, column: 1, scope: !649)
!706 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !707, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!707 = !DISubroutineType(types: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!711 = !{}
!712 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !717)
!713 = distinct !DISubprogram(name: "get_cpu", scope: !714, file: !714, line: 127, type: !715, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!714 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!715 = !DISubroutineType(types: !716)
!716 = !{!270}
!717 = distinct !DILocation(line: 78, column: 10, scope: !706)
!718 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !717)
!719 = !DILocation(line: 78, column: 21, scope: !706)
!720 = !DILocation(line: 78, column: 3, scope: !706)
!721 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !722, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!722 = !DISubroutineType(types: !723)
!723 = !{!240}
!724 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !725)
!725 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !726)
!726 = distinct !DILocation(line: 85, column: 10, scope: !721)
!727 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !725)
!728 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !726)
!729 = !DILocation(line: 85, column: 30, scope: !721)
!730 = !DILocation(line: 85, column: 3, scope: !721)
!731 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !722, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!732 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !733)
!733 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !734)
!734 = distinct !DILocation(line: 92, column: 10, scope: !731)
!735 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !733)
!736 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !734)
!737 = !DILocation(line: 92, column: 30, scope: !731)
!738 = !DILocation(line: 92, column: 3, scope: !731)
!739 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !740, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!740 = !DISubroutineType(types: !741)
!741 = !{!285}
!742 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !743)
!743 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !744)
!744 = distinct !DILocation(line: 98, column: 10, scope: !739)
!745 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !743)
!746 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !744)
!747 = !DILocation(line: 98, column: 30, scope: !739)
!748 = !DILocation(line: 98, column: 3, scope: !739)
!749 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !750, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!750 = !DISubroutineType(types: !751)
!751 = !{!150}
!752 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !753)
!753 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !754)
!754 = distinct !DILocation(line: 105, column: 12, scope: !749)
!755 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !753)
!756 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !754)
!757 = !DILocation(line: 105, column: 32, scope: !749)
!758 = !DILocation(line: 105, column: 3, scope: !749)
!759 = distinct !DISubprogram(name: "_fiber_push", scope: !124, file: !124, line: 113, type: !760, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !240, !25}
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "f", arg: 1, scope: !759, file: !124, line: 113, type: !240)
!764 = !DILocalVariable(name: "x", arg: 2, scope: !759, file: !124, line: 113, type: !25)
!765 = !DILocation(line: 113, column: 31, scope: !759)
!766 = !DILocation(line: 113, column: 43, scope: !759)
!767 = !DILocation(line: 115, column: 8, scope: !759)
!768 = !DILocation(line: 115, column: 12, scope: !759)
!769 = !DILocation(line: 116, column: 6, scope: !759)
!770 = !DILocation(line: 116, column: 26, scope: !759)
!771 = !DILocation(line: 117, column: 1, scope: !759)
!772 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !722, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !773)
!773 = !{!774, !775, !776, !780}
!774 = !DILocalVariable(name: "fiber_sched_queue", scope: !772, file: !124, line: 122, type: !150)
!775 = !DILocalVariable(name: "fiber_to_schedule", scope: !772, file: !124, line: 125, type: !240)
!776 = !DILocalVariable(name: "first", scope: !777, file: !124, line: 128, type: !240)
!777 = distinct !DILexicalBlock(scope: !778, file: !124, line: 128, column: 25)
!778 = distinct !DILexicalBlock(scope: !779, file: !124, line: 126, column: 40)
!779 = distinct !DILexicalBlock(scope: !772, file: !124, line: 126, column: 7)
!780 = !DILocalVariable(name: "__mptr", scope: !781, file: !124, line: 128, type: !784)
!781 = distinct !DILexicalBlock(scope: !782, file: !124, line: 128, column: 25)
!782 = distinct !DILexicalBlock(scope: !783, file: !124, line: 128, column: 25)
!783 = distinct !DILexicalBlock(scope: !777, file: !124, line: 128, column: 25)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!786 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !787)
!787 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !788)
!788 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !789)
!789 = distinct !DILocation(line: 122, column: 41, scope: !772)
!790 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !787)
!791 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !788)
!792 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !789)
!793 = !DILocation(line: 122, column: 21, scope: !772)
!794 = !DILocation(line: 125, column: 15, scope: !772)
!795 = !DILocalVariable(name: "head", arg: 1, scope: !796, file: !53, line: 184, type: !784)
!796 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !797, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!48, !784}
!799 = !{!795}
!800 = !DILocation(line: 184, column: 54, scope: !796, inlinedAt: !801)
!801 = distinct !DILocation(line: 126, column: 9, scope: !779)
!802 = !DILocation(line: 186, column: 15, scope: !796, inlinedAt: !801)
!803 = !DILocation(line: 186, column: 20, scope: !796, inlinedAt: !801)
!804 = !DILocation(line: 126, column: 7, scope: !772)
!805 = !DILocation(line: 128, column: 25, scope: !777)
!806 = !DILocation(line: 131, column: 40, scope: !778)
!807 = !DILocalVariable(name: "entry", arg: 1, scope: !808, file: !53, line: 151, type: !150)
!808 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !809, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !150}
!811 = !{!807}
!812 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !813)
!813 = distinct !DILocation(line: 131, column: 5, scope: !778)
!814 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !813)
!815 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !813)
!816 = !DILocalVariable(name: "prev", arg: 1, scope: !817, file: !53, line: 128, type: !150)
!817 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !818, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !150, !150}
!820 = !{!816, !821}
!821 = !DILocalVariable(name: "next", arg: 2, scope: !817, file: !53, line: 128, type: !150)
!822 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !823)
!823 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !813)
!824 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !823)
!825 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !823)
!826 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !823)
!827 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !823)
!828 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !823)
!829 = !DILocalVariable(name: "list", arg: 1, scope: !830, file: !53, line: 73, type: !150)
!830 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !809, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !831)
!831 = !{!829}
!832 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !833)
!833 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !813)
!834 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !833)
!835 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !833)
!836 = !DILocation(line: 132, column: 3, scope: !778)
!837 = !DILocation(line: 0, scope: !772)
!838 = !DILocation(line: 139, column: 3, scope: !772)
!839 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !840, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !240}
!842 = !{!843, !844, !845, !846, !847, !850}
!843 = !DILocalVariable(name: "f", arg: 1, scope: !839, file: !124, line: 144, type: !240)
!844 = !DILocalVariable(name: "next", scope: !839, file: !124, line: 149, type: !240)
!845 = !DILocalVariable(name: "temp", scope: !839, file: !124, line: 155, type: !240)
!846 = !DILocalVariable(name: "waitq", scope: !839, file: !124, line: 156, type: !150)
!847 = !DILocalVariable(name: "first", scope: !848, file: !124, line: 163, type: !240)
!848 = distinct !DILexicalBlock(scope: !849, file: !124, line: 163, column: 12)
!849 = distinct !DILexicalBlock(scope: !839, file: !124, line: 160, column: 25)
!850 = !DILocalVariable(name: "__mptr", scope: !851, file: !124, line: 163, type: !784)
!851 = distinct !DILexicalBlock(scope: !852, file: !124, line: 163, column: 12)
!852 = distinct !DILexicalBlock(scope: !853, file: !124, line: 163, column: 12)
!853 = distinct !DILexicalBlock(scope: !848, file: !124, line: 163, column: 12)
!854 = !DILocation(line: 144, column: 33, scope: !839)
!855 = !DILocation(line: 147, column: 6, scope: !839)
!856 = !DILocation(line: 147, column: 15, scope: !839)
!857 = !DILocation(line: 149, column: 15, scope: !839)
!858 = !DILocation(line: 156, column: 34, scope: !839)
!859 = !DILocation(line: 156, column: 21, scope: !839)
!860 = !DILocation(line: 160, column: 12, scope: !839)
!861 = !DILocation(line: 160, column: 21, scope: !839)
!862 = !DILocation(line: 160, column: 3, scope: !839)
!863 = !DILocation(line: 163, column: 12, scope: !848)
!864 = !DILocation(line: 163, column: 12, scope: !853)
!865 = !DILocation(line: 155, column: 15, scope: !839)
!866 = !DILocation(line: 164, column: 27, scope: !849)
!867 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !868)
!868 = distinct !DILocation(line: 164, column: 5, scope: !849)
!869 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !868)
!870 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !868)
!871 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !872)
!872 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !868)
!873 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !872)
!874 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !872)
!875 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !872)
!876 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !872)
!877 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !872)
!878 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !879)
!879 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !868)
!880 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !879)
!881 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !879)
!882 = !DILocation(line: 165, column: 16, scope: !849)
!883 = !DILocation(line: 168, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !849, file: !124, line: 168, column: 9)
!885 = !DILocation(line: 168, column: 9, scope: !849)
!886 = !DILocalVariable(name: "f", arg: 1, scope: !887, file: !124, line: 663, type: !240)
!887 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !888, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!48, !240, !29}
!890 = !{!886, !891, !892, !893}
!891 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !887, file: !124, line: 663, type: !29)
!892 = !DILocalVariable(name: "curr_thread", scope: !887, file: !124, line: 666, type: !285)
!893 = !DILocalVariable(name: "fiber_sched_queue", scope: !887, file: !124, line: 674, type: !150)
!894 = !DILocation(line: 663, column: 30, scope: !887, inlinedAt: !895)
!895 = distinct !DILocation(line: 171, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !884, file: !124, line: 168, column: 14)
!897 = !DILocation(line: 663, column: 41, scope: !887, inlinedAt: !895)
!898 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !899)
!899 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !900)
!900 = distinct !DILocation(line: 98, column: 10, scope: !739, inlinedAt: !901)
!901 = distinct !DILocation(line: 666, column: 30, scope: !887, inlinedAt: !895)
!902 = !DILocation(line: 666, column: 16, scope: !887, inlinedAt: !895)
!903 = !DILocation(line: 366, column: 29, scope: !904, inlinedAt: !911)
!904 = distinct !DILexicalBlock(scope: !905, file: !124, line: 366, column: 29)
!905 = distinct !DILexicalBlock(scope: !906, file: !124, line: 366, column: 29)
!906 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !907)
!907 = !{!908, !909, !910}
!908 = !DILocalVariable(name: "sys", scope: !906, file: !124, line: 366, type: !264)
!909 = !DILocalVariable(name: "__r", scope: !905, file: !124, line: 366, type: !264)
!910 = !DILocalVariable(name: "__r", scope: !904, file: !124, line: 366, type: !264)
!911 = distinct !DILocation(line: 373, column: 20, scope: !912, inlinedAt: !920)
!912 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !740, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !913)
!913 = !{!914, !915, !916, !918}
!914 = !DILocalVariable(name: "random_cpu", scope: !912, file: !124, line: 373, type: !48)
!915 = !DILocalVariable(name: "sys", scope: !912, file: !124, line: 374, type: !264)
!916 = !DILocalVariable(name: "__r", scope: !917, file: !124, line: 374, type: !264)
!917 = distinct !DILexicalBlock(scope: !912, file: !124, line: 374, column: 27)
!918 = !DILocalVariable(name: "__r", scope: !919, file: !124, line: 374, type: !264)
!919 = distinct !DILexicalBlock(scope: !917, file: !124, line: 374, column: 27)
!920 = distinct !DILocation(line: 670, column: 19, scope: !921, inlinedAt: !895)
!921 = distinct !DILexicalBlock(scope: !922, file: !124, line: 669, column: 23)
!922 = distinct !DILexicalBlock(scope: !887, file: !124, line: 669, column: 7)
!923 = !{i32 -2147185111}
!924 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !911)
!925 = !DILocation(line: 366, column: 23, scope: !906, inlinedAt: !911)
!926 = !DILocation(line: 358, column: 5, scope: !927, inlinedAt: !932)
!927 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !928, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!25}
!930 = !{!931}
!931 = !DILocalVariable(name: "t", scope: !927, file: !124, line: 358, type: !25)
!932 = distinct !DILocation(line: 367, column: 18, scope: !906, inlinedAt: !911)
!933 = !DILocation(line: 359, column: 5, scope: !927, inlinedAt: !932)
!934 = !DILocation(line: 360, column: 12, scope: !927, inlinedAt: !932)
!935 = !DILocation(line: 358, column: 14, scope: !927, inlinedAt: !932)
!936 = !DILocation(line: 361, column: 1, scope: !927, inlinedAt: !932)
!937 = !DILocation(line: 367, column: 39, scope: !906, inlinedAt: !911)
!938 = !DILocation(line: 367, column: 34, scope: !906, inlinedAt: !911)
!939 = !DILocation(line: 367, column: 32, scope: !906, inlinedAt: !911)
!940 = !DILocation(line: 374, column: 27, scope: !919, inlinedAt: !920)
!941 = !{i32 -2147182110}
!942 = !DILocation(line: 374, column: 27, scope: !917, inlinedAt: !920)
!943 = !DILocation(line: 374, column: 21, scope: !912, inlinedAt: !920)
!944 = !DILocation(line: 375, column: 10, scope: !912, inlinedAt: !920)
!945 = !DILocation(line: 0, scope: !887, inlinedAt: !895)
!946 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !947)
!947 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !948)
!948 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !949)
!949 = distinct !DILocation(line: 674, column: 41, scope: !887, inlinedAt: !895)
!950 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !947)
!951 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !948)
!952 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !949)
!953 = !DILocation(line: 674, column: 21, scope: !887, inlinedAt: !895)
!954 = !DILocation(line: 678, column: 6, scope: !887, inlinedAt: !895)
!955 = !DILocation(line: 678, column: 15, scope: !887, inlinedAt: !895)
!956 = !DILocation(line: 679, column: 22, scope: !887, inlinedAt: !895)
!957 = !DILocalVariable(name: "nelm", arg: 1, scope: !958, file: !53, line: 116, type: !150)
!958 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !818, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !959)
!959 = !{!957, !960}
!960 = !DILocalVariable(name: "head", arg: 2, scope: !958, file: !53, line: 116, type: !150)
!961 = !DILocation(line: 116, column: 52, scope: !958, inlinedAt: !962)
!962 = distinct !DILocation(line: 679, column: 3, scope: !887, inlinedAt: !895)
!963 = !DILocation(line: 116, column: 76, scope: !958, inlinedAt: !962)
!964 = !DILocation(line: 118, column: 25, scope: !958, inlinedAt: !962)
!965 = !DILocalVariable(name: "nelm", arg: 1, scope: !966, file: !53, line: 85, type: !150)
!966 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !967, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !150, !150, !150}
!969 = !{!965, !970, !971}
!970 = !DILocalVariable(name: "prev", arg: 2, scope: !966, file: !53, line: 86, type: !150)
!971 = !DILocalVariable(name: "next", arg: 3, scope: !966, file: !53, line: 87, type: !150)
!972 = !DILocation(line: 85, column: 49, scope: !966, inlinedAt: !973)
!973 = distinct !DILocation(line: 118, column: 2, scope: !958, inlinedAt: !962)
!974 = !DILocation(line: 86, column: 28, scope: !966, inlinedAt: !973)
!975 = !DILocation(line: 87, column: 28, scope: !966, inlinedAt: !973)
!976 = !DILocation(line: 89, column: 13, scope: !966, inlinedAt: !973)
!977 = !DILocation(line: 90, column: 8, scope: !966, inlinedAt: !973)
!978 = !DILocation(line: 90, column: 13, scope: !966, inlinedAt: !973)
!979 = !DILocation(line: 91, column: 8, scope: !966, inlinedAt: !973)
!980 = !DILocation(line: 91, column: 13, scope: !966, inlinedAt: !973)
!981 = !DILocation(line: 92, column: 8, scope: !966, inlinedAt: !973)
!982 = !DILocation(line: 92, column: 13, scope: !966, inlinedAt: !973)
!983 = !DILocation(line: 683, column: 20, scope: !984, inlinedAt: !895)
!984 = distinct !DILexicalBlock(scope: !887, file: !124, line: 683, column: 7)
!985 = !DILocation(line: 683, column: 7, scope: !984, inlinedAt: !895)
!986 = !DILocation(line: 683, column: 7, scope: !887, inlinedAt: !895)
!987 = !DILocation(line: 687, column: 5, scope: !988, inlinedAt: !895)
!988 = distinct !DILexicalBlock(scope: !984, file: !124, line: 683, column: 26)
!989 = !DILocation(line: 688, column: 3, scope: !988, inlinedAt: !895)
!990 = distinct !{!990, !862, !991}
!991 = !DILocation(line: 173, column: 3, scope: !839)
!992 = !DILocation(line: 175, column: 6, scope: !839)
!993 = !DILocation(line: 175, column: 14, scope: !839)
!994 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !995)
!995 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !996)
!996 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !997)
!997 = distinct !DILocation(line: 122, column: 41, scope: !772, inlinedAt: !998)
!998 = distinct !DILocation(line: 179, column: 10, scope: !839)
!999 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !995)
!1000 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !996)
!1001 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !997)
!1002 = !DILocation(line: 122, column: 21, scope: !772, inlinedAt: !998)
!1003 = !DILocation(line: 125, column: 15, scope: !772, inlinedAt: !998)
!1004 = !DILocation(line: 184, column: 54, scope: !796, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 126, column: 9, scope: !779, inlinedAt: !998)
!1006 = !DILocation(line: 186, column: 15, scope: !796, inlinedAt: !1005)
!1007 = !DILocation(line: 186, column: 20, scope: !796, inlinedAt: !1005)
!1008 = !DILocation(line: 126, column: 7, scope: !772, inlinedAt: !998)
!1009 = !DILocation(line: 128, column: 25, scope: !777, inlinedAt: !998)
!1010 = !DILocation(line: 131, column: 40, scope: !778, inlinedAt: !998)
!1011 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 131, column: 5, scope: !778, inlinedAt: !998)
!1013 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !1012)
!1014 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !1012)
!1015 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !1012)
!1017 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !1016)
!1018 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !1016)
!1019 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !1016)
!1020 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !1016)
!1021 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !1016)
!1022 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !1012)
!1024 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !1023)
!1025 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !1023)
!1026 = !DILocation(line: 180, column: 8, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !839, file: !124, line: 180, column: 7)
!1028 = !DILocation(line: 180, column: 7, scope: !839)
!1029 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 181, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !124, line: 180, column: 16)
!1034 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1030)
!1035 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1031)
!1036 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !1032)
!1037 = !DILocation(line: 182, column: 3, scope: !1033)
!1038 = !DILocation(line: 0, scope: !839)
!1039 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 183, column: 3, scope: !839)
!1042 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1040)
!1043 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1041)
!1044 = !DILocation(line: 183, column: 23, scope: !839)
!1045 = !DILocation(line: 183, column: 34, scope: !839)
!1046 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 186, column: 19, scope: !839)
!1049 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1047)
!1050 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1048)
!1051 = !DILocation(line: 186, column: 39, scope: !839)
!1052 = !DILocation(line: 186, column: 51, scope: !839)
!1053 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 186, column: 3, scope: !839)
!1055 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !1054)
!1056 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !1054)
!1057 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !1054)
!1059 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !1058)
!1060 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !1058)
!1061 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !1058)
!1062 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !1058)
!1063 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !1058)
!1064 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !1054)
!1066 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !1065)
!1067 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !1065)
!1068 = !DILocation(line: 189, column: 3, scope: !839)
!1069 = !DILocation(line: 190, column: 3, scope: !839)
!1070 = !DILocation(line: 193, column: 3, scope: !839)
!1071 = !DILocation(line: 196, column: 1, scope: !839)
!1072 = !DILocation(line: 663, column: 30, scope: !887)
!1073 = !DILocation(line: 663, column: 41, scope: !887)
!1074 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 98, column: 10, scope: !739, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 666, column: 30, scope: !887)
!1078 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1075)
!1079 = !DILocation(line: 666, column: 16, scope: !887)
!1080 = !DILocation(line: 669, column: 7, scope: !922)
!1081 = !DILocation(line: 669, column: 7, scope: !887)
!1082 = !DILocation(line: 366, column: 29, scope: !904, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 373, column: 20, scope: !912, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 670, column: 19, scope: !921)
!1085 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !1083)
!1086 = !DILocation(line: 366, column: 23, scope: !906, inlinedAt: !1083)
!1087 = !DILocation(line: 358, column: 5, scope: !927, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 367, column: 18, scope: !906, inlinedAt: !1083)
!1089 = !DILocation(line: 359, column: 5, scope: !927, inlinedAt: !1088)
!1090 = !DILocation(line: 360, column: 12, scope: !927, inlinedAt: !1088)
!1091 = !DILocation(line: 358, column: 14, scope: !927, inlinedAt: !1088)
!1092 = !DILocation(line: 361, column: 1, scope: !927, inlinedAt: !1088)
!1093 = !DILocation(line: 367, column: 39, scope: !906, inlinedAt: !1083)
!1094 = !DILocation(line: 367, column: 34, scope: !906, inlinedAt: !1083)
!1095 = !DILocation(line: 367, column: 32, scope: !906, inlinedAt: !1083)
!1096 = !DILocation(line: 374, column: 27, scope: !919, inlinedAt: !1084)
!1097 = !DILocation(line: 374, column: 27, scope: !917, inlinedAt: !1084)
!1098 = !DILocation(line: 374, column: 21, scope: !912, inlinedAt: !1084)
!1099 = !DILocation(line: 375, column: 10, scope: !912, inlinedAt: !1084)
!1100 = !DILocation(line: 671, column: 3, scope: !921)
!1101 = !DILocation(line: 0, scope: !887)
!1102 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 674, column: 41, scope: !887)
!1106 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1103)
!1107 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1104)
!1108 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !1105)
!1109 = !DILocation(line: 674, column: 21, scope: !887)
!1110 = !DILocation(line: 678, column: 6, scope: !887)
!1111 = !DILocation(line: 678, column: 15, scope: !887)
!1112 = !DILocation(line: 679, column: 22, scope: !887)
!1113 = !DILocation(line: 116, column: 52, scope: !958, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 679, column: 3, scope: !887)
!1115 = !DILocation(line: 116, column: 76, scope: !958, inlinedAt: !1114)
!1116 = !DILocation(line: 118, column: 25, scope: !958, inlinedAt: !1114)
!1117 = !DILocation(line: 85, column: 49, scope: !966, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 118, column: 2, scope: !958, inlinedAt: !1114)
!1119 = !DILocation(line: 86, column: 28, scope: !966, inlinedAt: !1118)
!1120 = !DILocation(line: 87, column: 28, scope: !966, inlinedAt: !1118)
!1121 = !DILocation(line: 89, column: 13, scope: !966, inlinedAt: !1118)
!1122 = !DILocation(line: 90, column: 8, scope: !966, inlinedAt: !1118)
!1123 = !DILocation(line: 90, column: 13, scope: !966, inlinedAt: !1118)
!1124 = !DILocation(line: 91, column: 8, scope: !966, inlinedAt: !1118)
!1125 = !DILocation(line: 91, column: 13, scope: !966, inlinedAt: !1118)
!1126 = !DILocation(line: 92, column: 8, scope: !966, inlinedAt: !1118)
!1127 = !DILocation(line: 92, column: 13, scope: !966, inlinedAt: !1118)
!1128 = !DILocation(line: 683, column: 20, scope: !984)
!1129 = !DILocation(line: 683, column: 7, scope: !984)
!1130 = !DILocation(line: 683, column: 7, scope: !887)
!1131 = !DILocation(line: 687, column: 5, scope: !988)
!1132 = !DILocation(line: 688, column: 3, scope: !988)
!1133 = !DILocation(line: 690, column: 3, scope: !887)
!1134 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !840, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1135)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "f_to", arg: 1, scope: !1134, file: !124, line: 198, type: !240)
!1137 = !DILocation(line: 198, column: 33, scope: !1134)
!1138 = !DILocation(line: 202, column: 9, scope: !1134)
!1139 = !DILocation(line: 202, column: 19, scope: !1134)
!1140 = !DILocation(line: 202, column: 32, scope: !1134)
!1141 = !DILocation(line: 202, column: 3, scope: !1134)
!1142 = !DILocation(line: 208, column: 3, scope: !1134)
!1143 = !DILocation(line: 210, column: 3, scope: !1134)
!1144 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !124, file: !124, line: 274, type: !840, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1145)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "f", arg: 1, scope: !1144, file: !124, line: 274, type: !240)
!1147 = !DILocation(line: 274, column: 33, scope: !1144)
!1148 = !DILocation(line: 276, column: 26, scope: !1144)
!1149 = !DILocation(line: 276, column: 37, scope: !1144)
!1150 = !DILocation(line: 276, column: 6, scope: !1144)
!1151 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 277, column: 3, scope: !1144)
!1153 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1152)
!1154 = !DILocation(line: 276, column: 32, scope: !1144)
!1155 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1152)
!1156 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1152)
!1157 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1152)
!1158 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 278, column: 3, scope: !1144)
!1160 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1159)
!1161 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1159)
!1162 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1159)
!1163 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1159)
!1164 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 279, column: 3, scope: !1144)
!1166 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1165)
!1167 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1165)
!1168 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1165)
!1169 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1165)
!1170 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 280, column: 3, scope: !1144)
!1172 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1171)
!1173 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1171)
!1174 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1171)
!1175 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1171)
!1176 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 281, column: 3, scope: !1144)
!1178 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1177)
!1179 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1177)
!1180 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1177)
!1181 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1177)
!1182 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 282, column: 3, scope: !1144)
!1184 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1183)
!1185 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1183)
!1186 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1183)
!1187 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1183)
!1188 = !DILocation(line: 283, column: 18, scope: !1144)
!1189 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 283, column: 3, scope: !1144)
!1191 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1190)
!1192 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1190)
!1193 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1190)
!1194 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1190)
!1195 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 284, column: 3, scope: !1144)
!1197 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1196)
!1198 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1196)
!1199 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1196)
!1200 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1196)
!1201 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 285, column: 3, scope: !1144)
!1203 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1202)
!1204 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1202)
!1205 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1202)
!1206 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1202)
!1207 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 286, column: 3, scope: !1144)
!1209 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1208)
!1210 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1208)
!1211 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1208)
!1212 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1208)
!1213 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 287, column: 3, scope: !1144)
!1215 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1214)
!1216 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1214)
!1217 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1214)
!1218 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1214)
!1219 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 288, column: 3, scope: !1144)
!1221 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1220)
!1222 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1220)
!1223 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1220)
!1224 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1220)
!1225 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 289, column: 3, scope: !1144)
!1227 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1226)
!1228 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1226)
!1229 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1226)
!1230 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1226)
!1231 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 290, column: 3, scope: !1144)
!1233 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1232)
!1234 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1232)
!1235 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1232)
!1236 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1232)
!1237 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 291, column: 3, scope: !1144)
!1239 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1238)
!1240 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1238)
!1241 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1238)
!1242 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1238)
!1243 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 292, column: 3, scope: !1144)
!1245 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !1244)
!1246 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !1244)
!1247 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !1244)
!1248 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !1244)
!1249 = !DILocation(line: 294, column: 3, scope: !1144)
!1250 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !1251, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1253)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!48, !240}
!1253 = !{!1254, !1255, !1256}
!1254 = !DILocalVariable(name: "f_to", arg: 1, scope: !1250, file: !124, line: 299, type: !240)
!1255 = !DILocalVariable(name: "f_from", scope: !1250, file: !124, line: 302, type: !240)
!1256 = !DILocalVariable(name: "fiber_sched_queue", scope: !1257, file: !124, line: 312, type: !150)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !124, line: 310, column: 63)
!1258 = distinct !DILexicalBlock(scope: !1250, file: !124, line: 310, column: 7)
!1259 = !DILocation(line: 299, column: 36, scope: !1250)
!1260 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 302, column: 24, scope: !1250)
!1264 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1261)
!1265 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1262)
!1266 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !1263)
!1267 = !DILocation(line: 302, column: 15, scope: !1250)
!1268 = !DILocation(line: 305, column: 15, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1250, file: !124, line: 305, column: 7)
!1270 = !DILocation(line: 305, column: 32, scope: !1269)
!1271 = !DILocation(line: 306, column: 22, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !124, line: 305, column: 61)
!1273 = !DILocation(line: 307, column: 3, scope: !1272)
!1274 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 310, column: 17, scope: !1258)
!1278 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1275)
!1279 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1276)
!1280 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !1277)
!1281 = !DILocation(line: 310, column: 14, scope: !1258)
!1282 = !DILocation(line: 310, column: 34, scope: !1258)
!1283 = !DILocation(line: 310, column: 45, scope: !1258)
!1284 = !DILocation(line: 310, column: 54, scope: !1258)
!1285 = !DILocation(line: 310, column: 7, scope: !1250)
!1286 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 312, column: 43, scope: !1257)
!1290 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1287)
!1291 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1288)
!1292 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !1289)
!1293 = !DILocation(line: 312, column: 23, scope: !1257)
!1294 = !DILocation(line: 318, column: 29, scope: !1257)
!1295 = !DILocation(line: 116, column: 52, scope: !958, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 318, column: 5, scope: !1257)
!1297 = !DILocation(line: 116, column: 76, scope: !958, inlinedAt: !1296)
!1298 = !DILocation(line: 118, column: 25, scope: !958, inlinedAt: !1296)
!1299 = !DILocation(line: 85, column: 49, scope: !966, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 118, column: 2, scope: !958, inlinedAt: !1296)
!1301 = !DILocation(line: 86, column: 28, scope: !966, inlinedAt: !1300)
!1302 = !DILocation(line: 87, column: 28, scope: !966, inlinedAt: !1300)
!1303 = !DILocation(line: 89, column: 13, scope: !966, inlinedAt: !1300)
!1304 = !DILocation(line: 90, column: 8, scope: !966, inlinedAt: !1300)
!1305 = !DILocation(line: 90, column: 13, scope: !966, inlinedAt: !1300)
!1306 = !DILocation(line: 91, column: 8, scope: !966, inlinedAt: !1300)
!1307 = !DILocation(line: 91, column: 13, scope: !966, inlinedAt: !1300)
!1308 = !DILocation(line: 92, column: 8, scope: !966, inlinedAt: !1300)
!1309 = !DILocation(line: 92, column: 13, scope: !966, inlinedAt: !1300)
!1310 = !DILocation(line: 319, column: 3, scope: !1257)
!1311 = !DILocation(line: 323, column: 16, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1250, file: !124, line: 323, column: 7)
!1313 = !DILocation(line: 323, column: 8, scope: !1312)
!1314 = !DILocation(line: 323, column: 7, scope: !1250)
!1315 = !DILocation(line: 324, column: 29, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !124, line: 323, column: 24)
!1317 = !DILocalVariable(name: "vc", arg: 1, scope: !1318, file: !124, line: 906, type: !88)
!1318 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !1319, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !88}
!1321 = !{!1317, !1322}
!1322 = !DILocalVariable(name: "curr_fiber", scope: !1318, file: !124, line: 909, type: !240)
!1323 = !DILocation(line: 906, column: 49, scope: !1318, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 324, column: 5, scope: !1316)
!1325 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 909, column: 28, scope: !1318, inlinedAt: !1324)
!1329 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1326)
!1330 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1327)
!1331 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !1328)
!1332 = !DILocation(line: 909, column: 15, scope: !1318, inlinedAt: !1324)
!1333 = !DILocation(line: 912, column: 15, scope: !1318, inlinedAt: !1324)
!1334 = !DILocation(line: 912, column: 18, scope: !1318, inlinedAt: !1324)
!1335 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1342)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !16, line: 258, column: 26)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !16, line: 258, column: 26)
!1338 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !740, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1339)
!1339 = !{!1340, !1341}
!1340 = !DILocalVariable(name: "__r", scope: !1337, file: !16, line: 258, type: !160)
!1341 = !DILocalVariable(name: "__r", scope: !1336, file: !16, line: 258, type: !160)
!1342 = distinct !DILocation(line: 913, column: 3, scope: !1318, inlinedAt: !1324)
!1343 = !{i32 -2147260791}
!1344 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1342)
!1345 = !DILocation(line: 913, column: 21, scope: !1318, inlinedAt: !1324)
!1346 = !DILocation(line: 913, column: 24, scope: !1318, inlinedAt: !1324)
!1347 = !DILocation(line: 325, column: 3, scope: !1316)
!1348 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 328, column: 3, scope: !1250)
!1351 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1349)
!1352 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1350)
!1353 = !DILocation(line: 328, column: 23, scope: !1250)
!1354 = !DILocation(line: 328, column: 34, scope: !1250)
!1355 = !DILocation(line: 329, column: 20, scope: !1250)
!1356 = !DILocation(line: 330, column: 9, scope: !1250)
!1357 = !DILocation(line: 330, column: 18, scope: !1250)
!1358 = !DILocation(line: 331, column: 3, scope: !1250)
!1359 = !DILocation(line: 333, column: 3, scope: !1250)
!1360 = !DILocation(line: 906, column: 49, scope: !1318)
!1361 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 909, column: 28, scope: !1318)
!1365 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1362)
!1366 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1363)
!1367 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !1364)
!1368 = !DILocation(line: 909, column: 15, scope: !1318)
!1369 = !DILocation(line: 912, column: 15, scope: !1318)
!1370 = !DILocation(line: 912, column: 18, scope: !1318)
!1371 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 913, column: 3, scope: !1318)
!1373 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1372)
!1374 = !DILocation(line: 913, column: 21, scope: !1318)
!1375 = !DILocation(line: 913, column: 24, scope: !1318)
!1376 = !DILocation(line: 914, column: 1, scope: !1318)
!1377 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !1378, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null}
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "curr", scope: !1377, file: !124, line: 338, type: !240)
!1382 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 338, column: 22, scope: !1377)
!1386 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1383)
!1387 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1384)
!1388 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !1385)
!1389 = !DILocation(line: 338, column: 15, scope: !1377)
!1390 = !DILocation(line: 340, column: 3, scope: !1377)
!1391 = !DILocation(line: 341, column: 1, scope: !1377)
!1392 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !1393, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!29, !240}
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "f", arg: 1, scope: !1392, file: !124, line: 343, type: !240)
!1397 = !DILocalVariable(name: "idle_fiber", scope: !1392, file: !124, line: 345, type: !240)
!1398 = !DILocalVariable(name: "result", scope: !1392, file: !124, line: 348, type: !29)
!1399 = !DILocation(line: 343, column: 36, scope: !1392)
!1400 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 345, column: 28, scope: !1392)
!1404 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1401)
!1405 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !1402)
!1406 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !1403)
!1407 = !DILocation(line: 345, column: 15, scope: !1392)
!1408 = !DILocation(line: 348, column: 11, scope: !1392)
!1409 = !DILocation(line: 349, column: 18, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1392, file: !124, line: 349, column: 7)
!1411 = !DILocation(line: 349, column: 7, scope: !1392)
!1412 = !DILocation(line: 353, column: 3, scope: !1392)
!1413 = !DILocation(line: 366, column: 29, scope: !904, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 373, column: 20, scope: !912)
!1415 = !DILocation(line: 366, column: 29, scope: !905, inlinedAt: !1414)
!1416 = !DILocation(line: 366, column: 23, scope: !906, inlinedAt: !1414)
!1417 = !DILocation(line: 358, column: 5, scope: !927, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 367, column: 18, scope: !906, inlinedAt: !1414)
!1419 = !DILocation(line: 359, column: 5, scope: !927, inlinedAt: !1418)
!1420 = !DILocation(line: 360, column: 12, scope: !927, inlinedAt: !1418)
!1421 = !DILocation(line: 358, column: 14, scope: !927, inlinedAt: !1418)
!1422 = !DILocation(line: 361, column: 1, scope: !927, inlinedAt: !1418)
!1423 = !DILocation(line: 367, column: 39, scope: !906, inlinedAt: !1414)
!1424 = !DILocation(line: 367, column: 34, scope: !906, inlinedAt: !1414)
!1425 = !DILocation(line: 367, column: 32, scope: !906, inlinedAt: !1414)
!1426 = !DILocation(line: 374, column: 27, scope: !919)
!1427 = !DILocation(line: 374, column: 27, scope: !917)
!1428 = !DILocation(line: 374, column: 21, scope: !912)
!1429 = !DILocation(line: 375, column: 10, scope: !912)
!1430 = !DILocation(line: 375, column: 33, scope: !912)
!1431 = !DILocation(line: 375, column: 42, scope: !912)
!1432 = !DILocation(line: 375, column: 3, scope: !912)
!1433 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !1251, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437, !1439, !1441, !1442, !1443, !1444, !1446, !1451}
!1435 = !DILocalVariable(name: "to_del", arg: 1, scope: !1433, file: !124, line: 383, type: !240)
!1436 = !DILocalVariable(name: "sys", scope: !1433, file: !124, line: 386, type: !264)
!1437 = !DILocalVariable(name: "__r", scope: !1438, file: !124, line: 386, type: !264)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 386, column: 26)
!1439 = !DILocalVariable(name: "__r", scope: !1440, file: !124, line: 386, type: !264)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !124, line: 386, column: 26)
!1441 = !DILocalVariable(name: "cpu_iter", scope: !1433, file: !124, line: 387, type: !48)
!1442 = !DILocalVariable(name: "temp", scope: !1433, file: !124, line: 390, type: !150)
!1443 = !DILocalVariable(name: "test", scope: !1433, file: !124, line: 391, type: !240)
!1444 = !DILocalVariable(name: "iter", scope: !1445, file: !124, line: 392, type: !48)
!1445 = distinct !DILexicalBlock(scope: !1433, file: !124, line: 392, column: 3)
!1446 = !DILocalVariable(name: "__mptr", scope: !1447, file: !124, line: 395, type: !784)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !124, line: 395, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !124, line: 395, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !124, line: 392, column: 46)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !124, line: 392, column: 3)
!1451 = !DILocalVariable(name: "__mptr", scope: !1452, file: !124, line: 395, type: !784)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !124, line: 395, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !124, line: 395, column: 5)
!1454 = !DILocation(line: 383, column: 42, scope: !1433)
!1455 = !DILocation(line: 386, column: 26, scope: !1440)
!1456 = !{i32 -2147179109}
!1457 = !DILocation(line: 386, column: 26, scope: !1438)
!1458 = !DILocation(line: 386, column: 20, scope: !1433)
!1459 = !DILocation(line: 387, column: 23, scope: !1433)
!1460 = !DILocation(line: 387, column: 7, scope: !1433)
!1461 = !DILocation(line: 392, column: 12, scope: !1445)
!1462 = !DILocation(line: 392, column: 27, scope: !1450)
!1463 = !DILocation(line: 392, column: 3, scope: !1445)
!1464 = !DILocation(line: 394, column: 14, scope: !1449)
!1465 = !DILocation(line: 394, column: 31, scope: !1449)
!1466 = !DILocation(line: 394, column: 40, scope: !1449)
!1467 = !DILocation(line: 390, column: 21, scope: !1433)
!1468 = !DILocation(line: 395, column: 5, scope: !1447)
!1469 = !DILocation(line: 391, column: 15, scope: !1433)
!1470 = !DILocation(line: 0, scope: !1448)
!1471 = !DILocation(line: 395, column: 5, scope: !1448)
!1472 = !DILocation(line: 395, column: 5, scope: !1453)
!1473 = !DILocation(line: 400, column: 16, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !124, line: 400, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1453, file: !124, line: 395, column: 48)
!1476 = !DILocation(line: 400, column: 11, scope: !1475)
!1477 = distinct !{!1477, !1471, !1478}
!1478 = !DILocation(line: 404, column: 5, scope: !1448)
!1479 = !DILocation(line: 392, column: 43, scope: !1450)
!1480 = distinct !{!1480, !1463, !1481}
!1481 = !DILocation(line: 405, column: 3, scope: !1445)
!1482 = !DILocation(line: 401, column: 33, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !124, line: 400, column: 26)
!1484 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 401, column: 9, scope: !1483)
!1486 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !1485)
!1487 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !1485)
!1488 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !1485)
!1490 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !1489)
!1491 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !1489)
!1492 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !1489)
!1493 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !1489)
!1494 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !1489)
!1495 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !1485)
!1497 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !1496)
!1498 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !1496)
!1499 = !DILocation(line: 408, column: 1, scope: !1433)
!1500 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1501)
!1501 = !{!1502, !1503, !1505, !1507, !1508, !1514, !1515, !1520, !1522, !1525, !1527}
!1502 = !DILocalVariable(name: "id", scope: !1500, file: !124, line: 437, type: !291)
!1503 = !DILocalVariable(name: "__r", scope: !1504, file: !124, line: 437, type: !291)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !124, line: 437, column: 19)
!1505 = !DILocalVariable(name: "__r", scope: !1506, file: !124, line: 437, type: !291)
!1506 = distinct !DILexicalBlock(scope: !1504, file: !124, line: 437, column: 19)
!1507 = !DILocalVariable(name: "my_cpu", scope: !1500, file: !124, line: 438, type: !270)
!1508 = !DILocalVariable(name: "_p", scope: !1509, file: !124, line: 444, type: !48)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !124, line: 444, column: 2)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !124, line: 444, column: 2)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !124, line: 444, column: 2)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !124, line: 443, column: 29)
!1513 = distinct !DILexicalBlock(scope: !1500, file: !124, line: 443, column: 9)
!1514 = !DILocalVariable(name: "_t", scope: !1509, file: !124, line: 444, type: !160)
!1515 = !DILocalVariable(name: "__r", scope: !1516, file: !124, line: 444, type: !291)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !124, line: 444, column: 2)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !124, line: 444, column: 2)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !124, line: 444, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !124, line: 444, column: 2)
!1520 = !DILocalVariable(name: "__r", scope: !1521, file: !124, line: 444, type: !291)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !124, line: 444, column: 2)
!1522 = !DILocalVariable(name: "__r", scope: !1523, file: !124, line: 444, type: !291)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !124, line: 444, column: 2)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !124, line: 444, column: 2)
!1525 = !DILocalVariable(name: "__r", scope: !1526, file: !124, line: 444, type: !291)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !124, line: 444, column: 2)
!1527 = !DILocalVariable(name: "_p", scope: !1528, file: !124, line: 444, type: !48)
!1528 = distinct !DILexicalBlock(scope: !1510, file: !124, line: 444, column: 2)
!1529 = !DILocation(line: 437, column: 19, scope: !1506)
!1530 = !{i32 -2147162346}
!1531 = !DILocation(line: 437, column: 19, scope: !1504)
!1532 = !DILocation(line: 437, column: 14, scope: !1500)
!1533 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 438, column: 27, scope: !1500)
!1535 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !1534)
!1536 = !DILocation(line: 438, column: 18, scope: !1500)
!1537 = !DILocation(line: 442, column: 23, scope: !1500)
!1538 = !DILocation(line: 442, column: 13, scope: !1500)
!1539 = !DILocation(line: 442, column: 21, scope: !1500)
!1540 = !DILocation(line: 443, column: 10, scope: !1513)
!1541 = !DILocation(line: 443, column: 9, scope: !1500)
!1542 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1547)
!1543 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !1544, file: !1544, line: 39, type: !1545, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!1544 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!31}
!1547 = distinct !DILocation(line: 444, column: 2, scope: !1510)
!1548 = !DILocation(line: 444, column: 2, scope: !1510)
!1549 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !1554)
!1551 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !1544, file: !1544, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1552)
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "base", scope: !1551, file: !1544, line: 84, type: !31)
!1554 = distinct !DILocation(line: 0, scope: !1510)
!1555 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !1554)
!1556 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !1554)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !1544, line: 85, column: 9)
!1558 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !1554)
!1559 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !1554)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !1544, line: 85, column: 15)
!1561 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !1554)
!1562 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !1554)
!1563 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !1554)
!1564 = !DILocation(line: 0, scope: !1557, inlinedAt: !1554)
!1565 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !1570)
!1567 = distinct !DISubprogram(name: "preempt_disable", scope: !1544, file: !1544, line: 46, type: !1378, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1568)
!1568 = !{!1569}
!1569 = !DILocalVariable(name: "base", scope: !1567, file: !1544, line: 48, type: !31)
!1570 = distinct !DILocation(line: 0, scope: !1510)
!1571 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !1570)
!1572 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !1570)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !1544, line: 49, column: 9)
!1574 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !1570)
!1575 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !1570)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !1544, line: 49, column: 15)
!1577 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !1570)
!1578 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !1570)
!1579 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !1570)
!1580 = !DILocation(line: 444, column: 2, scope: !1511)
!1581 = !DILocation(line: 444, column: 2, scope: !1509)
!1582 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 444, column: 2, scope: !1509)
!1584 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1583)
!1585 = !DILocation(line: 444, column: 2, scope: !1518)
!1586 = !DILocation(line: 0, scope: !1518)
!1587 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1594)
!1589 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !1544, file: !1544, line: 94, type: !1590, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!39}
!1592 = !{!1593}
!1593 = !DILocalVariable(name: "base", scope: !1589, file: !1544, line: 96, type: !31)
!1594 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1596)
!1595 = distinct !DISubprogram(name: "in_interrupt_context", scope: !1544, file: !1544, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!1596 = distinct !DILocation(line: 0, scope: !1518)
!1597 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1594)
!1598 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1594)
!1599 = distinct !DILexicalBlock(scope: !1589, file: !1544, line: 97, column: 9)
!1600 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1594)
!1601 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1594)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !1544, line: 97, column: 15)
!1603 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1594)
!1604 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1594)
!1605 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1594)
!1606 = !DILocation(line: 444, column: 2, scope: !1519)
!1607 = !DILocation(line: 444, column: 2, scope: !1517)
!1608 = !DILocation(line: 444, column: 2, scope: !1524)
!1609 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1614)
!1611 = distinct !DISubprogram(name: "preempt_enable", scope: !1544, file: !1544, line: 57, type: !1378, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1612)
!1612 = !{!1613}
!1613 = !DILocalVariable(name: "base", scope: !1611, file: !1544, line: 59, type: !31)
!1614 = distinct !DILocation(line: 444, column: 2, scope: !1509)
!1615 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1614)
!1616 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1614)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !1544, line: 60, column: 9)
!1618 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1614)
!1619 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1614)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !1544, line: 60, column: 15)
!1621 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1614)
!1622 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1614)
!1623 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1614)
!1624 = !DILocation(line: 444, column: 2, scope: !1528)
!1625 = !DILocation(line: 444, column: 2, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !124, line: 444, column: 2)
!1627 = distinct !DILexicalBlock(scope: !1528, file: !124, line: 444, column: 2)
!1628 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 0, scope: !1626)
!1632 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1630)
!1633 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1630)
!1634 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1630)
!1635 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1630)
!1636 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1630)
!1637 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1630)
!1638 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1630)
!1639 = !DILocation(line: 0, scope: !1626)
!1640 = !DILocation(line: 444, column: 2, scope: !1627)
!1641 = !DILocation(line: 444, column: 2, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 444, column: 2)
!1643 = !DILocation(line: 444, column: 2, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 444, column: 2)
!1645 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 444, column: 2, scope: !1528)
!1648 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1647)
!1649 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1647)
!1650 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1647)
!1651 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1647)
!1652 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1647)
!1653 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1647)
!1654 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1647)
!1655 = !DILocation(line: 0, scope: !1500)
!1656 = !DILocation(line: 449, column: 1, scope: !1500)
!1657 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !1658, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!280}
!1660 = !{!1661, !1662, !1664, !1666, !1668, !1674, !1675, !1680, !1682, !1685, !1687}
!1661 = !DILocalVariable(name: "state", scope: !1657, file: !124, line: 412, type: !280)
!1662 = !DILocalVariable(name: "p", scope: !1663, file: !124, line: 412, type: !31)
!1663 = distinct !DILexicalBlock(scope: !1657, file: !124, line: 412, column: 74)
!1664 = !DILocalVariable(name: "__r", scope: !1665, file: !124, line: 412, type: !291)
!1665 = distinct !DILexicalBlock(scope: !1663, file: !124, line: 412, column: 74)
!1666 = !DILocalVariable(name: "__r", scope: !1667, file: !124, line: 412, type: !291)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !124, line: 412, column: 74)
!1668 = !DILocalVariable(name: "_p", scope: !1669, file: !124, line: 415, type: !48)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !124, line: 415, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !124, line: 415, column: 9)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !124, line: 415, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !124, line: 414, column: 17)
!1673 = distinct !DILexicalBlock(scope: !1657, file: !124, line: 414, column: 9)
!1674 = !DILocalVariable(name: "_t", scope: !1669, file: !124, line: 415, type: !160)
!1675 = !DILocalVariable(name: "__r", scope: !1676, file: !124, line: 415, type: !291)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !124, line: 415, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !124, line: 415, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !124, line: 415, column: 9)
!1679 = distinct !DILexicalBlock(scope: !1669, file: !124, line: 415, column: 9)
!1680 = !DILocalVariable(name: "__r", scope: !1681, file: !124, line: 415, type: !291)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !124, line: 415, column: 9)
!1682 = !DILocalVariable(name: "__r", scope: !1683, file: !124, line: 415, type: !291)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !124, line: 415, column: 9)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !124, line: 415, column: 9)
!1685 = !DILocalVariable(name: "__r", scope: !1686, file: !124, line: 415, type: !291)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !124, line: 415, column: 9)
!1687 = !DILocalVariable(name: "_p", scope: !1688, file: !124, line: 415, type: !48)
!1688 = distinct !DILexicalBlock(scope: !1670, file: !124, line: 415, column: 9)
!1689 = !DILocation(line: 412, column: 74, scope: !1667)
!1690 = !{i32 -2147173855}
!1691 = !DILocation(line: 412, column: 74, scope: !1665)
!1692 = !DILocation(line: 412, column: 74, scope: !1663)
!1693 = !DILocation(line: 414, column: 10, scope: !1673)
!1694 = !DILocation(line: 414, column: 9, scope: !1657)
!1695 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 415, column: 9, scope: !1670)
!1697 = !DILocation(line: 415, column: 9, scope: !1670)
!1698 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 0, scope: !1670)
!1701 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !1700)
!1702 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !1700)
!1703 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !1700)
!1704 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !1700)
!1705 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !1700)
!1706 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !1700)
!1707 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !1700)
!1708 = !DILocation(line: 0, scope: !1557, inlinedAt: !1700)
!1709 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 0, scope: !1670)
!1712 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !1711)
!1713 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !1711)
!1714 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !1711)
!1715 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !1711)
!1716 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !1711)
!1717 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !1711)
!1718 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !1711)
!1719 = !DILocation(line: 415, column: 9, scope: !1671)
!1720 = !DILocation(line: 415, column: 9, scope: !1669)
!1721 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 415, column: 9, scope: !1669)
!1723 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1722)
!1724 = !DILocation(line: 415, column: 9, scope: !1678)
!1725 = !DILocation(line: 0, scope: !1678)
!1726 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 0, scope: !1678)
!1730 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1728)
!1731 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1728)
!1732 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1728)
!1733 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1728)
!1734 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1728)
!1735 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1728)
!1736 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1728)
!1737 = !DILocation(line: 415, column: 9, scope: !1679)
!1738 = !DILocation(line: 415, column: 9, scope: !1677)
!1739 = !DILocation(line: 415, column: 9, scope: !1684)
!1740 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 415, column: 9, scope: !1669)
!1743 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1742)
!1744 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1742)
!1745 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1742)
!1746 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1742)
!1747 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1742)
!1748 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1742)
!1749 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1742)
!1750 = !DILocation(line: 415, column: 9, scope: !1688)
!1751 = !DILocation(line: 415, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !124, line: 415, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1688, file: !124, line: 415, column: 9)
!1754 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 0, scope: !1752)
!1758 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1756)
!1759 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1756)
!1760 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1756)
!1761 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1756)
!1762 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1756)
!1763 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1756)
!1764 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1756)
!1765 = !DILocation(line: 0, scope: !1752)
!1766 = !DILocation(line: 415, column: 9, scope: !1753)
!1767 = !DILocation(line: 415, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1752, file: !124, line: 415, column: 9)
!1769 = !DILocation(line: 415, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1752, file: !124, line: 415, column: 9)
!1771 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 415, column: 9, scope: !1688)
!1774 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1773)
!1775 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1773)
!1776 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1773)
!1777 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1773)
!1778 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1773)
!1779 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1773)
!1780 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1773)
!1781 = !DILocation(line: 412, column: 43, scope: !1657)
!1782 = !DILocation(line: 412, column: 35, scope: !1657)
!1783 = !DILocation(line: 419, column: 2, scope: !1657)
!1784 = !DILocation(line: 421, column: 27, scope: !1657)
!1785 = !DILocation(line: 421, column: 5, scope: !1657)
!1786 = !DILocation(line: 424, column: 29, scope: !1657)
!1787 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 424, column: 5, scope: !1657)
!1789 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !1788)
!1790 = !DILocation(line: 76, column: 8, scope: !830, inlinedAt: !1788)
!1791 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !1788)
!1792 = !DILocation(line: 426, column: 5, scope: !1657)
!1793 = !DILocation(line: 429, column: 5, scope: !1657)
!1794 = !DILocation(line: 431, column: 5, scope: !1657)
!1795 = !DILocation(line: 0, scope: !1657)
!1796 = !DILocation(line: 432, column: 1, scope: !1657)
!1797 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1798)
!1798 = !{!1799, !1800, !1804, !1805, !1810, !1812, !1815, !1817, !1819, !1825, !1826, !1831, !1833, !1836, !1838}
!1799 = !DILocalVariable(name: "my_cpu", scope: !1797, file: !124, line: 454, type: !270)
!1800 = !DILocalVariable(name: "_p", scope: !1801, file: !124, line: 456, type: !48)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 456, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !124, line: 456, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1797, file: !124, line: 456, column: 5)
!1804 = !DILocalVariable(name: "_t", scope: !1801, file: !124, line: 456, type: !160)
!1805 = !DILocalVariable(name: "__r", scope: !1806, file: !124, line: 456, type: !291)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !124, line: 456, column: 5)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !124, line: 456, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !124, line: 456, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1801, file: !124, line: 456, column: 5)
!1810 = !DILocalVariable(name: "__r", scope: !1811, file: !124, line: 456, type: !291)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !124, line: 456, column: 5)
!1812 = !DILocalVariable(name: "__r", scope: !1813, file: !124, line: 456, type: !291)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !124, line: 456, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !124, line: 456, column: 5)
!1815 = !DILocalVariable(name: "__r", scope: !1816, file: !124, line: 456, type: !291)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !124, line: 456, column: 5)
!1817 = !DILocalVariable(name: "_p", scope: !1818, file: !124, line: 456, type: !48)
!1818 = distinct !DILexicalBlock(scope: !1802, file: !124, line: 456, column: 5)
!1819 = !DILocalVariable(name: "_p", scope: !1820, file: !124, line: 464, type: !48)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !124, line: 464, column: 2)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !124, line: 464, column: 2)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !124, line: 464, column: 2)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !124, line: 463, column: 29)
!1824 = distinct !DILexicalBlock(scope: !1797, file: !124, line: 463, column: 9)
!1825 = !DILocalVariable(name: "_t", scope: !1820, file: !124, line: 464, type: !160)
!1826 = !DILocalVariable(name: "__r", scope: !1827, file: !124, line: 464, type: !291)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !124, line: 464, column: 2)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !124, line: 464, column: 2)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !124, line: 464, column: 2)
!1830 = distinct !DILexicalBlock(scope: !1820, file: !124, line: 464, column: 2)
!1831 = !DILocalVariable(name: "__r", scope: !1832, file: !124, line: 464, type: !291)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !124, line: 464, column: 2)
!1833 = !DILocalVariable(name: "__r", scope: !1834, file: !124, line: 464, type: !291)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !124, line: 464, column: 2)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !124, line: 464, column: 2)
!1836 = !DILocalVariable(name: "__r", scope: !1837, file: !124, line: 464, type: !291)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !124, line: 464, column: 2)
!1838 = !DILocalVariable(name: "_p", scope: !1839, file: !124, line: 464, type: !48)
!1839 = distinct !DILexicalBlock(scope: !1821, file: !124, line: 464, column: 2)
!1840 = !DILocation(line: 454, column: 88, scope: !1797)
!1841 = !DILocation(line: 454, column: 27, scope: !1797)
!1842 = !DILocation(line: 454, column: 18, scope: !1797)
!1843 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 456, column: 5, scope: !1802)
!1845 = !DILocation(line: 456, column: 5, scope: !1802)
!1846 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 0, scope: !1802)
!1849 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !1848)
!1850 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !1848)
!1851 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !1848)
!1852 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !1848)
!1853 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !1848)
!1854 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !1848)
!1855 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !1848)
!1856 = !DILocation(line: 0, scope: !1557, inlinedAt: !1848)
!1857 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 0, scope: !1802)
!1860 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !1859)
!1861 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !1859)
!1862 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !1859)
!1863 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !1859)
!1864 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !1859)
!1865 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !1859)
!1866 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !1859)
!1867 = !DILocation(line: 456, column: 5, scope: !1803)
!1868 = !DILocation(line: 456, column: 5, scope: !1801)
!1869 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 456, column: 5, scope: !1801)
!1871 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1870)
!1872 = !DILocation(line: 456, column: 5, scope: !1808)
!1873 = !DILocation(line: 0, scope: !1808)
!1874 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 0, scope: !1808)
!1878 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1876)
!1879 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1876)
!1880 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1876)
!1881 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1876)
!1882 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1876)
!1883 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1876)
!1884 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1876)
!1885 = !DILocation(line: 456, column: 5, scope: !1809)
!1886 = !DILocation(line: 456, column: 5, scope: !1807)
!1887 = !DILocation(line: 456, column: 5, scope: !1814)
!1888 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 456, column: 5, scope: !1801)
!1891 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1890)
!1892 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1890)
!1893 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1890)
!1894 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1890)
!1895 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1890)
!1896 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1890)
!1897 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1890)
!1898 = !DILocation(line: 456, column: 5, scope: !1818)
!1899 = !DILocation(line: 456, column: 5, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !124, line: 456, column: 5)
!1901 = distinct !DILexicalBlock(scope: !1818, file: !124, line: 456, column: 5)
!1902 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 0, scope: !1900)
!1906 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1904)
!1907 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1904)
!1908 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1904)
!1909 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1904)
!1910 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1904)
!1911 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1904)
!1912 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1904)
!1913 = !DILocation(line: 0, scope: !1900)
!1914 = !DILocation(line: 456, column: 5, scope: !1901)
!1915 = !DILocation(line: 456, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1900, file: !124, line: 456, column: 5)
!1917 = !DILocation(line: 456, column: 5, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1900, file: !124, line: 456, column: 5)
!1919 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 456, column: 5, scope: !1818)
!1922 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1921)
!1923 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1921)
!1924 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1921)
!1925 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1921)
!1926 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1921)
!1927 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1921)
!1928 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1921)
!1929 = !DILocation(line: 462, column: 23, scope: !1797)
!1930 = !DILocation(line: 462, column: 13, scope: !1797)
!1931 = !DILocation(line: 462, column: 21, scope: !1797)
!1932 = !DILocation(line: 463, column: 10, scope: !1824)
!1933 = !DILocation(line: 463, column: 9, scope: !1797)
!1934 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 464, column: 2, scope: !1821)
!1936 = !DILocation(line: 464, column: 2, scope: !1821)
!1937 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 0, scope: !1821)
!1940 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !1939)
!1941 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !1939)
!1942 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !1939)
!1943 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !1939)
!1944 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !1939)
!1945 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !1939)
!1946 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !1939)
!1947 = !DILocation(line: 0, scope: !1557, inlinedAt: !1939)
!1948 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 0, scope: !1821)
!1951 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !1950)
!1952 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !1950)
!1953 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !1950)
!1954 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !1950)
!1955 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !1950)
!1956 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !1950)
!1957 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !1950)
!1958 = !DILocation(line: 464, column: 2, scope: !1822)
!1959 = !DILocation(line: 464, column: 2, scope: !1820)
!1960 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 464, column: 2, scope: !1820)
!1962 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !1961)
!1963 = !DILocation(line: 464, column: 2, scope: !1829)
!1964 = !DILocation(line: 0, scope: !1829)
!1965 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 0, scope: !1829)
!1969 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1967)
!1970 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1967)
!1971 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1967)
!1972 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1967)
!1973 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1967)
!1974 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1967)
!1975 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1967)
!1976 = !DILocation(line: 464, column: 2, scope: !1830)
!1977 = !DILocation(line: 464, column: 2, scope: !1828)
!1978 = !DILocation(line: 464, column: 2, scope: !1835)
!1979 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 464, column: 2, scope: !1820)
!1982 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !1981)
!1983 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !1981)
!1984 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !1981)
!1985 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !1981)
!1986 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !1981)
!1987 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !1981)
!1988 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !1981)
!1989 = !DILocation(line: 464, column: 2, scope: !1839)
!1990 = !DILocation(line: 464, column: 2, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !124, line: 464, column: 2)
!1992 = distinct !DILexicalBlock(scope: !1839, file: !124, line: 464, column: 2)
!1993 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 0, scope: !1991)
!1997 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !1995)
!1998 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !1995)
!1999 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !1995)
!2000 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !1995)
!2001 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !1995)
!2002 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !1995)
!2003 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !1995)
!2004 = !DILocation(line: 0, scope: !1991)
!2005 = !DILocation(line: 464, column: 2, scope: !1992)
!2006 = !DILocation(line: 464, column: 2, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1991, file: !124, line: 464, column: 2)
!2008 = !DILocation(line: 464, column: 2, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1991, file: !124, line: 464, column: 2)
!2010 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 464, column: 2, scope: !1839)
!2013 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2012)
!2014 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2012)
!2015 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2012)
!2016 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2012)
!2017 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2012)
!2018 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2012)
!2019 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2012)
!2020 = !DILocation(line: 0, scope: !1797)
!2021 = !DILocation(line: 469, column: 1, scope: !1797)
!2022 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2023)
!2023 = !{!2024, !2025, !2026, !2032, !2033, !2038, !2040, !2043, !2045, !2047, !2073, !2079, !2080, !2085, !2087, !2090, !2092, !2094, !2095, !2101, !2102, !2107, !2109, !2112, !2114, !2116, !2117, !2123, !2124, !2129, !2131, !2134, !2136}
!2024 = !DILocalVariable(name: "in", arg: 1, scope: !2022, file: !124, line: 511, type: !31)
!2025 = !DILocalVariable(name: "out", arg: 2, scope: !2022, file: !124, line: 511, type: !75)
!2026 = !DILocalVariable(name: "_p", scope: !2027, file: !124, line: 515, type: !48)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !124, line: 515, column: 5)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !124, line: 515, column: 5)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !124, line: 515, column: 5)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !124, line: 514, column: 51)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 514, column: 7)
!2032 = !DILocalVariable(name: "_t", scope: !2027, file: !124, line: 515, type: !160)
!2033 = !DILocalVariable(name: "__r", scope: !2034, file: !124, line: 515, type: !291)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !124, line: 515, column: 5)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !124, line: 515, column: 5)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !124, line: 515, column: 5)
!2037 = distinct !DILexicalBlock(scope: !2027, file: !124, line: 515, column: 5)
!2038 = !DILocalVariable(name: "__r", scope: !2039, file: !124, line: 515, type: !291)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !124, line: 515, column: 5)
!2040 = !DILocalVariable(name: "__r", scope: !2041, file: !124, line: 515, type: !291)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !124, line: 515, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !124, line: 515, column: 5)
!2043 = !DILocalVariable(name: "__r", scope: !2044, file: !124, line: 515, type: !291)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !124, line: 515, column: 5)
!2045 = !DILocalVariable(name: "_p", scope: !2046, file: !124, line: 515, type: !48)
!2046 = distinct !DILexicalBlock(scope: !2028, file: !124, line: 515, column: 5)
!2047 = !DILocalVariable(name: "c", scope: !2022, file: !124, line: 520, type: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2049)
!2049 = !{!2050, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2048, file: !86, line: 68, baseType: !2051, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2048, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !86, line: 80, baseType: !2054, size: 256, offset: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !86, line: 80, size: 256, elements: !2055)
!2055 = !{!2056, !2062, !2069}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2054, file: !86, line: 81, baseType: !2057, size: 192)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2057, file: !86, line: 50, baseType: !25, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2057, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2057, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2054, file: !86, line: 82, baseType: !2063, size: 256)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2063, file: !86, line: 56, baseType: !25, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2063, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2063, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2063, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2054, file: !86, line: 83, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2071)
!2071 = !{!2072}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2070, file: !86, line: 63, baseType: !25, size: 64)
!2073 = !DILocalVariable(name: "_p", scope: !2074, file: !124, line: 525, type: !48)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !124, line: 525, column: 5)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !124, line: 525, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !124, line: 525, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !124, line: 524, column: 47)
!2078 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 524, column: 7)
!2079 = !DILocalVariable(name: "_t", scope: !2074, file: !124, line: 525, type: !160)
!2080 = !DILocalVariable(name: "__r", scope: !2081, file: !124, line: 525, type: !291)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !124, line: 525, column: 5)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !124, line: 525, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !124, line: 525, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2074, file: !124, line: 525, column: 5)
!2085 = !DILocalVariable(name: "__r", scope: !2086, file: !124, line: 525, type: !291)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !124, line: 525, column: 5)
!2087 = !DILocalVariable(name: "__r", scope: !2088, file: !124, line: 525, type: !291)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !124, line: 525, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !124, line: 525, column: 5)
!2090 = !DILocalVariable(name: "__r", scope: !2091, file: !124, line: 525, type: !291)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !124, line: 525, column: 5)
!2092 = !DILocalVariable(name: "_p", scope: !2093, file: !124, line: 525, type: !48)
!2093 = distinct !DILexicalBlock(scope: !2075, file: !124, line: 525, column: 5)
!2094 = !DILocalVariable(name: "state", scope: !2022, file: !124, line: 534, type: !709)
!2095 = !DILocalVariable(name: "_p", scope: !2096, file: !124, line: 536, type: !48)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !124, line: 536, column: 5)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !124, line: 536, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !124, line: 536, column: 5)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !124, line: 535, column: 17)
!2100 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 535, column: 7)
!2101 = !DILocalVariable(name: "_t", scope: !2096, file: !124, line: 536, type: !160)
!2102 = !DILocalVariable(name: "__r", scope: !2103, file: !124, line: 536, type: !291)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !124, line: 536, column: 5)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !124, line: 536, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !124, line: 536, column: 5)
!2106 = distinct !DILexicalBlock(scope: !2096, file: !124, line: 536, column: 5)
!2107 = !DILocalVariable(name: "__r", scope: !2108, file: !124, line: 536, type: !291)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !124, line: 536, column: 5)
!2109 = !DILocalVariable(name: "__r", scope: !2110, file: !124, line: 536, type: !291)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !124, line: 536, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !124, line: 536, column: 5)
!2112 = !DILocalVariable(name: "__r", scope: !2113, file: !124, line: 536, type: !291)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !124, line: 536, column: 5)
!2114 = !DILocalVariable(name: "_p", scope: !2115, file: !124, line: 536, type: !48)
!2115 = distinct !DILexicalBlock(scope: !2097, file: !124, line: 536, column: 5)
!2116 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2022, file: !124, line: 541, type: !240)
!2117 = !DILocalVariable(name: "_p", scope: !2118, file: !124, line: 543, type: !48)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !124, line: 543, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !124, line: 543, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !124, line: 543, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !124, line: 542, column: 71)
!2122 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 542, column: 7)
!2123 = !DILocalVariable(name: "_t", scope: !2118, file: !124, line: 543, type: !160)
!2124 = !DILocalVariable(name: "__r", scope: !2125, file: !124, line: 543, type: !291)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !124, line: 543, column: 5)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !124, line: 543, column: 5)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !124, line: 543, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2118, file: !124, line: 543, column: 5)
!2129 = !DILocalVariable(name: "__r", scope: !2130, file: !124, line: 543, type: !291)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !124, line: 543, column: 5)
!2131 = !DILocalVariable(name: "__r", scope: !2132, file: !124, line: 543, type: !291)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !124, line: 543, column: 5)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !124, line: 543, column: 5)
!2134 = !DILocalVariable(name: "__r", scope: !2135, file: !124, line: 543, type: !291)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !124, line: 543, column: 5)
!2136 = !DILocalVariable(name: "_p", scope: !2137, file: !124, line: 543, type: !48)
!2137 = distinct !DILexicalBlock(scope: !2119, file: !124, line: 543, column: 5)
!2138 = !DILocation(line: 511, column: 27, scope: !2022)
!2139 = !DILocation(line: 511, column: 38, scope: !2022)
!2140 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 514, column: 22, scope: !2031)
!2142 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2141)
!2143 = !DILocation(line: 514, column: 22, scope: !2031)
!2144 = !DILocation(line: 514, column: 7, scope: !2031)
!2145 = !DILocation(line: 514, column: 7, scope: !2022)
!2146 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 515, column: 5, scope: !2028)
!2148 = !DILocation(line: 515, column: 5, scope: !2028)
!2149 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 0, scope: !2028)
!2152 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !2151)
!2153 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !2151)
!2154 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !2151)
!2155 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !2151)
!2156 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !2151)
!2157 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !2151)
!2158 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !2151)
!2159 = !DILocation(line: 0, scope: !1557, inlinedAt: !2151)
!2160 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 0, scope: !2028)
!2163 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !2162)
!2164 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !2162)
!2165 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !2162)
!2166 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !2162)
!2167 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !2162)
!2168 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !2162)
!2169 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !2162)
!2170 = !DILocation(line: 515, column: 5, scope: !2029)
!2171 = !DILocation(line: 515, column: 5, scope: !2027)
!2172 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 515, column: 5, scope: !2027)
!2174 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2173)
!2175 = !DILocation(line: 515, column: 5, scope: !2036)
!2176 = !DILocation(line: 0, scope: !2036)
!2177 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 0, scope: !2036)
!2181 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2179)
!2182 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2179)
!2183 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2179)
!2184 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2179)
!2185 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2179)
!2186 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2179)
!2187 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2179)
!2188 = !DILocation(line: 515, column: 5, scope: !2037)
!2189 = !DILocation(line: 515, column: 5, scope: !2035)
!2190 = !DILocation(line: 515, column: 5, scope: !2042)
!2191 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 515, column: 5, scope: !2027)
!2194 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2193)
!2195 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2193)
!2196 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2193)
!2197 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2193)
!2198 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2193)
!2199 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2193)
!2200 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2193)
!2201 = !DILocation(line: 515, column: 5, scope: !2046)
!2202 = !DILocation(line: 515, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !124, line: 515, column: 5)
!2204 = distinct !DILexicalBlock(scope: !2046, file: !124, line: 515, column: 5)
!2205 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 0, scope: !2203)
!2209 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2207)
!2210 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2207)
!2211 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2207)
!2212 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2207)
!2213 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2207)
!2214 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2207)
!2215 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2207)
!2216 = !DILocation(line: 0, scope: !2203)
!2217 = !DILocation(line: 515, column: 5, scope: !2204)
!2218 = !DILocation(line: 515, column: 5, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2203, file: !124, line: 515, column: 5)
!2220 = !DILocation(line: 515, column: 5, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2203, file: !124, line: 515, column: 5)
!2222 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 515, column: 5, scope: !2046)
!2225 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2224)
!2226 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2224)
!2227 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2224)
!2228 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2224)
!2229 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2224)
!2230 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2224)
!2231 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2224)
!2232 = !DILocation(line: 520, column: 3, scope: !2022)
!2233 = !DILocation(line: 520, column: 31, scope: !2022)
!2234 = !DILocation(line: 524, column: 7, scope: !2078)
!2235 = !DILocation(line: 0, scope: !2022)
!2236 = !DILocation(line: 524, column: 7, scope: !2022)
!2237 = !DILocation(line: 525, column: 5, scope: !2075)
!2238 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 0, scope: !2075)
!2241 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !2240)
!2242 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !2240)
!2243 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !2240)
!2244 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !2240)
!2245 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !2240)
!2246 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !2240)
!2247 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !2240)
!2248 = !DILocation(line: 0, scope: !1557, inlinedAt: !2240)
!2249 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 0, scope: !2075)
!2252 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !2251)
!2253 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !2251)
!2254 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !2251)
!2255 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !2251)
!2256 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !2251)
!2257 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !2251)
!2258 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !2251)
!2259 = !DILocation(line: 525, column: 5, scope: !2076)
!2260 = !DILocation(line: 525, column: 5, scope: !2074)
!2261 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 525, column: 5, scope: !2074)
!2263 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2262)
!2264 = !DILocation(line: 525, column: 5, scope: !2083)
!2265 = !DILocation(line: 0, scope: !2083)
!2266 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 0, scope: !2083)
!2270 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2268)
!2271 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2268)
!2272 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2268)
!2273 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2268)
!2274 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2268)
!2275 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2268)
!2276 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2268)
!2277 = !DILocation(line: 525, column: 5, scope: !2084)
!2278 = !DILocation(line: 525, column: 5, scope: !2082)
!2279 = !DILocation(line: 525, column: 5, scope: !2089)
!2280 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 525, column: 5, scope: !2074)
!2283 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2282)
!2284 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2282)
!2285 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2282)
!2286 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2282)
!2287 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2282)
!2288 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2282)
!2289 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2282)
!2290 = !DILocation(line: 525, column: 5, scope: !2093)
!2291 = !DILocation(line: 525, column: 5, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !124, line: 525, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2093, file: !124, line: 525, column: 5)
!2294 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 0, scope: !2292)
!2298 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2296)
!2299 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2296)
!2300 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2296)
!2301 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2296)
!2302 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2296)
!2303 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2296)
!2304 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2296)
!2305 = !DILocation(line: 0, scope: !2292)
!2306 = !DILocation(line: 525, column: 5, scope: !2293)
!2307 = !DILocation(line: 525, column: 5, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2292, file: !124, line: 525, column: 5)
!2309 = !DILocation(line: 525, column: 5, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2292, file: !124, line: 525, column: 5)
!2311 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 525, column: 5, scope: !2093)
!2314 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2313)
!2315 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2313)
!2316 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2313)
!2317 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2313)
!2318 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2313)
!2319 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2313)
!2320 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2313)
!2321 = !DILocation(line: 526, column: 5, scope: !2077)
!2322 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 534, column: 24, scope: !2022)
!2325 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2324)
!2326 = !DILocation(line: 534, column: 16, scope: !2022)
!2327 = !DILocation(line: 535, column: 8, scope: !2100)
!2328 = !DILocation(line: 535, column: 7, scope: !2022)
!2329 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 536, column: 5, scope: !2097)
!2331 = !DILocation(line: 536, column: 5, scope: !2097)
!2332 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 0, scope: !2097)
!2335 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !2334)
!2336 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !2334)
!2337 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !2334)
!2338 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !2334)
!2339 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !2334)
!2340 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !2334)
!2341 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !2334)
!2342 = !DILocation(line: 0, scope: !1557, inlinedAt: !2334)
!2343 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 0, scope: !2097)
!2346 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !2345)
!2347 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !2345)
!2348 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !2345)
!2349 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !2345)
!2350 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !2345)
!2351 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !2345)
!2352 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !2345)
!2353 = !DILocation(line: 536, column: 5, scope: !2098)
!2354 = !DILocation(line: 536, column: 5, scope: !2096)
!2355 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 536, column: 5, scope: !2096)
!2357 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2356)
!2358 = !DILocation(line: 536, column: 5, scope: !2105)
!2359 = !DILocation(line: 0, scope: !2105)
!2360 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 0, scope: !2105)
!2364 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2362)
!2365 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2362)
!2366 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2362)
!2367 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2362)
!2368 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2362)
!2369 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2362)
!2370 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2362)
!2371 = !DILocation(line: 536, column: 5, scope: !2106)
!2372 = !DILocation(line: 536, column: 5, scope: !2104)
!2373 = !DILocation(line: 536, column: 5, scope: !2111)
!2374 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 536, column: 5, scope: !2096)
!2377 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2376)
!2378 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2376)
!2379 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2376)
!2380 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2376)
!2381 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2376)
!2382 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2376)
!2383 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2376)
!2384 = !DILocation(line: 536, column: 5, scope: !2115)
!2385 = !DILocation(line: 536, column: 5, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !124, line: 536, column: 5)
!2387 = distinct !DILexicalBlock(scope: !2115, file: !124, line: 536, column: 5)
!2388 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 0, scope: !2386)
!2392 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2390)
!2393 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2390)
!2394 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2390)
!2395 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2390)
!2396 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2390)
!2397 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2390)
!2398 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2390)
!2399 = !DILocation(line: 0, scope: !2386)
!2400 = !DILocation(line: 536, column: 5, scope: !2387)
!2401 = !DILocation(line: 536, column: 5, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2386, file: !124, line: 536, column: 5)
!2403 = !DILocation(line: 536, column: 5, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2386, file: !124, line: 536, column: 5)
!2405 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 536, column: 5, scope: !2115)
!2408 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2407)
!2409 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2407)
!2410 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2407)
!2411 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2407)
!2412 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2407)
!2413 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2407)
!2414 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2407)
!2415 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 538, column: 25, scope: !2022)
!2417 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2416)
!2418 = !DILocation(line: 538, column: 10, scope: !2022)
!2419 = !DILocation(line: 538, column: 23, scope: !2022)
!2420 = !DILocation(line: 541, column: 3, scope: !2022)
!2421 = !DILocation(line: 541, column: 15, scope: !2022)
!2422 = !DILocation(line: 542, column: 7, scope: !2122)
!2423 = !DILocation(line: 542, column: 66, scope: !2122)
!2424 = !DILocation(line: 542, column: 7, scope: !2022)
!2425 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 543, column: 5, scope: !2119)
!2427 = !DILocation(line: 543, column: 5, scope: !2119)
!2428 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 0, scope: !2119)
!2431 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !2430)
!2432 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !2430)
!2433 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !2430)
!2434 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !2430)
!2435 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !2430)
!2436 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !2430)
!2437 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !2430)
!2438 = !DILocation(line: 0, scope: !1557, inlinedAt: !2430)
!2439 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 0, scope: !2119)
!2442 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !2441)
!2443 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !2441)
!2444 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !2441)
!2445 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !2441)
!2446 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !2441)
!2447 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !2441)
!2448 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !2441)
!2449 = !DILocation(line: 543, column: 5, scope: !2120)
!2450 = !DILocation(line: 543, column: 5, scope: !2118)
!2451 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 543, column: 5, scope: !2118)
!2453 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2452)
!2454 = !DILocation(line: 543, column: 5, scope: !2127)
!2455 = !DILocation(line: 0, scope: !2127)
!2456 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 0, scope: !2127)
!2460 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2458)
!2461 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2458)
!2462 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2458)
!2463 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2458)
!2464 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2458)
!2465 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2458)
!2466 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2458)
!2467 = !DILocation(line: 543, column: 5, scope: !2128)
!2468 = !DILocation(line: 543, column: 5, scope: !2126)
!2469 = !DILocation(line: 543, column: 5, scope: !2133)
!2470 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 543, column: 5, scope: !2118)
!2473 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2472)
!2474 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2472)
!2475 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2472)
!2476 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2472)
!2477 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2472)
!2478 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2472)
!2479 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2472)
!2480 = !DILocation(line: 543, column: 5, scope: !2137)
!2481 = !DILocation(line: 543, column: 5, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !124, line: 543, column: 5)
!2483 = distinct !DILexicalBlock(scope: !2137, file: !124, line: 543, column: 5)
!2484 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 0, scope: !2482)
!2488 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2486)
!2489 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2486)
!2490 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2486)
!2491 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2486)
!2492 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2486)
!2493 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2486)
!2494 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2486)
!2495 = !DILocation(line: 0, scope: !2482)
!2496 = !DILocation(line: 543, column: 5, scope: !2483)
!2497 = !DILocation(line: 543, column: 5, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2482, file: !124, line: 543, column: 5)
!2499 = !DILocation(line: 543, column: 5, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2482, file: !124, line: 543, column: 5)
!2501 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 543, column: 5, scope: !2137)
!2504 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2503)
!2505 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2503)
!2506 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2503)
!2507 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2503)
!2508 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2503)
!2509 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2503)
!2510 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2503)
!2511 = !DILocation(line: 547, column: 23, scope: !2022)
!2512 = !DILocation(line: 547, column: 10, scope: !2022)
!2513 = !DILocation(line: 547, column: 21, scope: !2022)
!2514 = !DILocation(line: 548, column: 10, scope: !2022)
!2515 = !DILocation(line: 548, column: 21, scope: !2022)
!2516 = !DILocation(line: 551, column: 3, scope: !2022)
!2517 = !DILocation(line: 551, column: 19, scope: !2022)
!2518 = !DILocation(line: 551, column: 27, scope: !2022)
!2519 = !DILocation(line: 198, column: 33, scope: !1134, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 554, column: 3, scope: !2022)
!2521 = !DILocation(line: 202, column: 9, scope: !1134, inlinedAt: !2520)
!2522 = !DILocation(line: 202, column: 19, scope: !1134, inlinedAt: !2520)
!2523 = !DILocation(line: 202, column: 32, scope: !1134, inlinedAt: !2520)
!2524 = !DILocation(line: 202, column: 3, scope: !1134, inlinedAt: !2520)
!2525 = !DILocation(line: 208, column: 3, scope: !1134, inlinedAt: !2520)
!2526 = !DILocation(line: 557, column: 1, scope: !2022)
!2527 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2528)
!2528 = !{!2529, !2530}
!2529 = !DILocalVariable(name: "in", arg: 1, scope: !2527, file: !124, line: 479, type: !31)
!2530 = !DILocalVariable(name: "out", arg: 2, scope: !2527, file: !124, line: 479, type: !75)
!2531 = !DILocation(line: 479, column: 35, scope: !2527)
!2532 = !DILocation(line: 479, column: 46, scope: !2527)
!2533 = !DILocation(line: 481, column: 3, scope: !2527)
!2534 = !DILocation(line: 489, column: 5, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2527, file: !124, line: 481, column: 13)
!2536 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 490, column: 28, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !124, line: 490, column: 9)
!2541 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2537)
!2542 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2538)
!2543 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !2539)
!2544 = !DILocalVariable(name: "head", arg: 1, scope: !2545, file: !53, line: 201, type: !784)
!2545 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !797, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2546)
!2546 = !{!2544, !2547}
!2547 = !DILocalVariable(name: "next", scope: !2545, file: !53, line: 203, type: !150)
!2548 = !DILocation(line: 201, column: 62, scope: !2545, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 490, column: 9, scope: !2540)
!2550 = !DILocation(line: 203, column: 33, scope: !2545, inlinedAt: !2549)
!2551 = !DILocation(line: 203, column: 20, scope: !2545, inlinedAt: !2549)
!2552 = !DILocation(line: 204, column: 15, scope: !2545, inlinedAt: !2549)
!2553 = !DILocation(line: 204, column: 24, scope: !2545, inlinedAt: !2549)
!2554 = !DILocation(line: 204, column: 42, scope: !2545, inlinedAt: !2549)
!2555 = !DILocation(line: 204, column: 33, scope: !2545, inlinedAt: !2549)
!2556 = !DILocation(line: 490, column: 9, scope: !2535)
!2557 = distinct !{!2557, !2533, !2558}
!2558 = !DILocation(line: 508, column: 3, scope: !2527)
!2559 = !DILocation(line: 492, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2540, file: !124, line: 490, column: 47)
!2561 = !DILocation(line: 494, column: 5, scope: !2560)
!2562 = distinct !DISubprogram(name: "nk_fiber_create", scope: !124, file: !124, line: 602, type: !2563, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2566)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!48, !259, !31, !75, !45, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2576}
!2567 = !DILocalVariable(name: "fun", arg: 1, scope: !2562, file: !124, line: 602, type: !259)
!2568 = !DILocalVariable(name: "input", arg: 2, scope: !2562, file: !124, line: 602, type: !31)
!2569 = !DILocalVariable(name: "output", arg: 3, scope: !2562, file: !124, line: 602, type: !75)
!2570 = !DILocalVariable(name: "stack_size", arg: 4, scope: !2562, file: !124, line: 602, type: !45)
!2571 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !2562, file: !124, line: 602, type: !2565)
!2572 = !DILocalVariable(name: "fiber", scope: !2562, file: !124, line: 605, type: !240)
!2573 = !DILocalVariable(name: "required_stack_size", scope: !2562, file: !124, line: 608, type: !45)
!2574 = !DILocalVariable(name: "p", scope: !2575, file: !124, line: 611, type: !31)
!2575 = distinct !DILexicalBlock(scope: !2562, file: !124, line: 611, column: 11)
!2576 = !DILocalVariable(name: "p", scope: !2577, file: !124, line: 628, type: !31)
!2577 = distinct !DILexicalBlock(scope: !2562, file: !124, line: 628, column: 26)
!2578 = !DILocation(line: 602, column: 36, scope: !2562)
!2579 = !DILocation(line: 602, column: 47, scope: !2562)
!2580 = !DILocation(line: 602, column: 61, scope: !2562)
!2581 = !DILocation(line: 602, column: 85, scope: !2562)
!2582 = !DILocation(line: 602, column: 110, scope: !2562)
!2583 = !DILocation(line: 605, column: 15, scope: !2562)
!2584 = !DILocation(line: 608, column: 41, scope: !2562)
!2585 = !DILocation(line: 608, column: 19, scope: !2562)
!2586 = !DILocation(line: 611, column: 11, scope: !2575)
!2587 = !DILocation(line: 614, column: 8, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2562, file: !124, line: 614, column: 7)
!2589 = !DILocation(line: 614, column: 7, scope: !2562)
!2590 = !DILocation(line: 620, column: 3, scope: !2562)
!2591 = !DILocation(line: 623, column: 10, scope: !2562)
!2592 = !DILocation(line: 623, column: 19, scope: !2562)
!2593 = !DILocation(line: 625, column: 10, scope: !2562)
!2594 = !DILocation(line: 625, column: 21, scope: !2562)
!2595 = !DILocation(line: 628, column: 26, scope: !2577)
!2596 = !DILocation(line: 628, column: 10, scope: !2562)
!2597 = !DILocation(line: 628, column: 16, scope: !2562)
!2598 = !DILocation(line: 631, column: 8, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2562, file: !124, line: 631, column: 7)
!2600 = !DILocation(line: 631, column: 7, scope: !2562)
!2601 = !DILocation(line: 634, column: 5, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2599, file: !124, line: 631, column: 21)
!2603 = !DILocation(line: 635, column: 5, scope: !2602)
!2604 = !DILocation(line: 639, column: 10, scope: !2562)
!2605 = !DILocation(line: 639, column: 14, scope: !2562)
!2606 = !DILocation(line: 640, column: 10, scope: !2562)
!2607 = !DILocation(line: 640, column: 16, scope: !2562)
!2608 = !DILocation(line: 641, column: 10, scope: !2562)
!2609 = !DILocation(line: 641, column: 17, scope: !2562)
!2610 = !DILocation(line: 274, column: 33, scope: !1144, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 644, column: 3, scope: !2562)
!2612 = !DILocation(line: 276, column: 37, scope: !1144, inlinedAt: !2611)
!2613 = !DILocation(line: 276, column: 6, scope: !1144, inlinedAt: !2611)
!2614 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 277, column: 3, scope: !1144, inlinedAt: !2611)
!2616 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2615)
!2617 = !DILocation(line: 276, column: 32, scope: !1144, inlinedAt: !2611)
!2618 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2615)
!2619 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2615)
!2620 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2615)
!2621 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 278, column: 3, scope: !1144, inlinedAt: !2611)
!2623 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2622)
!2624 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2622)
!2625 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2622)
!2626 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2622)
!2627 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 279, column: 3, scope: !1144, inlinedAt: !2611)
!2629 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2628)
!2630 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2628)
!2631 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2628)
!2632 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2628)
!2633 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 280, column: 3, scope: !1144, inlinedAt: !2611)
!2635 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2634)
!2636 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2634)
!2637 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2634)
!2638 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2634)
!2639 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 281, column: 3, scope: !1144, inlinedAt: !2611)
!2641 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2640)
!2642 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2640)
!2643 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2640)
!2644 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2640)
!2645 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 282, column: 3, scope: !1144, inlinedAt: !2611)
!2647 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2646)
!2648 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2646)
!2649 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2646)
!2650 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2646)
!2651 = !DILocation(line: 283, column: 18, scope: !1144, inlinedAt: !2611)
!2652 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 283, column: 3, scope: !1144, inlinedAt: !2611)
!2654 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2653)
!2655 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2653)
!2656 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2653)
!2657 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2653)
!2658 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 284, column: 3, scope: !1144, inlinedAt: !2611)
!2660 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2659)
!2661 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2659)
!2662 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2659)
!2663 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2659)
!2664 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 285, column: 3, scope: !1144, inlinedAt: !2611)
!2666 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2665)
!2667 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2665)
!2668 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2665)
!2669 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2665)
!2670 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 286, column: 3, scope: !1144, inlinedAt: !2611)
!2672 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2671)
!2673 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2671)
!2674 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2671)
!2675 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2671)
!2676 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 287, column: 3, scope: !1144, inlinedAt: !2611)
!2678 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2677)
!2679 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2677)
!2680 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2677)
!2681 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2677)
!2682 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 288, column: 3, scope: !1144, inlinedAt: !2611)
!2684 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2683)
!2685 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2683)
!2686 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2683)
!2687 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2683)
!2688 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 289, column: 3, scope: !1144, inlinedAt: !2611)
!2690 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2689)
!2691 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2689)
!2692 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2689)
!2693 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2689)
!2694 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 290, column: 3, scope: !1144, inlinedAt: !2611)
!2696 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2695)
!2697 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2695)
!2698 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2695)
!2699 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2695)
!2700 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 291, column: 3, scope: !1144, inlinedAt: !2611)
!2702 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2701)
!2703 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2701)
!2704 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2701)
!2705 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2701)
!2706 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 292, column: 3, scope: !1144, inlinedAt: !2611)
!2708 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !2707)
!2709 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !2707)
!2710 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !2707)
!2711 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !2707)
!2712 = !DILocation(line: 647, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2562, file: !124, line: 647, column: 7)
!2714 = !DILocation(line: 647, column: 7, scope: !2562)
!2715 = !DILocation(line: 648, column: 19, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !124, line: 647, column: 20)
!2717 = !DILocation(line: 649, column: 3, scope: !2716)
!2718 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 650, column: 15, scope: !2562)
!2720 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2719)
!2721 = !DILocation(line: 650, column: 33, scope: !2562)
!2722 = !DILocation(line: 650, column: 10, scope: !2562)
!2723 = !DILocation(line: 650, column: 13, scope: !2562)
!2724 = !DILocation(line: 653, column: 27, scope: !2562)
!2725 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 653, column: 3, scope: !2562)
!2727 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !2726)
!2728 = !DILocation(line: 76, column: 8, scope: !830, inlinedAt: !2726)
!2729 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !2726)
!2730 = !DILocation(line: 656, column: 10, scope: !2562)
!2731 = !DILocation(line: 656, column: 19, scope: !2562)
!2732 = !DILocation(line: 657, column: 27, scope: !2562)
!2733 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 657, column: 3, scope: !2562)
!2735 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !2734)
!2736 = !DILocation(line: 76, column: 8, scope: !830, inlinedAt: !2734)
!2737 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !2734)
!2738 = !DILocation(line: 658, column: 27, scope: !2562)
!2739 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 658, column: 3, scope: !2562)
!2741 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !2740)
!2742 = !DILocation(line: 76, column: 8, scope: !830, inlinedAt: !2740)
!2743 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !2740)
!2744 = !DILocation(line: 660, column: 3, scope: !2562)
!2745 = !DILocation(line: 0, scope: !2562)
!2746 = !DILocation(line: 661, column: 1, scope: !2562)
!2747 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2748)
!2748 = !{!2749}
!2749 = !DILocalVariable(name: "f_to", scope: !2747, file: !124, line: 708, type: !240)
!2750 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 98, column: 10, scope: !739, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 704, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2747, file: !124, line: 704, column: 7)
!2755 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2751)
!2756 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2752)
!2757 = !DILocation(line: 98, column: 30, scope: !739, inlinedAt: !2753)
!2758 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 704, column: 30, scope: !2754)
!2760 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2759)
!2761 = !DILocation(line: 704, column: 27, scope: !2754)
!2762 = !DILocation(line: 704, column: 7, scope: !2747)
!2763 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 122, column: 41, scope: !772, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 708, column: 22, scope: !2747)
!2768 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2764)
!2769 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2765)
!2770 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !2766)
!2771 = !DILocation(line: 122, column: 21, scope: !772, inlinedAt: !2767)
!2772 = !DILocation(line: 125, column: 15, scope: !772, inlinedAt: !2767)
!2773 = !DILocation(line: 184, column: 54, scope: !796, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 126, column: 9, scope: !779, inlinedAt: !2767)
!2775 = !DILocation(line: 186, column: 15, scope: !796, inlinedAt: !2774)
!2776 = !DILocation(line: 186, column: 20, scope: !796, inlinedAt: !2774)
!2777 = !DILocation(line: 126, column: 7, scope: !772, inlinedAt: !2767)
!2778 = !DILocation(line: 128, column: 25, scope: !777, inlinedAt: !2767)
!2779 = !DILocation(line: 131, column: 40, scope: !778, inlinedAt: !2767)
!2780 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 131, column: 5, scope: !778, inlinedAt: !2767)
!2782 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !2781)
!2783 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !2781)
!2784 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !2781)
!2786 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !2785)
!2787 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !2785)
!2788 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !2785)
!2789 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !2785)
!2790 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !2785)
!2791 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !2781)
!2793 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !2792)
!2794 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !2792)
!2795 = !DILocation(line: 708, column: 15, scope: !2747)
!2796 = !DILocation(line: 718, column: 12, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2747, file: !124, line: 718, column: 7)
!2798 = !DILocation(line: 718, column: 7, scope: !2747)
!2799 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 719, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !124, line: 719, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2797, file: !124, line: 718, column: 21)
!2805 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2800)
!2806 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2801)
!2807 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !2802)
!2808 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 719, column: 31, scope: !2803)
!2812 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2809)
!2813 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2810)
!2814 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !2811)
!2815 = !DILocation(line: 719, column: 28, scope: !2803)
!2816 = !DILocation(line: 719, column: 9, scope: !2804)
!2817 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 723, column: 16, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2803, file: !124, line: 722, column: 12)
!2822 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2818)
!2823 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !2819)
!2824 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !2820)
!2825 = !DILocation(line: 725, column: 3, scope: !2804)
!2826 = !DILocation(line: 0, scope: !2747)
!2827 = !DILocation(line: 727, column: 10, scope: !2747)
!2828 = !DILocation(line: 727, column: 3, scope: !2747)
!2829 = !DILocation(line: 728, column: 1, scope: !2747)
!2830 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !1378, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2831)
!2831 = !{!2832, !2833, !2837, !2838, !2843, !2845, !2848, !2850, !2852, !2858, !2859, !2864, !2866, !2869, !2871}
!2832 = !DILocalVariable(name: "my_cpu", scope: !2830, file: !124, line: 572, type: !270)
!2833 = !DILocalVariable(name: "_p", scope: !2834, file: !124, line: 573, type: !48)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !124, line: 573, column: 5)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !124, line: 573, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 573, column: 5)
!2837 = !DILocalVariable(name: "_t", scope: !2834, file: !124, line: 573, type: !160)
!2838 = !DILocalVariable(name: "__r", scope: !2839, file: !124, line: 573, type: !291)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !124, line: 573, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !124, line: 573, column: 5)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !124, line: 573, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2834, file: !124, line: 573, column: 5)
!2843 = !DILocalVariable(name: "__r", scope: !2844, file: !124, line: 573, type: !291)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !124, line: 573, column: 5)
!2845 = !DILocalVariable(name: "__r", scope: !2846, file: !124, line: 573, type: !291)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !124, line: 573, column: 5)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !124, line: 573, column: 5)
!2848 = !DILocalVariable(name: "__r", scope: !2849, file: !124, line: 573, type: !291)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !124, line: 573, column: 5)
!2850 = !DILocalVariable(name: "_p", scope: !2851, file: !124, line: 573, type: !48)
!2851 = distinct !DILexicalBlock(scope: !2835, file: !124, line: 573, column: 5)
!2852 = !DILocalVariable(name: "_p", scope: !2853, file: !124, line: 575, type: !48)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !124, line: 575, column: 2)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !124, line: 575, column: 2)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !124, line: 575, column: 2)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !124, line: 574, column: 45)
!2857 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 574, column: 9)
!2858 = !DILocalVariable(name: "_t", scope: !2853, file: !124, line: 575, type: !160)
!2859 = !DILocalVariable(name: "__r", scope: !2860, file: !124, line: 575, type: !291)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !124, line: 575, column: 2)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !124, line: 575, column: 2)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !124, line: 575, column: 2)
!2863 = distinct !DILexicalBlock(scope: !2853, file: !124, line: 575, column: 2)
!2864 = !DILocalVariable(name: "__r", scope: !2865, file: !124, line: 575, type: !291)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !124, line: 575, column: 2)
!2866 = !DILocalVariable(name: "__r", scope: !2867, file: !124, line: 575, type: !291)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !124, line: 575, column: 2)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !124, line: 575, column: 2)
!2869 = !DILocalVariable(name: "__r", scope: !2870, file: !124, line: 575, type: !291)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !124, line: 575, column: 2)
!2871 = !DILocalVariable(name: "_p", scope: !2872, file: !124, line: 575, type: !48)
!2872 = distinct !DILexicalBlock(scope: !2854, file: !124, line: 575, column: 2)
!2873 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 572, column: 26, scope: !2830)
!2875 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !2874)
!2876 = !DILocation(line: 572, column: 17, scope: !2830)
!2877 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 573, column: 5, scope: !2835)
!2879 = !DILocation(line: 573, column: 5, scope: !2835)
!2880 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 0, scope: !2835)
!2883 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !2882)
!2884 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !2882)
!2885 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !2882)
!2886 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !2882)
!2887 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !2882)
!2888 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !2882)
!2889 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !2882)
!2890 = !DILocation(line: 0, scope: !1557, inlinedAt: !2882)
!2891 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 0, scope: !2835)
!2894 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !2893)
!2895 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !2893)
!2896 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !2893)
!2897 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !2893)
!2898 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !2893)
!2899 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !2893)
!2900 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !2893)
!2901 = !DILocation(line: 573, column: 5, scope: !2836)
!2902 = !DILocation(line: 573, column: 5, scope: !2834)
!2903 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 573, column: 5, scope: !2834)
!2905 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !2904)
!2906 = !DILocation(line: 573, column: 5, scope: !2841)
!2907 = !DILocation(line: 0, scope: !2841)
!2908 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 0, scope: !2841)
!2912 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2910)
!2913 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2910)
!2914 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2910)
!2915 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2910)
!2916 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2910)
!2917 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2910)
!2918 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2910)
!2919 = !DILocation(line: 573, column: 5, scope: !2842)
!2920 = !DILocation(line: 573, column: 5, scope: !2840)
!2921 = !DILocation(line: 573, column: 5, scope: !2847)
!2922 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 573, column: 5, scope: !2834)
!2925 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2924)
!2926 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2924)
!2927 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2924)
!2928 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2924)
!2929 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2924)
!2930 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2924)
!2931 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2924)
!2932 = !DILocation(line: 573, column: 5, scope: !2851)
!2933 = !DILocation(line: 573, column: 5, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !124, line: 573, column: 5)
!2935 = distinct !DILexicalBlock(scope: !2851, file: !124, line: 573, column: 5)
!2936 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 0, scope: !2934)
!2940 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !2938)
!2941 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !2938)
!2942 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !2938)
!2943 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !2938)
!2944 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !2938)
!2945 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !2938)
!2946 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !2938)
!2947 = !DILocation(line: 0, scope: !2934)
!2948 = !DILocation(line: 573, column: 5, scope: !2935)
!2949 = !DILocation(line: 573, column: 5, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2934, file: !124, line: 573, column: 5)
!2951 = !DILocation(line: 573, column: 5, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2934, file: !124, line: 573, column: 5)
!2953 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 573, column: 5, scope: !2851)
!2956 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !2955)
!2957 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !2955)
!2958 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !2955)
!2959 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !2955)
!2960 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !2955)
!2961 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !2955)
!2962 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !2955)
!2963 = !DILocation(line: 561, column: 3, scope: !2964, inlinedAt: !2993)
!2964 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2965)
!2965 = !{!2966, !2968, !2971, !2973, !2978, !2979, !2984, !2986, !2989, !2991}
!2966 = !DILocalVariable(name: "tid", scope: !2964, file: !124, line: 561, type: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!2968 = !DILocalVariable(name: "__r", scope: !2969, file: !124, line: 562, type: !291)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !124, line: 562, column: 79)
!2970 = distinct !DILexicalBlock(scope: !2964, file: !124, line: 562, column: 7)
!2971 = !DILocalVariable(name: "__r", scope: !2972, file: !124, line: 562, type: !291)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !124, line: 562, column: 79)
!2973 = !DILocalVariable(name: "_p", scope: !2974, file: !124, line: 563, type: !48)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !124, line: 563, column: 7)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !124, line: 563, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !124, line: 563, column: 7)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !124, line: 562, column: 93)
!2978 = !DILocalVariable(name: "_t", scope: !2974, file: !124, line: 563, type: !160)
!2979 = !DILocalVariable(name: "__r", scope: !2980, file: !124, line: 563, type: !291)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !124, line: 563, column: 7)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !124, line: 563, column: 7)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !124, line: 563, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !124, line: 563, column: 7)
!2984 = !DILocalVariable(name: "__r", scope: !2985, file: !124, line: 563, type: !291)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !124, line: 563, column: 7)
!2986 = !DILocalVariable(name: "__r", scope: !2987, file: !124, line: 563, type: !291)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !124, line: 563, column: 7)
!2988 = distinct !DILexicalBlock(scope: !2982, file: !124, line: 563, column: 7)
!2989 = !DILocalVariable(name: "__r", scope: !2990, file: !124, line: 563, type: !291)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !124, line: 563, column: 7)
!2991 = !DILocalVariable(name: "_p", scope: !2992, file: !124, line: 563, type: !48)
!2992 = distinct !DILexicalBlock(scope: !2975, file: !124, line: 563, column: 7)
!2993 = distinct !DILocation(line: 574, column: 9, scope: !2857)
!2994 = !DILocation(line: 562, column: 79, scope: !2972, inlinedAt: !2993)
!2995 = !{i32 -2147099479}
!2996 = !DILocation(line: 562, column: 79, scope: !2969, inlinedAt: !2993)
!2997 = !DILocation(line: 561, column: 18, scope: !2964, inlinedAt: !2993)
!2998 = !DILocation(line: 562, column: 7, scope: !2970, inlinedAt: !2993)
!2999 = !DILocation(line: 562, column: 7, scope: !2964, inlinedAt: !2993)
!3000 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 563, column: 7, scope: !2975, inlinedAt: !2993)
!3002 = !DILocation(line: 563, column: 7, scope: !2975, inlinedAt: !2993)
!3003 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 0, scope: !2975, inlinedAt: !2993)
!3006 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !3005)
!3007 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !3005)
!3008 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !3005)
!3009 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !3005)
!3010 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !3005)
!3011 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !3005)
!3012 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !3005)
!3013 = !DILocation(line: 0, scope: !1557, inlinedAt: !3005)
!3014 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 0, scope: !2975, inlinedAt: !2993)
!3017 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !3016)
!3018 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !3016)
!3019 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !3016)
!3020 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !3016)
!3021 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !3016)
!3022 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !3016)
!3023 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !3016)
!3024 = !DILocation(line: 563, column: 7, scope: !2976, inlinedAt: !2993)
!3025 = !DILocation(line: 563, column: 7, scope: !2974, inlinedAt: !2993)
!3026 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 563, column: 7, scope: !2974, inlinedAt: !2993)
!3028 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !3027)
!3029 = !DILocation(line: 563, column: 7, scope: !2982, inlinedAt: !2993)
!3030 = !DILocation(line: 0, scope: !2982, inlinedAt: !2993)
!3031 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 0, scope: !2982, inlinedAt: !2993)
!3035 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !3033)
!3036 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !3033)
!3037 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !3033)
!3038 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !3033)
!3039 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !3033)
!3040 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !3033)
!3041 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !3033)
!3042 = !DILocation(line: 563, column: 7, scope: !2983, inlinedAt: !2993)
!3043 = !DILocation(line: 563, column: 7, scope: !2981, inlinedAt: !2993)
!3044 = !DILocation(line: 563, column: 7, scope: !2988, inlinedAt: !2993)
!3045 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 563, column: 7, scope: !2974, inlinedAt: !2993)
!3048 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !3047)
!3049 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !3047)
!3050 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !3047)
!3051 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !3047)
!3052 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !3047)
!3053 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !3047)
!3054 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !3047)
!3055 = !DILocation(line: 563, column: 7, scope: !2992, inlinedAt: !2993)
!3056 = !DILocation(line: 563, column: 7, scope: !3057, inlinedAt: !2993)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !124, line: 563, column: 7)
!3058 = distinct !DILexicalBlock(scope: !2992, file: !124, line: 563, column: 7)
!3059 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 0, scope: !3057, inlinedAt: !2993)
!3063 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !3061)
!3064 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !3061)
!3065 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !3061)
!3066 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !3061)
!3067 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !3061)
!3068 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !3061)
!3069 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !3061)
!3070 = !DILocation(line: 0, scope: !3057, inlinedAt: !2993)
!3071 = !DILocation(line: 563, column: 7, scope: !3058, inlinedAt: !2993)
!3072 = !DILocation(line: 563, column: 7, scope: !3073, inlinedAt: !2993)
!3073 = distinct !DILexicalBlock(scope: !3057, file: !124, line: 563, column: 7)
!3074 = !DILocation(line: 563, column: 7, scope: !3075, inlinedAt: !2993)
!3075 = distinct !DILexicalBlock(scope: !3057, file: !124, line: 563, column: 7)
!3076 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 563, column: 7, scope: !2992, inlinedAt: !2993)
!3079 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !3078)
!3080 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !3078)
!3081 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !3078)
!3082 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !3078)
!3083 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !3078)
!3084 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !3078)
!3085 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !3078)
!3086 = !DILocation(line: 568, column: 1, scope: !2964, inlinedAt: !2993)
!3087 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 575, column: 2, scope: !2854)
!3089 = !DILocation(line: 575, column: 2, scope: !2854)
!3090 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 84, column: 18, scope: !1551, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 0, scope: !2854)
!3093 = !DILocation(line: 84, column: 11, scope: !1551, inlinedAt: !3092)
!3094 = !DILocation(line: 85, column: 9, scope: !1557, inlinedAt: !3092)
!3095 = !DILocation(line: 85, column: 9, scope: !1551, inlinedAt: !3092)
!3096 = !DILocation(line: 87, column: 57, scope: !1560, inlinedAt: !3092)
!3097 = !DILocation(line: 87, column: 30, scope: !1560, inlinedAt: !3092)
!3098 = !DILocation(line: 87, column: 9, scope: !1560, inlinedAt: !3092)
!3099 = !DILocation(line: 87, column: 2, scope: !1560, inlinedAt: !3092)
!3100 = !DILocation(line: 0, scope: !1557, inlinedAt: !3092)
!3101 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 48, column: 18, scope: !1567, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 0, scope: !2854)
!3104 = !DILocation(line: 48, column: 11, scope: !1567, inlinedAt: !3103)
!3105 = !DILocation(line: 49, column: 9, scope: !1573, inlinedAt: !3103)
!3106 = !DILocation(line: 49, column: 9, scope: !1567, inlinedAt: !3103)
!3107 = !DILocation(line: 51, column: 50, scope: !1576, inlinedAt: !3103)
!3108 = !DILocation(line: 51, column: 23, scope: !1576, inlinedAt: !3103)
!3109 = !DILocation(line: 51, column: 2, scope: !1576, inlinedAt: !3103)
!3110 = !DILocation(line: 52, column: 5, scope: !1576, inlinedAt: !3103)
!3111 = !DILocation(line: 575, column: 2, scope: !2855)
!3112 = !DILocation(line: 575, column: 2, scope: !2853)
!3113 = !DILocation(line: 258, column: 26, scope: !1336, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 575, column: 2, scope: !2853)
!3115 = !DILocation(line: 258, column: 26, scope: !1337, inlinedAt: !3114)
!3116 = !DILocation(line: 575, column: 2, scope: !2862)
!3117 = !DILocation(line: 0, scope: !2862)
!3118 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 0, scope: !2862)
!3122 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !3120)
!3123 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !3120)
!3124 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !3120)
!3125 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !3120)
!3126 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !3120)
!3127 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !3120)
!3128 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !3120)
!3129 = !DILocation(line: 575, column: 2, scope: !2863)
!3130 = !DILocation(line: 575, column: 2, scope: !2861)
!3131 = !DILocation(line: 575, column: 2, scope: !2868)
!3132 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 575, column: 2, scope: !2853)
!3135 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !3134)
!3136 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !3134)
!3137 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !3134)
!3138 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !3134)
!3139 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !3134)
!3140 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !3134)
!3141 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !3134)
!3142 = !DILocation(line: 575, column: 2, scope: !2872)
!3143 = !DILocation(line: 575, column: 2, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !124, line: 575, column: 2)
!3145 = distinct !DILexicalBlock(scope: !2872, file: !124, line: 575, column: 2)
!3146 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 96, column: 18, scope: !1589, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 107, column: 12, scope: !1595, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 0, scope: !3144)
!3150 = !DILocation(line: 96, column: 11, scope: !1589, inlinedAt: !3148)
!3151 = !DILocation(line: 97, column: 9, scope: !1599, inlinedAt: !3148)
!3152 = !DILocation(line: 97, column: 9, scope: !1589, inlinedAt: !3148)
!3153 = !DILocation(line: 98, column: 57, scope: !1602, inlinedAt: !3148)
!3154 = !DILocation(line: 98, column: 30, scope: !1602, inlinedAt: !3148)
!3155 = !DILocation(line: 98, column: 9, scope: !1602, inlinedAt: !3148)
!3156 = !DILocation(line: 98, column: 2, scope: !1602, inlinedAt: !3148)
!3157 = !DILocation(line: 0, scope: !3144)
!3158 = !DILocation(line: 575, column: 2, scope: !3145)
!3159 = !DILocation(line: 575, column: 2, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3144, file: !124, line: 575, column: 2)
!3161 = !DILocation(line: 575, column: 2, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3144, file: !124, line: 575, column: 2)
!3163 = !DILocation(line: 43, column: 21, scope: !1543, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 59, column: 18, scope: !1611, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 575, column: 2, scope: !2872)
!3166 = !DILocation(line: 59, column: 11, scope: !1611, inlinedAt: !3165)
!3167 = !DILocation(line: 60, column: 9, scope: !1617, inlinedAt: !3165)
!3168 = !DILocation(line: 60, column: 9, scope: !1611, inlinedAt: !3165)
!3169 = !DILocation(line: 62, column: 50, scope: !1620, inlinedAt: !3165)
!3170 = !DILocation(line: 62, column: 23, scope: !1620, inlinedAt: !3165)
!3171 = !DILocation(line: 62, column: 2, scope: !1620, inlinedAt: !3165)
!3172 = !DILocation(line: 63, column: 5, scope: !1620, inlinedAt: !3165)
!3173 = !DILocation(line: 576, column: 2, scope: !2856)
!3174 = !DILocation(line: 579, column: 1, scope: !2830)
!3175 = distinct !DISubprogram(name: "nk_fiber_start", scope: !124, file: !124, line: 693, type: !3176, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!48, !259, !31, !75, !45, !29, !2565}
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184}
!3179 = !DILocalVariable(name: "fun", arg: 1, scope: !3175, file: !124, line: 693, type: !259)
!3180 = !DILocalVariable(name: "input", arg: 2, scope: !3175, file: !124, line: 693, type: !31)
!3181 = !DILocalVariable(name: "output", arg: 3, scope: !3175, file: !124, line: 693, type: !75)
!3182 = !DILocalVariable(name: "stack_size", arg: 4, scope: !3175, file: !124, line: 693, type: !45)
!3183 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !3175, file: !124, line: 693, type: !29)
!3184 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !3175, file: !124, line: 693, type: !2565)
!3185 = !DILocation(line: 693, column: 35, scope: !3175)
!3186 = !DILocation(line: 693, column: 46, scope: !3175)
!3187 = !DILocation(line: 693, column: 60, scope: !3175)
!3188 = !DILocation(line: 693, column: 84, scope: !3175)
!3189 = !DILocation(line: 693, column: 104, scope: !3175)
!3190 = !DILocation(line: 693, column: 134, scope: !3175)
!3191 = !DILocation(line: 695, column: 3, scope: !3175)
!3192 = !DILocation(line: 696, column: 16, scope: !3175)
!3193 = !DILocation(line: 696, column: 3, scope: !3175)
!3194 = !DILocation(line: 698, column: 3, scope: !3175)
!3195 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !711)
!3196 = !DILocation(line: 732, column: 3, scope: !3195)
!3197 = !DILocation(line: 733, column: 10, scope: !3195)
!3198 = !DILocation(line: 733, column: 3, scope: !3195)
!3199 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !1251, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3200)
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "f_to", arg: 1, scope: !3199, file: !124, line: 736, type: !240)
!3202 = !DILocalVariable(name: "new_to", scope: !3203, file: !124, line: 744, type: !240)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !124, line: 740, column: 38)
!3204 = distinct !DILexicalBlock(scope: !3199, file: !124, line: 740, column: 7)
!3205 = !DILocation(line: 736, column: 35, scope: !3199)
!3206 = !DILocation(line: 383, column: 42, scope: !1433, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 740, column: 7, scope: !3204)
!3208 = !DILocation(line: 386, column: 26, scope: !1440, inlinedAt: !3207)
!3209 = !DILocation(line: 386, column: 26, scope: !1438, inlinedAt: !3207)
!3210 = !DILocation(line: 386, column: 20, scope: !1433, inlinedAt: !3207)
!3211 = !DILocation(line: 387, column: 23, scope: !1433, inlinedAt: !3207)
!3212 = !DILocation(line: 387, column: 7, scope: !1433, inlinedAt: !3207)
!3213 = !DILocation(line: 392, column: 12, scope: !1445, inlinedAt: !3207)
!3214 = !DILocation(line: 392, column: 27, scope: !1450, inlinedAt: !3207)
!3215 = !DILocation(line: 392, column: 3, scope: !1445, inlinedAt: !3207)
!3216 = !DILocation(line: 394, column: 14, scope: !1449, inlinedAt: !3207)
!3217 = !DILocation(line: 394, column: 31, scope: !1449, inlinedAt: !3207)
!3218 = !DILocation(line: 394, column: 40, scope: !1449, inlinedAt: !3207)
!3219 = !DILocation(line: 390, column: 21, scope: !1433, inlinedAt: !3207)
!3220 = !DILocation(line: 395, column: 5, scope: !1447, inlinedAt: !3207)
!3221 = !DILocation(line: 391, column: 15, scope: !1433, inlinedAt: !3207)
!3222 = !DILocation(line: 0, scope: !1448, inlinedAt: !3207)
!3223 = !DILocation(line: 395, column: 5, scope: !1448, inlinedAt: !3207)
!3224 = !DILocation(line: 395, column: 5, scope: !1453, inlinedAt: !3207)
!3225 = !DILocation(line: 400, column: 16, scope: !1474, inlinedAt: !3207)
!3226 = !DILocation(line: 400, column: 11, scope: !1475, inlinedAt: !3207)
!3227 = !DILocation(line: 392, column: 43, scope: !1450, inlinedAt: !3207)
!3228 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 122, column: 41, scope: !772, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 744, column: 26, scope: !3203)
!3233 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3229)
!3234 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3230)
!3235 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !3231)
!3236 = !DILocation(line: 122, column: 21, scope: !772, inlinedAt: !3232)
!3237 = !DILocation(line: 125, column: 15, scope: !772, inlinedAt: !3232)
!3238 = !DILocation(line: 184, column: 54, scope: !796, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 126, column: 9, scope: !779, inlinedAt: !3232)
!3240 = !DILocation(line: 186, column: 15, scope: !796, inlinedAt: !3239)
!3241 = !DILocation(line: 186, column: 20, scope: !796, inlinedAt: !3239)
!3242 = !DILocation(line: 126, column: 7, scope: !772, inlinedAt: !3232)
!3243 = !DILocation(line: 128, column: 25, scope: !777, inlinedAt: !3232)
!3244 = !DILocation(line: 131, column: 40, scope: !778, inlinedAt: !3232)
!3245 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 131, column: 5, scope: !778, inlinedAt: !3232)
!3247 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !3246)
!3248 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !3246)
!3249 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !3246)
!3251 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !3250)
!3252 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !3250)
!3253 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !3250)
!3254 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !3250)
!3255 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !3250)
!3256 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !3246)
!3258 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !3257)
!3259 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !3257)
!3260 = !DILocation(line: 744, column: 17, scope: !3203)
!3261 = !DILocation(line: 746, column: 16, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3203, file: !124, line: 746, column: 9)
!3263 = !DILocation(line: 746, column: 9, scope: !3203)
!3264 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 747, column: 11, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !124, line: 747, column: 11)
!3269 = distinct !DILexicalBlock(scope: !3262, file: !124, line: 746, column: 25)
!3270 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3265)
!3271 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3266)
!3272 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !3267)
!3273 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 747, column: 33, scope: !3268)
!3277 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3274)
!3278 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3275)
!3279 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !3276)
!3280 = !DILocation(line: 747, column: 30, scope: !3268)
!3281 = !DILocation(line: 747, column: 11, scope: !3269)
!3282 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 92, column: 10, scope: !731, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 751, column: 20, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3268, file: !124, line: 750, column: 14)
!3287 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3283)
!3288 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3284)
!3289 = !DILocation(line: 92, column: 30, scope: !731, inlinedAt: !3285)
!3290 = !DILocation(line: 753, column: 5, scope: !3269)
!3291 = !DILocation(line: 0, scope: !3203)
!3292 = !DILocation(line: 756, column: 5, scope: !3203)
!3293 = !DILocation(line: 758, column: 5, scope: !3203)
!3294 = !DILocation(line: 401, column: 33, scope: !1483, inlinedAt: !3207)
!3295 = !DILocation(line: 151, column: 52, scope: !808, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 401, column: 9, scope: !1483, inlinedAt: !3207)
!3297 = !DILocation(line: 153, column: 20, scope: !808, inlinedAt: !3296)
!3298 = !DILocation(line: 153, column: 33, scope: !808, inlinedAt: !3296)
!3299 = !DILocation(line: 128, column: 50, scope: !817, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 153, column: 2, scope: !808, inlinedAt: !3296)
!3301 = !DILocation(line: 128, column: 75, scope: !817, inlinedAt: !3300)
!3302 = !DILocation(line: 130, column: 8, scope: !817, inlinedAt: !3300)
!3303 = !DILocation(line: 130, column: 13, scope: !817, inlinedAt: !3300)
!3304 = !DILocation(line: 131, column: 8, scope: !817, inlinedAt: !3300)
!3305 = !DILocation(line: 131, column: 13, scope: !817, inlinedAt: !3300)
!3306 = !DILocation(line: 73, column: 53, scope: !830, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 154, column: 2, scope: !808, inlinedAt: !3296)
!3308 = !DILocation(line: 75, column: 13, scope: !830, inlinedAt: !3307)
!3309 = !DILocation(line: 76, column: 13, scope: !830, inlinedAt: !3307)
!3310 = !DILocation(line: 762, column: 3, scope: !3199)
!3311 = !DILocation(line: 765, column: 3, scope: !3199)
!3312 = !DILocation(line: 0, scope: !3199)
!3313 = !DILocation(line: 766, column: 1, scope: !3199)
!3314 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !3315, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3320)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!48, !3317, !31}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!29, !31}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "cond_function", arg: 1, scope: !3314, file: !124, line: 768, type: !3317)
!3322 = !DILocalVariable(name: "state", arg: 2, scope: !3314, file: !124, line: 768, type: !31)
!3323 = !DILocation(line: 768, column: 42, scope: !3314)
!3324 = !DILocation(line: 768, column: 77, scope: !3314)
!3325 = !DILocation(line: 770, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3314, file: !124, line: 770, column: 7)
!3327 = !DILocation(line: 770, column: 7, scope: !3314)
!3328 = !DILocation(line: 771, column: 12, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !124, line: 770, column: 28)
!3330 = !DILocation(line: 771, column: 5, scope: !3329)
!3331 = !DILocation(line: 0, scope: !3314)
!3332 = !DILocation(line: 774, column: 1, scope: !3314)
!3333 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !3334, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!48, !240, !3317, !31}
!3336 = !{!3337, !3338, !3339}
!3337 = !DILocalVariable(name: "fib", arg: 1, scope: !3333, file: !124, line: 776, type: !240)
!3338 = !DILocalVariable(name: "cond_function", arg: 2, scope: !3333, file: !124, line: 776, type: !3317)
!3339 = !DILocalVariable(name: "state", arg: 3, scope: !3333, file: !124, line: 776, type: !31)
!3340 = !DILocation(line: 776, column: 47, scope: !3333)
!3341 = !DILocation(line: 776, column: 62, scope: !3333)
!3342 = !DILocation(line: 776, column: 97, scope: !3333)
!3343 = !DILocation(line: 778, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3333, file: !124, line: 778, column: 7)
!3345 = !DILocation(line: 778, column: 7, scope: !3333)
!3346 = !DILocation(line: 779, column: 12, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !124, line: 778, column: 28)
!3348 = !DILocation(line: 779, column: 5, scope: !3347)
!3349 = !DILocation(line: 0, scope: !3333)
!3350 = !DILocation(line: 782, column: 1, scope: !3333)
!3351 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !722, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369}
!3353 = !DILocalVariable(name: "curr", scope: !3351, file: !124, line: 787, type: !240)
!3354 = !DILocalVariable(name: "size", scope: !3351, file: !124, line: 790, type: !25)
!3355 = !DILocalVariable(name: "alloc_size", scope: !3351, file: !124, line: 790, type: !25)
!3356 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !3351, file: !124, line: 791, type: !25)
!3357 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !3351, file: !124, line: 792, type: !25)
!3358 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !3351, file: !124, line: 793, type: !25)
!3359 = !DILocalVariable(name: "child_stack", scope: !3351, file: !124, line: 794, type: !31)
!3360 = !DILocalVariable(name: "rsp", scope: !3351, file: !124, line: 795, type: !25)
!3361 = !DILocalVariable(name: "rbp0", scope: !3351, file: !124, line: 800, type: !31)
!3362 = !DILocalVariable(name: "rbp1", scope: !3351, file: !124, line: 801, type: !31)
!3363 = !DILocalVariable(name: "rbp_tos", scope: !3351, file: !124, line: 802, type: !31)
!3364 = !DILocalVariable(name: "ret0_addr", scope: !3351, file: !124, line: 803, type: !31)
!3365 = !DILocalVariable(name: "rbp_stash_addr", scope: !3351, file: !124, line: 815, type: !31)
!3366 = !DILocalVariable(name: "new", scope: !3351, file: !124, line: 831, type: !240)
!3367 = !DILocalVariable(name: "rbp_stash_ptr", scope: !3351, file: !124, line: 847, type: !75)
!3368 = !DILocalVariable(name: "rbp2_ptr", scope: !3351, file: !124, line: 851, type: !75)
!3369 = !DILocalVariable(name: "ret2_ptr", scope: !3351, file: !124, line: 852, type: !75)
!3370 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 787, column: 22, scope: !3351)
!3374 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3371)
!3375 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3372)
!3376 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !3373)
!3377 = !DILocation(line: 787, column: 15, scope: !3351)
!3378 = !DILocation(line: 798, column: 3, scope: !3351)
!3379 = !{i32 23631}
!3380 = !DILocation(line: 795, column: 16, scope: !3351)
!3381 = !DILocation(line: 800, column: 21, scope: !3351)
!3382 = !DILocation(line: 800, column: 9, scope: !3351)
!3383 = !DILocation(line: 801, column: 21, scope: !3351)
!3384 = !DILocation(line: 801, column: 9, scope: !3351)
!3385 = !DILocation(line: 802, column: 21, scope: !3351)
!3386 = !DILocation(line: 802, column: 9, scope: !3351)
!3387 = !DILocation(line: 803, column: 26, scope: !3351)
!3388 = !DILocation(line: 803, column: 9, scope: !3351)
!3389 = !DILocation(line: 805, column: 44, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3351, file: !124, line: 805, column: 7)
!3391 = !DILocation(line: 805, column: 25, scope: !3390)
!3392 = !DILocation(line: 0, scope: !3351)
!3393 = !DILocation(line: 806, column: 46, scope: !3390)
!3394 = !DILocation(line: 806, column: 20, scope: !3390)
!3395 = !DILocation(line: 805, column: 50, scope: !3390)
!3396 = !DILocation(line: 815, column: 36, scope: !3351)
!3397 = !DILocation(line: 815, column: 9, scope: !3351)
!3398 = !DILocation(line: 821, column: 19, scope: !3351)
!3399 = !DILocation(line: 821, column: 24, scope: !3351)
!3400 = !DILocation(line: 790, column: 12, scope: !3351)
!3401 = !DILocation(line: 822, column: 37, scope: !3351)
!3402 = !DILocation(line: 791, column: 16, scope: !3351)
!3403 = !DILocation(line: 792, column: 16, scope: !3351)
!3404 = !DILocation(line: 825, column: 32, scope: !3351)
!3405 = !DILocation(line: 825, column: 57, scope: !3351)
!3406 = !DILocation(line: 793, column: 16, scope: !3351)
!3407 = !DILocation(line: 790, column: 18, scope: !3351)
!3408 = !DILocation(line: 831, column: 3, scope: !3351)
!3409 = !DILocation(line: 831, column: 15, scope: !3351)
!3410 = !DILocation(line: 832, column: 3, scope: !3351)
!3411 = !DILocation(line: 835, column: 15, scope: !3351)
!3412 = !DILocation(line: 113, column: 31, scope: !759, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 835, column: 3, scope: !3351)
!3414 = !DILocation(line: 113, column: 43, scope: !759, inlinedAt: !3413)
!3415 = !DILocation(line: 115, column: 8, scope: !759, inlinedAt: !3413)
!3416 = !DILocation(line: 115, column: 12, scope: !759, inlinedAt: !3413)
!3417 = !DILocation(line: 116, column: 6, scope: !759, inlinedAt: !3413)
!3418 = !DILocation(line: 116, column: 26, scope: !759, inlinedAt: !3413)
!3419 = !DILocation(line: 837, column: 17, scope: !3351)
!3420 = !DILocation(line: 837, column: 22, scope: !3351)
!3421 = !DILocation(line: 794, column: 17, scope: !3351)
!3422 = !DILocation(line: 839, column: 22, scope: !3351)
!3423 = !DILocation(line: 839, column: 35, scope: !3351)
!3424 = !DILocation(line: 839, column: 3, scope: !3351)
!3425 = !DILocation(line: 840, column: 57, scope: !3351)
!3426 = !DILocation(line: 840, column: 14, scope: !3351)
!3427 = !DILocation(line: 840, column: 3, scope: !3351)
!3428 = !DILocation(line: 840, column: 8, scope: !3351)
!3429 = !DILocation(line: 840, column: 12, scope: !3351)
!3430 = !DILocation(line: 847, column: 35, scope: !3351)
!3431 = !DILocation(line: 847, column: 40, scope: !3351)
!3432 = !DILocation(line: 847, column: 78, scope: !3351)
!3433 = !DILocation(line: 847, column: 26, scope: !3351)
!3434 = !DILocation(line: 847, column: 10, scope: !3351)
!3435 = !DILocation(line: 848, column: 37, scope: !3351)
!3436 = !DILocation(line: 848, column: 20, scope: !3351)
!3437 = !DILocation(line: 848, column: 18, scope: !3351)
!3438 = !DILocation(line: 851, column: 30, scope: !3351)
!3439 = !DILocation(line: 851, column: 35, scope: !3351)
!3440 = !DILocation(line: 851, column: 39, scope: !3351)
!3441 = !DILocation(line: 851, column: 68, scope: !3351)
!3442 = !DILocation(line: 851, column: 21, scope: !3351)
!3443 = !DILocation(line: 851, column: 10, scope: !3351)
!3444 = !DILocation(line: 852, column: 29, scope: !3351)
!3445 = !DILocation(line: 852, column: 10, scope: !3351)
!3446 = !DILocation(line: 861, column: 13, scope: !3351)
!3447 = !DILocation(line: 868, column: 16, scope: !3351)
!3448 = !DILocation(line: 868, column: 21, scope: !3351)
!3449 = !DILocation(line: 868, column: 24, scope: !3351)
!3450 = !DILocation(line: 868, column: 4, scope: !3351)
!3451 = !DILocation(line: 868, column: 41, scope: !3351)
!3452 = !DILocation(line: 871, column: 16, scope: !3351)
!3453 = !DILocation(line: 663, column: 30, scope: !887, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 871, column: 3, scope: !3351)
!3455 = !DILocation(line: 663, column: 41, scope: !887, inlinedAt: !3454)
!3456 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 98, column: 10, scope: !739, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 666, column: 30, scope: !887, inlinedAt: !3454)
!3460 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3457)
!3461 = !DILocation(line: 666, column: 16, scope: !887, inlinedAt: !3454)
!3462 = !DILocation(line: 0, scope: !887, inlinedAt: !3454)
!3463 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 105, column: 12, scope: !749, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 674, column: 41, scope: !887, inlinedAt: !3454)
!3467 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3464)
!3468 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3465)
!3469 = !DILocation(line: 105, column: 32, scope: !749, inlinedAt: !3466)
!3470 = !DILocation(line: 674, column: 21, scope: !887, inlinedAt: !3454)
!3471 = !DILocation(line: 678, column: 6, scope: !887, inlinedAt: !3454)
!3472 = !DILocation(line: 678, column: 15, scope: !887, inlinedAt: !3454)
!3473 = !DILocation(line: 679, column: 22, scope: !887, inlinedAt: !3454)
!3474 = !DILocation(line: 116, column: 52, scope: !958, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 679, column: 3, scope: !887, inlinedAt: !3454)
!3476 = !DILocation(line: 116, column: 76, scope: !958, inlinedAt: !3475)
!3477 = !DILocation(line: 118, column: 25, scope: !958, inlinedAt: !3475)
!3478 = !DILocation(line: 85, column: 49, scope: !966, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 118, column: 2, scope: !958, inlinedAt: !3475)
!3480 = !DILocation(line: 86, column: 28, scope: !966, inlinedAt: !3479)
!3481 = !DILocation(line: 87, column: 28, scope: !966, inlinedAt: !3479)
!3482 = !DILocation(line: 89, column: 13, scope: !966, inlinedAt: !3479)
!3483 = !DILocation(line: 90, column: 8, scope: !966, inlinedAt: !3479)
!3484 = !DILocation(line: 90, column: 13, scope: !966, inlinedAt: !3479)
!3485 = !DILocation(line: 91, column: 8, scope: !966, inlinedAt: !3479)
!3486 = !DILocation(line: 91, column: 13, scope: !966, inlinedAt: !3479)
!3487 = !DILocation(line: 92, column: 8, scope: !966, inlinedAt: !3479)
!3488 = !DILocation(line: 92, column: 13, scope: !966, inlinedAt: !3479)
!3489 = !DILocation(line: 683, column: 20, scope: !984, inlinedAt: !3454)
!3490 = !DILocation(line: 683, column: 7, scope: !984, inlinedAt: !3454)
!3491 = !DILocation(line: 683, column: 7, scope: !887, inlinedAt: !3454)
!3492 = !DILocation(line: 687, column: 5, scope: !988, inlinedAt: !3454)
!3493 = !DILocation(line: 688, column: 3, scope: !988, inlinedAt: !3454)
!3494 = !DILocation(line: 873, column: 10, scope: !3351)
!3495 = !DILocation(line: 874, column: 1, scope: !3351)
!3496 = !DILocation(line: 873, column: 3, scope: !3351)
!3497 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !1251, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DILocalVariable(name: "wait_on", arg: 1, scope: !3497, file: !124, line: 877, type: !240)
!3500 = !DILocalVariable(name: "curr_fiber", scope: !3497, file: !124, line: 887, type: !240)
!3501 = !DILocalVariable(name: "wait_q", scope: !3497, file: !124, line: 896, type: !150)
!3502 = !DILocation(line: 877, column: 31, scope: !3497)
!3503 = !DILocation(line: 883, column: 8, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3497, file: !124, line: 883, column: 7)
!3505 = !DILocation(line: 883, column: 7, scope: !3497)
!3506 = !DILocation(line: 129, column: 25, scope: !713, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 78, column: 10, scope: !706, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 85, column: 10, scope: !721, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 887, column: 28, scope: !3497)
!3510 = !DILocation(line: 129, column: 12, scope: !713, inlinedAt: !3507)
!3511 = !DILocation(line: 78, column: 21, scope: !706, inlinedAt: !3508)
!3512 = !DILocation(line: 85, column: 30, scope: !721, inlinedAt: !3509)
!3513 = !DILocation(line: 887, column: 15, scope: !3497)
!3514 = !DILocation(line: 896, column: 41, scope: !3497)
!3515 = !DILocation(line: 896, column: 21, scope: !3497)
!3516 = !DILocation(line: 897, column: 31, scope: !3497)
!3517 = !DILocation(line: 116, column: 52, scope: !958, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 897, column: 3, scope: !3497)
!3519 = !DILocation(line: 116, column: 76, scope: !958, inlinedAt: !3518)
!3520 = !DILocation(line: 118, column: 25, scope: !958, inlinedAt: !3518)
!3521 = !DILocation(line: 85, column: 49, scope: !966, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 118, column: 2, scope: !958, inlinedAt: !3518)
!3523 = !DILocation(line: 86, column: 28, scope: !966, inlinedAt: !3522)
!3524 = !DILocation(line: 87, column: 28, scope: !966, inlinedAt: !3522)
!3525 = !DILocation(line: 89, column: 13, scope: !966, inlinedAt: !3522)
!3526 = !DILocation(line: 90, column: 8, scope: !966, inlinedAt: !3522)
!3527 = !DILocation(line: 90, column: 13, scope: !966, inlinedAt: !3522)
!3528 = !DILocation(line: 91, column: 8, scope: !966, inlinedAt: !3522)
!3529 = !DILocation(line: 91, column: 13, scope: !966, inlinedAt: !3522)
!3530 = !DILocation(line: 92, column: 8, scope: !966, inlinedAt: !3522)
!3531 = !DILocation(line: 92, column: 13, scope: !966, inlinedAt: !3522)
!3532 = !DILocation(line: 898, column: 12, scope: !3497)
!3533 = !DILocation(line: 898, column: 20, scope: !3497)
!3534 = !DILocation(line: 899, column: 15, scope: !3497)
!3535 = !DILocation(line: 899, column: 24, scope: !3497)
!3536 = !DILocation(line: 903, column: 10, scope: !3497)
!3537 = !DILocation(line: 0, scope: !3497)
!3538 = !DILocation(line: 904, column: 1, scope: !3497)
