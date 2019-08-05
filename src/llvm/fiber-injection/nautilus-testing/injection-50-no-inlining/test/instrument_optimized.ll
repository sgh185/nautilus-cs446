; ModuleID = 'src/test/instrument_optimized.bc'
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
  %3 = tail call i32 @test_simple_routine2() #10, !dbg !504
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !541
  %6 = bitcast %struct.nk_fiber** %2 to i8*, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11, !dbg !542
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !543, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !551, metadata !DIExpression()) #11, !dbg !543
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !550, metadata !DIExpression()) #11, !dbg !554
  %8 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %7, i64 0, i32 24, !dbg !555
  %9 = bitcast %struct.nk_virtual_console** %8 to i64*, !dbg !555
  %10 = load i64, i64* %9, align 8, !dbg !555
  store i64 %10, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !556
  %11 = bitcast i64* %3 to i8*, !dbg !557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #11, !dbg !557
  %12 = bitcast i64* %4 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #11, !dbg !558
  call void @nk_get_rand_bytes(i8* nonnull %11, i32 8) #12, !dbg !559
  call void @nk_get_rand_bytes(i8* nonnull %12, i32 8) #12, !dbg !560
  %13 = call i8* @kmem_malloc(i64 8) #12, !dbg !561
  call void @llvm.dbg.value(metadata i8* %13, metadata !536, metadata !DIExpression()), !dbg !561
  %14 = call i8* @kmem_malloc(i64 8) #12, !dbg !562
  call void @llvm.dbg.value(metadata i8* %14, metadata !539, metadata !DIExpression()), !dbg !562
  %15 = icmp ne i8* %13, null, !dbg !563
  %16 = icmp ne i8* %14, null, !dbg !565
  %17 = and i1 %15, %16, !dbg !566
  br i1 %17, label %20, label %18, !dbg !566

; <label>:18:                                     ; preds = %0
  %19 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !567
  br label %33, !dbg !569

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
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !594
  call void @llvm.dbg.value(metadata i8* %13, metadata !589, metadata !DIExpression()) #11, !dbg !596
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !597
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !598
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !599
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !600
  %27 = call i32 @nk_fiber_create(void (i8*, i8**)* @routine_simple_1, i8* %13, i8** null, i64 0, %struct.nk_fiber** %1) #12, !dbg !601
  %28 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !602
  %29 = call i32 @nk_fiber_run(%struct.nk_fiber* %28, i8 zeroext 1) #12, !dbg !603
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !604
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_2, metadata !583, metadata !DIExpression()) #11, !dbg !605
  call void @llvm.dbg.value(metadata i8* %14, metadata !589, metadata !DIExpression()) #11, !dbg !607
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !608
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !609
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !610
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !593, metadata !DIExpression()) #11, !dbg !611
  %30 = call i32 @nk_fiber_create(void (i8*, i8**)* @routine_simple_2, i8* %14, i8** null, i64 0, %struct.nk_fiber** %2) #12, !dbg !612
  %31 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !613
  %32 = call i32 @nk_fiber_run(%struct.nk_fiber* %31, i8 zeroext 1) #12, !dbg !614
  br label %33, !dbg !615

; <label>:33:                                     ; preds = %20, %18
  %34 = phi i32 [ 0, %20 ], [ -1, %18 ], !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #11, !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #11, !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11, !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !617
  ret i32 %34, !dbg !617
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
define dso_local void @routine_simple_1(i8*, i8** nocapture readnone) #0 !dbg !618 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !620, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i8** undef, metadata !621, metadata !DIExpression()), !dbg !625
  %3 = bitcast i8* %0 to i64*, !dbg !626
  call void @llvm.dbg.value(metadata i64* %3, metadata !622, metadata !DIExpression()), !dbg !627
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !628
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !630
  %5 = load i64, i64* %3, align 8, !dbg !631
  %6 = icmp eq i64 %5, 0, !dbg !632
  br i1 %6, label %14, label %7, !dbg !633

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !623, metadata !DIExpression()), !dbg !630
  %9 = add i32 %8, 1, !dbg !634
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #12, !dbg !636
  call void @llvm.dbg.value(metadata i32 %9, metadata !623, metadata !DIExpression()), !dbg !630
  %11 = zext i32 %9 to i64, !dbg !637
  %12 = load i64, i64* %3, align 8, !dbg !631
  %13 = icmp ugt i64 %12, %11, !dbg !632
  br i1 %13, label %7, label %14, !dbg !633, !llvm.loop !638

; <label>:14:                                     ; preds = %7, %2
  %15 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !640
  call void @llvm.dbg.value(metadata i32 %15, metadata !623, metadata !DIExpression()), !dbg !630
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %15) #12, !dbg !641
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !646, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i8** undef, metadata !647, metadata !DIExpression()), !dbg !651
  %3 = bitcast i8* %0 to i64*, !dbg !652
  call void @llvm.dbg.value(metadata i64* %3, metadata !648, metadata !DIExpression()), !dbg !653
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !654
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !655
  call void @llvm.dbg.value(metadata i32 0, metadata !649, metadata !DIExpression()), !dbg !656
  %5 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !657
  call void @llvm.dbg.value(metadata i32 0, metadata !649, metadata !DIExpression()), !dbg !656
  %6 = load i64, i64* %3, align 8, !dbg !658
  %7 = icmp eq i64 %6, 0, !dbg !659
  br i1 %7, label %15, label %8, !dbg !660

; <label>:8:                                      ; preds = %2, %8
  %9 = phi i32 [ %10, %8 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !649, metadata !DIExpression()), !dbg !656
  %10 = add i32 %9, 1, !dbg !661
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %9) #12, !dbg !663
  call void @llvm.dbg.value(metadata i32 %10, metadata !649, metadata !DIExpression()), !dbg !656
  %12 = zext i32 %10 to i64, !dbg !664
  %13 = load i64, i64* %3, align 8, !dbg !658
  %14 = icmp ugt i64 %13, %12, !dbg !659
  br i1 %14, label %8, label %15, !dbg !660, !llvm.loop !665

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %10, %8 ], !dbg !667
  call void @llvm.dbg.value(metadata i32 %16, metadata !649, metadata !DIExpression()), !dbg !656
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #12, !dbg !668
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !669
  ret void, !dbg !670
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !671 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8* %1, metadata !674, metadata !DIExpression()), !dbg !676
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !677
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !686, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !686
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !688
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !689
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !689
  %9 = load i64, i64* %8, align 8, !dbg !689
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !690
  %10 = bitcast i64* %4 to i8*, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !691
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !692
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !693
  call void @llvm.dbg.value(metadata i8* %11, metadata !683, metadata !DIExpression()) #11, !dbg !693
  %12 = icmp eq i8* %11, null, !dbg !694
  br i1 %12, label %13, label %15, !dbg !696

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !697
  br label %22, !dbg !699

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !700
  call void @llvm.dbg.value(metadata i64* %16, metadata !682, metadata !DIExpression()) #11, !dbg !701
  %17 = load i64, i64* %4, align 8, !dbg !702
  call void @llvm.dbg.value(metadata i64 %17, metadata !681, metadata !DIExpression()) #11, !dbg !703
  %18 = urem i64 %17, 5000, !dbg !704
  store i64 %18, i64* %16, align 8, !dbg !705
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !680, metadata !DIExpression(DW_OP_deref)) #11, !dbg !706
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !707
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !709
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !711
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !712
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !713
  %19 = call i32 @nk_fiber_create(void (i8*, i8**)* @routine_simple_1, i8* %11, i8** null, i64 0, %struct.nk_fiber** %3) #12, !dbg !714
  %20 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !715
  %21 = call i32 @nk_fiber_run(%struct.nk_fiber* %20, i8 zeroext 1) #12, !dbg !716
  br label %22, !dbg !717

; <label>:22:                                     ; preds = %13, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !718
  ret i32 0, !dbg !719
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !678 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !720
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !721, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !721
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !723
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !724
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !724
  %7 = load i64, i64* %6, align 8, !dbg !724
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !725
  %8 = bitcast i64* %2 to i8*, !dbg !726
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !726
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !727
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !728
  call void @llvm.dbg.value(metadata i8* %9, metadata !683, metadata !DIExpression()), !dbg !728
  %10 = icmp eq i8* %9, null, !dbg !729
  br i1 %10, label %11, label %13, !dbg !730

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !731
  br label %20, !dbg !732

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !733
  call void @llvm.dbg.value(metadata i64* %14, metadata !682, metadata !DIExpression()), !dbg !734
  %15 = load i64, i64* %2, align 8, !dbg !735
  call void @llvm.dbg.value(metadata i64 %15, metadata !681, metadata !DIExpression()), !dbg !736
  %16 = urem i64 %15, 5000, !dbg !737
  store i64 %16, i64* %14, align 8, !dbg !738
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !680, metadata !DIExpression(DW_OP_deref)), !dbg !739
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !740
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !742
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !743
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !744
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !745
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !746
  %17 = call i32 @nk_fiber_create(void (i8*, i8**)* @routine_simple_1, i8* %9, i8** null, i64 0, %struct.nk_fiber** %1) #12, !dbg !747
  %18 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !748
  %19 = call i32 @nk_fiber_run(%struct.nk_fiber* %18, i8 zeroext 1) #12, !dbg !749
  br label %20, !dbg !750

; <label>:20:                                     ; preds = %13, %11
  %21 = phi i32 [ 0, %13 ], [ -1, %11 ], !dbg !751
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !752
  ret i32 %21, !dbg !752
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !753 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !759
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !765
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !766
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !766
  ret %struct.nk_fiber_percpu_state* %4, !dbg !767
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !768 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !771
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !774
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !775
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !775
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !776
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !776
  ret %struct.nk_fiber* %6, !dbg !777
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !778 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !779
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !782
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !783
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !783
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !784
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !784
  ret %struct.nk_fiber* %6, !dbg !785
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !786 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !789
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !792
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !793
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !793
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !794
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !794
  ret %struct.nk_thread* %6, !dbg !795
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !796 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !799
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !802
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !803
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !803
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !804
  ret %struct.list_head* %5, !dbg !805
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !806 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i64 %1, metadata !811, metadata !DIExpression()), !dbg !813
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !814
  %4 = load i64, i64* %3, align 8, !dbg !815
  %5 = add i64 %4, -8, !dbg !815
  store i64 %5, i64* %3, align 8, !dbg !815
  %6 = inttoptr i64 %5 to i64*, !dbg !816
  store i64 %1, i64* %6, align 8, !dbg !817
  ret void, !dbg !818
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !819 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !833
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !837
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !838
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !838
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !839
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !821, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !842, metadata !DIExpression()), !dbg !847
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !849
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !849
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !850
  br i1 %8, label %20, label %9, !dbg !851

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()), !dbg !852
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !852
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !852
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !823, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !822, metadata !DIExpression()), !dbg !841
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !853
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !854, metadata !DIExpression()), !dbg !859
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !861
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !861
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !862
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !863, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !868, metadata !DIExpression()), !dbg !871
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !872
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !873
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !874
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !875
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !876, metadata !DIExpression()), !dbg !879
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !881
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !881
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !882
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !882
  br label %20, !dbg !883

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !884
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !822, metadata !DIExpression()), !dbg !841
  ret %struct.nk_fiber* %21, !dbg !885
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !886 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !890, metadata !DIExpression()), !dbg !901
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !902
  store i32 4, i32* %3, align 4, !dbg !903
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !891, metadata !DIExpression()), !dbg !904
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !905
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !893, metadata !DIExpression()), !dbg !906
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !907
  %6 = load i32, i32* %5, align 8, !dbg !907
  %7 = icmp sgt i32 %6, 0, !dbg !908
  br i1 %7, label %8, label %66, !dbg !909

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !909

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !894, metadata !DIExpression()), !dbg !910
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !911
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !911
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !910
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !910
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !910
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !894, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !892, metadata !DIExpression()), !dbg !912
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !913
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !854, metadata !DIExpression()), !dbg !914
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !916
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !916
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !917
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !917
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !863, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !868, metadata !DIExpression()), !dbg !920
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !921
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !922
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !923
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !924
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !876, metadata !DIExpression()), !dbg !925
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !927
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !928
  %24 = load i32, i32* %5, align 8, !dbg !929
  %25 = add i32 %24, -1, !dbg !929
  store i32 %25, i32* %5, align 8, !dbg !929
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !930
  br i1 %26, label %63, label %27, !dbg !932

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !933, metadata !DIExpression()) #11, !dbg !941
  call void @llvm.dbg.value(metadata i8 1, metadata !938, metadata !DIExpression()) #11, !dbg !944
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !945
  call void @llvm.dbg.value(metadata i64 %28, metadata !939, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !949
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !950, !srcloc !970
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !957, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !956, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !955, metadata !DIExpression()) #11, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !973
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !980
  %30 = load i64, i64* %2, align 8, !dbg !981
  call void @llvm.dbg.value(metadata i64 %30, metadata !978, metadata !DIExpression()) #11, !dbg !982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !983
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !984
  %32 = load i32, i32* %31, align 8, !dbg !984
  %33 = zext i32 %32 to i64, !dbg !985
  %34 = urem i64 %30, %33, !dbg !986
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !987, !srcloc !988
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !965, metadata !DIExpression()) #11, !dbg !987
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !963, metadata !DIExpression()) #11, !dbg !989
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !962, metadata !DIExpression()) #11, !dbg !990
  %36 = shl nuw i64 %34, 32, !dbg !991
  %37 = ashr exact i64 %36, 32, !dbg !991
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !991
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !991
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !939, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !949
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !992
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !992
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !992
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !992
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !939, metadata !DIExpression()) #11, !dbg !949
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !993
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !997
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !998
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !998
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !999
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !940, metadata !DIExpression()) #11, !dbg !1000
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1001
  store i32 1, i32* %49, align 4, !dbg !1002
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1003
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1004, metadata !DIExpression()) #11, !dbg !1008
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1007, metadata !DIExpression()) #11, !dbg !1010
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1011
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1012, metadata !DIExpression()) #11, !dbg !1019
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1017, metadata !DIExpression()) #11, !dbg !1021
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1018, metadata !DIExpression()) #11, !dbg !1022
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1023
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1024
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1025
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1026
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1027
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1028
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1029
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1030
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1030
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1032
  br i1 %58, label %61, label %59, !dbg !1033

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !1034
  br label %61, !dbg !1036

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !907
  br label %63, !dbg !907

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !907
  %65 = icmp sgt i32 %64, 0, !dbg !908
  br i1 %65, label %11, label %66, !dbg !909, !llvm.loop !1037

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1039
  store i8 1, i8* %67, align 8, !dbg !1040
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1041
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1046
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1047
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1047
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1048
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !821, metadata !DIExpression()) #11, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !842, metadata !DIExpression()) #11, !dbg !1051
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1053
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1053
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1054
  br i1 %75, label %88, label %76, !dbg !1055

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !1056
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1056
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1056
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !823, metadata !DIExpression()) #11, !dbg !1056
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !822, metadata !DIExpression()) #11, !dbg !1050
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1057
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !854, metadata !DIExpression()) #11, !dbg !1058
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1060
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1060
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !863, metadata !DIExpression()) #11, !dbg !1062
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !868, metadata !DIExpression()) #11, !dbg !1064
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1065
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1066
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1067
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !876, metadata !DIExpression()) #11, !dbg !1069
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1071
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1071
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1072
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !822, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !891, metadata !DIExpression()), !dbg !904
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1073
  br i1 %87, label %88, label %95, !dbg !1075

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1076
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1081
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1082
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1082
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1083
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !891, metadata !DIExpression()), !dbg !904
  br label %95, !dbg !1084

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1085
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !891, metadata !DIExpression()), !dbg !904
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1086
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1089
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1090
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1090
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1091
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1092
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1093
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1096
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1097
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1097
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1098
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1098
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1099
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !854, metadata !DIExpression()), !dbg !1100
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1102
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1102
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1103
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1103
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !863, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !868, metadata !DIExpression()), !dbg !1106
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1107
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1108
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1109
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !876, metadata !DIExpression()), !dbg !1111
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1113
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1114
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1115
  %116 = load i8*, i8** %115, align 8, !dbg !1115
  call void @kmem_free(i8* %116) #12, !dbg !1115
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1116
  call void @kmem_free(i8* %117) #12, !dbg !1116
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !934 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !933, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %1, metadata !938, metadata !DIExpression()), !dbg !1120
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1121
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !939, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1126
  %6 = icmp eq i8 %1, 0, !dbg !1127
  br i1 %6, label %20, label %7, !dbg !1128

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1129, !srcloc !970
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !957, metadata !DIExpression()) #11, !dbg !1129
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !956, metadata !DIExpression()) #11, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !955, metadata !DIExpression()) #11, !dbg !1133
  %9 = bitcast i64* %3 to i8*, !dbg !1134
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1134
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !1136
  %10 = load i64, i64* %3, align 8, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %10, metadata !978, metadata !DIExpression()) #11, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1139
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1140
  %12 = load i32, i32* %11, align 8, !dbg !1140
  %13 = zext i32 %12 to i64, !dbg !1141
  %14 = urem i64 %10, %13, !dbg !1142
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1143, !srcloc !988
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !965, metadata !DIExpression()) #11, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !963, metadata !DIExpression()) #11, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !962, metadata !DIExpression()) #11, !dbg !1145
  %16 = shl nuw i64 %14, 32, !dbg !1146
  %17 = ashr exact i64 %16, 32, !dbg !1146
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1146
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !939, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1126
  br label %20, !dbg !1147

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1148
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1148
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1148
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !939, metadata !DIExpression()), !dbg !1126
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1149
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1153
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1154
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1154
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1155
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !940, metadata !DIExpression()), !dbg !1156
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1157
  store i32 1, i32* %31, align 4, !dbg !1158
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1004, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1007, metadata !DIExpression()), !dbg !1162
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1163
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1163
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1012, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1017, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1018, metadata !DIExpression()), !dbg !1167
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1168
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1169
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1170
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1171
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1172
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1173
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1174
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1175
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1175
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1176
  br i1 %40, label %43, label %41, !dbg !1177

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !1178
  br label %43, !dbg !1179

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1180
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1181 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1183, metadata !DIExpression()), !dbg !1184
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1185
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1185
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1186
  %5 = load i8*, i8** %4, align 8, !dbg !1186
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1187
  %7 = load i8**, i8*** %6, align 8, !dbg !1187
  tail call void %3(i8* %5, i8** %7) #12, !dbg !1188
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !1191 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1193, metadata !DIExpression()), !dbg !1194
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1195
  %3 = bitcast i8** %2 to i64*, !dbg !1195
  %4 = load i64, i64* %3, align 8, !dbg !1195
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1196
  %6 = load i64, i64* %5, align 8, !dbg !1196
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1197
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !811, metadata !DIExpression()), !dbg !1200
  %8 = add i64 %4, -8, !dbg !1201
  %9 = add i64 %8, %6, !dbg !1202
  store i64 %9, i64* %7, align 8, !dbg !1202
  %10 = inttoptr i64 %9 to i64*, !dbg !1203
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1207
  %11 = load i64, i64* %7, align 8, !dbg !1208
  %12 = add i64 %11, -8, !dbg !1208
  store i64 %12, i64* %7, align 8, !dbg !1208
  %13 = inttoptr i64 %12 to i64*, !dbg !1209
  store i64 0, i64* %13, align 8, !dbg !1210
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1213
  %14 = load i64, i64* %7, align 8, !dbg !1214
  %15 = add i64 %14, -8, !dbg !1214
  store i64 %15, i64* %7, align 8, !dbg !1214
  %16 = inttoptr i64 %15 to i64*, !dbg !1215
  store i64 0, i64* %16, align 8, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1219
  %17 = load i64, i64* %7, align 8, !dbg !1220
  %18 = add i64 %17, -8, !dbg !1220
  store i64 %18, i64* %7, align 8, !dbg !1220
  %19 = inttoptr i64 %18 to i64*, !dbg !1221
  store i64 0, i64* %19, align 8, !dbg !1222
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1225
  %20 = load i64, i64* %7, align 8, !dbg !1226
  %21 = add i64 %20, -8, !dbg !1226
  store i64 %21, i64* %7, align 8, !dbg !1226
  %22 = inttoptr i64 %21 to i64*, !dbg !1227
  store i64 0, i64* %22, align 8, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1231
  %23 = load i64, i64* %7, align 8, !dbg !1232
  %24 = add i64 %23, -8, !dbg !1232
  store i64 %24, i64* %7, align 8, !dbg !1232
  %25 = inttoptr i64 %24 to i64*, !dbg !1233
  store i64 0, i64* %25, align 8, !dbg !1234
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %26, metadata !811, metadata !DIExpression()), !dbg !1238
  %27 = load i64, i64* %7, align 8, !dbg !1239
  %28 = add i64 %27, -8, !dbg !1239
  store i64 %28, i64* %7, align 8, !dbg !1239
  %29 = inttoptr i64 %28 to i64*, !dbg !1240
  store i64 %26, i64* %29, align 8, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1244
  %30 = load i64, i64* %7, align 8, !dbg !1245
  %31 = add i64 %30, -8, !dbg !1245
  store i64 %31, i64* %7, align 8, !dbg !1245
  %32 = inttoptr i64 %31 to i64*, !dbg !1246
  store i64 0, i64* %32, align 8, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1250
  %33 = load i64, i64* %7, align 8, !dbg !1251
  %34 = add i64 %33, -8, !dbg !1251
  store i64 %34, i64* %7, align 8, !dbg !1251
  %35 = inttoptr i64 %34 to i64*, !dbg !1252
  store i64 0, i64* %35, align 8, !dbg !1253
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1256
  %36 = load i64, i64* %7, align 8, !dbg !1257
  %37 = add i64 %36, -8, !dbg !1257
  store i64 %37, i64* %7, align 8, !dbg !1257
  %38 = inttoptr i64 %37 to i64*, !dbg !1258
  store i64 0, i64* %38, align 8, !dbg !1259
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1262
  %39 = load i64, i64* %7, align 8, !dbg !1263
  %40 = add i64 %39, -8, !dbg !1263
  store i64 %40, i64* %7, align 8, !dbg !1263
  %41 = inttoptr i64 %40 to i64*, !dbg !1264
  store i64 0, i64* %41, align 8, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1268
  %42 = load i64, i64* %7, align 8, !dbg !1269
  %43 = add i64 %42, -8, !dbg !1269
  store i64 %43, i64* %7, align 8, !dbg !1269
  %44 = inttoptr i64 %43 to i64*, !dbg !1270
  store i64 0, i64* %44, align 8, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1274
  %45 = load i64, i64* %7, align 8, !dbg !1275
  %46 = add i64 %45, -8, !dbg !1275
  store i64 %46, i64* %7, align 8, !dbg !1275
  %47 = inttoptr i64 %46 to i64*, !dbg !1276
  store i64 0, i64* %47, align 8, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1280
  %48 = load i64, i64* %7, align 8, !dbg !1281
  %49 = add i64 %48, -8, !dbg !1281
  store i64 %49, i64* %7, align 8, !dbg !1281
  %50 = inttoptr i64 %49 to i64*, !dbg !1282
  store i64 0, i64* %50, align 8, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1286
  %51 = load i64, i64* %7, align 8, !dbg !1287
  %52 = add i64 %51, -8, !dbg !1287
  store i64 %52, i64* %7, align 8, !dbg !1287
  %53 = inttoptr i64 %52 to i64*, !dbg !1288
  store i64 0, i64* %53, align 8, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !810, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !1292
  %54 = load i64, i64* %7, align 8, !dbg !1293
  %55 = add i64 %54, -8, !dbg !1293
  store i64 %55, i64* %7, align 8, !dbg !1293
  %56 = inttoptr i64 %55 to i64*, !dbg !1294
  store i64 0, i64* %56, align 8, !dbg !1295
  ret void, !dbg !1296
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1297 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1301, metadata !DIExpression()), !dbg !1306
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1307
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1311
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1312
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1312
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1313
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1302, metadata !DIExpression()), !dbg !1314
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1315
  %9 = load i32, i32* %8, align 4, !dbg !1315
  %10 = add i32 %9, -3, !dbg !1317
  %11 = icmp ult i32 %10, 2, !dbg !1317
  br i1 %11, label %13, label %12, !dbg !1317

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1318
  br label %13, !dbg !1320

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1321
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1325
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1326
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1326
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1327
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1327
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1328
  br i1 %20, label %36, label %21, !dbg !1329

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1330
  %23 = icmp eq i32 %22, 3, !dbg !1331
  br i1 %23, label %36, label %24, !dbg !1332

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1333
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !1337
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !1338
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !1338
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !1339
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1303, metadata !DIExpression()), !dbg !1340
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1004, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1007, metadata !DIExpression()), !dbg !1344
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !1345
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1012, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1017, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1018, metadata !DIExpression()), !dbg !1349
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !1350
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !1351
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !1352
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !1353
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !1354
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1355
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1356
  br label %36, !dbg !1357

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !1358
  %38 = load i32, i32* %37, align 8, !dbg !1358
  %39 = icmp eq i32 %38, 0, !dbg !1360
  br i1 %39, label %40, label %55, !dbg !1361

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1362
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !1362
  %43 = load i64, i64* %42, align 8, !dbg !1362
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !1364, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1370
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1372
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1376
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1377
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1377
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !1378
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !1369, metadata !DIExpression()) #11, !dbg !1379
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !1380
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !1381
  store i64 %43, i64* %51, align 8, !dbg !1381
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1382, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1388, metadata !DIExpression()) #11, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !1387, metadata !DIExpression()) #11, !dbg !1391
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !1392
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !1393
  store i64 %43, i64* %54, align 8, !dbg !1393
  br label %55, !dbg !1394

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1395
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !1398
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !1399
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !1399
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !1400
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !1401
  store i32 1, i32* %8, align 4, !dbg !1402
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1403
  store i32 5, i32* %61, align 4, !dbg !1404
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !1405
  ret i32 0, !dbg !1406
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !1365 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !1364, metadata !DIExpression()), !dbg !1407
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1408
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1412
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1413
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1413
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1414
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1414
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1369, metadata !DIExpression()), !dbg !1415
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !1416
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !1417
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1418, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1388, metadata !DIExpression()) #11, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !1387, metadata !DIExpression()) #11, !dbg !1420
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !1421
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !1422
  ret void, !dbg !1423
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !1424 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1429
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1433
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1434
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1434
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1435
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1435
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !1428, metadata !DIExpression()), !dbg !1436
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !1439 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1443, metadata !DIExpression()), !dbg !1446
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1447
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1451
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1452
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1452
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !1453
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1444, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 0, metadata !1445, metadata !DIExpression()), !dbg !1455
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !1456
  %9 = zext i1 %8 to i8, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %9, metadata !1445, metadata !DIExpression()), !dbg !1455
  ret i8 %9, !dbg !1459
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !959 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1460, !srcloc !970
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !957, metadata !DIExpression()) #11, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !956, metadata !DIExpression()) #11, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !955, metadata !DIExpression()) #11, !dbg !1463
  %3 = bitcast i64* %1 to i8*, !dbg !1464
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1464
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !1466
  %4 = load i64, i64* %1, align 8, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %4, metadata !978, metadata !DIExpression()) #11, !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1469
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1470
  %6 = load i32, i32* %5, align 8, !dbg !1470
  %7 = zext i32 %6 to i64, !dbg !1471
  %8 = urem i64 %4, %7, !dbg !1472
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1473, !srcloc !988
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !965, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !963, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !962, metadata !DIExpression()), !dbg !1475
  %10 = shl nuw i64 %8, 32, !dbg !1476
  %11 = ashr exact i64 %10, 32, !dbg !1476
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !1476
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !1476
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !1477
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !1477
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !1478
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !1478
  ret %struct.nk_thread* %17, !dbg !1479
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1480 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1482, metadata !DIExpression()), !dbg !1501
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1502, !srcloc !1503
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1486, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1484, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1483, metadata !DIExpression()), !dbg !1505
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !1506
  %4 = load i32, i32* %3, align 8, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %4, metadata !1488, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 0, metadata !1491, metadata !DIExpression()), !dbg !1508
  %5 = icmp sgt i32 %4, 0, !dbg !1509
  br i1 %5, label %6, label %38, !dbg !1510

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !1511
  br label %8, !dbg !1511

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1491, metadata !DIExpression()), !dbg !1508
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !1511
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !1511
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !1512
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !1512
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1489, metadata !DIExpression()), !dbg !1514
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1493, metadata !DIExpression(DW_OP_deref)), !dbg !1515
  call void @llvm.dbg.value(metadata i8** %15, metadata !1490, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !1516
  %16 = load i8*, i8** %15, align 8, !dbg !1517
  br label %17, !dbg !1518

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !1517
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !1519
  %20 = bitcast i8* %18 to i8**, !dbg !1519
  %21 = load i8*, i8** %20, align 8, !dbg !1519
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !1519
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !1519
  br i1 %22, label %27, label %23, !dbg !1518

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !1517
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !1517
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1490, metadata !DIExpression()), !dbg !1516
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !1520
  br i1 %26, label %30, label %17, !dbg !1523, !llvm.loop !1524

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i32 undef, metadata !1491, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1508
  %29 = icmp slt i64 %28, %7, !dbg !1509
  br i1 %29, label %8, label %38, !dbg !1510, !llvm.loop !1527

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1529
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !854, metadata !DIExpression()), !dbg !1531
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1533
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !1533
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !1534
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !1534
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !863, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !868, metadata !DIExpression()), !dbg !1537
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !1538
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !1539
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !1540
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !1541
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !876, metadata !DIExpression()), !dbg !1542
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !1544
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !1545
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !1546
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !1547 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !1576, !srcloc !1577
  call void @llvm.dbg.value(metadata i32 %1, metadata !1552, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()), !dbg !1579
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1580
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1582
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !1554, metadata !DIExpression()), !dbg !1583
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !1584
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1585
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !1586
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !1587
  br i1 %6, label %7, label %109, !dbg !1588

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1589
  %9 = icmp eq i64 %8, 0, !dbg !1595
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %10, metadata !1600, metadata !DIExpression()) #11, !dbg !1602
  %11 = icmp eq i64 %10, 0, !dbg !1603
  br i1 %11, label %17, label %12, !dbg !1605

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !1606
  %14 = inttoptr i64 %13 to i16*, !dbg !1608
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !1609
  %16 = zext i16 %15 to i32, !dbg !1609
  br label %17, !dbg !1610

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !1611
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %19, metadata !1616, metadata !DIExpression()) #11, !dbg !1618
  %20 = icmp eq i64 %19, 0, !dbg !1619
  br i1 %20, label %25, label %21, !dbg !1621

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !1622
  %23 = inttoptr i64 %22 to i16*, !dbg !1624
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !1625
  br label %25, !dbg !1626

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !1627

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1555, metadata !DIExpression()), !dbg !1628
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1629, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1388, metadata !DIExpression()) #11, !dbg !1629
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1387, metadata !DIExpression()) #11, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1561, metadata !DIExpression()), !dbg !1628
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !1632
  %29 = icmp eq i32 %28, 0, !dbg !1632
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !1633
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %31, metadata !1640, metadata !DIExpression()) #11, !dbg !1644
  %32 = icmp eq i64 %31, 0, !dbg !1645
  br i1 %32, label %38, label %33, !dbg !1647

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !1648
  %35 = inttoptr i64 %34 to i16*, !dbg !1650
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !1651
  %37 = icmp eq i16 %36, 0, !dbg !1652
  br i1 %37, label %38, label %39, !dbg !1633

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !1633

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !1633
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1633
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !1633
  br i1 %29, label %60, label %44, !dbg !1653

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !1654

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1654
  %47 = load i64, i64* %46, align 32, !dbg !1654
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1654
  %49 = load i8, i8* %48, align 8, !dbg !1654
  %50 = icmp eq i8 %49, 0, !dbg !1654
  br i1 %50, label %51, label %56, !dbg !1654

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1654
  %53 = load i8, i8* %52, align 64, !dbg !1654
  %54 = icmp eq i8 %53, 0, !dbg !1654
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !1654
  br label %56, !dbg !1654

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !1654
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !1654
  br label %76, !dbg !1654

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !1655

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !1655
  %63 = load i64, i64* %62, align 32, !dbg !1655
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !1655
  %65 = load i8, i8* %64, align 8, !dbg !1655
  %66 = icmp eq i8 %65, 0, !dbg !1655
  br i1 %66, label %67, label %72, !dbg !1655

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !1655
  %69 = load i8, i8* %68, align 64, !dbg !1655
  %70 = icmp eq i8 %69, 0, !dbg !1655
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !1655
  br label %72, !dbg !1655

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !1655
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !1655
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %77, metadata !1660, metadata !DIExpression()) #11, !dbg !1662
  %78 = icmp eq i64 %77, 0, !dbg !1663
  br i1 %78, label %109, label %79, !dbg !1665

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !1666
  %81 = inttoptr i64 %80 to i16*, !dbg !1668
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !1669
  br label %109, !dbg !1670

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !1574, metadata !DIExpression()), !dbg !1671
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !1672
  %85 = icmp eq i32 %84, 0, !dbg !1672
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %86, metadata !1640, metadata !DIExpression()) #11, !dbg !1679
  %87 = icmp eq i64 %86, 0, !dbg !1680
  br i1 %87, label %93, label %88, !dbg !1681

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !1682
  %90 = inttoptr i64 %89 to i16*, !dbg !1683
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !1684
  %92 = icmp eq i16 %91, 0, !dbg !1685
  br i1 %92, label %93, label %94, !dbg !1686

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !1686

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !1686
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1686
  br i1 %85, label %100, label %98, !dbg !1687

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !1688
  br label %102, !dbg !1688

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !1690
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %103, metadata !1660, metadata !DIExpression()) #11, !dbg !1695
  %104 = icmp eq i64 %103, 0, !dbg !1696
  br i1 %104, label %109, label %105, !dbg !1697

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !1698
  %107 = inttoptr i64 %106 to i16*, !dbg !1699
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !1700
  br label %109, !dbg !1701

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !1702
  ret i32 %110, !dbg !1703
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !1704 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !1736, !srcloc !1737
  call void @llvm.dbg.value(metadata i32 %1, metadata !1713, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 %1, metadata !1711, metadata !DIExpression()), !dbg !1738
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %2, metadata !1709, metadata !DIExpression()), !dbg !1739
  %3 = icmp eq i8* %2, null, !dbg !1740
  br i1 %3, label %4, label %106, !dbg !1741

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1742
  %6 = icmp eq i64 %5, 0, !dbg !1744
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %7, metadata !1600, metadata !DIExpression()) #11, !dbg !1748
  %8 = icmp eq i64 %7, 0, !dbg !1749
  br i1 %8, label %14, label %9, !dbg !1750

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !1751
  %11 = inttoptr i64 %10 to i16*, !dbg !1752
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1753
  %13 = zext i16 %12 to i32, !dbg !1753
  br label %14, !dbg !1754

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !1755
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %16, metadata !1616, metadata !DIExpression()) #11, !dbg !1759
  %17 = icmp eq i64 %16, 0, !dbg !1760
  br i1 %17, label %22, label %18, !dbg !1761

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1762
  %20 = inttoptr i64 %19 to i16*, !dbg !1763
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1764
  br label %22, !dbg !1765

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1766

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1715, metadata !DIExpression()), !dbg !1767
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1768, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1388, metadata !DIExpression()) #11, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1387, metadata !DIExpression()) #11, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1721, metadata !DIExpression()), !dbg !1767
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !1771
  %26 = icmp eq i32 %25, 0, !dbg !1771
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !1772
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %28, metadata !1640, metadata !DIExpression()) #11, !dbg !1777
  %29 = icmp eq i64 %28, 0, !dbg !1778
  br i1 %29, label %35, label %30, !dbg !1779

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1780
  %32 = inttoptr i64 %31 to i16*, !dbg !1781
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1782
  %34 = icmp eq i16 %33, 0, !dbg !1783
  br i1 %34, label %35, label %36, !dbg !1772

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1772

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1772
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1772
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1772
  br i1 %26, label %57, label %41, !dbg !1784

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1785

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1785
  %44 = load i64, i64* %43, align 32, !dbg !1785
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1785
  %46 = load i8, i8* %45, align 8, !dbg !1785
  %47 = icmp eq i8 %46, 0, !dbg !1785
  br i1 %47, label %48, label %53, !dbg !1785

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1785
  %50 = load i8, i8* %49, align 64, !dbg !1785
  %51 = icmp eq i8 %50, 0, !dbg !1785
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1785
  br label %53, !dbg !1785

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1785
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !1785
  br label %73, !dbg !1785

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1786

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1786
  %60 = load i64, i64* %59, align 32, !dbg !1786
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1786
  %62 = load i8, i8* %61, align 8, !dbg !1786
  %63 = icmp eq i8 %62, 0, !dbg !1786
  br i1 %63, label %64, label %69, !dbg !1786

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1786
  %66 = load i8, i8* %65, align 64, !dbg !1786
  %67 = icmp eq i8 %66, 0, !dbg !1786
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1786
  br label %69, !dbg !1786

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1786
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !1786
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %74, metadata !1660, metadata !DIExpression()) #11, !dbg !1790
  %75 = icmp eq i64 %74, 0, !dbg !1791
  br i1 %75, label %114, label %76, !dbg !1792

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1793
  %78 = inttoptr i64 %77 to i16*, !dbg !1794
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1795
  br label %114, !dbg !1796

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1734, metadata !DIExpression()), !dbg !1797
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !1798
  %82 = icmp eq i32 %81, 0, !dbg !1798
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %83, metadata !1640, metadata !DIExpression()) #11, !dbg !1805
  %84 = icmp eq i64 %83, 0, !dbg !1806
  br i1 %84, label %90, label %85, !dbg !1807

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1808
  %87 = inttoptr i64 %86 to i16*, !dbg !1809
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1810
  %89 = icmp eq i16 %88, 0, !dbg !1811
  br i1 %89, label %90, label %91, !dbg !1812

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1812

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1812
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1812
  br i1 %82, label %97, label %95, !dbg !1813

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !1814
  br label %99, !dbg !1814

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !1816
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %100, metadata !1660, metadata !DIExpression()) #11, !dbg !1821
  %101 = icmp eq i64 %100, 0, !dbg !1822
  br i1 %101, label %114, label %102, !dbg !1823

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1824
  %104 = inttoptr i64 %103 to i16*, !dbg !1825
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1826
  br label %114, !dbg !1827

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !1828
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !1708, metadata !DIExpression()), !dbg !1829
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !1830
  %109 = bitcast i8* %2 to i32*, !dbg !1831
  tail call void @spinlock_init(i32* %109) #12, !dbg !1832
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1833
  call void @llvm.dbg.value(metadata i8* %110, metadata !876, metadata !DIExpression()), !dbg !1834
  %111 = bitcast i8* %110 to i8**, !dbg !1836
  store i8* %110, i8** %111, align 8, !dbg !1836
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1837
  %113 = bitcast i8* %112 to i8**, !dbg !1838
  store i8* %110, i8** %113, align 8, !dbg !1838
  br label %115, !dbg !1839

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !1840
  br label %115, !dbg !1841

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !1842
  ret %struct.nk_fiber_percpu_state* %116, !dbg !1843
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !1844 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !1887
  %2 = zext i32 %1 to i64, !dbg !1888
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !1888
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !1888
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !1846, metadata !DIExpression()), !dbg !1889
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1890
  %6 = icmp eq i64 %5, 0, !dbg !1892
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %7, metadata !1600, metadata !DIExpression()) #11, !dbg !1896
  %8 = icmp eq i64 %7, 0, !dbg !1897
  br i1 %8, label %14, label %9, !dbg !1898

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !1899
  %11 = inttoptr i64 %10 to i16*, !dbg !1900
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !1901
  %13 = zext i16 %12 to i32, !dbg !1901
  br label %14, !dbg !1902

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !1903
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %16, metadata !1616, metadata !DIExpression()) #11, !dbg !1907
  %17 = icmp eq i64 %16, 0, !dbg !1908
  br i1 %17, label %22, label %18, !dbg !1909

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !1910
  %20 = inttoptr i64 %19 to i16*, !dbg !1911
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !1912
  br label %22, !dbg !1913

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !1914

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1847, metadata !DIExpression()), !dbg !1915
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1916, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1388, metadata !DIExpression()) #11, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1387, metadata !DIExpression()) #11, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !1851, metadata !DIExpression()), !dbg !1915
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !1919
  %26 = icmp eq i32 %25, 0, !dbg !1919
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !1920
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %28, metadata !1640, metadata !DIExpression()) #11, !dbg !1925
  %29 = icmp eq i64 %28, 0, !dbg !1926
  br i1 %29, label %35, label %30, !dbg !1927

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !1928
  %32 = inttoptr i64 %31 to i16*, !dbg !1929
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !1930
  %34 = icmp eq i16 %33, 0, !dbg !1931
  br i1 %34, label %35, label %36, !dbg !1920

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !1920

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !1920
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1920
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !1920
  br i1 %26, label %57, label %41, !dbg !1932

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !1933

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1933
  %44 = load i64, i64* %43, align 32, !dbg !1933
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1933
  %46 = load i8, i8* %45, align 8, !dbg !1933
  %47 = icmp eq i8 %46, 0, !dbg !1933
  br i1 %47, label %48, label %53, !dbg !1933

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1933
  %50 = load i8, i8* %49, align 64, !dbg !1933
  %51 = icmp eq i8 %50, 0, !dbg !1933
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !1933
  br label %53, !dbg !1933

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !1933
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !1933
  br label %73, !dbg !1933

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !1934

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !1934
  %60 = load i64, i64* %59, align 32, !dbg !1934
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !1934
  %62 = load i8, i8* %61, align 8, !dbg !1934
  %63 = icmp eq i8 %62, 0, !dbg !1934
  br i1 %63, label %64, label %69, !dbg !1934

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !1934
  %66 = load i8, i8* %65, align 64, !dbg !1934
  %67 = icmp eq i8 %66, 0, !dbg !1934
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !1934
  br label %69, !dbg !1934

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !1934
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !1934
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %74, metadata !1660, metadata !DIExpression()) #11, !dbg !1938
  %75 = icmp eq i64 %74, 0, !dbg !1939
  br i1 %75, label %106, label %76, !dbg !1940

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !1941
  %78 = inttoptr i64 %77 to i16*, !dbg !1942
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !1943
  br label %106, !dbg !1944

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !1864, metadata !DIExpression()), !dbg !1945
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !1946
  %82 = icmp eq i32 %81, 0, !dbg !1946
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %83, metadata !1640, metadata !DIExpression()) #11, !dbg !1953
  %84 = icmp eq i64 %83, 0, !dbg !1954
  br i1 %84, label %90, label %85, !dbg !1955

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !1956
  %87 = inttoptr i64 %86 to i16*, !dbg !1957
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !1958
  %89 = icmp eq i16 %88, 0, !dbg !1959
  br i1 %89, label %90, label %91, !dbg !1960

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !1960

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !1960
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !1960
  br i1 %82, label %97, label %95, !dbg !1961

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !1962
  br label %99, !dbg !1962

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !1964
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %100, metadata !1660, metadata !DIExpression()) #11, !dbg !1969
  %101 = icmp eq i64 %100, 0, !dbg !1970
  br i1 %101, label %106, label %102, !dbg !1971

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !1972
  %104 = inttoptr i64 %103 to i16*, !dbg !1973
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !1974
  br label %106, !dbg !1975

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !1976
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !1977
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !1978
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !1979
  br i1 %109, label %110, label %212, !dbg !1980

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1981
  %112 = icmp eq i64 %111, 0, !dbg !1983
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %113, metadata !1600, metadata !DIExpression()) #11, !dbg !1987
  %114 = icmp eq i64 %113, 0, !dbg !1988
  br i1 %114, label %120, label %115, !dbg !1989

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !1990
  %117 = inttoptr i64 %116 to i16*, !dbg !1991
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !1992
  %119 = zext i16 %118 to i32, !dbg !1992
  br label %120, !dbg !1993

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !1994
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %122, metadata !1616, metadata !DIExpression()) #11, !dbg !1998
  %123 = icmp eq i64 %122, 0, !dbg !1999
  br i1 %123, label %128, label %124, !dbg !2000

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2001
  %126 = inttoptr i64 %125 to i16*, !dbg !2002
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2003
  br label %128, !dbg !2004

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2005

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1866, metadata !DIExpression()), !dbg !2006
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2007, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1388, metadata !DIExpression()) #11, !dbg !2007
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1387, metadata !DIExpression()) #11, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !1872, metadata !DIExpression()), !dbg !2006
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !2010
  %132 = icmp eq i32 %131, 0, !dbg !2010
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2011
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %134, metadata !1640, metadata !DIExpression()) #11, !dbg !2016
  %135 = icmp eq i64 %134, 0, !dbg !2017
  br i1 %135, label %141, label %136, !dbg !2018

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2019
  %138 = inttoptr i64 %137 to i16*, !dbg !2020
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2021
  %140 = icmp eq i16 %139, 0, !dbg !2022
  br i1 %140, label %141, label %142, !dbg !2011

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2011

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2011
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2011
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2011
  br i1 %132, label %163, label %147, !dbg !2023

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2024

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2024
  %150 = load i64, i64* %149, align 32, !dbg !2024
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2024
  %152 = load i8, i8* %151, align 8, !dbg !2024
  %153 = icmp eq i8 %152, 0, !dbg !2024
  br i1 %153, label %154, label %159, !dbg !2024

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2024
  %156 = load i8, i8* %155, align 64, !dbg !2024
  %157 = icmp eq i8 %156, 0, !dbg !2024
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !2024
  br label %159, !dbg !2024

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !2024
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2024
  br label %179, !dbg !2024

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2025

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2025
  %166 = load i64, i64* %165, align 32, !dbg !2025
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2025
  %168 = load i8, i8* %167, align 8, !dbg !2025
  %169 = icmp eq i8 %168, 0, !dbg !2025
  br i1 %169, label %170, label %175, !dbg !2025

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2025
  %172 = load i8, i8* %171, align 64, !dbg !2025
  %173 = icmp eq i8 %172, 0, !dbg !2025
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !2025
  br label %175, !dbg !2025

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !2025
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2025
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %180, metadata !1660, metadata !DIExpression()) #11, !dbg !2029
  %181 = icmp eq i64 %180, 0, !dbg !2030
  br i1 %181, label %212, label %182, !dbg !2031

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2032
  %184 = inttoptr i64 %183 to i16*, !dbg !2033
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2034
  br label %212, !dbg !2035

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !1885, metadata !DIExpression()), !dbg !2036
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !2037
  %188 = icmp eq i32 %187, 0, !dbg !2037
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %189, metadata !1640, metadata !DIExpression()) #11, !dbg !2044
  %190 = icmp eq i64 %189, 0, !dbg !2045
  br i1 %190, label %196, label %191, !dbg !2046

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2047
  %193 = inttoptr i64 %192 to i16*, !dbg !2048
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2049
  %195 = icmp eq i16 %194, 0, !dbg !2050
  br i1 %195, label %196, label %197, !dbg !2051

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2051

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2051
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2051
  br i1 %188, label %203, label %201, !dbg !2052

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2053
  br label %205, !dbg !2053

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2055
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %206, metadata !1660, metadata !DIExpression()) #11, !dbg !2060
  %207 = icmp eq i64 %206, 0, !dbg !2061
  br i1 %207, label %212, label %208, !dbg !2062

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2063
  %210 = inttoptr i64 %209 to i16*, !dbg !2064
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2065
  br label %212, !dbg !2066

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2067
  ret i32 %213, !dbg !2068
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2069 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2071, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8** undef, metadata !2072, metadata !DIExpression()), !dbg !2186
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2187, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1388, metadata !DIExpression()) #11, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !1387, metadata !DIExpression()) #11, !dbg !2189
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2190
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !2191
  %8 = icmp eq i32 %7, 0, !dbg !2191
  br i1 %8, label %111, label %9, !dbg !2192

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2193
  %11 = icmp eq i64 %10, 0, !dbg !2195
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %12, metadata !1600, metadata !DIExpression()) #11, !dbg !2199
  %13 = icmp eq i64 %12, 0, !dbg !2200
  br i1 %13, label %19, label %14, !dbg !2201

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2202
  %16 = inttoptr i64 %15 to i16*, !dbg !2203
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2204
  %18 = zext i16 %17 to i32, !dbg !2204
  br label %19, !dbg !2205

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2206
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %21, metadata !1616, metadata !DIExpression()) #11, !dbg !2210
  %22 = icmp eq i64 %21, 0, !dbg !2211
  br i1 %22, label %27, label %23, !dbg !2212

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2213
  %25 = inttoptr i64 %24 to i16*, !dbg !2214
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2215
  br label %27, !dbg !2216

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2217

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2073, metadata !DIExpression()), !dbg !2218
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2219, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1388, metadata !DIExpression()) #11, !dbg !2219
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !1387, metadata !DIExpression()) #11, !dbg !2221
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2079, metadata !DIExpression()), !dbg !2218
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !2222
  %31 = icmp eq i32 %30, 0, !dbg !2222
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2223
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %33, metadata !1640, metadata !DIExpression()) #11, !dbg !2228
  %34 = icmp eq i64 %33, 0, !dbg !2229
  br i1 %34, label %40, label %35, !dbg !2230

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2231
  %37 = inttoptr i64 %36 to i16*, !dbg !2232
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2233
  %39 = icmp eq i16 %38, 0, !dbg !2234
  br i1 %39, label %40, label %41, !dbg !2223

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2223

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2223
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2223
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2223
  br i1 %31, label %62, label %46, !dbg !2235

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2236

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2236
  %49 = load i64, i64* %48, align 32, !dbg !2236
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2236
  %51 = load i8, i8* %50, align 8, !dbg !2236
  %52 = icmp eq i8 %51, 0, !dbg !2236
  br i1 %52, label %53, label %58, !dbg !2236

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2236
  %55 = load i8, i8* %54, align 64, !dbg !2236
  %56 = icmp eq i8 %55, 0, !dbg !2236
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2236
  br label %58, !dbg !2236

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2236
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2236
  br label %78, !dbg !2236

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2237

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2237
  %65 = load i64, i64* %64, align 32, !dbg !2237
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2237
  %67 = load i8, i8* %66, align 8, !dbg !2237
  %68 = icmp eq i8 %67, 0, !dbg !2237
  br i1 %68, label %69, label %74, !dbg !2237

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2237
  %71 = load i8, i8* %70, align 64, !dbg !2237
  %72 = icmp eq i8 %71, 0, !dbg !2237
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2237
  br label %74, !dbg !2237

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2237
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2237
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %79, metadata !1660, metadata !DIExpression()) #11, !dbg !2241
  %80 = icmp eq i64 %79, 0, !dbg !2242
  br i1 %80, label %449, label %81, !dbg !2243

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2244
  %83 = inttoptr i64 %82 to i16*, !dbg !2245
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2246
  br label %449, !dbg !2247

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2092, metadata !DIExpression()), !dbg !2248
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !2249
  %87 = icmp eq i32 %86, 0, !dbg !2249
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %88, metadata !1640, metadata !DIExpression()) #11, !dbg !2256
  %89 = icmp eq i64 %88, 0, !dbg !2257
  br i1 %89, label %95, label %90, !dbg !2258

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2259
  %92 = inttoptr i64 %91 to i16*, !dbg !2260
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2261
  %94 = icmp eq i16 %93, 0, !dbg !2262
  br i1 %94, label %95, label %96, !dbg !2263

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2263

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2263
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2263
  br i1 %87, label %102, label %100, !dbg !2264

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2265
  br label %104, !dbg !2265

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2267
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %105, metadata !1660, metadata !DIExpression()) #11, !dbg !2272
  %106 = icmp eq i64 %105, 0, !dbg !2273
  br i1 %106, label %449, label %107, !dbg !2274

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2275
  %109 = inttoptr i64 %108 to i16*, !dbg !2276
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2277
  br label %449, !dbg !2278

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !2279
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2280
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2280
  store i64 100000000, i64* %113, align 8, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2094, metadata !DIExpression(DW_OP_deref)), !dbg !2280
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !2281
  %115 = icmp eq i32 %114, 0, !dbg !2281
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2282
  br i1 %115, label %219, label %117, !dbg !2283

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2284
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %119, metadata !1600, metadata !DIExpression()) #11, !dbg !2288
  %120 = icmp eq i64 %119, 0, !dbg !2289
  br i1 %120, label %126, label %121, !dbg !2290

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2291
  %123 = inttoptr i64 %122 to i16*, !dbg !2292
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2293
  %125 = zext i16 %124 to i32, !dbg !2293
  br label %126, !dbg !2294

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2295
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %128, metadata !1616, metadata !DIExpression()) #11, !dbg !2299
  %129 = icmp eq i64 %128, 0, !dbg !2300
  br i1 %129, label %134, label %130, !dbg !2301

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2302
  %132 = inttoptr i64 %131 to i16*, !dbg !2303
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2304
  br label %134, !dbg !2305

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2306

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2120, metadata !DIExpression()), !dbg !2307
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2308, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1388, metadata !DIExpression()) #11, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1387, metadata !DIExpression()) #11, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2126, metadata !DIExpression()), !dbg !2307
  %137 = call i32 @nk_vc_is_active() #12, !dbg !2311
  %138 = icmp eq i32 %137, 0, !dbg !2311
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2312
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %140, metadata !1640, metadata !DIExpression()) #11, !dbg !2317
  %141 = icmp eq i64 %140, 0, !dbg !2318
  br i1 %141, label %147, label %142, !dbg !2319

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2320
  %144 = inttoptr i64 %143 to i16*, !dbg !2321
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2322
  %146 = icmp eq i16 %145, 0, !dbg !2323
  br i1 %146, label %147, label %148, !dbg !2312

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2312

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2312
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2312
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2312
  br i1 %138, label %169, label %153, !dbg !2324

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2325

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2325
  %156 = load i64, i64* %155, align 32, !dbg !2325
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2325
  %158 = load i8, i8* %157, align 8, !dbg !2325
  %159 = icmp eq i8 %158, 0, !dbg !2325
  br i1 %159, label %160, label %165, !dbg !2325

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2325
  %162 = load i8, i8* %161, align 64, !dbg !2325
  %163 = icmp eq i8 %162, 0, !dbg !2325
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !2325
  br label %165, !dbg !2325

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !2325
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2325
  br label %185, !dbg !2325

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2326

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2326
  %172 = load i64, i64* %171, align 32, !dbg !2326
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2326
  %174 = load i8, i8* %173, align 8, !dbg !2326
  %175 = icmp eq i8 %174, 0, !dbg !2326
  br i1 %175, label %176, label %181, !dbg !2326

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2326
  %178 = load i8, i8* %177, align 64, !dbg !2326
  %179 = icmp eq i8 %178, 0, !dbg !2326
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !2326
  br label %181, !dbg !2326

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !2326
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2326
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %186, metadata !1660, metadata !DIExpression()) #11, !dbg !2330
  %187 = icmp eq i64 %186, 0, !dbg !2331
  br i1 %187, label %218, label %188, !dbg !2332

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2333
  %190 = inttoptr i64 %189 to i16*, !dbg !2334
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2335
  br label %218, !dbg !2336

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2139, metadata !DIExpression()), !dbg !2337
  %193 = call i32 @nk_vc_is_active() #12, !dbg !2338
  %194 = icmp eq i32 %193, 0, !dbg !2338
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %195, metadata !1640, metadata !DIExpression()) #11, !dbg !2345
  %196 = icmp eq i64 %195, 0, !dbg !2346
  br i1 %196, label %202, label %197, !dbg !2347

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !2348
  %199 = inttoptr i64 %198 to i16*, !dbg !2349
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !2350
  %201 = icmp eq i16 %200, 0, !dbg !2351
  br i1 %201, label %202, label %203, !dbg !2352

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !2352

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !2352
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2352
  br i1 %194, label %209, label %207, !dbg !2353

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2354
  br label %211, !dbg !2354

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2356
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %212, metadata !1660, metadata !DIExpression()) #11, !dbg !2361
  %213 = icmp eq i64 %212, 0, !dbg !2362
  br i1 %213, label %218, label %214, !dbg !2363

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !2364
  %216 = inttoptr i64 %215 to i16*, !dbg !2365
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !2366
  br label %218, !dbg !2367

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !2368
  unreachable, !dbg !2368

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !2369
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !2372
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2141, metadata !DIExpression()), !dbg !2373
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !2374
  br i1 %223, label %224, label %326, !dbg !2375

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2376
  %226 = icmp eq i64 %225, 0, !dbg !2378
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %227, metadata !1600, metadata !DIExpression()) #11, !dbg !2382
  %228 = icmp eq i64 %227, 0, !dbg !2383
  br i1 %228, label %234, label %229, !dbg !2384

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !2385
  %231 = inttoptr i64 %230 to i16*, !dbg !2386
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !2387
  %233 = zext i16 %232 to i32, !dbg !2387
  br label %234, !dbg !2388

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !2389
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %236, metadata !1616, metadata !DIExpression()) #11, !dbg !2393
  %237 = icmp eq i64 %236, 0, !dbg !2394
  br i1 %237, label %242, label %238, !dbg !2395

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !2396
  %240 = inttoptr i64 %239 to i16*, !dbg !2397
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !2398
  br label %242, !dbg !2399

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !2400

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2142, metadata !DIExpression()), !dbg !2401
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2402, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1388, metadata !DIExpression()) #11, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !1387, metadata !DIExpression()) #11, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2148, metadata !DIExpression()), !dbg !2401
  %245 = call i32 @nk_vc_is_active() #12, !dbg !2405
  %246 = icmp eq i32 %245, 0, !dbg !2405
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2406
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %248, metadata !1640, metadata !DIExpression()) #11, !dbg !2411
  %249 = icmp eq i64 %248, 0, !dbg !2412
  br i1 %249, label %255, label %250, !dbg !2413

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !2414
  %252 = inttoptr i64 %251 to i16*, !dbg !2415
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !2416
  %254 = icmp eq i16 %253, 0, !dbg !2417
  br i1 %254, label %255, label %256, !dbg !2406

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !2406

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !2406
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2406
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !2406
  br i1 %246, label %277, label %261, !dbg !2418

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !2419

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2419
  %264 = load i64, i64* %263, align 32, !dbg !2419
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2419
  %266 = load i8, i8* %265, align 8, !dbg !2419
  %267 = icmp eq i8 %266, 0, !dbg !2419
  br i1 %267, label %268, label %273, !dbg !2419

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2419
  %270 = load i8, i8* %269, align 64, !dbg !2419
  %271 = icmp eq i8 %270, 0, !dbg !2419
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !2419
  br label %273, !dbg !2419

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !2419
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !2419
  br label %293, !dbg !2419

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !2420

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !2420
  %280 = load i64, i64* %279, align 32, !dbg !2420
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !2420
  %282 = load i8, i8* %281, align 8, !dbg !2420
  %283 = icmp eq i8 %282, 0, !dbg !2420
  br i1 %283, label %284, label %289, !dbg !2420

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !2420
  %286 = load i8, i8* %285, align 64, !dbg !2420
  %287 = icmp eq i8 %286, 0, !dbg !2420
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !2420
  br label %289, !dbg !2420

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !2420
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !2420
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %294, metadata !1660, metadata !DIExpression()) #11, !dbg !2424
  %295 = icmp eq i64 %294, 0, !dbg !2425
  br i1 %295, label %326, label %296, !dbg !2426

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !2427
  %298 = inttoptr i64 %297 to i16*, !dbg !2428
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !2429
  br label %326, !dbg !2430

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2161, metadata !DIExpression()), !dbg !2431
  %301 = call i32 @nk_vc_is_active() #12, !dbg !2432
  %302 = icmp eq i32 %301, 0, !dbg !2432
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %303, metadata !1640, metadata !DIExpression()) #11, !dbg !2439
  %304 = icmp eq i64 %303, 0, !dbg !2440
  br i1 %304, label %310, label %305, !dbg !2441

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !2442
  %307 = inttoptr i64 %306 to i16*, !dbg !2443
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !2444
  %309 = icmp eq i16 %308, 0, !dbg !2445
  br i1 %309, label %310, label %311, !dbg !2446

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !2446

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !2446
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2446
  br i1 %302, label %317, label %315, !dbg !2447

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !2448
  br label %319, !dbg !2448

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !2450
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %320, metadata !1660, metadata !DIExpression()) #11, !dbg !2455
  %321 = icmp eq i64 %320, 0, !dbg !2456
  br i1 %321, label %326, label %322, !dbg !2457

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !2458
  %324 = inttoptr i64 %323 to i16*, !dbg !2459
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !2460
  br label %326, !dbg !2461

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2462, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1388, metadata !DIExpression()) #11, !dbg !2462
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !1387, metadata !DIExpression()) #11, !dbg !2464
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !2465
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !2466
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !2467
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2163, metadata !DIExpression(DW_OP_deref)), !dbg !2468
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !2469
  %331 = icmp slt i32 %330, 0, !dbg !2470
  br i1 %331, label %332, label %434, !dbg !2471

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2472
  %334 = icmp eq i64 %333, 0, !dbg !2474
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %335, metadata !1600, metadata !DIExpression()) #11, !dbg !2478
  %336 = icmp eq i64 %335, 0, !dbg !2479
  br i1 %336, label %342, label %337, !dbg !2480

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !2481
  %339 = inttoptr i64 %338 to i16*, !dbg !2482
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !2483
  %341 = zext i16 %340 to i32, !dbg !2483
  br label %342, !dbg !2484

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !2485
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %344, metadata !1616, metadata !DIExpression()) #11, !dbg !2489
  %345 = icmp eq i64 %344, 0, !dbg !2490
  br i1 %345, label %350, label %346, !dbg !2491

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !2492
  %348 = inttoptr i64 %347 to i16*, !dbg !2493
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !2494
  br label %350, !dbg !2495

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !2496

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2164, metadata !DIExpression()), !dbg !2497
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2498, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1388, metadata !DIExpression()) #11, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !1387, metadata !DIExpression()) #11, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2170, metadata !DIExpression()), !dbg !2497
  %353 = call i32 @nk_vc_is_active() #12, !dbg !2501
  %354 = icmp eq i32 %353, 0, !dbg !2501
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2502
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %356, metadata !1640, metadata !DIExpression()) #11, !dbg !2507
  %357 = icmp eq i64 %356, 0, !dbg !2508
  br i1 %357, label %363, label %358, !dbg !2509

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !2510
  %360 = inttoptr i64 %359 to i16*, !dbg !2511
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !2512
  %362 = icmp eq i16 %361, 0, !dbg !2513
  br i1 %362, label %363, label %364, !dbg !2502

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !2502

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !2502
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2502
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !2502
  br i1 %354, label %385, label %369, !dbg !2514

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !2515

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2515
  %372 = load i64, i64* %371, align 32, !dbg !2515
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2515
  %374 = load i8, i8* %373, align 8, !dbg !2515
  %375 = icmp eq i8 %374, 0, !dbg !2515
  br i1 %375, label %376, label %381, !dbg !2515

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2515
  %378 = load i8, i8* %377, align 64, !dbg !2515
  %379 = icmp eq i8 %378, 0, !dbg !2515
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !2515
  br label %381, !dbg !2515

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !2515
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !2515
  br label %401, !dbg !2515

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !2516

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !2516
  %388 = load i64, i64* %387, align 32, !dbg !2516
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !2516
  %390 = load i8, i8* %389, align 8, !dbg !2516
  %391 = icmp eq i8 %390, 0, !dbg !2516
  br i1 %391, label %392, label %397, !dbg !2516

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !2516
  %394 = load i8, i8* %393, align 64, !dbg !2516
  %395 = icmp eq i8 %394, 0, !dbg !2516
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !2516
  br label %397, !dbg !2516

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !2516
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !2516
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %402, metadata !1660, metadata !DIExpression()) #11, !dbg !2520
  %403 = icmp eq i64 %402, 0, !dbg !2521
  br i1 %403, label %434, label %404, !dbg !2522

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !2523
  %406 = inttoptr i64 %405 to i16*, !dbg !2524
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !2525
  br label %434, !dbg !2526

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2183, metadata !DIExpression()), !dbg !2527
  %409 = call i32 @nk_vc_is_active() #12, !dbg !2528
  %410 = icmp eq i32 %409, 0, !dbg !2528
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %411, metadata !1640, metadata !DIExpression()) #11, !dbg !2535
  %412 = icmp eq i64 %411, 0, !dbg !2536
  br i1 %412, label %418, label %413, !dbg !2537

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !2538
  %415 = inttoptr i64 %414 to i16*, !dbg !2539
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !2540
  %417 = icmp eq i16 %416, 0, !dbg !2541
  br i1 %417, label %418, label %419, !dbg !2542

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !2542

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !2542
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2542
  br i1 %410, label %425, label %423, !dbg !2543

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !2544
  br label %427, !dbg !2544

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !2546
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %428, metadata !1660, metadata !DIExpression()) #11, !dbg !2551
  %429 = icmp eq i64 %428, 0, !dbg !2552
  br i1 %429, label %434, label %430, !dbg !2553

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !2554
  %432 = inttoptr i64 %431 to i16*, !dbg !2555
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !2556
  br label %434, !dbg !2557

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !2558
  %436 = load i64, i64* %435, align 8, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2163, metadata !DIExpression(DW_OP_deref)), !dbg !2468
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !2559
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !2560
  store i64 %436, i64* %438, align 8, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2163, metadata !DIExpression(DW_OP_deref)), !dbg !2468
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !2561
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !2562
  store i64 %436, i64* %440, align 8, !dbg !2562
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !2563
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2163, metadata !DIExpression()), !dbg !2468
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !2564
  store i32 1, i32* %442, align 8, !dbg !2565
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2163, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1183, metadata !DIExpression()) #11, !dbg !2566
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !2568
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !2568
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !2569
  %446 = load i8*, i8** %445, align 8, !dbg !2569
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !2570
  %448 = load i8**, i8*** %447, align 8, !dbg !2570
  call void %444(i8* %446, i8** %448) #12, !dbg !2571
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !2572
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !2573
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !2573
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !2573
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !2574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8** %1, metadata !2577, metadata !DIExpression()), !dbg !2579
  br label %3, !dbg !2580

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2581
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !2591
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !2592
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !2592
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !2593
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !2593
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2594, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !1388, metadata !DIExpression()) #11, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !1387, metadata !DIExpression()) #11, !dbg !2596
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !2597
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !2598

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2599
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !2604
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !2605
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !2605
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !821, metadata !DIExpression()) #11, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !842, metadata !DIExpression()) #11, !dbg !2609
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !2611
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !2611
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !2612
  br i1 %20, label %33, label %21, !dbg !2613

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !2614
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !2614
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !823, metadata !DIExpression()) #11, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !822, metadata !DIExpression()) #11, !dbg !2608
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !854, metadata !DIExpression()) #11, !dbg !2616
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !2618
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !2618
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !863, metadata !DIExpression()) #11, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !868, metadata !DIExpression()) #11, !dbg !2622
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !2623
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !2624
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !2625
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !2626
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !876, metadata !DIExpression()) #11, !dbg !2627
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !2629
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !2629
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !2630
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !822, metadata !DIExpression()) #11, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !2588, metadata !DIExpression()) #11, !dbg !2631
  %32 = icmp eq %struct.list_head** %22, null, !dbg !2632
  br i1 %32, label %33, label %54, !dbg !2634

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2635
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !2641
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !2642
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !2642
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !2643
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !2643
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2644
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !2648
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !2649
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !2649
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !2650
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !2650
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !2651
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !2652

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2653
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !2658
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !2659
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !2659
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !2660
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !2588, metadata !DIExpression()) #11, !dbg !2631
  br label %54, !dbg !2661

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !2662
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !2588, metadata !DIExpression()) #11, !dbg !2631
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !2663
  br label %nk_fiber_yield.exit, !dbg !2664

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !2662
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2665
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !2670
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !2671
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !2671
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !2672
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !2673, metadata !DIExpression()), !dbg !2677
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !2679
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !2676, metadata !DIExpression()), !dbg !2680
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !2681
  br i1 %65, label %66, label %70, !dbg !2682

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !2683
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !2683
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !2684
  br i1 %69, label %71, label %70, !dbg !2685

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !2686, !llvm.loop !2687

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !2689
  br label %70, !dbg !2691
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !2692 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !2696, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2697, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8** %2, metadata !2698, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %3, metadata !2699, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2700, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !2701, metadata !DIExpression()), !dbg !2712
  %6 = icmp eq i64 %3, 0, !dbg !2713
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %7, metadata !2702, metadata !DIExpression()), !dbg !2714
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %8, metadata !2703, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i8* %8, metadata !2701, metadata !DIExpression()), !dbg !2712
  %9 = icmp eq i8* %8, null, !dbg !2716
  br i1 %9, label %104, label %10, !dbg !2718

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !2719
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !2720
  %13 = bitcast i8* %12 to i32*, !dbg !2720
  store i32 0, i32* %13, align 4, !dbg !2721
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !2722
  %15 = bitcast i8* %14 to i64*, !dbg !2722
  store i64 %7, i64* %15, align 8, !dbg !2723
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %16, metadata !2705, metadata !DIExpression()), !dbg !2724
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !2725
  %18 = bitcast i8* %17 to i8**, !dbg !2725
  store i8* %16, i8** %18, align 8, !dbg !2726
  %19 = icmp eq i8* %16, null, !dbg !2727
  br i1 %19, label %20, label %21, !dbg !2729

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !2730
  br label %104, !dbg !2732

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !2729
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !2733
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !2733
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !2734
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !2735
  %26 = bitcast i8* %25 to i8**, !dbg !2735
  store i8* %1, i8** %26, align 8, !dbg !2736
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !2737
  %28 = bitcast i8* %27 to i8***, !dbg !2737
  store i8** %2, i8*** %28, align 8, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %8, metadata !1193, metadata !DIExpression()), !dbg !2739
  %29 = load i64, i64* %15, align 8, !dbg !2741
  %30 = bitcast i8* %8 to i64*, !dbg !2742
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !811, metadata !DIExpression()), !dbg !2745
  %31 = add i64 %22, -8, !dbg !2746
  %32 = add i64 %31, %29, !dbg !2747
  store i64 %32, i64* %30, align 8, !dbg !2747
  %33 = inttoptr i64 %32 to i64*, !dbg !2748
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2752
  %34 = load i64, i64* %30, align 8, !dbg !2753
  %35 = add i64 %34, -8, !dbg !2753
  store i64 %35, i64* %30, align 8, !dbg !2753
  %36 = inttoptr i64 %35 to i64*, !dbg !2754
  store i64 0, i64* %36, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2758
  %37 = load i64, i64* %30, align 8, !dbg !2759
  %38 = add i64 %37, -8, !dbg !2759
  store i64 %38, i64* %30, align 8, !dbg !2759
  %39 = inttoptr i64 %38 to i64*, !dbg !2760
  store i64 0, i64* %39, align 8, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2764
  %40 = load i64, i64* %30, align 8, !dbg !2765
  %41 = add i64 %40, -8, !dbg !2765
  store i64 %41, i64* %30, align 8, !dbg !2765
  %42 = inttoptr i64 %41 to i64*, !dbg !2766
  store i64 0, i64* %42, align 8, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2770
  %43 = load i64, i64* %30, align 8, !dbg !2771
  %44 = add i64 %43, -8, !dbg !2771
  store i64 %44, i64* %30, align 8, !dbg !2771
  %45 = inttoptr i64 %44 to i64*, !dbg !2772
  store i64 0, i64* %45, align 8, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %8, metadata !810, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2776
  %46 = load i64, i64* %30, align 8, !dbg !2777
  %47 = add i64 %46, -8, !dbg !2777
  store i64 %47, i64* %30, align 8, !dbg !2777
  %48 = inttoptr i64 %47 to i64*, !dbg !2778
  store i64 0, i64* %48, align 8, !dbg !2779
  %49 = ptrtoint i8* %8 to i64, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %49, metadata !811, metadata !DIExpression()), !dbg !2783
  %50 = load i64, i64* %30, align 8, !dbg !2784
  %51 = add i64 %50, -8, !dbg !2784
  store i64 %51, i64* %30, align 8, !dbg !2784
  %52 = inttoptr i64 %51 to i64*, !dbg !2785
  store i64 %49, i64* %52, align 8, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2789
  %53 = load i64, i64* %30, align 8, !dbg !2790
  %54 = add i64 %53, -8, !dbg !2790
  store i64 %54, i64* %30, align 8, !dbg !2790
  %55 = inttoptr i64 %54 to i64*, !dbg !2791
  store i64 0, i64* %55, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2795
  %56 = load i64, i64* %30, align 8, !dbg !2796
  %57 = add i64 %56, -8, !dbg !2796
  store i64 %57, i64* %30, align 8, !dbg !2796
  %58 = inttoptr i64 %57 to i64*, !dbg !2797
  store i64 0, i64* %58, align 8, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2801
  %59 = load i64, i64* %30, align 8, !dbg !2802
  %60 = add i64 %59, -8, !dbg !2802
  store i64 %60, i64* %30, align 8, !dbg !2802
  %61 = inttoptr i64 %60 to i64*, !dbg !2803
  store i64 0, i64* %61, align 8, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2807
  %62 = load i64, i64* %30, align 8, !dbg !2808
  %63 = add i64 %62, -8, !dbg !2808
  store i64 %63, i64* %30, align 8, !dbg !2808
  %64 = inttoptr i64 %63 to i64*, !dbg !2809
  store i64 0, i64* %64, align 8, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2813
  %65 = load i64, i64* %30, align 8, !dbg !2814
  %66 = add i64 %65, -8, !dbg !2814
  store i64 %66, i64* %30, align 8, !dbg !2814
  %67 = inttoptr i64 %66 to i64*, !dbg !2815
  store i64 0, i64* %67, align 8, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2819
  %68 = load i64, i64* %30, align 8, !dbg !2820
  %69 = add i64 %68, -8, !dbg !2820
  store i64 %69, i64* %30, align 8, !dbg !2820
  %70 = inttoptr i64 %69 to i64*, !dbg !2821
  store i64 0, i64* %70, align 8, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2825
  %71 = load i64, i64* %30, align 8, !dbg !2826
  %72 = add i64 %71, -8, !dbg !2826
  store i64 %72, i64* %30, align 8, !dbg !2826
  %73 = inttoptr i64 %72 to i64*, !dbg !2827
  store i64 0, i64* %73, align 8, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2831
  %74 = load i64, i64* %30, align 8, !dbg !2832
  %75 = add i64 %74, -8, !dbg !2832
  store i64 %75, i64* %30, align 8, !dbg !2832
  %76 = inttoptr i64 %75 to i64*, !dbg !2833
  store i64 0, i64* %76, align 8, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %49, metadata !810, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !2837
  %77 = load i64, i64* %30, align 8, !dbg !2838
  %78 = add i64 %77, -8, !dbg !2838
  store i64 %78, i64* %30, align 8, !dbg !2838
  %79 = inttoptr i64 %78 to i64*, !dbg !2839
  store i64 0, i64* %79, align 8, !dbg !2840
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !2841
  br i1 %80, label %83, label %81, !dbg !2843

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !2844
  store i8* %8, i8** %82, align 8, !dbg !2844
  br label %83, !dbg !2846

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2847, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1388, metadata !DIExpression()) #11, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !1387, metadata !DIExpression()) #11, !dbg !2849
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !2850
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !2850
  %87 = load i64, i64* %86, align 8, !dbg !2850
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !2851
  %89 = bitcast i8* %88 to i64*, !dbg !2852
  store i64 %87, i64* %89, align 8, !dbg !2852
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %90, metadata !876, metadata !DIExpression()), !dbg !2854
  %91 = bitcast i8* %90 to i8**, !dbg !2856
  store i8* %90, i8** %91, align 8, !dbg !2856
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !2857
  %93 = bitcast i8* %92 to i8**, !dbg !2858
  store i8* %90, i8** %93, align 8, !dbg !2858
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !2859
  %95 = bitcast i8* %94 to i32*, !dbg !2859
  store i32 0, i32* %95, align 8, !dbg !2860
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !2861
  call void @llvm.dbg.value(metadata i8* %96, metadata !876, metadata !DIExpression()), !dbg !2862
  %97 = bitcast i8* %96 to i8**, !dbg !2864
  store i8* %96, i8** %97, align 8, !dbg !2864
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !2865
  %99 = bitcast i8* %98 to i8**, !dbg !2866
  store i8* %96, i8** %99, align 8, !dbg !2866
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !2867
  call void @llvm.dbg.value(metadata i8* %100, metadata !876, metadata !DIExpression()), !dbg !2868
  %101 = bitcast i8* %100 to i8**, !dbg !2870
  store i8* %100, i8** %101, align 8, !dbg !2870
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !2871
  %103 = bitcast i8* %102 to i8**, !dbg !2872
  store i8* %100, i8** %103, align 8, !dbg !2872
  br label %104, !dbg !2873

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !2874
  ret i32 %105, !dbg !2875
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !2586 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2876
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2880
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2881
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2881
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !2882
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !2882
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2883, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1388, metadata !DIExpression()) #11, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !1387, metadata !DIExpression()) #11, !dbg !2885
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !2886
  br i1 %8, label %9, label %54, !dbg !2887

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2888
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !2893
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2894
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2894
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2895
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !821, metadata !DIExpression()) #11, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !842, metadata !DIExpression()) #11, !dbg !2898
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !2900
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !2900
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !2901
  br i1 %17, label %30, label %18, !dbg !2902

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !2903
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !2903
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !823, metadata !DIExpression()) #11, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !822, metadata !DIExpression()) #11, !dbg !2897
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !854, metadata !DIExpression()) #11, !dbg !2905
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !2907
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !2907
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !863, metadata !DIExpression()) #11, !dbg !2909
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !868, metadata !DIExpression()) #11, !dbg !2911
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !2912
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !2913
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !2914
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !876, metadata !DIExpression()) #11, !dbg !2916
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !2918
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !2918
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !2919
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !822, metadata !DIExpression()) #11, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !2588, metadata !DIExpression()), !dbg !2920
  %29 = icmp eq %struct.list_head** %19, null, !dbg !2921
  br i1 %29, label %30, label %51, !dbg !2922

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2923
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !2927
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !2928
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !2928
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !2929
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !2929
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2930
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !2934
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !2935
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !2935
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !2936
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !2936
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !2937
  br i1 %43, label %54, label %44, !dbg !2938

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2939
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !2943
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !2944
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !2944
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !2945
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !2945
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !2588, metadata !DIExpression()), !dbg !2920
  br label %51, !dbg !2946

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !2947
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !2588, metadata !DIExpression()), !dbg !2920
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !2948
  br label %54, !dbg !2949

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !2947
  ret i32 %55, !dbg !2950
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !2951 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2994
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2953, metadata !DIExpression()), !dbg !2997
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2998
  %5 = icmp eq i64 %4, 0, !dbg !3000
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %6, metadata !1600, metadata !DIExpression()) #11, !dbg !3004
  %7 = icmp eq i64 %6, 0, !dbg !3005
  br i1 %7, label %13, label %8, !dbg !3006

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3007
  %10 = inttoptr i64 %9 to i16*, !dbg !3008
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3009
  %12 = zext i16 %11 to i32, !dbg !3009
  br label %13, !dbg !3010

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3011
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %15, metadata !1616, metadata !DIExpression()) #11, !dbg !3015
  %16 = icmp eq i64 %15, 0, !dbg !3016
  br i1 %16, label %21, label %17, !dbg !3017

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3018
  %19 = inttoptr i64 %18 to i16*, !dbg !3019
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3020
  br label %21, !dbg !3021

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3022

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2954, metadata !DIExpression()), !dbg !3023
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3024, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1388, metadata !DIExpression()) #11, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !1387, metadata !DIExpression()) #11, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !2958, metadata !DIExpression()), !dbg !3023
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !3027
  %25 = icmp eq i32 %24, 0, !dbg !3027
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3028
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %27, metadata !1640, metadata !DIExpression()) #11, !dbg !3033
  %28 = icmp eq i64 %27, 0, !dbg !3034
  br i1 %28, label %34, label %29, !dbg !3035

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3036
  %31 = inttoptr i64 %30 to i16*, !dbg !3037
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3038
  %33 = icmp eq i16 %32, 0, !dbg !3039
  br i1 %33, label %34, label %35, !dbg !3028

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3028

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3028
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3028
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3028
  br i1 %25, label %58, label %40, !dbg !3040

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3041

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3041
  %43 = load i64, i64* %42, align 32, !dbg !3041
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3041
  %45 = load i8, i8* %44, align 8, !dbg !3041
  %46 = icmp eq i8 %45, 0, !dbg !3041
  br i1 %46, label %47, label %52, !dbg !3041

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3041
  %49 = load i8, i8* %48, align 64, !dbg !3041
  %50 = icmp eq i8 %49, 0, !dbg !3041
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !3041
  br label %52, !dbg !3041

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !3041
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3041
  %56 = load i32, i32* %55, align 8, !dbg !3041
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !3041
  br label %76, !dbg !3041

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3042

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3042
  %61 = load i64, i64* %60, align 32, !dbg !3042
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3042
  %63 = load i8, i8* %62, align 8, !dbg !3042
  %64 = icmp eq i8 %63, 0, !dbg !3042
  br i1 %64, label %65, label %70, !dbg !3042

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3042
  %67 = load i8, i8* %66, align 64, !dbg !3042
  %68 = icmp eq i8 %67, 0, !dbg !3042
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !3042
  br label %70, !dbg !3042

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !3042
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3042
  %74 = load i32, i32* %73, align 8, !dbg !3042
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !3042
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %77, metadata !1660, metadata !DIExpression()) #11, !dbg !3046
  %78 = icmp eq i64 %77, 0, !dbg !3047
  br i1 %78, label %111, label %79, !dbg !3048

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3049
  %81 = inttoptr i64 %80 to i16*, !dbg !3050
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3051
  br label %111, !dbg !3052

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !2971, metadata !DIExpression()), !dbg !3053
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3054
  %85 = icmp eq i32 %84, 0, !dbg !3054
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %86, metadata !1640, metadata !DIExpression()) #11, !dbg !3061
  %87 = icmp eq i64 %86, 0, !dbg !3062
  br i1 %87, label %93, label %88, !dbg !3063

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3064
  %90 = inttoptr i64 %89 to i16*, !dbg !3065
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3066
  %92 = icmp eq i16 %91, 0, !dbg !3067
  br i1 %92, label %93, label %94, !dbg !3068

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3068

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3068
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3068
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3068
  %99 = load i32, i32* %98, align 8, !dbg !3068
  br i1 %85, label %102, label %100, !dbg !3069

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3070
  br label %104, !dbg !3070

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3072
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %105, metadata !1660, metadata !DIExpression()) #11, !dbg !3077
  %106 = icmp eq i64 %105, 0, !dbg !3078
  br i1 %106, label %111, label %107, !dbg !3079

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3080
  %109 = inttoptr i64 %108 to i16*, !dbg !3081
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3082
  br label %111, !dbg !3083

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3084
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3115, !srcloc !3116
  call void @llvm.dbg.value(metadata i32 %113, metadata !3092, metadata !DIExpression()) #11, !dbg !3115
  call void @llvm.dbg.value(metadata i32 %113, metadata !3089, metadata !DIExpression()) #11, !dbg !3117
  call void @llvm.dbg.value(metadata i8** %1, metadata !3087, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3118
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !3119
  %115 = icmp eq i32 %114, 0, !dbg !3119
  br i1 %115, label %321, label %116, !dbg !3120

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3121
  %118 = icmp eq i64 %117, 0, !dbg !3123
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %119, metadata !1600, metadata !DIExpression()) #11, !dbg !3127
  %120 = icmp eq i64 %119, 0, !dbg !3128
  br i1 %120, label %126, label %121, !dbg !3129

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3130
  %123 = inttoptr i64 %122 to i16*, !dbg !3131
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3132
  %125 = zext i16 %124 to i32, !dbg !3132
  br label %126, !dbg !3133

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3134
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %128, metadata !1616, metadata !DIExpression()) #11, !dbg !3138
  %129 = icmp eq i64 %128, 0, !dbg !3139
  br i1 %129, label %134, label %130, !dbg !3140

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3141
  %132 = inttoptr i64 %131 to i16*, !dbg !3142
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3143
  br label %134, !dbg !3144

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3145

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3094, metadata !DIExpression()) #11, !dbg !3146
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3147, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1388, metadata !DIExpression()) #11, !dbg !3147
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !1387, metadata !DIExpression()) #11, !dbg !3149
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3099, metadata !DIExpression()) #11, !dbg !3146
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3150
  %138 = icmp eq i32 %137, 0, !dbg !3150
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3151
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %140, metadata !1640, metadata !DIExpression()) #11, !dbg !3156
  %141 = icmp eq i64 %140, 0, !dbg !3157
  br i1 %141, label %147, label %142, !dbg !3158

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3159
  %144 = inttoptr i64 %143 to i16*, !dbg !3160
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3161
  %146 = icmp eq i16 %145, 0, !dbg !3162
  br i1 %146, label %147, label %148, !dbg !3151

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3151

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3151
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3151
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3151
  br i1 %138, label %169, label %153, !dbg !3163

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3164

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3164
  %156 = load i64, i64* %155, align 32, !dbg !3164
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3164
  %158 = load i8, i8* %157, align 8, !dbg !3164
  %159 = icmp eq i8 %158, 0, !dbg !3164
  br i1 %159, label %160, label %165, !dbg !3164

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3164
  %162 = load i8, i8* %161, align 64, !dbg !3164
  %163 = icmp eq i8 %162, 0, !dbg !3164
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3164
  br label %165, !dbg !3164

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3164
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3164
  br label %185, !dbg !3164

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3165

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3165
  %172 = load i64, i64* %171, align 32, !dbg !3165
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3165
  %174 = load i8, i8* %173, align 8, !dbg !3165
  %175 = icmp eq i8 %174, 0, !dbg !3165
  br i1 %175, label %176, label %181, !dbg !3165

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3165
  %178 = load i8, i8* %177, align 64, !dbg !3165
  %179 = icmp eq i8 %178, 0, !dbg !3165
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3165
  br label %181, !dbg !3165

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3165
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3165
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %186, metadata !1660, metadata !DIExpression()) #11, !dbg !3169
  %187 = icmp eq i64 %186, 0, !dbg !3170
  br i1 %187, label %218, label %188, !dbg !3171

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3172
  %190 = inttoptr i64 %189 to i16*, !dbg !3173
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3174
  br label %218, !dbg !3175

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3112, metadata !DIExpression()) #11, !dbg !3176
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3177
  %194 = icmp eq i32 %193, 0, !dbg !3177
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %195, metadata !1640, metadata !DIExpression()) #11, !dbg !3184
  %196 = icmp eq i64 %195, 0, !dbg !3185
  br i1 %196, label %202, label %197, !dbg !3186

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3187
  %199 = inttoptr i64 %198 to i16*, !dbg !3188
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3189
  %201 = icmp eq i16 %200, 0, !dbg !3190
  br i1 %201, label %202, label %203, !dbg !3191

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3191

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3191
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3191
  br i1 %194, label %209, label %207, !dbg !3192

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3193
  br label %211, !dbg !3193

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3195
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %212, metadata !1660, metadata !DIExpression()) #11, !dbg !3200
  %213 = icmp eq i64 %212, 0, !dbg !3201
  br i1 %213, label %218, label %214, !dbg !3202

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3203
  %216 = inttoptr i64 %215 to i16*, !dbg !3204
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3205
  br label %218, !dbg !3206

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3207
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3208
  %220 = icmp eq i64 %219, 0, !dbg !3210
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %221, metadata !1600, metadata !DIExpression()) #11, !dbg !3214
  %222 = icmp eq i64 %221, 0, !dbg !3215
  br i1 %222, label %228, label %223, !dbg !3216

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3217
  %225 = inttoptr i64 %224 to i16*, !dbg !3218
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3219
  %227 = zext i16 %226 to i32, !dbg !3219
  br label %228, !dbg !3220

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3221
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %230, metadata !1616, metadata !DIExpression()) #11, !dbg !3225
  %231 = icmp eq i64 %230, 0, !dbg !3226
  br i1 %231, label %236, label %232, !dbg !3227

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3228
  %234 = inttoptr i64 %233 to i16*, !dbg !3229
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3230
  br label %236, !dbg !3231

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3232

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2973, metadata !DIExpression()), !dbg !3233
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3234, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1388, metadata !DIExpression()) #11, !dbg !3234
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !1387, metadata !DIExpression()) #11, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !2979, metadata !DIExpression()), !dbg !3233
  %239 = call i32 @nk_vc_is_active() #12, !dbg !3237
  %240 = icmp eq i32 %239, 0, !dbg !3237
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3238
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %242, metadata !1640, metadata !DIExpression()) #11, !dbg !3243
  %243 = icmp eq i64 %242, 0, !dbg !3244
  br i1 %243, label %249, label %244, !dbg !3245

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3246
  %246 = inttoptr i64 %245 to i16*, !dbg !3247
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3248
  %248 = icmp eq i16 %247, 0, !dbg !3249
  br i1 %248, label %249, label %250, !dbg !3238

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3238

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3238
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3238
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3238
  br i1 %240, label %271, label %255, !dbg !3250

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3251

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3251
  %258 = load i64, i64* %257, align 32, !dbg !3251
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3251
  %260 = load i8, i8* %259, align 8, !dbg !3251
  %261 = icmp eq i8 %260, 0, !dbg !3251
  br i1 %261, label %262, label %267, !dbg !3251

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3251
  %264 = load i8, i8* %263, align 64, !dbg !3251
  %265 = icmp eq i8 %264, 0, !dbg !3251
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3251
  br label %267, !dbg !3251

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3251
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3251
  br label %287, !dbg !3251

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3252

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3252
  %274 = load i64, i64* %273, align 32, !dbg !3252
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3252
  %276 = load i8, i8* %275, align 8, !dbg !3252
  %277 = icmp eq i8 %276, 0, !dbg !3252
  br i1 %277, label %278, label %283, !dbg !3252

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3252
  %280 = load i8, i8* %279, align 64, !dbg !3252
  %281 = icmp eq i8 %280, 0, !dbg !3252
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3252
  br label %283, !dbg !3252

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3252
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3252
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %288, metadata !1660, metadata !DIExpression()) #11, !dbg !3256
  %289 = icmp eq i64 %288, 0, !dbg !3257
  br i1 %289, label %320, label %290, !dbg !3258

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3259
  %292 = inttoptr i64 %291 to i16*, !dbg !3260
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3261
  br label %320, !dbg !3262

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !2992, metadata !DIExpression()), !dbg !3263
  %295 = call i32 @nk_vc_is_active() #12, !dbg !3264
  %296 = icmp eq i32 %295, 0, !dbg !3264
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %297, metadata !1640, metadata !DIExpression()) #11, !dbg !3271
  %298 = icmp eq i64 %297, 0, !dbg !3272
  br i1 %298, label %304, label %299, !dbg !3273

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3274
  %301 = inttoptr i64 %300 to i16*, !dbg !3275
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3276
  %303 = icmp eq i16 %302, 0, !dbg !3277
  br i1 %303, label %304, label %305, !dbg !3278

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3278

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3278
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3278
  br i1 %296, label %311, label %309, !dbg !3279

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3280
  br label %313, !dbg !3280

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3282
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %314, metadata !1660, metadata !DIExpression()) #11, !dbg !3287
  %315 = icmp eq i64 %314, 0, !dbg !3288
  br i1 %315, label %320, label %316, !dbg !3289

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3290
  %318 = inttoptr i64 %317 to i16*, !dbg !3291
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3292
  br label %320, !dbg !3293

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !3294
  unreachable, !dbg !3294

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3207
  ret void, !dbg !3295
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !3301
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !3302
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3303
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !3304
  ret i32 0, !dbg !3305
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !3306 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !3307
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3308
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3313
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3314
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3314
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !3315
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !3315
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3316, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !1388, metadata !DIExpression()) #11, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !1387, metadata !DIExpression()) #11, !dbg !3318
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !3319
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !3320

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3321
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !3326
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !3327
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !3327
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !821, metadata !DIExpression()) #11, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !3330
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !842, metadata !DIExpression()) #11, !dbg !3331
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !3333
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !3333
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !3334
  br i1 %18, label %31, label %19, !dbg !3335

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !3336
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !3336
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !823, metadata !DIExpression()) #11, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !822, metadata !DIExpression()) #11, !dbg !3330
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !854, metadata !DIExpression()) #11, !dbg !3338
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !3340
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !3340
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !863, metadata !DIExpression()) #11, !dbg !3342
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !868, metadata !DIExpression()) #11, !dbg !3344
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !3345
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3346
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !3347
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !3348
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !876, metadata !DIExpression()) #11, !dbg !3349
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3351
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !3351
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !3352
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !822, metadata !DIExpression()) #11, !dbg !3330
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !2588, metadata !DIExpression()) #11, !dbg !3353
  %30 = icmp eq %struct.list_head** %20, null, !dbg !3354
  br i1 %30, label %31, label %52, !dbg !3355

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3356
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !3360
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !3361
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !3361
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !3362
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !3362
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3363
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !3367
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !3368
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !3368
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !3369
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !3369
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !3370
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !3371

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3372
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !3376
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !3377
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !3377
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !3378
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !3378
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !2588, metadata !DIExpression()) #11, !dbg !3353
  br label %52, !dbg !3379

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !3380
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !2588, metadata !DIExpression()) #11, !dbg !3353
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !3381
  br label %nk_fiber_yield.exit, !dbg !3382

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !3380
  ret i32 %55, !dbg !3383
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3384 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3386, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1482, metadata !DIExpression()) #11, !dbg !3391
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !3393, !srcloc !1503
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1486, metadata !DIExpression()) #11, !dbg !3393
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1484, metadata !DIExpression()) #11, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1483, metadata !DIExpression()) #11, !dbg !3395
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !3396
  %4 = load i32, i32* %3, align 8, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %4, metadata !1488, metadata !DIExpression()) #11, !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !1491, metadata !DIExpression()) #11, !dbg !3398
  %5 = icmp sgt i32 %4, 0, !dbg !3399
  br i1 %5, label %6, label %30, !dbg !3400

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !3401
  br label %8, !dbg !3401

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1491, metadata !DIExpression()) #11, !dbg !3398
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !3401
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !3401
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3402
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3402
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3403
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1489, metadata !DIExpression()) #11, !dbg !3404
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !3405
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1493, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3405
  call void @llvm.dbg.value(metadata i8** %15, metadata !1490, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !3406
  %16 = load i8*, i8** %15, align 8, !dbg !3407
  br label %17, !dbg !3408

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !3407
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !3409
  %20 = bitcast i8* %18 to i8**, !dbg !3409
  %21 = load i8*, i8** %20, align 8, !dbg !3409
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !3409
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !3409
  br i1 %22, label %27, label %23, !dbg !3408

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !3407
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !3407
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1490, metadata !DIExpression()) #11, !dbg !3406
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !3410
  br i1 %26, label %75, label %17, !dbg !3411, !llvm.loop !1524

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i32 undef, metadata !1491, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !3398
  %29 = icmp slt i64 %28, %7, !dbg !3399
  br i1 %29, label %8, label %30, !dbg !3400, !llvm.loop !1527

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3413
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3418
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3419
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3419
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !821, metadata !DIExpression()) #11, !dbg !3421
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !842, metadata !DIExpression()) #11, !dbg !3423
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !3425
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !3425
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !3426
  br i1 %38, label %51, label %39, !dbg !3427

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !3428
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !3428
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !823, metadata !DIExpression()) #11, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !822, metadata !DIExpression()) #11, !dbg !3422
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !854, metadata !DIExpression()) #11, !dbg !3430
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !3432
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !3432
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !863, metadata !DIExpression()) #11, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !868, metadata !DIExpression()) #11, !dbg !3436
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !3437
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3438
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !3439
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !876, metadata !DIExpression()) #11, !dbg !3441
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3443
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !3443
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !3444
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !3444
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !822, metadata !DIExpression()) #11, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !3387, metadata !DIExpression()), !dbg !3445
  %50 = icmp eq %struct.list_head** %40, null, !dbg !3446
  br i1 %50, label %51, label %72, !dbg !3448

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3449
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !3455
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !3456
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !3456
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !3457
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !3457
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3458
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3462
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3463
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3463
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !3464
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !3464
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !3465
  br i1 %64, label %84, label %65, !dbg !3466

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3467
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !3472
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !3473
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !3473
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !3474
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !3387, metadata !DIExpression()), !dbg !3445
  br label %72, !dbg !3475

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !3476
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !3387, metadata !DIExpression()), !dbg !3445
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !3477
  br label %84, !dbg !3478

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !854, metadata !DIExpression()) #11, !dbg !3480
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !3482
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !3482
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !3483
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !3483
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !863, metadata !DIExpression()) #11, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !868, metadata !DIExpression()) #11, !dbg !3486
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !3487
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !3488
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !3489
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !876, metadata !DIExpression()) #11, !dbg !3491
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !3493
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !3494
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !3495
  br label %84, !dbg !3496

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !3497
  ret i32 %85, !dbg !3498
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3499 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !3506, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8* %1, metadata !3507, metadata !DIExpression()), !dbg !3509
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !3510
  %4 = icmp eq i8 %3, 0, !dbg !3510
  br i1 %4, label %60, label %5, !dbg !3512

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3513
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !3519
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !3520
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !3520
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !3521
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !3521
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3522, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !1388, metadata !DIExpression()) #11, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !1387, metadata !DIExpression()) #11, !dbg !3524
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !3525
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !3526

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3527
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !3532
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !3533
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !3533
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !821, metadata !DIExpression()) #11, !dbg !3535
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !842, metadata !DIExpression()) #11, !dbg !3537
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !3539
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !3539
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !3540
  br i1 %22, label %35, label %23, !dbg !3541

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !3542
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !3542
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !823, metadata !DIExpression()) #11, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !822, metadata !DIExpression()) #11, !dbg !3536
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !854, metadata !DIExpression()) #11, !dbg !3544
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !3546
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !3546
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !863, metadata !DIExpression()) #11, !dbg !3548
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !868, metadata !DIExpression()) #11, !dbg !3550
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !3551
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !3552
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !3553
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !876, metadata !DIExpression()) #11, !dbg !3555
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !3557
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !3557
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !3558
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !3558
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !822, metadata !DIExpression()) #11, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2588, metadata !DIExpression()) #11, !dbg !3559
  %34 = icmp eq %struct.list_head** %24, null, !dbg !3560
  br i1 %34, label %35, label %56, !dbg !3561

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3562
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !3566
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !3567
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !3567
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !3568
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !3568
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3569
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !3573
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !3574
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !3574
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !3575
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !3575
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !3576
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !3577

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3578
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !3582
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !3583
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !3583
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !3584
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !3584
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !2588, metadata !DIExpression()) #11, !dbg !3559
  br label %56, !dbg !3585

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !3586
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !2588, metadata !DIExpression()) #11, !dbg !3559
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !3587
  br label %nk_fiber_yield.exit, !dbg !3588

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !3586
  br label %60, !dbg !3589

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !3590
  ret i32 %61, !dbg !3591
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !3592 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3596, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !3597, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8* %2, metadata !3598, metadata !DIExpression()), !dbg !3601
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !3602
  %5 = icmp eq i8 %4, 0, !dbg !3602
  br i1 %5, label %8, label %6, !dbg !3604

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !3605
  br label %8, !dbg !3607

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !3608
  ret i32 %9, !dbg !3609
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !3610 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3629
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3633
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3634
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3634
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !3635
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !3635
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !3612, metadata !DIExpression()), !dbg !3636
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !3637, !srcloc !3638
  call void @llvm.dbg.value(metadata i64 %8, metadata !3619, metadata !DIExpression()), !dbg !3639
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %9, metadata !3620, metadata !DIExpression()), !dbg !3641
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !3642
  call void @llvm.dbg.value(metadata i8* %10, metadata !3621, metadata !DIExpression()), !dbg !3643
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %11, metadata !3622, metadata !DIExpression()), !dbg !3645
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %12, metadata !3623, metadata !DIExpression()), !dbg !3647
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !3648
  %14 = load i8*, i8** %13, align 8, !dbg !3648
  %15 = icmp ugt i8* %11, %14, !dbg !3650
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !3651
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !3652
  %19 = icmp ult i8* %11, %18, !dbg !3653
  %20 = and i1 %15, %19, !dbg !3654
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %21, metadata !3622, metadata !DIExpression()), !dbg !3645
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %22, metadata !3624, metadata !DIExpression()), !dbg !3656
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !3657
  %24 = ptrtoint i8* %23 to i64, !dbg !3658
  %25 = ptrtoint i8* %12 to i64, !dbg !3658
  %26 = sub i64 %24, %25, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %26, metadata !3613, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !3659
  %27 = ptrtoint i8* %10 to i64, !dbg !3660
  call void @llvm.dbg.value(metadata i64 undef, metadata !3615, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 72, metadata !3616, metadata !DIExpression()), !dbg !3662
  %28 = bitcast i8* %22 to i64*, !dbg !3663
  %29 = load i64, i64* %28, align 8, !dbg !3663
  %30 = sub i64 %29, %25, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %30, metadata !3617, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %17, metadata !3614, metadata !DIExpression()), !dbg !3666
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !3667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !3667
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !3625, metadata !DIExpression(DW_OP_deref)), !dbg !3668
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !3669
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3670
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !3625, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !810, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !811, metadata !DIExpression()), !dbg !3673
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !3674
  %35 = load i64, i64* %34, align 8, !dbg !3675
  %36 = add i64 %35, -8, !dbg !3675
  store i64 %36, i64* %34, align 8, !dbg !3675
  %37 = inttoptr i64 %36 to i64*, !dbg !3676
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !3677
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !3625, metadata !DIExpression()), !dbg !3668
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !3679
  %40 = load i8*, i8** %39, align 8, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %40, metadata !3618, metadata !DIExpression()), !dbg !3680
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !3681
  %42 = sub i64 -16, %26, !dbg !3682
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !3682
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !3683
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !3684
  %46 = ptrtoint i8* %45 to i64, !dbg !3685
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3686
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !3625, metadata !DIExpression()), !dbg !3668
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !3687
  store i64 %46, i64* %48, align 8, !dbg !3688
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !3625, metadata !DIExpression()), !dbg !3668
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !3690
  %51 = load i64, i64* %50, align 8, !dbg !3690
  %52 = add i64 %51, 64, !dbg !3691
  %53 = inttoptr i64 %52 to i8**, !dbg !3692
  call void @llvm.dbg.value(metadata i8** %53, metadata !3626, metadata !DIExpression()), !dbg !3693
  %54 = add i64 %30, %51, !dbg !3694
  %55 = inttoptr i64 %54 to i8*, !dbg !3695
  store i8* %55, i8** %53, align 8, !dbg !3696
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !3625, metadata !DIExpression()), !dbg !3668
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !3698
  %58 = load i64, i64* %57, align 8, !dbg !3698
  %59 = sub i64 8, %25, !dbg !3660
  %60 = add i64 %59, %27, !dbg !3699
  %61 = add i64 %60, %58, !dbg !3700
  %62 = inttoptr i64 %61 to i8**, !dbg !3701
  call void @llvm.dbg.value(metadata i8** %62, metadata !3627, metadata !DIExpression()), !dbg !3702
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !3703
  call void @llvm.dbg.value(metadata i8** %63, metadata !3628, metadata !DIExpression()), !dbg !3704
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !3705
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !3705
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3706
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !3625, metadata !DIExpression()), !dbg !3668
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !3707
  %67 = load i64, i64* %66, align 8, !dbg !3707
  %68 = add i64 %67, 112, !dbg !3708
  %69 = inttoptr i64 %68 to i64*, !dbg !3709
  store i64 0, i64* %69, align 8, !dbg !3710
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3711
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3625, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !933, metadata !DIExpression()) #11, !dbg !3712
  call void @llvm.dbg.value(metadata i8 0, metadata !938, metadata !DIExpression()) #11, !dbg !3714
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3715
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !3719
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !939, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !3720
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !3721
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !3721
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !3721
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !3721
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !939, metadata !DIExpression()) #11, !dbg !3720
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3722
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !3726
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !3727
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !3727
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !3728
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !940, metadata !DIExpression()) #11, !dbg !3729
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !3730
  store i32 1, i32* %82, align 4, !dbg !3731
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !3732
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1004, metadata !DIExpression()) #11, !dbg !3733
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1007, metadata !DIExpression()) #11, !dbg !3735
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !3736
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !3736
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1012, metadata !DIExpression()) #11, !dbg !3737
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1017, metadata !DIExpression()) #11, !dbg !3739
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1018, metadata !DIExpression()) #11, !dbg !3740
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !3741
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !3742
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !3743
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !3744
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !3745
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !3746
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !3747
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !3748
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !3748
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !3749
  br i1 %91, label %94, label %92, !dbg !3750

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !3751
  br label %94, !dbg !3752

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !3753
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !3625, metadata !DIExpression()), !dbg !3668
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !3754
  ret %struct.nk_fiber* %95, !dbg !3755
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !3756 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !3758, metadata !DIExpression()), !dbg !3761
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !3762
  br i1 %2, label %75, label %3, !dbg !3764

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3765
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3769
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3770
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3770
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !3771
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !3759, metadata !DIExpression()), !dbg !3772
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !3773
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !3760, metadata !DIExpression()), !dbg !3774
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !3775
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1004, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1007, metadata !DIExpression()), !dbg !3778
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !3779
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1012, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1017, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1018, metadata !DIExpression()), !dbg !3783
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !3784
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !3785
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !3786
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !3787
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !3788
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !3789
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !3790
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !3791
  %18 = load i32, i32* %17, align 8, !dbg !3792
  %19 = add i32 %18, 1, !dbg !3792
  store i32 %19, i32* %17, align 8, !dbg !3792
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !3793
  store i32 3, i32* %20, align 4, !dbg !3794
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3795
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !3800
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !3801
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !3801
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !3802
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !3802
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3803, !srcloc !1390
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1388, metadata !DIExpression()) #11, !dbg !3803
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !1387, metadata !DIExpression()) #11, !dbg !3805
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !3806
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !3807

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3808
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !3813
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !3814
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !3814
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !821, metadata !DIExpression()) #11, !dbg !3816
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !822, metadata !DIExpression()) #11, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !842, metadata !DIExpression()) #11, !dbg !3818
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !3820
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !3820
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !3821
  br i1 %37, label %50, label %38, !dbg !3822

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !823, metadata !DIExpression()) #11, !dbg !3823
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !3823
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !3823
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !823, metadata !DIExpression()) #11, !dbg !3823
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !822, metadata !DIExpression()) #11, !dbg !3817
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !3824
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !854, metadata !DIExpression()) #11, !dbg !3825
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !3827
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !3827
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !3828
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !863, metadata !DIExpression()) #11, !dbg !3829
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !868, metadata !DIExpression()) #11, !dbg !3831
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !3832
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !3833
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !3834
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !3835
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !876, metadata !DIExpression()) #11, !dbg !3836
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !3838
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !3838
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !3839
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !3839
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !822, metadata !DIExpression()) #11, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !2588, metadata !DIExpression()) #11, !dbg !3840
  %49 = icmp eq %struct.list_head** %39, null, !dbg !3841
  br i1 %49, label %50, label %71, !dbg !3842

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3843
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !3847
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !3848
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !3848
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !3849
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !3849
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3850
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !3854
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !3855
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !3855
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !3856
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !3856
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !3857
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !3858

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3859
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !3863
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !3864
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !3864
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !3865
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !2588, metadata !DIExpression()) #11, !dbg !3840
  br label %71, !dbg !3866

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !3867
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !2588, metadata !DIExpression()) #11, !dbg !3840
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !3868
  br label %nk_fiber_yield.exit, !dbg !3869

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !3867
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !3870
  ret i32 %76, !dbg !3871
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
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin noredzone nounwind }
attributes #13 = { nobuiltin noredzone noreturn nounwind }

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
!583 = !DILocalVariable(name: "fun", arg: 1, scope: !584, file: !124, line: 693, type: !259)
!584 = distinct !DISubprogram(name: "nk_fiber_start", scope: !124, file: !124, line: 693, type: !585, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!48, !259, !31, !75, !45, !29, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!588 = !{!583, !589, !590, !591, !592, !593}
!589 = !DILocalVariable(name: "input", arg: 2, scope: !584, file: !124, line: 693, type: !31)
!590 = !DILocalVariable(name: "output", arg: 3, scope: !584, file: !124, line: 693, type: !75)
!591 = !DILocalVariable(name: "stack_size", arg: 4, scope: !584, file: !124, line: 693, type: !45)
!592 = !DILocalVariable(name: "random_cpu_flag", arg: 5, scope: !584, file: !124, line: 693, type: !29)
!593 = !DILocalVariable(name: "fiber_output", arg: 6, scope: !584, file: !124, line: 693, type: !587)
!594 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !595)
!595 = distinct !DILocation(line: 119, column: 3, scope: !506)
!596 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !595)
!597 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !595)
!598 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !595)
!599 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !595)
!600 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !595)
!601 = !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !595)
!602 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !595)
!603 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !595)
!604 = !DILocation(line: 105, column: 15, scope: !506)
!605 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !606)
!606 = distinct !DILocation(line: 120, column: 3, scope: !506)
!607 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !606)
!608 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !606)
!609 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !606)
!610 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !606)
!611 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !606)
!612 = !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !606)
!613 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !606)
!614 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !606)
!615 = !DILocation(line: 121, column: 3, scope: !506)
!616 = !DILocation(line: 0, scope: !506)
!617 = !DILocation(line: 122, column: 1, scope: !506)
!618 = distinct !DISubprogram(name: "routine_simple_1", scope: !3, file: !3, line: 57, type: !81, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(name: "i", arg: 1, scope: !618, file: !3, line: 57, type: !31)
!621 = !DILocalVariable(name: "o", arg: 2, scope: !618, file: !3, line: 57, type: !75)
!622 = !DILocalVariable(name: "end", scope: !618, file: !3, line: 59, type: !24)
!623 = !DILocalVariable(name: "a", scope: !618, file: !3, line: 61, type: !7)
!624 = !DILocation(line: 57, column: 29, scope: !618)
!625 = !DILocation(line: 57, column: 39, scope: !618)
!626 = !DILocation(line: 59, column: 19, scope: !618)
!627 = !DILocation(line: 59, column: 13, scope: !618)
!628 = !DILocation(line: 60, column: 19, scope: !618)
!629 = !DILocation(line: 60, column: 3, scope: !618)
!630 = !DILocation(line: 61, column: 16, scope: !618)
!631 = !DILocation(line: 62, column: 13, scope: !618)
!632 = !DILocation(line: 62, column: 11, scope: !618)
!633 = !DILocation(line: 62, column: 3, scope: !618)
!634 = !DILocation(line: 63, column: 52, scope: !635)
!635 = distinct !DILexicalBlock(scope: !618, file: !3, line: 62, column: 18)
!636 = !DILocation(line: 63, column: 5, scope: !635)
!637 = !DILocation(line: 62, column: 9, scope: !618)
!638 = distinct !{!638, !633, !639}
!639 = !DILocation(line: 65, column: 3, scope: !618)
!640 = !DILocation(line: 0, scope: !618)
!641 = !DILocation(line: 66, column: 3, scope: !618)
!642 = !DILocation(line: 67, column: 3, scope: !618)
!643 = !DILocation(line: 68, column: 1, scope: !618)
!644 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(name: "i", arg: 1, scope: !644, file: !3, line: 70, type: !31)
!647 = !DILocalVariable(name: "o", arg: 2, scope: !644, file: !3, line: 70, type: !75)
!648 = !DILocalVariable(name: "end", scope: !644, file: !3, line: 72, type: !24)
!649 = !DILocalVariable(name: "a", scope: !644, file: !3, line: 74, type: !7)
!650 = !DILocation(line: 70, column: 29, scope: !644)
!651 = !DILocation(line: 70, column: 39, scope: !644)
!652 = !DILocation(line: 72, column: 19, scope: !644)
!653 = !DILocation(line: 72, column: 13, scope: !644)
!654 = !DILocation(line: 73, column: 19, scope: !644)
!655 = !DILocation(line: 73, column: 3, scope: !644)
!656 = !DILocation(line: 74, column: 16, scope: !644)
!657 = !DILocation(line: 75, column: 3, scope: !644)
!658 = !DILocation(line: 76, column: 13, scope: !644)
!659 = !DILocation(line: 76, column: 11, scope: !644)
!660 = !DILocation(line: 76, column: 3, scope: !644)
!661 = !DILocation(line: 77, column: 52, scope: !662)
!662 = distinct !DILexicalBlock(scope: !644, file: !3, line: 76, column: 18)
!663 = !DILocation(line: 77, column: 5, scope: !662)
!664 = !DILocation(line: 76, column: 9, scope: !644)
!665 = distinct !{!665, !660, !666}
!666 = !DILocation(line: 79, column: 3, scope: !644)
!667 = !DILocation(line: 0, scope: !644)
!668 = !DILocation(line: 80, column: 3, scope: !644)
!669 = !DILocation(line: 81, column: 3, scope: !644)
!670 = !DILocation(line: 82, column: 1, scope: !644)
!671 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "buf", arg: 1, scope: !671, file: !3, line: 127, type: !113)
!674 = !DILocalVariable(name: "priv", arg: 2, scope: !671, file: !3, line: 127, type: !31)
!675 = !DILocation(line: 127, column: 23, scope: !671)
!676 = !DILocation(line: 127, column: 35, scope: !671)
!677 = !DILocation(line: 88, column: 3, scope: !678, inlinedAt: !685)
!678 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!679 = !{!680, !681, !682, !683}
!680 = !DILocalVariable(name: "simple", scope: !678, file: !3, line: 88, type: !511)
!681 = !DILocalVariable(name: "t", scope: !678, file: !3, line: 90, type: !25)
!682 = !DILocalVariable(name: "f_input", scope: !678, file: !3, line: 92, type: !24)
!683 = !DILocalVariable(name: "p", scope: !684, file: !3, line: 92, type: !31)
!684 = distinct !DILexicalBlock(scope: !678, file: !3, line: 92, column: 23)
!685 = distinct !DILocation(line: 129, column: 3, scope: !671)
!686 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !687)
!687 = distinct !DILocation(line: 89, column: 8, scope: !678, inlinedAt: !685)
!688 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !687)
!689 = !DILocation(line: 89, column: 26, scope: !678, inlinedAt: !685)
!690 = !DILocation(line: 89, column: 6, scope: !678, inlinedAt: !685)
!691 = !DILocation(line: 90, column: 3, scope: !678, inlinedAt: !685)
!692 = !DILocation(line: 91, column: 3, scope: !678, inlinedAt: !685)
!693 = !DILocation(line: 92, column: 23, scope: !684, inlinedAt: !685)
!694 = !DILocation(line: 93, column: 8, scope: !695, inlinedAt: !685)
!695 = distinct !DILexicalBlock(scope: !678, file: !3, line: 93, column: 7)
!696 = !DILocation(line: 93, column: 7, scope: !678, inlinedAt: !685)
!697 = !DILocation(line: 94, column: 5, scope: !698, inlinedAt: !685)
!698 = distinct !DILexicalBlock(scope: !695, file: !3, line: 93, column: 17)
!699 = !DILocation(line: 95, column: 5, scope: !698, inlinedAt: !685)
!700 = !DILocation(line: 92, column: 23, scope: !678, inlinedAt: !685)
!701 = !DILocation(line: 92, column: 13, scope: !678, inlinedAt: !685)
!702 = !DILocation(line: 97, column: 14, scope: !678, inlinedAt: !685)
!703 = !DILocation(line: 90, column: 12, scope: !678, inlinedAt: !685)
!704 = !DILocation(line: 97, column: 16, scope: !678, inlinedAt: !685)
!705 = !DILocation(line: 97, column: 12, scope: !678, inlinedAt: !685)
!706 = !DILocation(line: 88, column: 15, scope: !678, inlinedAt: !685)
!707 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !708)
!708 = distinct !DILocation(line: 98, column: 3, scope: !678, inlinedAt: !685)
!709 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !708)
!710 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !708)
!711 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !708)
!712 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !708)
!713 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !708)
!714 = !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !708)
!715 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !708)
!716 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !708)
!717 = !DILocation(line: 99, column: 3, scope: !678, inlinedAt: !685)
!718 = !DILocation(line: 100, column: 1, scope: !678, inlinedAt: !685)
!719 = !DILocation(line: 130, column: 3, scope: !671)
!720 = !DILocation(line: 88, column: 3, scope: !678)
!721 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !722)
!722 = distinct !DILocation(line: 89, column: 8, scope: !678)
!723 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !722)
!724 = !DILocation(line: 89, column: 26, scope: !678)
!725 = !DILocation(line: 89, column: 6, scope: !678)
!726 = !DILocation(line: 90, column: 3, scope: !678)
!727 = !DILocation(line: 91, column: 3, scope: !678)
!728 = !DILocation(line: 92, column: 23, scope: !684)
!729 = !DILocation(line: 93, column: 8, scope: !695)
!730 = !DILocation(line: 93, column: 7, scope: !678)
!731 = !DILocation(line: 94, column: 5, scope: !698)
!732 = !DILocation(line: 95, column: 5, scope: !698)
!733 = !DILocation(line: 92, column: 23, scope: !678)
!734 = !DILocation(line: 92, column: 13, scope: !678)
!735 = !DILocation(line: 97, column: 14, scope: !678)
!736 = !DILocation(line: 90, column: 12, scope: !678)
!737 = !DILocation(line: 97, column: 16, scope: !678)
!738 = !DILocation(line: 97, column: 12, scope: !678)
!739 = !DILocation(line: 88, column: 15, scope: !678)
!740 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !741)
!741 = distinct !DILocation(line: 98, column: 3, scope: !678)
!742 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !741)
!743 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !741)
!744 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !741)
!745 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !741)
!746 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !741)
!747 = !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !741)
!748 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !741)
!749 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !741)
!750 = !DILocation(line: 99, column: 3, scope: !678)
!751 = !DILocation(line: 0, scope: !678)
!752 = !DILocation(line: 100, column: 1, scope: !678)
!753 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !754, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!754 = !DISubroutineType(types: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!758 = !{}
!759 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !764)
!760 = distinct !DISubprogram(name: "get_cpu", scope: !761, file: !761, line: 127, type: !762, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!761 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!762 = !DISubroutineType(types: !763)
!763 = !{!270}
!764 = distinct !DILocation(line: 78, column: 10, scope: !753)
!765 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !764)
!766 = !DILocation(line: 78, column: 21, scope: !753)
!767 = !DILocation(line: 78, column: 3, scope: !753)
!768 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !769, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!769 = !DISubroutineType(types: !770)
!770 = !{!240}
!771 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !772)
!772 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !773)
!773 = distinct !DILocation(line: 85, column: 10, scope: !768)
!774 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !772)
!775 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !773)
!776 = !DILocation(line: 85, column: 30, scope: !768)
!777 = !DILocation(line: 85, column: 3, scope: !768)
!778 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !769, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!779 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !780)
!780 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !781)
!781 = distinct !DILocation(line: 92, column: 10, scope: !778)
!782 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !780)
!783 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !781)
!784 = !DILocation(line: 92, column: 30, scope: !778)
!785 = !DILocation(line: 92, column: 3, scope: !778)
!786 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !787, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!787 = !DISubroutineType(types: !788)
!788 = !{!285}
!789 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !790)
!790 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !791)
!791 = distinct !DILocation(line: 98, column: 10, scope: !786)
!792 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !790)
!793 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !791)
!794 = !DILocation(line: 98, column: 30, scope: !786)
!795 = !DILocation(line: 98, column: 3, scope: !786)
!796 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !797, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!797 = !DISubroutineType(types: !798)
!798 = !{!150}
!799 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !800)
!800 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !801)
!801 = distinct !DILocation(line: 105, column: 12, scope: !796)
!802 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !800)
!803 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !801)
!804 = !DILocation(line: 105, column: 32, scope: !796)
!805 = !DILocation(line: 105, column: 3, scope: !796)
!806 = distinct !DISubprogram(name: "_fiber_push", scope: !124, file: !124, line: 113, type: !807, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !240, !25}
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "f", arg: 1, scope: !806, file: !124, line: 113, type: !240)
!811 = !DILocalVariable(name: "x", arg: 2, scope: !806, file: !124, line: 113, type: !25)
!812 = !DILocation(line: 113, column: 31, scope: !806)
!813 = !DILocation(line: 113, column: 43, scope: !806)
!814 = !DILocation(line: 115, column: 8, scope: !806)
!815 = !DILocation(line: 115, column: 12, scope: !806)
!816 = !DILocation(line: 116, column: 6, scope: !806)
!817 = !DILocation(line: 116, column: 26, scope: !806)
!818 = !DILocation(line: 117, column: 1, scope: !806)
!819 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !769, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !820)
!820 = !{!821, !822, !823, !827}
!821 = !DILocalVariable(name: "fiber_sched_queue", scope: !819, file: !124, line: 122, type: !150)
!822 = !DILocalVariable(name: "fiber_to_schedule", scope: !819, file: !124, line: 125, type: !240)
!823 = !DILocalVariable(name: "first", scope: !824, file: !124, line: 128, type: !240)
!824 = distinct !DILexicalBlock(scope: !825, file: !124, line: 128, column: 25)
!825 = distinct !DILexicalBlock(scope: !826, file: !124, line: 126, column: 40)
!826 = distinct !DILexicalBlock(scope: !819, file: !124, line: 126, column: 7)
!827 = !DILocalVariable(name: "__mptr", scope: !828, file: !124, line: 128, type: !831)
!828 = distinct !DILexicalBlock(scope: !829, file: !124, line: 128, column: 25)
!829 = distinct !DILexicalBlock(scope: !830, file: !124, line: 128, column: 25)
!830 = distinct !DILexicalBlock(scope: !824, file: !124, line: 128, column: 25)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!833 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !834)
!834 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !835)
!835 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !836)
!836 = distinct !DILocation(line: 122, column: 41, scope: !819)
!837 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !834)
!838 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !835)
!839 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !836)
!840 = !DILocation(line: 122, column: 21, scope: !819)
!841 = !DILocation(line: 125, column: 15, scope: !819)
!842 = !DILocalVariable(name: "head", arg: 1, scope: !843, file: !53, line: 184, type: !831)
!843 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !844, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{!48, !831}
!846 = !{!842}
!847 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !848)
!848 = distinct !DILocation(line: 126, column: 9, scope: !826)
!849 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !848)
!850 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !848)
!851 = !DILocation(line: 126, column: 7, scope: !819)
!852 = !DILocation(line: 128, column: 25, scope: !824)
!853 = !DILocation(line: 131, column: 40, scope: !825)
!854 = !DILocalVariable(name: "entry", arg: 1, scope: !855, file: !53, line: 151, type: !150)
!855 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !856, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !150}
!858 = !{!854}
!859 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !860)
!860 = distinct !DILocation(line: 131, column: 5, scope: !825)
!861 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !860)
!862 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !860)
!863 = !DILocalVariable(name: "prev", arg: 1, scope: !864, file: !53, line: 128, type: !150)
!864 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !865, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !150, !150}
!867 = !{!863, !868}
!868 = !DILocalVariable(name: "next", arg: 2, scope: !864, file: !53, line: 128, type: !150)
!869 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !870)
!870 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !860)
!871 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !870)
!872 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !870)
!873 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !870)
!874 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !870)
!875 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !870)
!876 = !DILocalVariable(name: "list", arg: 1, scope: !877, file: !53, line: 73, type: !150)
!877 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !856, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !878)
!878 = !{!876}
!879 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !880)
!880 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !860)
!881 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !880)
!882 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !880)
!883 = !DILocation(line: 132, column: 3, scope: !825)
!884 = !DILocation(line: 0, scope: !819)
!885 = !DILocation(line: 139, column: 3, scope: !819)
!886 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !887, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !240}
!889 = !{!890, !891, !892, !893, !894, !897}
!890 = !DILocalVariable(name: "f", arg: 1, scope: !886, file: !124, line: 144, type: !240)
!891 = !DILocalVariable(name: "next", scope: !886, file: !124, line: 149, type: !240)
!892 = !DILocalVariable(name: "temp", scope: !886, file: !124, line: 155, type: !240)
!893 = !DILocalVariable(name: "waitq", scope: !886, file: !124, line: 156, type: !150)
!894 = !DILocalVariable(name: "first", scope: !895, file: !124, line: 163, type: !240)
!895 = distinct !DILexicalBlock(scope: !896, file: !124, line: 163, column: 12)
!896 = distinct !DILexicalBlock(scope: !886, file: !124, line: 160, column: 25)
!897 = !DILocalVariable(name: "__mptr", scope: !898, file: !124, line: 163, type: !831)
!898 = distinct !DILexicalBlock(scope: !899, file: !124, line: 163, column: 12)
!899 = distinct !DILexicalBlock(scope: !900, file: !124, line: 163, column: 12)
!900 = distinct !DILexicalBlock(scope: !895, file: !124, line: 163, column: 12)
!901 = !DILocation(line: 144, column: 33, scope: !886)
!902 = !DILocation(line: 147, column: 6, scope: !886)
!903 = !DILocation(line: 147, column: 15, scope: !886)
!904 = !DILocation(line: 149, column: 15, scope: !886)
!905 = !DILocation(line: 156, column: 34, scope: !886)
!906 = !DILocation(line: 156, column: 21, scope: !886)
!907 = !DILocation(line: 160, column: 12, scope: !886)
!908 = !DILocation(line: 160, column: 21, scope: !886)
!909 = !DILocation(line: 160, column: 3, scope: !886)
!910 = !DILocation(line: 163, column: 12, scope: !895)
!911 = !DILocation(line: 163, column: 12, scope: !900)
!912 = !DILocation(line: 155, column: 15, scope: !886)
!913 = !DILocation(line: 164, column: 27, scope: !896)
!914 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !915)
!915 = distinct !DILocation(line: 164, column: 5, scope: !896)
!916 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !915)
!917 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !915)
!918 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !919)
!919 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !915)
!920 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !919)
!921 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !919)
!922 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !919)
!923 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !919)
!924 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !919)
!925 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !926)
!926 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !915)
!927 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !926)
!928 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !926)
!929 = !DILocation(line: 165, column: 16, scope: !896)
!930 = !DILocation(line: 168, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !896, file: !124, line: 168, column: 9)
!932 = !DILocation(line: 168, column: 9, scope: !896)
!933 = !DILocalVariable(name: "f", arg: 1, scope: !934, file: !124, line: 663, type: !240)
!934 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !935, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!48, !240, !29}
!937 = !{!933, !938, !939, !940}
!938 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !934, file: !124, line: 663, type: !29)
!939 = !DILocalVariable(name: "curr_thread", scope: !934, file: !124, line: 666, type: !285)
!940 = !DILocalVariable(name: "fiber_sched_queue", scope: !934, file: !124, line: 674, type: !150)
!941 = !DILocation(line: 663, column: 30, scope: !934, inlinedAt: !942)
!942 = distinct !DILocation(line: 171, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !931, file: !124, line: 168, column: 14)
!944 = !DILocation(line: 663, column: 41, scope: !934, inlinedAt: !942)
!945 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !946)
!946 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !947)
!947 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !948)
!948 = distinct !DILocation(line: 666, column: 30, scope: !934, inlinedAt: !942)
!949 = !DILocation(line: 666, column: 16, scope: !934, inlinedAt: !942)
!950 = !DILocation(line: 366, column: 29, scope: !951, inlinedAt: !958)
!951 = distinct !DILexicalBlock(scope: !952, file: !124, line: 366, column: 29)
!952 = distinct !DILexicalBlock(scope: !953, file: !124, line: 366, column: 29)
!953 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !954)
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "sys", scope: !953, file: !124, line: 366, type: !264)
!956 = !DILocalVariable(name: "__r", scope: !952, file: !124, line: 366, type: !264)
!957 = !DILocalVariable(name: "__r", scope: !951, file: !124, line: 366, type: !264)
!958 = distinct !DILocation(line: 373, column: 20, scope: !959, inlinedAt: !967)
!959 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !787, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !960)
!960 = !{!961, !962, !963, !965}
!961 = !DILocalVariable(name: "random_cpu", scope: !959, file: !124, line: 373, type: !48)
!962 = !DILocalVariable(name: "sys", scope: !959, file: !124, line: 374, type: !264)
!963 = !DILocalVariable(name: "__r", scope: !964, file: !124, line: 374, type: !264)
!964 = distinct !DILexicalBlock(scope: !959, file: !124, line: 374, column: 27)
!965 = !DILocalVariable(name: "__r", scope: !966, file: !124, line: 374, type: !264)
!966 = distinct !DILexicalBlock(scope: !964, file: !124, line: 374, column: 27)
!967 = distinct !DILocation(line: 670, column: 19, scope: !968, inlinedAt: !942)
!968 = distinct !DILexicalBlock(scope: !969, file: !124, line: 669, column: 23)
!969 = distinct !DILexicalBlock(scope: !934, file: !124, line: 669, column: 7)
!970 = !{i32 -2147185111}
!971 = !DILocation(line: 366, column: 29, scope: !952, inlinedAt: !958)
!972 = !DILocation(line: 366, column: 23, scope: !953, inlinedAt: !958)
!973 = !DILocation(line: 358, column: 5, scope: !974, inlinedAt: !979)
!974 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !975, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!25}
!977 = !{!978}
!978 = !DILocalVariable(name: "t", scope: !974, file: !124, line: 358, type: !25)
!979 = distinct !DILocation(line: 367, column: 18, scope: !953, inlinedAt: !958)
!980 = !DILocation(line: 359, column: 5, scope: !974, inlinedAt: !979)
!981 = !DILocation(line: 360, column: 12, scope: !974, inlinedAt: !979)
!982 = !DILocation(line: 358, column: 14, scope: !974, inlinedAt: !979)
!983 = !DILocation(line: 361, column: 1, scope: !974, inlinedAt: !979)
!984 = !DILocation(line: 367, column: 39, scope: !953, inlinedAt: !958)
!985 = !DILocation(line: 367, column: 34, scope: !953, inlinedAt: !958)
!986 = !DILocation(line: 367, column: 32, scope: !953, inlinedAt: !958)
!987 = !DILocation(line: 374, column: 27, scope: !966, inlinedAt: !967)
!988 = !{i32 -2147182110}
!989 = !DILocation(line: 374, column: 27, scope: !964, inlinedAt: !967)
!990 = !DILocation(line: 374, column: 21, scope: !959, inlinedAt: !967)
!991 = !DILocation(line: 375, column: 10, scope: !959, inlinedAt: !967)
!992 = !DILocation(line: 0, scope: !934, inlinedAt: !942)
!993 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !994)
!994 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !995)
!995 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !996)
!996 = distinct !DILocation(line: 674, column: 41, scope: !934, inlinedAt: !942)
!997 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !994)
!998 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !995)
!999 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !996)
!1000 = !DILocation(line: 674, column: 21, scope: !934, inlinedAt: !942)
!1001 = !DILocation(line: 678, column: 6, scope: !934, inlinedAt: !942)
!1002 = !DILocation(line: 678, column: 15, scope: !934, inlinedAt: !942)
!1003 = !DILocation(line: 679, column: 22, scope: !934, inlinedAt: !942)
!1004 = !DILocalVariable(name: "nelm", arg: 1, scope: !1005, file: !53, line: 116, type: !150)
!1005 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !865, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1006)
!1006 = !{!1004, !1007}
!1007 = !DILocalVariable(name: "head", arg: 2, scope: !1005, file: !53, line: 116, type: !150)
!1008 = !DILocation(line: 116, column: 52, scope: !1005, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 679, column: 3, scope: !934, inlinedAt: !942)
!1010 = !DILocation(line: 116, column: 76, scope: !1005, inlinedAt: !1009)
!1011 = !DILocation(line: 118, column: 25, scope: !1005, inlinedAt: !1009)
!1012 = !DILocalVariable(name: "nelm", arg: 1, scope: !1013, file: !53, line: 85, type: !150)
!1013 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1014, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !150, !150, !150}
!1016 = !{!1012, !1017, !1018}
!1017 = !DILocalVariable(name: "prev", arg: 2, scope: !1013, file: !53, line: 86, type: !150)
!1018 = !DILocalVariable(name: "next", arg: 3, scope: !1013, file: !53, line: 87, type: !150)
!1019 = !DILocation(line: 85, column: 49, scope: !1013, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 118, column: 2, scope: !1005, inlinedAt: !1009)
!1021 = !DILocation(line: 86, column: 28, scope: !1013, inlinedAt: !1020)
!1022 = !DILocation(line: 87, column: 28, scope: !1013, inlinedAt: !1020)
!1023 = !DILocation(line: 89, column: 13, scope: !1013, inlinedAt: !1020)
!1024 = !DILocation(line: 90, column: 8, scope: !1013, inlinedAt: !1020)
!1025 = !DILocation(line: 90, column: 13, scope: !1013, inlinedAt: !1020)
!1026 = !DILocation(line: 91, column: 8, scope: !1013, inlinedAt: !1020)
!1027 = !DILocation(line: 91, column: 13, scope: !1013, inlinedAt: !1020)
!1028 = !DILocation(line: 92, column: 8, scope: !1013, inlinedAt: !1020)
!1029 = !DILocation(line: 92, column: 13, scope: !1013, inlinedAt: !1020)
!1030 = !DILocation(line: 683, column: 20, scope: !1031, inlinedAt: !942)
!1031 = distinct !DILexicalBlock(scope: !934, file: !124, line: 683, column: 7)
!1032 = !DILocation(line: 683, column: 7, scope: !1031, inlinedAt: !942)
!1033 = !DILocation(line: 683, column: 7, scope: !934, inlinedAt: !942)
!1034 = !DILocation(line: 687, column: 5, scope: !1035, inlinedAt: !942)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !124, line: 683, column: 26)
!1036 = !DILocation(line: 688, column: 3, scope: !1035, inlinedAt: !942)
!1037 = distinct !{!1037, !909, !1038}
!1038 = !DILocation(line: 173, column: 3, scope: !886)
!1039 = !DILocation(line: 175, column: 6, scope: !886)
!1040 = !DILocation(line: 175, column: 14, scope: !886)
!1041 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 179, column: 10, scope: !886)
!1046 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1042)
!1047 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1043)
!1048 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !1044)
!1049 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !1045)
!1050 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !1045)
!1051 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !1045)
!1053 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !1052)
!1054 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !1052)
!1055 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !1045)
!1056 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !1045)
!1057 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !1045)
!1058 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !1045)
!1060 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !1059)
!1061 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !1059)
!1062 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !1059)
!1064 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !1063)
!1065 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !1063)
!1066 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !1063)
!1067 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !1063)
!1068 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !1063)
!1069 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !1059)
!1071 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !1070)
!1072 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !1070)
!1073 = !DILocation(line: 180, column: 8, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !886, file: !124, line: 180, column: 7)
!1075 = !DILocation(line: 180, column: 7, scope: !886)
!1076 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 181, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !124, line: 180, column: 16)
!1081 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1077)
!1082 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1078)
!1083 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !1079)
!1084 = !DILocation(line: 182, column: 3, scope: !1080)
!1085 = !DILocation(line: 0, scope: !886)
!1086 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 183, column: 3, scope: !886)
!1089 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1087)
!1090 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1088)
!1091 = !DILocation(line: 183, column: 23, scope: !886)
!1092 = !DILocation(line: 183, column: 34, scope: !886)
!1093 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 186, column: 19, scope: !886)
!1096 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1094)
!1097 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1095)
!1098 = !DILocation(line: 186, column: 39, scope: !886)
!1099 = !DILocation(line: 186, column: 51, scope: !886)
!1100 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 186, column: 3, scope: !886)
!1102 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !1101)
!1103 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !1101)
!1104 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !1101)
!1106 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !1105)
!1107 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !1105)
!1108 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !1105)
!1109 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !1105)
!1110 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !1105)
!1111 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !1101)
!1113 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !1112)
!1114 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !1112)
!1115 = !DILocation(line: 189, column: 3, scope: !886)
!1116 = !DILocation(line: 190, column: 3, scope: !886)
!1117 = !DILocation(line: 193, column: 3, scope: !886)
!1118 = !DILocation(line: 196, column: 1, scope: !886)
!1119 = !DILocation(line: 663, column: 30, scope: !934)
!1120 = !DILocation(line: 663, column: 41, scope: !934)
!1121 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 666, column: 30, scope: !934)
!1125 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1122)
!1126 = !DILocation(line: 666, column: 16, scope: !934)
!1127 = !DILocation(line: 669, column: 7, scope: !969)
!1128 = !DILocation(line: 669, column: 7, scope: !934)
!1129 = !DILocation(line: 366, column: 29, scope: !951, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 373, column: 20, scope: !959, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 670, column: 19, scope: !968)
!1132 = !DILocation(line: 366, column: 29, scope: !952, inlinedAt: !1130)
!1133 = !DILocation(line: 366, column: 23, scope: !953, inlinedAt: !1130)
!1134 = !DILocation(line: 358, column: 5, scope: !974, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 367, column: 18, scope: !953, inlinedAt: !1130)
!1136 = !DILocation(line: 359, column: 5, scope: !974, inlinedAt: !1135)
!1137 = !DILocation(line: 360, column: 12, scope: !974, inlinedAt: !1135)
!1138 = !DILocation(line: 358, column: 14, scope: !974, inlinedAt: !1135)
!1139 = !DILocation(line: 361, column: 1, scope: !974, inlinedAt: !1135)
!1140 = !DILocation(line: 367, column: 39, scope: !953, inlinedAt: !1130)
!1141 = !DILocation(line: 367, column: 34, scope: !953, inlinedAt: !1130)
!1142 = !DILocation(line: 367, column: 32, scope: !953, inlinedAt: !1130)
!1143 = !DILocation(line: 374, column: 27, scope: !966, inlinedAt: !1131)
!1144 = !DILocation(line: 374, column: 27, scope: !964, inlinedAt: !1131)
!1145 = !DILocation(line: 374, column: 21, scope: !959, inlinedAt: !1131)
!1146 = !DILocation(line: 375, column: 10, scope: !959, inlinedAt: !1131)
!1147 = !DILocation(line: 671, column: 3, scope: !968)
!1148 = !DILocation(line: 0, scope: !934)
!1149 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 674, column: 41, scope: !934)
!1153 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1150)
!1154 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1151)
!1155 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !1152)
!1156 = !DILocation(line: 674, column: 21, scope: !934)
!1157 = !DILocation(line: 678, column: 6, scope: !934)
!1158 = !DILocation(line: 678, column: 15, scope: !934)
!1159 = !DILocation(line: 679, column: 22, scope: !934)
!1160 = !DILocation(line: 116, column: 52, scope: !1005, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 679, column: 3, scope: !934)
!1162 = !DILocation(line: 116, column: 76, scope: !1005, inlinedAt: !1161)
!1163 = !DILocation(line: 118, column: 25, scope: !1005, inlinedAt: !1161)
!1164 = !DILocation(line: 85, column: 49, scope: !1013, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 118, column: 2, scope: !1005, inlinedAt: !1161)
!1166 = !DILocation(line: 86, column: 28, scope: !1013, inlinedAt: !1165)
!1167 = !DILocation(line: 87, column: 28, scope: !1013, inlinedAt: !1165)
!1168 = !DILocation(line: 89, column: 13, scope: !1013, inlinedAt: !1165)
!1169 = !DILocation(line: 90, column: 8, scope: !1013, inlinedAt: !1165)
!1170 = !DILocation(line: 90, column: 13, scope: !1013, inlinedAt: !1165)
!1171 = !DILocation(line: 91, column: 8, scope: !1013, inlinedAt: !1165)
!1172 = !DILocation(line: 91, column: 13, scope: !1013, inlinedAt: !1165)
!1173 = !DILocation(line: 92, column: 8, scope: !1013, inlinedAt: !1165)
!1174 = !DILocation(line: 92, column: 13, scope: !1013, inlinedAt: !1165)
!1175 = !DILocation(line: 683, column: 20, scope: !1031)
!1176 = !DILocation(line: 683, column: 7, scope: !1031)
!1177 = !DILocation(line: 683, column: 7, scope: !934)
!1178 = !DILocation(line: 687, column: 5, scope: !1035)
!1179 = !DILocation(line: 688, column: 3, scope: !1035)
!1180 = !DILocation(line: 690, column: 3, scope: !934)
!1181 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !887, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1182)
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "f_to", arg: 1, scope: !1181, file: !124, line: 198, type: !240)
!1184 = !DILocation(line: 198, column: 33, scope: !1181)
!1185 = !DILocation(line: 202, column: 9, scope: !1181)
!1186 = !DILocation(line: 202, column: 19, scope: !1181)
!1187 = !DILocation(line: 202, column: 32, scope: !1181)
!1188 = !DILocation(line: 202, column: 3, scope: !1181)
!1189 = !DILocation(line: 208, column: 3, scope: !1181)
!1190 = !DILocation(line: 210, column: 3, scope: !1181)
!1191 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !124, file: !124, line: 274, type: !887, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1192)
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "f", arg: 1, scope: !1191, file: !124, line: 274, type: !240)
!1194 = !DILocation(line: 274, column: 33, scope: !1191)
!1195 = !DILocation(line: 276, column: 26, scope: !1191)
!1196 = !DILocation(line: 276, column: 37, scope: !1191)
!1197 = !DILocation(line: 276, column: 6, scope: !1191)
!1198 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 277, column: 3, scope: !1191)
!1200 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1199)
!1201 = !DILocation(line: 276, column: 32, scope: !1191)
!1202 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1199)
!1203 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1199)
!1204 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1199)
!1205 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 278, column: 3, scope: !1191)
!1207 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1206)
!1208 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1206)
!1209 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1206)
!1210 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1206)
!1211 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 279, column: 3, scope: !1191)
!1213 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1212)
!1214 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1212)
!1215 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1212)
!1216 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1212)
!1217 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 280, column: 3, scope: !1191)
!1219 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1218)
!1220 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1218)
!1221 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1218)
!1222 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1218)
!1223 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 281, column: 3, scope: !1191)
!1225 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1224)
!1226 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1224)
!1227 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1224)
!1228 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1224)
!1229 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 282, column: 3, scope: !1191)
!1231 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1230)
!1232 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1230)
!1233 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1230)
!1234 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1230)
!1235 = !DILocation(line: 283, column: 18, scope: !1191)
!1236 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 283, column: 3, scope: !1191)
!1238 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1237)
!1239 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1237)
!1240 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1237)
!1241 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1237)
!1242 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 284, column: 3, scope: !1191)
!1244 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1243)
!1245 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1243)
!1246 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1243)
!1247 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1243)
!1248 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 285, column: 3, scope: !1191)
!1250 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1249)
!1251 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1249)
!1252 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1249)
!1253 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1249)
!1254 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 286, column: 3, scope: !1191)
!1256 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1255)
!1257 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1255)
!1258 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1255)
!1259 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1255)
!1260 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 287, column: 3, scope: !1191)
!1262 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1261)
!1263 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1261)
!1264 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1261)
!1265 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1261)
!1266 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 288, column: 3, scope: !1191)
!1268 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1267)
!1269 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1267)
!1270 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1267)
!1271 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1267)
!1272 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 289, column: 3, scope: !1191)
!1274 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1273)
!1275 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1273)
!1276 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1273)
!1277 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1273)
!1278 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 290, column: 3, scope: !1191)
!1280 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1279)
!1281 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1279)
!1282 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1279)
!1283 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1279)
!1284 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 291, column: 3, scope: !1191)
!1286 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1285)
!1287 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1285)
!1288 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1285)
!1289 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1285)
!1290 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 292, column: 3, scope: !1191)
!1292 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !1291)
!1293 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !1291)
!1294 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !1291)
!1295 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !1291)
!1296 = !DILocation(line: 294, column: 3, scope: !1191)
!1297 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !1298, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!48, !240}
!1300 = !{!1301, !1302, !1303}
!1301 = !DILocalVariable(name: "f_to", arg: 1, scope: !1297, file: !124, line: 299, type: !240)
!1302 = !DILocalVariable(name: "f_from", scope: !1297, file: !124, line: 302, type: !240)
!1303 = !DILocalVariable(name: "fiber_sched_queue", scope: !1304, file: !124, line: 312, type: !150)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !124, line: 310, column: 63)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !124, line: 310, column: 7)
!1306 = !DILocation(line: 299, column: 36, scope: !1297)
!1307 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 302, column: 24, scope: !1297)
!1311 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1308)
!1312 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1309)
!1313 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !1310)
!1314 = !DILocation(line: 302, column: 15, scope: !1297)
!1315 = !DILocation(line: 305, column: 15, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1297, file: !124, line: 305, column: 7)
!1317 = !DILocation(line: 305, column: 32, scope: !1316)
!1318 = !DILocation(line: 306, column: 22, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !124, line: 305, column: 61)
!1320 = !DILocation(line: 307, column: 3, scope: !1319)
!1321 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 310, column: 17, scope: !1305)
!1325 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1322)
!1326 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1323)
!1327 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !1324)
!1328 = !DILocation(line: 310, column: 14, scope: !1305)
!1329 = !DILocation(line: 310, column: 34, scope: !1305)
!1330 = !DILocation(line: 310, column: 45, scope: !1305)
!1331 = !DILocation(line: 310, column: 54, scope: !1305)
!1332 = !DILocation(line: 310, column: 7, scope: !1297)
!1333 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 312, column: 43, scope: !1304)
!1337 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1334)
!1338 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1335)
!1339 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !1336)
!1340 = !DILocation(line: 312, column: 23, scope: !1304)
!1341 = !DILocation(line: 318, column: 29, scope: !1304)
!1342 = !DILocation(line: 116, column: 52, scope: !1005, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 318, column: 5, scope: !1304)
!1344 = !DILocation(line: 116, column: 76, scope: !1005, inlinedAt: !1343)
!1345 = !DILocation(line: 118, column: 25, scope: !1005, inlinedAt: !1343)
!1346 = !DILocation(line: 85, column: 49, scope: !1013, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 118, column: 2, scope: !1005, inlinedAt: !1343)
!1348 = !DILocation(line: 86, column: 28, scope: !1013, inlinedAt: !1347)
!1349 = !DILocation(line: 87, column: 28, scope: !1013, inlinedAt: !1347)
!1350 = !DILocation(line: 89, column: 13, scope: !1013, inlinedAt: !1347)
!1351 = !DILocation(line: 90, column: 8, scope: !1013, inlinedAt: !1347)
!1352 = !DILocation(line: 90, column: 13, scope: !1013, inlinedAt: !1347)
!1353 = !DILocation(line: 91, column: 8, scope: !1013, inlinedAt: !1347)
!1354 = !DILocation(line: 91, column: 13, scope: !1013, inlinedAt: !1347)
!1355 = !DILocation(line: 92, column: 8, scope: !1013, inlinedAt: !1347)
!1356 = !DILocation(line: 92, column: 13, scope: !1013, inlinedAt: !1347)
!1357 = !DILocation(line: 319, column: 3, scope: !1304)
!1358 = !DILocation(line: 323, column: 16, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1297, file: !124, line: 323, column: 7)
!1360 = !DILocation(line: 323, column: 8, scope: !1359)
!1361 = !DILocation(line: 323, column: 7, scope: !1297)
!1362 = !DILocation(line: 324, column: 29, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !124, line: 323, column: 24)
!1364 = !DILocalVariable(name: "vc", arg: 1, scope: !1365, file: !124, line: 906, type: !88)
!1365 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !1366, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !88}
!1368 = !{!1364, !1369}
!1369 = !DILocalVariable(name: "curr_fiber", scope: !1365, file: !124, line: 909, type: !240)
!1370 = !DILocation(line: 906, column: 49, scope: !1365, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 324, column: 5, scope: !1363)
!1372 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 909, column: 28, scope: !1365, inlinedAt: !1371)
!1376 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1373)
!1377 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1374)
!1378 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !1375)
!1379 = !DILocation(line: 909, column: 15, scope: !1365, inlinedAt: !1371)
!1380 = !DILocation(line: 912, column: 15, scope: !1365, inlinedAt: !1371)
!1381 = !DILocation(line: 912, column: 18, scope: !1365, inlinedAt: !1371)
!1382 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !1389)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !16, line: 258, column: 26)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !16, line: 258, column: 26)
!1385 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !787, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1386)
!1386 = !{!1387, !1388}
!1387 = !DILocalVariable(name: "__r", scope: !1384, file: !16, line: 258, type: !160)
!1388 = !DILocalVariable(name: "__r", scope: !1383, file: !16, line: 258, type: !160)
!1389 = distinct !DILocation(line: 913, column: 3, scope: !1365, inlinedAt: !1371)
!1390 = !{i32 -2147260791}
!1391 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !1389)
!1392 = !DILocation(line: 913, column: 21, scope: !1365, inlinedAt: !1371)
!1393 = !DILocation(line: 913, column: 24, scope: !1365, inlinedAt: !1371)
!1394 = !DILocation(line: 325, column: 3, scope: !1363)
!1395 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 328, column: 3, scope: !1297)
!1398 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1396)
!1399 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1397)
!1400 = !DILocation(line: 328, column: 23, scope: !1297)
!1401 = !DILocation(line: 328, column: 34, scope: !1297)
!1402 = !DILocation(line: 329, column: 20, scope: !1297)
!1403 = !DILocation(line: 330, column: 9, scope: !1297)
!1404 = !DILocation(line: 330, column: 18, scope: !1297)
!1405 = !DILocation(line: 331, column: 3, scope: !1297)
!1406 = !DILocation(line: 333, column: 3, scope: !1297)
!1407 = !DILocation(line: 906, column: 49, scope: !1365)
!1408 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 909, column: 28, scope: !1365)
!1412 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1409)
!1413 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1410)
!1414 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !1411)
!1415 = !DILocation(line: 909, column: 15, scope: !1365)
!1416 = !DILocation(line: 912, column: 15, scope: !1365)
!1417 = !DILocation(line: 912, column: 18, scope: !1365)
!1418 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 913, column: 3, scope: !1365)
!1420 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !1419)
!1421 = !DILocation(line: 913, column: 21, scope: !1365)
!1422 = !DILocation(line: 913, column: 24, scope: !1365)
!1423 = !DILocation(line: 914, column: 1, scope: !1365)
!1424 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !1425, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null}
!1427 = !{!1428}
!1428 = !DILocalVariable(name: "curr", scope: !1424, file: !124, line: 338, type: !240)
!1429 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 338, column: 22, scope: !1424)
!1433 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1430)
!1434 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1431)
!1435 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !1432)
!1436 = !DILocation(line: 338, column: 15, scope: !1424)
!1437 = !DILocation(line: 340, column: 3, scope: !1424)
!1438 = !DILocation(line: 341, column: 1, scope: !1424)
!1439 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !1440, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!29, !240}
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "f", arg: 1, scope: !1439, file: !124, line: 343, type: !240)
!1444 = !DILocalVariable(name: "idle_fiber", scope: !1439, file: !124, line: 345, type: !240)
!1445 = !DILocalVariable(name: "result", scope: !1439, file: !124, line: 348, type: !29)
!1446 = !DILocation(line: 343, column: 36, scope: !1439)
!1447 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 345, column: 28, scope: !1439)
!1451 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1448)
!1452 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !1449)
!1453 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !1450)
!1454 = !DILocation(line: 345, column: 15, scope: !1439)
!1455 = !DILocation(line: 348, column: 11, scope: !1439)
!1456 = !DILocation(line: 349, column: 18, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1439, file: !124, line: 349, column: 7)
!1458 = !DILocation(line: 349, column: 7, scope: !1439)
!1459 = !DILocation(line: 353, column: 3, scope: !1439)
!1460 = !DILocation(line: 366, column: 29, scope: !951, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 373, column: 20, scope: !959)
!1462 = !DILocation(line: 366, column: 29, scope: !952, inlinedAt: !1461)
!1463 = !DILocation(line: 366, column: 23, scope: !953, inlinedAt: !1461)
!1464 = !DILocation(line: 358, column: 5, scope: !974, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 367, column: 18, scope: !953, inlinedAt: !1461)
!1466 = !DILocation(line: 359, column: 5, scope: !974, inlinedAt: !1465)
!1467 = !DILocation(line: 360, column: 12, scope: !974, inlinedAt: !1465)
!1468 = !DILocation(line: 358, column: 14, scope: !974, inlinedAt: !1465)
!1469 = !DILocation(line: 361, column: 1, scope: !974, inlinedAt: !1465)
!1470 = !DILocation(line: 367, column: 39, scope: !953, inlinedAt: !1461)
!1471 = !DILocation(line: 367, column: 34, scope: !953, inlinedAt: !1461)
!1472 = !DILocation(line: 367, column: 32, scope: !953, inlinedAt: !1461)
!1473 = !DILocation(line: 374, column: 27, scope: !966)
!1474 = !DILocation(line: 374, column: 27, scope: !964)
!1475 = !DILocation(line: 374, column: 21, scope: !959)
!1476 = !DILocation(line: 375, column: 10, scope: !959)
!1477 = !DILocation(line: 375, column: 33, scope: !959)
!1478 = !DILocation(line: 375, column: 42, scope: !959)
!1479 = !DILocation(line: 375, column: 3, scope: !959)
!1480 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !1298, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484, !1486, !1488, !1489, !1490, !1491, !1493, !1498}
!1482 = !DILocalVariable(name: "to_del", arg: 1, scope: !1480, file: !124, line: 383, type: !240)
!1483 = !DILocalVariable(name: "sys", scope: !1480, file: !124, line: 386, type: !264)
!1484 = !DILocalVariable(name: "__r", scope: !1485, file: !124, line: 386, type: !264)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !124, line: 386, column: 26)
!1486 = !DILocalVariable(name: "__r", scope: !1487, file: !124, line: 386, type: !264)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !124, line: 386, column: 26)
!1488 = !DILocalVariable(name: "cpu_iter", scope: !1480, file: !124, line: 387, type: !48)
!1489 = !DILocalVariable(name: "temp", scope: !1480, file: !124, line: 390, type: !150)
!1490 = !DILocalVariable(name: "test", scope: !1480, file: !124, line: 391, type: !240)
!1491 = !DILocalVariable(name: "iter", scope: !1492, file: !124, line: 392, type: !48)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !124, line: 392, column: 3)
!1493 = !DILocalVariable(name: "__mptr", scope: !1494, file: !124, line: 395, type: !831)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !124, line: 395, column: 5)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !124, line: 395, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !124, line: 392, column: 46)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !124, line: 392, column: 3)
!1498 = !DILocalVariable(name: "__mptr", scope: !1499, file: !124, line: 395, type: !831)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !124, line: 395, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !124, line: 395, column: 5)
!1501 = !DILocation(line: 383, column: 42, scope: !1480)
!1502 = !DILocation(line: 386, column: 26, scope: !1487)
!1503 = !{i32 -2147179109}
!1504 = !DILocation(line: 386, column: 26, scope: !1485)
!1505 = !DILocation(line: 386, column: 20, scope: !1480)
!1506 = !DILocation(line: 387, column: 23, scope: !1480)
!1507 = !DILocation(line: 387, column: 7, scope: !1480)
!1508 = !DILocation(line: 392, column: 12, scope: !1492)
!1509 = !DILocation(line: 392, column: 27, scope: !1497)
!1510 = !DILocation(line: 392, column: 3, scope: !1492)
!1511 = !DILocation(line: 394, column: 14, scope: !1496)
!1512 = !DILocation(line: 394, column: 31, scope: !1496)
!1513 = !DILocation(line: 394, column: 40, scope: !1496)
!1514 = !DILocation(line: 390, column: 21, scope: !1480)
!1515 = !DILocation(line: 395, column: 5, scope: !1494)
!1516 = !DILocation(line: 391, column: 15, scope: !1480)
!1517 = !DILocation(line: 0, scope: !1495)
!1518 = !DILocation(line: 395, column: 5, scope: !1495)
!1519 = !DILocation(line: 395, column: 5, scope: !1500)
!1520 = !DILocation(line: 400, column: 16, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !124, line: 400, column: 11)
!1522 = distinct !DILexicalBlock(scope: !1500, file: !124, line: 395, column: 48)
!1523 = !DILocation(line: 400, column: 11, scope: !1522)
!1524 = distinct !{!1524, !1518, !1525}
!1525 = !DILocation(line: 404, column: 5, scope: !1495)
!1526 = !DILocation(line: 392, column: 43, scope: !1497)
!1527 = distinct !{!1527, !1510, !1528}
!1528 = !DILocation(line: 405, column: 3, scope: !1492)
!1529 = !DILocation(line: 401, column: 33, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !124, line: 400, column: 26)
!1531 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 401, column: 9, scope: !1530)
!1533 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !1532)
!1534 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !1532)
!1535 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !1532)
!1537 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !1536)
!1538 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !1536)
!1539 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !1536)
!1540 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !1536)
!1541 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !1536)
!1542 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !1532)
!1544 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !1543)
!1545 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !1543)
!1546 = !DILocation(line: 408, column: 1, scope: !1480)
!1547 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1548)
!1548 = !{!1549, !1550, !1552, !1554, !1555, !1561, !1562, !1567, !1569, !1572, !1574}
!1549 = !DILocalVariable(name: "id", scope: !1547, file: !124, line: 437, type: !291)
!1550 = !DILocalVariable(name: "__r", scope: !1551, file: !124, line: 437, type: !291)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !124, line: 437, column: 19)
!1552 = !DILocalVariable(name: "__r", scope: !1553, file: !124, line: 437, type: !291)
!1553 = distinct !DILexicalBlock(scope: !1551, file: !124, line: 437, column: 19)
!1554 = !DILocalVariable(name: "my_cpu", scope: !1547, file: !124, line: 438, type: !270)
!1555 = !DILocalVariable(name: "_p", scope: !1556, file: !124, line: 444, type: !48)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !124, line: 444, column: 2)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !124, line: 444, column: 2)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !124, line: 444, column: 2)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !124, line: 443, column: 29)
!1560 = distinct !DILexicalBlock(scope: !1547, file: !124, line: 443, column: 9)
!1561 = !DILocalVariable(name: "_t", scope: !1556, file: !124, line: 444, type: !160)
!1562 = !DILocalVariable(name: "__r", scope: !1563, file: !124, line: 444, type: !291)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !124, line: 444, column: 2)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !124, line: 444, column: 2)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !124, line: 444, column: 2)
!1566 = distinct !DILexicalBlock(scope: !1556, file: !124, line: 444, column: 2)
!1567 = !DILocalVariable(name: "__r", scope: !1568, file: !124, line: 444, type: !291)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !124, line: 444, column: 2)
!1569 = !DILocalVariable(name: "__r", scope: !1570, file: !124, line: 444, type: !291)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !124, line: 444, column: 2)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !124, line: 444, column: 2)
!1572 = !DILocalVariable(name: "__r", scope: !1573, file: !124, line: 444, type: !291)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !124, line: 444, column: 2)
!1574 = !DILocalVariable(name: "_p", scope: !1575, file: !124, line: 444, type: !48)
!1575 = distinct !DILexicalBlock(scope: !1557, file: !124, line: 444, column: 2)
!1576 = !DILocation(line: 437, column: 19, scope: !1553)
!1577 = !{i32 -2147162346}
!1578 = !DILocation(line: 437, column: 19, scope: !1551)
!1579 = !DILocation(line: 437, column: 14, scope: !1547)
!1580 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 438, column: 27, scope: !1547)
!1582 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !1581)
!1583 = !DILocation(line: 438, column: 18, scope: !1547)
!1584 = !DILocation(line: 442, column: 23, scope: !1547)
!1585 = !DILocation(line: 442, column: 13, scope: !1547)
!1586 = !DILocation(line: 442, column: 21, scope: !1547)
!1587 = !DILocation(line: 443, column: 10, scope: !1560)
!1588 = !DILocation(line: 443, column: 9, scope: !1547)
!1589 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1594)
!1590 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !1591, file: !1591, line: 39, type: !1592, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!1591 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!31}
!1594 = distinct !DILocation(line: 444, column: 2, scope: !1557)
!1595 = !DILocation(line: 444, column: 2, scope: !1557)
!1596 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !1601)
!1598 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !1591, file: !1591, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1599)
!1599 = !{!1600}
!1600 = !DILocalVariable(name: "base", scope: !1598, file: !1591, line: 84, type: !31)
!1601 = distinct !DILocation(line: 0, scope: !1557)
!1602 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !1601)
!1603 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !1601)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !1591, line: 85, column: 9)
!1605 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !1601)
!1606 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !1601)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !1591, line: 85, column: 15)
!1608 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !1601)
!1609 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !1601)
!1610 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !1601)
!1611 = !DILocation(line: 0, scope: !1604, inlinedAt: !1601)
!1612 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !1617)
!1614 = distinct !DISubprogram(name: "preempt_disable", scope: !1591, file: !1591, line: 46, type: !1425, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1615)
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "base", scope: !1614, file: !1591, line: 48, type: !31)
!1617 = distinct !DILocation(line: 0, scope: !1557)
!1618 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !1617)
!1619 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !1617)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !1591, line: 49, column: 9)
!1621 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !1617)
!1622 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !1617)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !1591, line: 49, column: 15)
!1624 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !1617)
!1625 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !1617)
!1626 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !1617)
!1627 = !DILocation(line: 444, column: 2, scope: !1558)
!1628 = !DILocation(line: 444, column: 2, scope: !1556)
!1629 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 444, column: 2, scope: !1556)
!1631 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !1630)
!1632 = !DILocation(line: 444, column: 2, scope: !1565)
!1633 = !DILocation(line: 0, scope: !1565)
!1634 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1641)
!1636 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !1591, file: !1591, line: 94, type: !1637, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!39}
!1639 = !{!1640}
!1640 = !DILocalVariable(name: "base", scope: !1636, file: !1591, line: 96, type: !31)
!1641 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1643)
!1642 = distinct !DISubprogram(name: "in_interrupt_context", scope: !1591, file: !1591, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!1643 = distinct !DILocation(line: 0, scope: !1565)
!1644 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1641)
!1645 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1641)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !1591, line: 97, column: 9)
!1647 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1641)
!1648 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1641)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !1591, line: 97, column: 15)
!1650 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1641)
!1651 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1641)
!1652 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1641)
!1653 = !DILocation(line: 444, column: 2, scope: !1566)
!1654 = !DILocation(line: 444, column: 2, scope: !1564)
!1655 = !DILocation(line: 444, column: 2, scope: !1571)
!1656 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1661)
!1658 = distinct !DISubprogram(name: "preempt_enable", scope: !1591, file: !1591, line: 57, type: !1425, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1659)
!1659 = !{!1660}
!1660 = !DILocalVariable(name: "base", scope: !1658, file: !1591, line: 59, type: !31)
!1661 = distinct !DILocation(line: 444, column: 2, scope: !1556)
!1662 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1661)
!1663 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1661)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !1591, line: 60, column: 9)
!1665 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1661)
!1666 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1661)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !1591, line: 60, column: 15)
!1668 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1661)
!1669 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1661)
!1670 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1661)
!1671 = !DILocation(line: 444, column: 2, scope: !1575)
!1672 = !DILocation(line: 444, column: 2, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !124, line: 444, column: 2)
!1674 = distinct !DILexicalBlock(scope: !1575, file: !124, line: 444, column: 2)
!1675 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 0, scope: !1673)
!1679 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1677)
!1680 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1677)
!1681 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1677)
!1682 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1677)
!1683 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1677)
!1684 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1677)
!1685 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1677)
!1686 = !DILocation(line: 0, scope: !1673)
!1687 = !DILocation(line: 444, column: 2, scope: !1674)
!1688 = !DILocation(line: 444, column: 2, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1673, file: !124, line: 444, column: 2)
!1690 = !DILocation(line: 444, column: 2, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1673, file: !124, line: 444, column: 2)
!1692 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 444, column: 2, scope: !1575)
!1695 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1694)
!1696 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1694)
!1697 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1694)
!1698 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1694)
!1699 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1694)
!1700 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1694)
!1701 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1694)
!1702 = !DILocation(line: 0, scope: !1547)
!1703 = !DILocation(line: 449, column: 1, scope: !1547)
!1704 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !1705, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!280}
!1707 = !{!1708, !1709, !1711, !1713, !1715, !1721, !1722, !1727, !1729, !1732, !1734}
!1708 = !DILocalVariable(name: "state", scope: !1704, file: !124, line: 412, type: !280)
!1709 = !DILocalVariable(name: "p", scope: !1710, file: !124, line: 412, type: !31)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !124, line: 412, column: 74)
!1711 = !DILocalVariable(name: "__r", scope: !1712, file: !124, line: 412, type: !291)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !124, line: 412, column: 74)
!1713 = !DILocalVariable(name: "__r", scope: !1714, file: !124, line: 412, type: !291)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !124, line: 412, column: 74)
!1715 = !DILocalVariable(name: "_p", scope: !1716, file: !124, line: 415, type: !48)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !124, line: 415, column: 9)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !124, line: 415, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !124, line: 415, column: 9)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !124, line: 414, column: 17)
!1720 = distinct !DILexicalBlock(scope: !1704, file: !124, line: 414, column: 9)
!1721 = !DILocalVariable(name: "_t", scope: !1716, file: !124, line: 415, type: !160)
!1722 = !DILocalVariable(name: "__r", scope: !1723, file: !124, line: 415, type: !291)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !124, line: 415, column: 9)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !124, line: 415, column: 9)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !124, line: 415, column: 9)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !124, line: 415, column: 9)
!1727 = !DILocalVariable(name: "__r", scope: !1728, file: !124, line: 415, type: !291)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !124, line: 415, column: 9)
!1729 = !DILocalVariable(name: "__r", scope: !1730, file: !124, line: 415, type: !291)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !124, line: 415, column: 9)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !124, line: 415, column: 9)
!1732 = !DILocalVariable(name: "__r", scope: !1733, file: !124, line: 415, type: !291)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !124, line: 415, column: 9)
!1734 = !DILocalVariable(name: "_p", scope: !1735, file: !124, line: 415, type: !48)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !124, line: 415, column: 9)
!1736 = !DILocation(line: 412, column: 74, scope: !1714)
!1737 = !{i32 -2147173855}
!1738 = !DILocation(line: 412, column: 74, scope: !1712)
!1739 = !DILocation(line: 412, column: 74, scope: !1710)
!1740 = !DILocation(line: 414, column: 10, scope: !1720)
!1741 = !DILocation(line: 414, column: 9, scope: !1704)
!1742 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 415, column: 9, scope: !1717)
!1744 = !DILocation(line: 415, column: 9, scope: !1717)
!1745 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 0, scope: !1717)
!1748 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !1747)
!1749 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !1747)
!1750 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !1747)
!1751 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !1747)
!1752 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !1747)
!1753 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !1747)
!1754 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !1747)
!1755 = !DILocation(line: 0, scope: !1604, inlinedAt: !1747)
!1756 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 0, scope: !1717)
!1759 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !1758)
!1760 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !1758)
!1761 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !1758)
!1762 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !1758)
!1763 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !1758)
!1764 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !1758)
!1765 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !1758)
!1766 = !DILocation(line: 415, column: 9, scope: !1718)
!1767 = !DILocation(line: 415, column: 9, scope: !1716)
!1768 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 415, column: 9, scope: !1716)
!1770 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !1769)
!1771 = !DILocation(line: 415, column: 9, scope: !1725)
!1772 = !DILocation(line: 0, scope: !1725)
!1773 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 0, scope: !1725)
!1777 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1775)
!1778 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1775)
!1779 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1775)
!1780 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1775)
!1781 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1775)
!1782 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1775)
!1783 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1775)
!1784 = !DILocation(line: 415, column: 9, scope: !1726)
!1785 = !DILocation(line: 415, column: 9, scope: !1724)
!1786 = !DILocation(line: 415, column: 9, scope: !1731)
!1787 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 415, column: 9, scope: !1716)
!1790 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1789)
!1791 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1789)
!1792 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1789)
!1793 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1789)
!1794 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1789)
!1795 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1789)
!1796 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1789)
!1797 = !DILocation(line: 415, column: 9, scope: !1735)
!1798 = !DILocation(line: 415, column: 9, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !124, line: 415, column: 9)
!1800 = distinct !DILexicalBlock(scope: !1735, file: !124, line: 415, column: 9)
!1801 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 0, scope: !1799)
!1805 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1803)
!1806 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1803)
!1807 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1803)
!1808 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1803)
!1809 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1803)
!1810 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1803)
!1811 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1803)
!1812 = !DILocation(line: 0, scope: !1799)
!1813 = !DILocation(line: 415, column: 9, scope: !1800)
!1814 = !DILocation(line: 415, column: 9, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1799, file: !124, line: 415, column: 9)
!1816 = !DILocation(line: 415, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1799, file: !124, line: 415, column: 9)
!1818 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 415, column: 9, scope: !1735)
!1821 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1820)
!1822 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1820)
!1823 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1820)
!1824 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1820)
!1825 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1820)
!1826 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1820)
!1827 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1820)
!1828 = !DILocation(line: 412, column: 43, scope: !1704)
!1829 = !DILocation(line: 412, column: 35, scope: !1704)
!1830 = !DILocation(line: 419, column: 2, scope: !1704)
!1831 = !DILocation(line: 421, column: 27, scope: !1704)
!1832 = !DILocation(line: 421, column: 5, scope: !1704)
!1833 = !DILocation(line: 424, column: 29, scope: !1704)
!1834 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 424, column: 5, scope: !1704)
!1836 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !1835)
!1837 = !DILocation(line: 76, column: 8, scope: !877, inlinedAt: !1835)
!1838 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !1835)
!1839 = !DILocation(line: 426, column: 5, scope: !1704)
!1840 = !DILocation(line: 429, column: 5, scope: !1704)
!1841 = !DILocation(line: 431, column: 5, scope: !1704)
!1842 = !DILocation(line: 0, scope: !1704)
!1843 = !DILocation(line: 432, column: 1, scope: !1704)
!1844 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1845)
!1845 = !{!1846, !1847, !1851, !1852, !1857, !1859, !1862, !1864, !1866, !1872, !1873, !1878, !1880, !1883, !1885}
!1846 = !DILocalVariable(name: "my_cpu", scope: !1844, file: !124, line: 454, type: !270)
!1847 = !DILocalVariable(name: "_p", scope: !1848, file: !124, line: 456, type: !48)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !124, line: 456, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !124, line: 456, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !124, line: 456, column: 5)
!1851 = !DILocalVariable(name: "_t", scope: !1848, file: !124, line: 456, type: !160)
!1852 = !DILocalVariable(name: "__r", scope: !1853, file: !124, line: 456, type: !291)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !124, line: 456, column: 5)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !124, line: 456, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !124, line: 456, column: 5)
!1856 = distinct !DILexicalBlock(scope: !1848, file: !124, line: 456, column: 5)
!1857 = !DILocalVariable(name: "__r", scope: !1858, file: !124, line: 456, type: !291)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !124, line: 456, column: 5)
!1859 = !DILocalVariable(name: "__r", scope: !1860, file: !124, line: 456, type: !291)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !124, line: 456, column: 5)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !124, line: 456, column: 5)
!1862 = !DILocalVariable(name: "__r", scope: !1863, file: !124, line: 456, type: !291)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !124, line: 456, column: 5)
!1864 = !DILocalVariable(name: "_p", scope: !1865, file: !124, line: 456, type: !48)
!1865 = distinct !DILexicalBlock(scope: !1849, file: !124, line: 456, column: 5)
!1866 = !DILocalVariable(name: "_p", scope: !1867, file: !124, line: 464, type: !48)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !124, line: 464, column: 2)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !124, line: 464, column: 2)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !124, line: 464, column: 2)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !124, line: 463, column: 29)
!1871 = distinct !DILexicalBlock(scope: !1844, file: !124, line: 463, column: 9)
!1872 = !DILocalVariable(name: "_t", scope: !1867, file: !124, line: 464, type: !160)
!1873 = !DILocalVariable(name: "__r", scope: !1874, file: !124, line: 464, type: !291)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !124, line: 464, column: 2)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !124, line: 464, column: 2)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !124, line: 464, column: 2)
!1877 = distinct !DILexicalBlock(scope: !1867, file: !124, line: 464, column: 2)
!1878 = !DILocalVariable(name: "__r", scope: !1879, file: !124, line: 464, type: !291)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !124, line: 464, column: 2)
!1880 = !DILocalVariable(name: "__r", scope: !1881, file: !124, line: 464, type: !291)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !124, line: 464, column: 2)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !124, line: 464, column: 2)
!1883 = !DILocalVariable(name: "__r", scope: !1884, file: !124, line: 464, type: !291)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !124, line: 464, column: 2)
!1885 = !DILocalVariable(name: "_p", scope: !1886, file: !124, line: 464, type: !48)
!1886 = distinct !DILexicalBlock(scope: !1868, file: !124, line: 464, column: 2)
!1887 = !DILocation(line: 454, column: 88, scope: !1844)
!1888 = !DILocation(line: 454, column: 27, scope: !1844)
!1889 = !DILocation(line: 454, column: 18, scope: !1844)
!1890 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 456, column: 5, scope: !1849)
!1892 = !DILocation(line: 456, column: 5, scope: !1849)
!1893 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 0, scope: !1849)
!1896 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !1895)
!1897 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !1895)
!1898 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !1895)
!1899 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !1895)
!1900 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !1895)
!1901 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !1895)
!1902 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !1895)
!1903 = !DILocation(line: 0, scope: !1604, inlinedAt: !1895)
!1904 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 0, scope: !1849)
!1907 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !1906)
!1908 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !1906)
!1909 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !1906)
!1910 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !1906)
!1911 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !1906)
!1912 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !1906)
!1913 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !1906)
!1914 = !DILocation(line: 456, column: 5, scope: !1850)
!1915 = !DILocation(line: 456, column: 5, scope: !1848)
!1916 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 456, column: 5, scope: !1848)
!1918 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !1917)
!1919 = !DILocation(line: 456, column: 5, scope: !1855)
!1920 = !DILocation(line: 0, scope: !1855)
!1921 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 0, scope: !1855)
!1925 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1923)
!1926 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1923)
!1927 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1923)
!1928 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1923)
!1929 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1923)
!1930 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1923)
!1931 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1923)
!1932 = !DILocation(line: 456, column: 5, scope: !1856)
!1933 = !DILocation(line: 456, column: 5, scope: !1854)
!1934 = !DILocation(line: 456, column: 5, scope: !1861)
!1935 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 456, column: 5, scope: !1848)
!1938 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1937)
!1939 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1937)
!1940 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1937)
!1941 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1937)
!1942 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1937)
!1943 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1937)
!1944 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1937)
!1945 = !DILocation(line: 456, column: 5, scope: !1865)
!1946 = !DILocation(line: 456, column: 5, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !124, line: 456, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1865, file: !124, line: 456, column: 5)
!1949 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 0, scope: !1947)
!1953 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !1951)
!1954 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !1951)
!1955 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !1951)
!1956 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !1951)
!1957 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !1951)
!1958 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !1951)
!1959 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !1951)
!1960 = !DILocation(line: 0, scope: !1947)
!1961 = !DILocation(line: 456, column: 5, scope: !1948)
!1962 = !DILocation(line: 456, column: 5, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !124, line: 456, column: 5)
!1964 = !DILocation(line: 456, column: 5, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1947, file: !124, line: 456, column: 5)
!1966 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 456, column: 5, scope: !1865)
!1969 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !1968)
!1970 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !1968)
!1971 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !1968)
!1972 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !1968)
!1973 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !1968)
!1974 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !1968)
!1975 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !1968)
!1976 = !DILocation(line: 462, column: 23, scope: !1844)
!1977 = !DILocation(line: 462, column: 13, scope: !1844)
!1978 = !DILocation(line: 462, column: 21, scope: !1844)
!1979 = !DILocation(line: 463, column: 10, scope: !1871)
!1980 = !DILocation(line: 463, column: 9, scope: !1844)
!1981 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 464, column: 2, scope: !1868)
!1983 = !DILocation(line: 464, column: 2, scope: !1868)
!1984 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 0, scope: !1868)
!1987 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !1986)
!1988 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !1986)
!1989 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !1986)
!1990 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !1986)
!1991 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !1986)
!1992 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !1986)
!1993 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !1986)
!1994 = !DILocation(line: 0, scope: !1604, inlinedAt: !1986)
!1995 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 0, scope: !1868)
!1998 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !1997)
!1999 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !1997)
!2000 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !1997)
!2001 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !1997)
!2002 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !1997)
!2003 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !1997)
!2004 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !1997)
!2005 = !DILocation(line: 464, column: 2, scope: !1869)
!2006 = !DILocation(line: 464, column: 2, scope: !1867)
!2007 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 464, column: 2, scope: !1867)
!2009 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2008)
!2010 = !DILocation(line: 464, column: 2, scope: !1876)
!2011 = !DILocation(line: 0, scope: !1876)
!2012 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 0, scope: !1876)
!2016 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2014)
!2017 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2014)
!2018 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2014)
!2019 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2014)
!2020 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2014)
!2021 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2014)
!2022 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2014)
!2023 = !DILocation(line: 464, column: 2, scope: !1877)
!2024 = !DILocation(line: 464, column: 2, scope: !1875)
!2025 = !DILocation(line: 464, column: 2, scope: !1882)
!2026 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 464, column: 2, scope: !1867)
!2029 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2028)
!2030 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2028)
!2031 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2028)
!2032 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2028)
!2033 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2028)
!2034 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2028)
!2035 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2028)
!2036 = !DILocation(line: 464, column: 2, scope: !1886)
!2037 = !DILocation(line: 464, column: 2, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !124, line: 464, column: 2)
!2039 = distinct !DILexicalBlock(scope: !1886, file: !124, line: 464, column: 2)
!2040 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 0, scope: !2038)
!2044 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2042)
!2045 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2042)
!2046 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2042)
!2047 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2042)
!2048 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2042)
!2049 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2042)
!2050 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2042)
!2051 = !DILocation(line: 0, scope: !2038)
!2052 = !DILocation(line: 464, column: 2, scope: !2039)
!2053 = !DILocation(line: 464, column: 2, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2038, file: !124, line: 464, column: 2)
!2055 = !DILocation(line: 464, column: 2, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2038, file: !124, line: 464, column: 2)
!2057 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 464, column: 2, scope: !1886)
!2060 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2059)
!2061 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2059)
!2062 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2059)
!2063 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2059)
!2064 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2059)
!2065 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2059)
!2066 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2059)
!2067 = !DILocation(line: 0, scope: !1844)
!2068 = !DILocation(line: 469, column: 1, scope: !1844)
!2069 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2070)
!2070 = !{!2071, !2072, !2073, !2079, !2080, !2085, !2087, !2090, !2092, !2094, !2120, !2126, !2127, !2132, !2134, !2137, !2139, !2141, !2142, !2148, !2149, !2154, !2156, !2159, !2161, !2163, !2164, !2170, !2171, !2176, !2178, !2181, !2183}
!2071 = !DILocalVariable(name: "in", arg: 1, scope: !2069, file: !124, line: 511, type: !31)
!2072 = !DILocalVariable(name: "out", arg: 2, scope: !2069, file: !124, line: 511, type: !75)
!2073 = !DILocalVariable(name: "_p", scope: !2074, file: !124, line: 515, type: !48)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !124, line: 515, column: 5)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !124, line: 515, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !124, line: 515, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !124, line: 514, column: 51)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !124, line: 514, column: 7)
!2079 = !DILocalVariable(name: "_t", scope: !2074, file: !124, line: 515, type: !160)
!2080 = !DILocalVariable(name: "__r", scope: !2081, file: !124, line: 515, type: !291)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !124, line: 515, column: 5)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !124, line: 515, column: 5)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !124, line: 515, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2074, file: !124, line: 515, column: 5)
!2085 = !DILocalVariable(name: "__r", scope: !2086, file: !124, line: 515, type: !291)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !124, line: 515, column: 5)
!2087 = !DILocalVariable(name: "__r", scope: !2088, file: !124, line: 515, type: !291)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !124, line: 515, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !124, line: 515, column: 5)
!2090 = !DILocalVariable(name: "__r", scope: !2091, file: !124, line: 515, type: !291)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !124, line: 515, column: 5)
!2092 = !DILocalVariable(name: "_p", scope: !2093, file: !124, line: 515, type: !48)
!2093 = distinct !DILexicalBlock(scope: !2075, file: !124, line: 515, column: 5)
!2094 = !DILocalVariable(name: "c", scope: !2069, file: !124, line: 520, type: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2096)
!2096 = !{!2097, !2099, !2100}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2095, file: !86, line: 68, baseType: !2098, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2095, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !86, line: 80, baseType: !2101, size: 256, offset: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !86, line: 80, size: 256, elements: !2102)
!2102 = !{!2103, !2109, !2116}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2101, file: !86, line: 81, baseType: !2104, size: 192)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2104, file: !86, line: 50, baseType: !25, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2104, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2104, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2101, file: !86, line: 82, baseType: !2110, size: 256)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2110, file: !86, line: 56, baseType: !25, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2110, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2110, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2101, file: !86, line: 83, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2118)
!2118 = !{!2119}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2117, file: !86, line: 63, baseType: !25, size: 64)
!2120 = !DILocalVariable(name: "_p", scope: !2121, file: !124, line: 525, type: !48)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !124, line: 525, column: 5)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !124, line: 525, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !124, line: 525, column: 5)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !124, line: 524, column: 47)
!2125 = distinct !DILexicalBlock(scope: !2069, file: !124, line: 524, column: 7)
!2126 = !DILocalVariable(name: "_t", scope: !2121, file: !124, line: 525, type: !160)
!2127 = !DILocalVariable(name: "__r", scope: !2128, file: !124, line: 525, type: !291)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !124, line: 525, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !124, line: 525, column: 5)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !124, line: 525, column: 5)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !124, line: 525, column: 5)
!2132 = !DILocalVariable(name: "__r", scope: !2133, file: !124, line: 525, type: !291)
!2133 = distinct !DILexicalBlock(scope: !2128, file: !124, line: 525, column: 5)
!2134 = !DILocalVariable(name: "__r", scope: !2135, file: !124, line: 525, type: !291)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !124, line: 525, column: 5)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !124, line: 525, column: 5)
!2137 = !DILocalVariable(name: "__r", scope: !2138, file: !124, line: 525, type: !291)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !124, line: 525, column: 5)
!2139 = !DILocalVariable(name: "_p", scope: !2140, file: !124, line: 525, type: !48)
!2140 = distinct !DILexicalBlock(scope: !2122, file: !124, line: 525, column: 5)
!2141 = !DILocalVariable(name: "state", scope: !2069, file: !124, line: 534, type: !756)
!2142 = !DILocalVariable(name: "_p", scope: !2143, file: !124, line: 536, type: !48)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !124, line: 536, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !124, line: 536, column: 5)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !124, line: 536, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !124, line: 535, column: 17)
!2147 = distinct !DILexicalBlock(scope: !2069, file: !124, line: 535, column: 7)
!2148 = !DILocalVariable(name: "_t", scope: !2143, file: !124, line: 536, type: !160)
!2149 = !DILocalVariable(name: "__r", scope: !2150, file: !124, line: 536, type: !291)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !124, line: 536, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !124, line: 536, column: 5)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !124, line: 536, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2143, file: !124, line: 536, column: 5)
!2154 = !DILocalVariable(name: "__r", scope: !2155, file: !124, line: 536, type: !291)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !124, line: 536, column: 5)
!2156 = !DILocalVariable(name: "__r", scope: !2157, file: !124, line: 536, type: !291)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !124, line: 536, column: 5)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !124, line: 536, column: 5)
!2159 = !DILocalVariable(name: "__r", scope: !2160, file: !124, line: 536, type: !291)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !124, line: 536, column: 5)
!2161 = !DILocalVariable(name: "_p", scope: !2162, file: !124, line: 536, type: !48)
!2162 = distinct !DILexicalBlock(scope: !2144, file: !124, line: 536, column: 5)
!2163 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2069, file: !124, line: 541, type: !240)
!2164 = !DILocalVariable(name: "_p", scope: !2165, file: !124, line: 543, type: !48)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !124, line: 543, column: 5)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !124, line: 543, column: 5)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !124, line: 543, column: 5)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !124, line: 542, column: 71)
!2169 = distinct !DILexicalBlock(scope: !2069, file: !124, line: 542, column: 7)
!2170 = !DILocalVariable(name: "_t", scope: !2165, file: !124, line: 543, type: !160)
!2171 = !DILocalVariable(name: "__r", scope: !2172, file: !124, line: 543, type: !291)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !124, line: 543, column: 5)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !124, line: 543, column: 5)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !124, line: 543, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2165, file: !124, line: 543, column: 5)
!2176 = !DILocalVariable(name: "__r", scope: !2177, file: !124, line: 543, type: !291)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !124, line: 543, column: 5)
!2178 = !DILocalVariable(name: "__r", scope: !2179, file: !124, line: 543, type: !291)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !124, line: 543, column: 5)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !124, line: 543, column: 5)
!2181 = !DILocalVariable(name: "__r", scope: !2182, file: !124, line: 543, type: !291)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !124, line: 543, column: 5)
!2183 = !DILocalVariable(name: "_p", scope: !2184, file: !124, line: 543, type: !48)
!2184 = distinct !DILexicalBlock(scope: !2166, file: !124, line: 543, column: 5)
!2185 = !DILocation(line: 511, column: 27, scope: !2069)
!2186 = !DILocation(line: 511, column: 38, scope: !2069)
!2187 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 514, column: 22, scope: !2078)
!2189 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2188)
!2190 = !DILocation(line: 514, column: 22, scope: !2078)
!2191 = !DILocation(line: 514, column: 7, scope: !2078)
!2192 = !DILocation(line: 514, column: 7, scope: !2069)
!2193 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 515, column: 5, scope: !2075)
!2195 = !DILocation(line: 515, column: 5, scope: !2075)
!2196 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 0, scope: !2075)
!2199 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !2198)
!2200 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !2198)
!2201 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !2198)
!2202 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !2198)
!2203 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !2198)
!2204 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !2198)
!2205 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !2198)
!2206 = !DILocation(line: 0, scope: !1604, inlinedAt: !2198)
!2207 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 0, scope: !2075)
!2210 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !2209)
!2211 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !2209)
!2212 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !2209)
!2213 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !2209)
!2214 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !2209)
!2215 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !2209)
!2216 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !2209)
!2217 = !DILocation(line: 515, column: 5, scope: !2076)
!2218 = !DILocation(line: 515, column: 5, scope: !2074)
!2219 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 515, column: 5, scope: !2074)
!2221 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2220)
!2222 = !DILocation(line: 515, column: 5, scope: !2083)
!2223 = !DILocation(line: 0, scope: !2083)
!2224 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 0, scope: !2083)
!2228 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2226)
!2229 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2226)
!2230 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2226)
!2231 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2226)
!2232 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2226)
!2233 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2226)
!2234 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2226)
!2235 = !DILocation(line: 515, column: 5, scope: !2084)
!2236 = !DILocation(line: 515, column: 5, scope: !2082)
!2237 = !DILocation(line: 515, column: 5, scope: !2089)
!2238 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 515, column: 5, scope: !2074)
!2241 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2240)
!2242 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2240)
!2243 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2240)
!2244 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2240)
!2245 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2240)
!2246 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2240)
!2247 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2240)
!2248 = !DILocation(line: 515, column: 5, scope: !2093)
!2249 = !DILocation(line: 515, column: 5, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !124, line: 515, column: 5)
!2251 = distinct !DILexicalBlock(scope: !2093, file: !124, line: 515, column: 5)
!2252 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 0, scope: !2250)
!2256 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2254)
!2257 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2254)
!2258 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2254)
!2259 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2254)
!2260 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2254)
!2261 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2254)
!2262 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2254)
!2263 = !DILocation(line: 0, scope: !2250)
!2264 = !DILocation(line: 515, column: 5, scope: !2251)
!2265 = !DILocation(line: 515, column: 5, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2250, file: !124, line: 515, column: 5)
!2267 = !DILocation(line: 515, column: 5, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2250, file: !124, line: 515, column: 5)
!2269 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 515, column: 5, scope: !2093)
!2272 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2271)
!2273 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2271)
!2274 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2271)
!2275 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2271)
!2276 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2271)
!2277 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2271)
!2278 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2271)
!2279 = !DILocation(line: 520, column: 3, scope: !2069)
!2280 = !DILocation(line: 520, column: 31, scope: !2069)
!2281 = !DILocation(line: 524, column: 7, scope: !2125)
!2282 = !DILocation(line: 0, scope: !2069)
!2283 = !DILocation(line: 524, column: 7, scope: !2069)
!2284 = !DILocation(line: 525, column: 5, scope: !2122)
!2285 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 0, scope: !2122)
!2288 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !2287)
!2289 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !2287)
!2290 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !2287)
!2291 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !2287)
!2292 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !2287)
!2293 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !2287)
!2294 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !2287)
!2295 = !DILocation(line: 0, scope: !1604, inlinedAt: !2287)
!2296 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 0, scope: !2122)
!2299 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !2298)
!2300 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !2298)
!2301 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !2298)
!2302 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !2298)
!2303 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !2298)
!2304 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !2298)
!2305 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !2298)
!2306 = !DILocation(line: 525, column: 5, scope: !2123)
!2307 = !DILocation(line: 525, column: 5, scope: !2121)
!2308 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 525, column: 5, scope: !2121)
!2310 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2309)
!2311 = !DILocation(line: 525, column: 5, scope: !2130)
!2312 = !DILocation(line: 0, scope: !2130)
!2313 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 0, scope: !2130)
!2317 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2315)
!2318 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2315)
!2319 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2315)
!2320 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2315)
!2321 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2315)
!2322 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2315)
!2323 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2315)
!2324 = !DILocation(line: 525, column: 5, scope: !2131)
!2325 = !DILocation(line: 525, column: 5, scope: !2129)
!2326 = !DILocation(line: 525, column: 5, scope: !2136)
!2327 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 525, column: 5, scope: !2121)
!2330 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2329)
!2331 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2329)
!2332 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2329)
!2333 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2329)
!2334 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2329)
!2335 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2329)
!2336 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2329)
!2337 = !DILocation(line: 525, column: 5, scope: !2140)
!2338 = !DILocation(line: 525, column: 5, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !124, line: 525, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2140, file: !124, line: 525, column: 5)
!2341 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 0, scope: !2339)
!2345 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2343)
!2346 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2343)
!2347 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2343)
!2348 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2343)
!2349 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2343)
!2350 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2343)
!2351 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2343)
!2352 = !DILocation(line: 0, scope: !2339)
!2353 = !DILocation(line: 525, column: 5, scope: !2340)
!2354 = !DILocation(line: 525, column: 5, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2339, file: !124, line: 525, column: 5)
!2356 = !DILocation(line: 525, column: 5, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2339, file: !124, line: 525, column: 5)
!2358 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 525, column: 5, scope: !2140)
!2361 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2360)
!2362 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2360)
!2363 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2360)
!2364 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2360)
!2365 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2360)
!2366 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2360)
!2367 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2360)
!2368 = !DILocation(line: 526, column: 5, scope: !2124)
!2369 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 534, column: 24, scope: !2069)
!2372 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2371)
!2373 = !DILocation(line: 534, column: 16, scope: !2069)
!2374 = !DILocation(line: 535, column: 8, scope: !2147)
!2375 = !DILocation(line: 535, column: 7, scope: !2069)
!2376 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 536, column: 5, scope: !2144)
!2378 = !DILocation(line: 536, column: 5, scope: !2144)
!2379 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 0, scope: !2144)
!2382 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !2381)
!2383 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !2381)
!2384 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !2381)
!2385 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !2381)
!2386 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !2381)
!2387 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !2381)
!2388 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !2381)
!2389 = !DILocation(line: 0, scope: !1604, inlinedAt: !2381)
!2390 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 0, scope: !2144)
!2393 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !2392)
!2394 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !2392)
!2395 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !2392)
!2396 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !2392)
!2397 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !2392)
!2398 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !2392)
!2399 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !2392)
!2400 = !DILocation(line: 536, column: 5, scope: !2145)
!2401 = !DILocation(line: 536, column: 5, scope: !2143)
!2402 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 536, column: 5, scope: !2143)
!2404 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2403)
!2405 = !DILocation(line: 536, column: 5, scope: !2152)
!2406 = !DILocation(line: 0, scope: !2152)
!2407 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 0, scope: !2152)
!2411 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2409)
!2412 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2409)
!2413 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2409)
!2414 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2409)
!2415 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2409)
!2416 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2409)
!2417 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2409)
!2418 = !DILocation(line: 536, column: 5, scope: !2153)
!2419 = !DILocation(line: 536, column: 5, scope: !2151)
!2420 = !DILocation(line: 536, column: 5, scope: !2158)
!2421 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 536, column: 5, scope: !2143)
!2424 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2423)
!2425 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2423)
!2426 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2423)
!2427 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2423)
!2428 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2423)
!2429 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2423)
!2430 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2423)
!2431 = !DILocation(line: 536, column: 5, scope: !2162)
!2432 = !DILocation(line: 536, column: 5, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !124, line: 536, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2162, file: !124, line: 536, column: 5)
!2435 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 0, scope: !2433)
!2439 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2437)
!2440 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2437)
!2441 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2437)
!2442 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2437)
!2443 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2437)
!2444 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2437)
!2445 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2437)
!2446 = !DILocation(line: 0, scope: !2433)
!2447 = !DILocation(line: 536, column: 5, scope: !2434)
!2448 = !DILocation(line: 536, column: 5, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2433, file: !124, line: 536, column: 5)
!2450 = !DILocation(line: 536, column: 5, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2433, file: !124, line: 536, column: 5)
!2452 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 536, column: 5, scope: !2162)
!2455 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2454)
!2456 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2454)
!2457 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2454)
!2458 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2454)
!2459 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2454)
!2460 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2454)
!2461 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2454)
!2462 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 538, column: 25, scope: !2069)
!2464 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2463)
!2465 = !DILocation(line: 538, column: 10, scope: !2069)
!2466 = !DILocation(line: 538, column: 23, scope: !2069)
!2467 = !DILocation(line: 541, column: 3, scope: !2069)
!2468 = !DILocation(line: 541, column: 15, scope: !2069)
!2469 = !DILocation(line: 542, column: 7, scope: !2169)
!2470 = !DILocation(line: 542, column: 66, scope: !2169)
!2471 = !DILocation(line: 542, column: 7, scope: !2069)
!2472 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 543, column: 5, scope: !2166)
!2474 = !DILocation(line: 543, column: 5, scope: !2166)
!2475 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 0, scope: !2166)
!2478 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !2477)
!2479 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !2477)
!2480 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !2477)
!2481 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !2477)
!2482 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !2477)
!2483 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !2477)
!2484 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !2477)
!2485 = !DILocation(line: 0, scope: !1604, inlinedAt: !2477)
!2486 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 0, scope: !2166)
!2489 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !2488)
!2490 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !2488)
!2491 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !2488)
!2492 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !2488)
!2493 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !2488)
!2494 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !2488)
!2495 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !2488)
!2496 = !DILocation(line: 543, column: 5, scope: !2167)
!2497 = !DILocation(line: 543, column: 5, scope: !2165)
!2498 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 543, column: 5, scope: !2165)
!2500 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2499)
!2501 = !DILocation(line: 543, column: 5, scope: !2174)
!2502 = !DILocation(line: 0, scope: !2174)
!2503 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 0, scope: !2174)
!2507 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2505)
!2508 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2505)
!2509 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2505)
!2510 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2505)
!2511 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2505)
!2512 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2505)
!2513 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2505)
!2514 = !DILocation(line: 543, column: 5, scope: !2175)
!2515 = !DILocation(line: 543, column: 5, scope: !2173)
!2516 = !DILocation(line: 543, column: 5, scope: !2180)
!2517 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 543, column: 5, scope: !2165)
!2520 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2519)
!2521 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2519)
!2522 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2519)
!2523 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2519)
!2524 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2519)
!2525 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2519)
!2526 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2519)
!2527 = !DILocation(line: 543, column: 5, scope: !2184)
!2528 = !DILocation(line: 543, column: 5, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !124, line: 543, column: 5)
!2530 = distinct !DILexicalBlock(scope: !2184, file: !124, line: 543, column: 5)
!2531 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 0, scope: !2529)
!2535 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !2533)
!2536 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !2533)
!2537 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !2533)
!2538 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !2533)
!2539 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !2533)
!2540 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !2533)
!2541 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !2533)
!2542 = !DILocation(line: 0, scope: !2529)
!2543 = !DILocation(line: 543, column: 5, scope: !2530)
!2544 = !DILocation(line: 543, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2529, file: !124, line: 543, column: 5)
!2546 = !DILocation(line: 543, column: 5, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2529, file: !124, line: 543, column: 5)
!2548 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 543, column: 5, scope: !2184)
!2551 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !2550)
!2552 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !2550)
!2553 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !2550)
!2554 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !2550)
!2555 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !2550)
!2556 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !2550)
!2557 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !2550)
!2558 = !DILocation(line: 547, column: 23, scope: !2069)
!2559 = !DILocation(line: 547, column: 10, scope: !2069)
!2560 = !DILocation(line: 547, column: 21, scope: !2069)
!2561 = !DILocation(line: 548, column: 10, scope: !2069)
!2562 = !DILocation(line: 548, column: 21, scope: !2069)
!2563 = !DILocation(line: 551, column: 3, scope: !2069)
!2564 = !DILocation(line: 551, column: 19, scope: !2069)
!2565 = !DILocation(line: 551, column: 27, scope: !2069)
!2566 = !DILocation(line: 198, column: 33, scope: !1181, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 554, column: 3, scope: !2069)
!2568 = !DILocation(line: 202, column: 9, scope: !1181, inlinedAt: !2567)
!2569 = !DILocation(line: 202, column: 19, scope: !1181, inlinedAt: !2567)
!2570 = !DILocation(line: 202, column: 32, scope: !1181, inlinedAt: !2567)
!2571 = !DILocation(line: 202, column: 3, scope: !1181, inlinedAt: !2567)
!2572 = !DILocation(line: 208, column: 3, scope: !1181, inlinedAt: !2567)
!2573 = !DILocation(line: 557, column: 1, scope: !2069)
!2574 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2575)
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "in", arg: 1, scope: !2574, file: !124, line: 479, type: !31)
!2577 = !DILocalVariable(name: "out", arg: 2, scope: !2574, file: !124, line: 479, type: !75)
!2578 = !DILocation(line: 479, column: 35, scope: !2574)
!2579 = !DILocation(line: 479, column: 46, scope: !2574)
!2580 = !DILocation(line: 481, column: 3, scope: !2574)
!2581 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 704, column: 7, scope: !2585, inlinedAt: !2589)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !124, line: 704, column: 7)
!2586 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2587)
!2587 = !{!2588}
!2588 = !DILocalVariable(name: "f_to", scope: !2586, file: !124, line: 708, type: !240)
!2589 = distinct !DILocation(line: 489, column: 5, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2574, file: !124, line: 481, column: 13)
!2591 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2582)
!2592 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2583)
!2593 = !DILocation(line: 98, column: 30, scope: !786, inlinedAt: !2584)
!2594 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 704, column: 30, scope: !2585, inlinedAt: !2589)
!2596 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2595)
!2597 = !DILocation(line: 704, column: 27, scope: !2585, inlinedAt: !2589)
!2598 = !DILocation(line: 704, column: 7, scope: !2586, inlinedAt: !2589)
!2599 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 708, column: 22, scope: !2586, inlinedAt: !2589)
!2604 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2600)
!2605 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2601)
!2606 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !2602)
!2607 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !2603)
!2608 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !2603)
!2609 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !2603)
!2611 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !2610)
!2612 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !2610)
!2613 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !2603)
!2614 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !2603)
!2615 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !2603)
!2616 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !2603)
!2618 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !2617)
!2619 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !2617)
!2620 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !2617)
!2622 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !2621)
!2623 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !2621)
!2624 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !2621)
!2625 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !2621)
!2626 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !2621)
!2627 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !2617)
!2629 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !2628)
!2630 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !2628)
!2631 = !DILocation(line: 708, column: 15, scope: !2586, inlinedAt: !2589)
!2632 = !DILocation(line: 718, column: 12, scope: !2633, inlinedAt: !2589)
!2633 = distinct !DILexicalBlock(scope: !2586, file: !124, line: 718, column: 7)
!2634 = !DILocation(line: 718, column: 7, scope: !2586, inlinedAt: !2589)
!2635 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 719, column: 9, scope: !2639, inlinedAt: !2589)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !124, line: 719, column: 9)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !124, line: 718, column: 21)
!2641 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2636)
!2642 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2637)
!2643 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !2638)
!2644 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 719, column: 31, scope: !2639, inlinedAt: !2589)
!2648 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2645)
!2649 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2646)
!2650 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !2647)
!2651 = !DILocation(line: 719, column: 28, scope: !2639, inlinedAt: !2589)
!2652 = !DILocation(line: 719, column: 9, scope: !2640, inlinedAt: !2589)
!2653 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 723, column: 16, scope: !2657, inlinedAt: !2589)
!2657 = distinct !DILexicalBlock(scope: !2639, file: !124, line: 722, column: 12)
!2658 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2654)
!2659 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2655)
!2660 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !2656)
!2661 = !DILocation(line: 725, column: 3, scope: !2640, inlinedAt: !2589)
!2662 = !DILocation(line: 0, scope: !2586, inlinedAt: !2589)
!2663 = !DILocation(line: 727, column: 10, scope: !2586, inlinedAt: !2589)
!2664 = !DILocation(line: 727, column: 3, scope: !2586, inlinedAt: !2589)
!2665 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 490, column: 28, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2590, file: !124, line: 490, column: 9)
!2670 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2666)
!2671 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2667)
!2672 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !2668)
!2673 = !DILocalVariable(name: "head", arg: 1, scope: !2674, file: !53, line: 201, type: !831)
!2674 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !844, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2675)
!2675 = !{!2673, !2676}
!2676 = !DILocalVariable(name: "next", scope: !2674, file: !53, line: 203, type: !150)
!2677 = !DILocation(line: 201, column: 62, scope: !2674, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 490, column: 9, scope: !2669)
!2679 = !DILocation(line: 203, column: 33, scope: !2674, inlinedAt: !2678)
!2680 = !DILocation(line: 203, column: 20, scope: !2674, inlinedAt: !2678)
!2681 = !DILocation(line: 204, column: 15, scope: !2674, inlinedAt: !2678)
!2682 = !DILocation(line: 204, column: 24, scope: !2674, inlinedAt: !2678)
!2683 = !DILocation(line: 204, column: 42, scope: !2674, inlinedAt: !2678)
!2684 = !DILocation(line: 204, column: 33, scope: !2674, inlinedAt: !2678)
!2685 = !DILocation(line: 490, column: 9, scope: !2590)
!2686 = !DILocation(line: 489, column: 5, scope: !2590)
!2687 = distinct !{!2687, !2580, !2688}
!2688 = !DILocation(line: 508, column: 3, scope: !2574)
!2689 = !DILocation(line: 492, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2669, file: !124, line: 490, column: 47)
!2691 = !DILocation(line: 494, column: 5, scope: !2690)
!2692 = distinct !DISubprogram(name: "nk_fiber_create", scope: !124, file: !124, line: 602, type: !2693, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!48, !259, !31, !75, !45, !587}
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2705}
!2696 = !DILocalVariable(name: "fun", arg: 1, scope: !2692, file: !124, line: 602, type: !259)
!2697 = !DILocalVariable(name: "input", arg: 2, scope: !2692, file: !124, line: 602, type: !31)
!2698 = !DILocalVariable(name: "output", arg: 3, scope: !2692, file: !124, line: 602, type: !75)
!2699 = !DILocalVariable(name: "stack_size", arg: 4, scope: !2692, file: !124, line: 602, type: !45)
!2700 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !2692, file: !124, line: 602, type: !587)
!2701 = !DILocalVariable(name: "fiber", scope: !2692, file: !124, line: 605, type: !240)
!2702 = !DILocalVariable(name: "required_stack_size", scope: !2692, file: !124, line: 608, type: !45)
!2703 = !DILocalVariable(name: "p", scope: !2704, file: !124, line: 611, type: !31)
!2704 = distinct !DILexicalBlock(scope: !2692, file: !124, line: 611, column: 11)
!2705 = !DILocalVariable(name: "p", scope: !2706, file: !124, line: 628, type: !31)
!2706 = distinct !DILexicalBlock(scope: !2692, file: !124, line: 628, column: 26)
!2707 = !DILocation(line: 602, column: 36, scope: !2692)
!2708 = !DILocation(line: 602, column: 47, scope: !2692)
!2709 = !DILocation(line: 602, column: 61, scope: !2692)
!2710 = !DILocation(line: 602, column: 85, scope: !2692)
!2711 = !DILocation(line: 602, column: 110, scope: !2692)
!2712 = !DILocation(line: 605, column: 15, scope: !2692)
!2713 = !DILocation(line: 608, column: 41, scope: !2692)
!2714 = !DILocation(line: 608, column: 19, scope: !2692)
!2715 = !DILocation(line: 611, column: 11, scope: !2704)
!2716 = !DILocation(line: 614, column: 8, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2692, file: !124, line: 614, column: 7)
!2718 = !DILocation(line: 614, column: 7, scope: !2692)
!2719 = !DILocation(line: 620, column: 3, scope: !2692)
!2720 = !DILocation(line: 623, column: 10, scope: !2692)
!2721 = !DILocation(line: 623, column: 19, scope: !2692)
!2722 = !DILocation(line: 625, column: 10, scope: !2692)
!2723 = !DILocation(line: 625, column: 21, scope: !2692)
!2724 = !DILocation(line: 628, column: 26, scope: !2706)
!2725 = !DILocation(line: 628, column: 10, scope: !2692)
!2726 = !DILocation(line: 628, column: 16, scope: !2692)
!2727 = !DILocation(line: 631, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2692, file: !124, line: 631, column: 7)
!2729 = !DILocation(line: 631, column: 7, scope: !2692)
!2730 = !DILocation(line: 634, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !124, line: 631, column: 21)
!2732 = !DILocation(line: 635, column: 5, scope: !2731)
!2733 = !DILocation(line: 639, column: 10, scope: !2692)
!2734 = !DILocation(line: 639, column: 14, scope: !2692)
!2735 = !DILocation(line: 640, column: 10, scope: !2692)
!2736 = !DILocation(line: 640, column: 16, scope: !2692)
!2737 = !DILocation(line: 641, column: 10, scope: !2692)
!2738 = !DILocation(line: 641, column: 17, scope: !2692)
!2739 = !DILocation(line: 274, column: 33, scope: !1191, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 644, column: 3, scope: !2692)
!2741 = !DILocation(line: 276, column: 37, scope: !1191, inlinedAt: !2740)
!2742 = !DILocation(line: 276, column: 6, scope: !1191, inlinedAt: !2740)
!2743 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 277, column: 3, scope: !1191, inlinedAt: !2740)
!2745 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2744)
!2746 = !DILocation(line: 276, column: 32, scope: !1191, inlinedAt: !2740)
!2747 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2744)
!2748 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2744)
!2749 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2744)
!2750 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 278, column: 3, scope: !1191, inlinedAt: !2740)
!2752 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2751)
!2753 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2751)
!2754 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2751)
!2755 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2751)
!2756 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 279, column: 3, scope: !1191, inlinedAt: !2740)
!2758 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2757)
!2759 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2757)
!2760 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2757)
!2761 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2757)
!2762 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 280, column: 3, scope: !1191, inlinedAt: !2740)
!2764 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2763)
!2765 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2763)
!2766 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2763)
!2767 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2763)
!2768 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 281, column: 3, scope: !1191, inlinedAt: !2740)
!2770 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2769)
!2771 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2769)
!2772 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2769)
!2773 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2769)
!2774 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 282, column: 3, scope: !1191, inlinedAt: !2740)
!2776 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2775)
!2777 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2775)
!2778 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2775)
!2779 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2775)
!2780 = !DILocation(line: 283, column: 18, scope: !1191, inlinedAt: !2740)
!2781 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 283, column: 3, scope: !1191, inlinedAt: !2740)
!2783 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2782)
!2784 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2782)
!2785 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2782)
!2786 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2782)
!2787 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 284, column: 3, scope: !1191, inlinedAt: !2740)
!2789 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2788)
!2790 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2788)
!2791 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2788)
!2792 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2788)
!2793 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 285, column: 3, scope: !1191, inlinedAt: !2740)
!2795 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2794)
!2796 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2794)
!2797 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2794)
!2798 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2794)
!2799 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 286, column: 3, scope: !1191, inlinedAt: !2740)
!2801 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2800)
!2802 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2800)
!2803 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2800)
!2804 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2800)
!2805 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 287, column: 3, scope: !1191, inlinedAt: !2740)
!2807 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2806)
!2808 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2806)
!2809 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2806)
!2810 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2806)
!2811 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 288, column: 3, scope: !1191, inlinedAt: !2740)
!2813 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2812)
!2814 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2812)
!2815 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2812)
!2816 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2812)
!2817 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 289, column: 3, scope: !1191, inlinedAt: !2740)
!2819 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2818)
!2820 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2818)
!2821 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2818)
!2822 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2818)
!2823 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 290, column: 3, scope: !1191, inlinedAt: !2740)
!2825 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2824)
!2826 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2824)
!2827 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2824)
!2828 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2824)
!2829 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 291, column: 3, scope: !1191, inlinedAt: !2740)
!2831 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2830)
!2832 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2830)
!2833 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2830)
!2834 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2830)
!2835 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 292, column: 3, scope: !1191, inlinedAt: !2740)
!2837 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !2836)
!2838 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !2836)
!2839 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !2836)
!2840 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !2836)
!2841 = !DILocation(line: 647, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2692, file: !124, line: 647, column: 7)
!2843 = !DILocation(line: 647, column: 7, scope: !2692)
!2844 = !DILocation(line: 648, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !124, line: 647, column: 20)
!2846 = !DILocation(line: 649, column: 3, scope: !2845)
!2847 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 650, column: 15, scope: !2692)
!2849 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2848)
!2850 = !DILocation(line: 650, column: 33, scope: !2692)
!2851 = !DILocation(line: 650, column: 10, scope: !2692)
!2852 = !DILocation(line: 650, column: 13, scope: !2692)
!2853 = !DILocation(line: 653, column: 27, scope: !2692)
!2854 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 653, column: 3, scope: !2692)
!2856 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !2855)
!2857 = !DILocation(line: 76, column: 8, scope: !877, inlinedAt: !2855)
!2858 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !2855)
!2859 = !DILocation(line: 656, column: 10, scope: !2692)
!2860 = !DILocation(line: 656, column: 19, scope: !2692)
!2861 = !DILocation(line: 657, column: 27, scope: !2692)
!2862 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 657, column: 3, scope: !2692)
!2864 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !2863)
!2865 = !DILocation(line: 76, column: 8, scope: !877, inlinedAt: !2863)
!2866 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !2863)
!2867 = !DILocation(line: 658, column: 27, scope: !2692)
!2868 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 658, column: 3, scope: !2692)
!2870 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !2869)
!2871 = !DILocation(line: 76, column: 8, scope: !877, inlinedAt: !2869)
!2872 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !2869)
!2873 = !DILocation(line: 660, column: 3, scope: !2692)
!2874 = !DILocation(line: 0, scope: !2692)
!2875 = !DILocation(line: 661, column: 1, scope: !2692)
!2876 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 704, column: 7, scope: !2585)
!2880 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2877)
!2881 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2878)
!2882 = !DILocation(line: 98, column: 30, scope: !786, inlinedAt: !2879)
!2883 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 704, column: 30, scope: !2585)
!2885 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !2884)
!2886 = !DILocation(line: 704, column: 27, scope: !2585)
!2887 = !DILocation(line: 704, column: 7, scope: !2586)
!2888 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 708, column: 22, scope: !2586)
!2893 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2889)
!2894 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2890)
!2895 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !2891)
!2896 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !2892)
!2897 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !2892)
!2898 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !2892)
!2900 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !2899)
!2901 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !2899)
!2902 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !2892)
!2903 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !2892)
!2904 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !2892)
!2905 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !2892)
!2907 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !2906)
!2908 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !2906)
!2909 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !2906)
!2911 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !2910)
!2912 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !2910)
!2913 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !2910)
!2914 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !2910)
!2915 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !2910)
!2916 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !2906)
!2918 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !2917)
!2919 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !2917)
!2920 = !DILocation(line: 708, column: 15, scope: !2586)
!2921 = !DILocation(line: 718, column: 12, scope: !2633)
!2922 = !DILocation(line: 718, column: 7, scope: !2586)
!2923 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 719, column: 9, scope: !2639)
!2927 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2924)
!2928 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2925)
!2929 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !2926)
!2930 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 719, column: 31, scope: !2639)
!2934 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2931)
!2935 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2932)
!2936 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !2933)
!2937 = !DILocation(line: 719, column: 28, scope: !2639)
!2938 = !DILocation(line: 719, column: 9, scope: !2640)
!2939 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 723, column: 16, scope: !2657)
!2943 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2940)
!2944 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !2941)
!2945 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !2942)
!2946 = !DILocation(line: 725, column: 3, scope: !2640)
!2947 = !DILocation(line: 0, scope: !2586)
!2948 = !DILocation(line: 727, column: 10, scope: !2586)
!2949 = !DILocation(line: 727, column: 3, scope: !2586)
!2950 = !DILocation(line: 728, column: 1, scope: !2586)
!2951 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !1425, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2952)
!2952 = !{!2953, !2954, !2958, !2959, !2964, !2966, !2969, !2971, !2973, !2979, !2980, !2985, !2987, !2990, !2992}
!2953 = !DILocalVariable(name: "my_cpu", scope: !2951, file: !124, line: 572, type: !270)
!2954 = !DILocalVariable(name: "_p", scope: !2955, file: !124, line: 573, type: !48)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !124, line: 573, column: 5)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !124, line: 573, column: 5)
!2957 = distinct !DILexicalBlock(scope: !2951, file: !124, line: 573, column: 5)
!2958 = !DILocalVariable(name: "_t", scope: !2955, file: !124, line: 573, type: !160)
!2959 = !DILocalVariable(name: "__r", scope: !2960, file: !124, line: 573, type: !291)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !124, line: 573, column: 5)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !124, line: 573, column: 5)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !124, line: 573, column: 5)
!2963 = distinct !DILexicalBlock(scope: !2955, file: !124, line: 573, column: 5)
!2964 = !DILocalVariable(name: "__r", scope: !2965, file: !124, line: 573, type: !291)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !124, line: 573, column: 5)
!2966 = !DILocalVariable(name: "__r", scope: !2967, file: !124, line: 573, type: !291)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !124, line: 573, column: 5)
!2968 = distinct !DILexicalBlock(scope: !2962, file: !124, line: 573, column: 5)
!2969 = !DILocalVariable(name: "__r", scope: !2970, file: !124, line: 573, type: !291)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !124, line: 573, column: 5)
!2971 = !DILocalVariable(name: "_p", scope: !2972, file: !124, line: 573, type: !48)
!2972 = distinct !DILexicalBlock(scope: !2956, file: !124, line: 573, column: 5)
!2973 = !DILocalVariable(name: "_p", scope: !2974, file: !124, line: 575, type: !48)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !124, line: 575, column: 2)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !124, line: 575, column: 2)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !124, line: 575, column: 2)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !124, line: 574, column: 45)
!2978 = distinct !DILexicalBlock(scope: !2951, file: !124, line: 574, column: 9)
!2979 = !DILocalVariable(name: "_t", scope: !2974, file: !124, line: 575, type: !160)
!2980 = !DILocalVariable(name: "__r", scope: !2981, file: !124, line: 575, type: !291)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !124, line: 575, column: 2)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !124, line: 575, column: 2)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !124, line: 575, column: 2)
!2984 = distinct !DILexicalBlock(scope: !2974, file: !124, line: 575, column: 2)
!2985 = !DILocalVariable(name: "__r", scope: !2986, file: !124, line: 575, type: !291)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !124, line: 575, column: 2)
!2987 = !DILocalVariable(name: "__r", scope: !2988, file: !124, line: 575, type: !291)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !124, line: 575, column: 2)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !124, line: 575, column: 2)
!2990 = !DILocalVariable(name: "__r", scope: !2991, file: !124, line: 575, type: !291)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !124, line: 575, column: 2)
!2992 = !DILocalVariable(name: "_p", scope: !2993, file: !124, line: 575, type: !48)
!2993 = distinct !DILexicalBlock(scope: !2975, file: !124, line: 575, column: 2)
!2994 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 572, column: 26, scope: !2951)
!2996 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !2995)
!2997 = !DILocation(line: 572, column: 17, scope: !2951)
!2998 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 573, column: 5, scope: !2956)
!3000 = !DILocation(line: 573, column: 5, scope: !2956)
!3001 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 0, scope: !2956)
!3004 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !3003)
!3005 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !3003)
!3006 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !3003)
!3007 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !3003)
!3008 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !3003)
!3009 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !3003)
!3010 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !3003)
!3011 = !DILocation(line: 0, scope: !1604, inlinedAt: !3003)
!3012 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 0, scope: !2956)
!3015 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !3014)
!3016 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !3014)
!3017 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !3014)
!3018 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !3014)
!3019 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !3014)
!3020 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !3014)
!3021 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !3014)
!3022 = !DILocation(line: 573, column: 5, scope: !2957)
!3023 = !DILocation(line: 573, column: 5, scope: !2955)
!3024 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 573, column: 5, scope: !2955)
!3026 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3025)
!3027 = !DILocation(line: 573, column: 5, scope: !2962)
!3028 = !DILocation(line: 0, scope: !2962)
!3029 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 0, scope: !2962)
!3033 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3031)
!3034 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3031)
!3035 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3031)
!3036 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3031)
!3037 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3031)
!3038 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3031)
!3039 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3031)
!3040 = !DILocation(line: 573, column: 5, scope: !2963)
!3041 = !DILocation(line: 573, column: 5, scope: !2961)
!3042 = !DILocation(line: 573, column: 5, scope: !2968)
!3043 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 573, column: 5, scope: !2955)
!3046 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3045)
!3047 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3045)
!3048 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3045)
!3049 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3045)
!3050 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3045)
!3051 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3045)
!3052 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3045)
!3053 = !DILocation(line: 573, column: 5, scope: !2972)
!3054 = !DILocation(line: 573, column: 5, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !124, line: 573, column: 5)
!3056 = distinct !DILexicalBlock(scope: !2972, file: !124, line: 573, column: 5)
!3057 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 0, scope: !3055)
!3061 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3059)
!3062 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3059)
!3063 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3059)
!3064 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3059)
!3065 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3059)
!3066 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3059)
!3067 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3059)
!3068 = !DILocation(line: 0, scope: !3055)
!3069 = !DILocation(line: 573, column: 5, scope: !3056)
!3070 = !DILocation(line: 573, column: 5, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3055, file: !124, line: 573, column: 5)
!3072 = !DILocation(line: 573, column: 5, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3055, file: !124, line: 573, column: 5)
!3074 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 573, column: 5, scope: !2972)
!3077 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3076)
!3078 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3076)
!3079 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3076)
!3080 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3076)
!3081 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3076)
!3082 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3076)
!3083 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3076)
!3084 = !DILocation(line: 561, column: 3, scope: !3085, inlinedAt: !3114)
!3085 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3086)
!3086 = !{!3087, !3089, !3092, !3094, !3099, !3100, !3105, !3107, !3110, !3112}
!3087 = !DILocalVariable(name: "tid", scope: !3085, file: !124, line: 561, type: !3088)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!3089 = !DILocalVariable(name: "__r", scope: !3090, file: !124, line: 562, type: !291)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !124, line: 562, column: 79)
!3091 = distinct !DILexicalBlock(scope: !3085, file: !124, line: 562, column: 7)
!3092 = !DILocalVariable(name: "__r", scope: !3093, file: !124, line: 562, type: !291)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !124, line: 562, column: 79)
!3094 = !DILocalVariable(name: "_p", scope: !3095, file: !124, line: 563, type: !48)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !124, line: 563, column: 7)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !124, line: 563, column: 7)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !124, line: 563, column: 7)
!3098 = distinct !DILexicalBlock(scope: !3091, file: !124, line: 562, column: 93)
!3099 = !DILocalVariable(name: "_t", scope: !3095, file: !124, line: 563, type: !160)
!3100 = !DILocalVariable(name: "__r", scope: !3101, file: !124, line: 563, type: !291)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !124, line: 563, column: 7)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !124, line: 563, column: 7)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !124, line: 563, column: 7)
!3104 = distinct !DILexicalBlock(scope: !3095, file: !124, line: 563, column: 7)
!3105 = !DILocalVariable(name: "__r", scope: !3106, file: !124, line: 563, type: !291)
!3106 = distinct !DILexicalBlock(scope: !3101, file: !124, line: 563, column: 7)
!3107 = !DILocalVariable(name: "__r", scope: !3108, file: !124, line: 563, type: !291)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !124, line: 563, column: 7)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !124, line: 563, column: 7)
!3110 = !DILocalVariable(name: "__r", scope: !3111, file: !124, line: 563, type: !291)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !124, line: 563, column: 7)
!3112 = !DILocalVariable(name: "_p", scope: !3113, file: !124, line: 563, type: !48)
!3113 = distinct !DILexicalBlock(scope: !3096, file: !124, line: 563, column: 7)
!3114 = distinct !DILocation(line: 574, column: 9, scope: !2978)
!3115 = !DILocation(line: 562, column: 79, scope: !3093, inlinedAt: !3114)
!3116 = !{i32 -2147099479}
!3117 = !DILocation(line: 562, column: 79, scope: !3090, inlinedAt: !3114)
!3118 = !DILocation(line: 561, column: 18, scope: !3085, inlinedAt: !3114)
!3119 = !DILocation(line: 562, column: 7, scope: !3091, inlinedAt: !3114)
!3120 = !DILocation(line: 562, column: 7, scope: !3085, inlinedAt: !3114)
!3121 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 563, column: 7, scope: !3096, inlinedAt: !3114)
!3123 = !DILocation(line: 563, column: 7, scope: !3096, inlinedAt: !3114)
!3124 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 0, scope: !3096, inlinedAt: !3114)
!3127 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !3126)
!3128 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !3126)
!3129 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !3126)
!3130 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !3126)
!3131 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !3126)
!3132 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !3126)
!3133 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !3126)
!3134 = !DILocation(line: 0, scope: !1604, inlinedAt: !3126)
!3135 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 0, scope: !3096, inlinedAt: !3114)
!3138 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !3137)
!3139 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !3137)
!3140 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !3137)
!3141 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !3137)
!3142 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !3137)
!3143 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !3137)
!3144 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !3137)
!3145 = !DILocation(line: 563, column: 7, scope: !3097, inlinedAt: !3114)
!3146 = !DILocation(line: 563, column: 7, scope: !3095, inlinedAt: !3114)
!3147 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 563, column: 7, scope: !3095, inlinedAt: !3114)
!3149 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3148)
!3150 = !DILocation(line: 563, column: 7, scope: !3103, inlinedAt: !3114)
!3151 = !DILocation(line: 0, scope: !3103, inlinedAt: !3114)
!3152 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 0, scope: !3103, inlinedAt: !3114)
!3156 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3154)
!3157 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3154)
!3158 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3154)
!3159 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3154)
!3160 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3154)
!3161 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3154)
!3162 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3154)
!3163 = !DILocation(line: 563, column: 7, scope: !3104, inlinedAt: !3114)
!3164 = !DILocation(line: 563, column: 7, scope: !3102, inlinedAt: !3114)
!3165 = !DILocation(line: 563, column: 7, scope: !3109, inlinedAt: !3114)
!3166 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 563, column: 7, scope: !3095, inlinedAt: !3114)
!3169 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3168)
!3170 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3168)
!3171 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3168)
!3172 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3168)
!3173 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3168)
!3174 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3168)
!3175 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3168)
!3176 = !DILocation(line: 563, column: 7, scope: !3113, inlinedAt: !3114)
!3177 = !DILocation(line: 563, column: 7, scope: !3178, inlinedAt: !3114)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !124, line: 563, column: 7)
!3179 = distinct !DILexicalBlock(scope: !3113, file: !124, line: 563, column: 7)
!3180 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 0, scope: !3178, inlinedAt: !3114)
!3184 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3182)
!3185 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3182)
!3186 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3182)
!3187 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3182)
!3188 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3182)
!3189 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3182)
!3190 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3182)
!3191 = !DILocation(line: 0, scope: !3178, inlinedAt: !3114)
!3192 = !DILocation(line: 563, column: 7, scope: !3179, inlinedAt: !3114)
!3193 = !DILocation(line: 563, column: 7, scope: !3194, inlinedAt: !3114)
!3194 = distinct !DILexicalBlock(scope: !3178, file: !124, line: 563, column: 7)
!3195 = !DILocation(line: 563, column: 7, scope: !3196, inlinedAt: !3114)
!3196 = distinct !DILexicalBlock(scope: !3178, file: !124, line: 563, column: 7)
!3197 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 563, column: 7, scope: !3113, inlinedAt: !3114)
!3200 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3199)
!3201 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3199)
!3202 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3199)
!3203 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3199)
!3204 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3199)
!3205 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3199)
!3206 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3199)
!3207 = !DILocation(line: 568, column: 1, scope: !3085, inlinedAt: !3114)
!3208 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 575, column: 2, scope: !2975)
!3210 = !DILocation(line: 575, column: 2, scope: !2975)
!3211 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 84, column: 18, scope: !1598, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 0, scope: !2975)
!3214 = !DILocation(line: 84, column: 11, scope: !1598, inlinedAt: !3213)
!3215 = !DILocation(line: 85, column: 9, scope: !1604, inlinedAt: !3213)
!3216 = !DILocation(line: 85, column: 9, scope: !1598, inlinedAt: !3213)
!3217 = !DILocation(line: 87, column: 57, scope: !1607, inlinedAt: !3213)
!3218 = !DILocation(line: 87, column: 30, scope: !1607, inlinedAt: !3213)
!3219 = !DILocation(line: 87, column: 9, scope: !1607, inlinedAt: !3213)
!3220 = !DILocation(line: 87, column: 2, scope: !1607, inlinedAt: !3213)
!3221 = !DILocation(line: 0, scope: !1604, inlinedAt: !3213)
!3222 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 48, column: 18, scope: !1614, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 0, scope: !2975)
!3225 = !DILocation(line: 48, column: 11, scope: !1614, inlinedAt: !3224)
!3226 = !DILocation(line: 49, column: 9, scope: !1620, inlinedAt: !3224)
!3227 = !DILocation(line: 49, column: 9, scope: !1614, inlinedAt: !3224)
!3228 = !DILocation(line: 51, column: 50, scope: !1623, inlinedAt: !3224)
!3229 = !DILocation(line: 51, column: 23, scope: !1623, inlinedAt: !3224)
!3230 = !DILocation(line: 51, column: 2, scope: !1623, inlinedAt: !3224)
!3231 = !DILocation(line: 52, column: 5, scope: !1623, inlinedAt: !3224)
!3232 = !DILocation(line: 575, column: 2, scope: !2976)
!3233 = !DILocation(line: 575, column: 2, scope: !2974)
!3234 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 575, column: 2, scope: !2974)
!3236 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3235)
!3237 = !DILocation(line: 575, column: 2, scope: !2983)
!3238 = !DILocation(line: 0, scope: !2983)
!3239 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 0, scope: !2983)
!3243 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3241)
!3244 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3241)
!3245 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3241)
!3246 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3241)
!3247 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3241)
!3248 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3241)
!3249 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3241)
!3250 = !DILocation(line: 575, column: 2, scope: !2984)
!3251 = !DILocation(line: 575, column: 2, scope: !2982)
!3252 = !DILocation(line: 575, column: 2, scope: !2989)
!3253 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 575, column: 2, scope: !2974)
!3256 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3255)
!3257 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3255)
!3258 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3255)
!3259 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3255)
!3260 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3255)
!3261 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3255)
!3262 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3255)
!3263 = !DILocation(line: 575, column: 2, scope: !2993)
!3264 = !DILocation(line: 575, column: 2, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !124, line: 575, column: 2)
!3266 = distinct !DILexicalBlock(scope: !2993, file: !124, line: 575, column: 2)
!3267 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 96, column: 18, scope: !1636, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 107, column: 12, scope: !1642, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 0, scope: !3265)
!3271 = !DILocation(line: 96, column: 11, scope: !1636, inlinedAt: !3269)
!3272 = !DILocation(line: 97, column: 9, scope: !1646, inlinedAt: !3269)
!3273 = !DILocation(line: 97, column: 9, scope: !1636, inlinedAt: !3269)
!3274 = !DILocation(line: 98, column: 57, scope: !1649, inlinedAt: !3269)
!3275 = !DILocation(line: 98, column: 30, scope: !1649, inlinedAt: !3269)
!3276 = !DILocation(line: 98, column: 9, scope: !1649, inlinedAt: !3269)
!3277 = !DILocation(line: 98, column: 2, scope: !1649, inlinedAt: !3269)
!3278 = !DILocation(line: 0, scope: !3265)
!3279 = !DILocation(line: 575, column: 2, scope: !3266)
!3280 = !DILocation(line: 575, column: 2, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3265, file: !124, line: 575, column: 2)
!3282 = !DILocation(line: 575, column: 2, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3265, file: !124, line: 575, column: 2)
!3284 = !DILocation(line: 43, column: 21, scope: !1590, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 59, column: 18, scope: !1658, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 575, column: 2, scope: !2993)
!3287 = !DILocation(line: 59, column: 11, scope: !1658, inlinedAt: !3286)
!3288 = !DILocation(line: 60, column: 9, scope: !1664, inlinedAt: !3286)
!3289 = !DILocation(line: 60, column: 9, scope: !1658, inlinedAt: !3286)
!3290 = !DILocation(line: 62, column: 50, scope: !1667, inlinedAt: !3286)
!3291 = !DILocation(line: 62, column: 23, scope: !1667, inlinedAt: !3286)
!3292 = !DILocation(line: 62, column: 2, scope: !1667, inlinedAt: !3286)
!3293 = !DILocation(line: 63, column: 5, scope: !1667, inlinedAt: !3286)
!3294 = !DILocation(line: 576, column: 2, scope: !2977)
!3295 = !DILocation(line: 579, column: 1, scope: !2951)
!3296 = !DILocation(line: 693, column: 35, scope: !584)
!3297 = !DILocation(line: 693, column: 46, scope: !584)
!3298 = !DILocation(line: 693, column: 60, scope: !584)
!3299 = !DILocation(line: 693, column: 84, scope: !584)
!3300 = !DILocation(line: 693, column: 104, scope: !584)
!3301 = !DILocation(line: 693, column: 134, scope: !584)
!3302 = !DILocation(line: 695, column: 3, scope: !584)
!3303 = !DILocation(line: 696, column: 16, scope: !584)
!3304 = !DILocation(line: 696, column: 3, scope: !584)
!3305 = !DILocation(line: 698, column: 3, scope: !584)
!3306 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !758)
!3307 = !DILocation(line: 732, column: 3, scope: !3306)
!3308 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 704, column: 7, scope: !2585, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 733, column: 10, scope: !3306)
!3313 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3309)
!3314 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3310)
!3315 = !DILocation(line: 98, column: 30, scope: !786, inlinedAt: !3311)
!3316 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 704, column: 30, scope: !2585, inlinedAt: !3312)
!3318 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3317)
!3319 = !DILocation(line: 704, column: 27, scope: !2585, inlinedAt: !3312)
!3320 = !DILocation(line: 704, column: 7, scope: !2586, inlinedAt: !3312)
!3321 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 708, column: 22, scope: !2586, inlinedAt: !3312)
!3326 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3322)
!3327 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3323)
!3328 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !3324)
!3329 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !3325)
!3330 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !3325)
!3331 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !3325)
!3333 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !3332)
!3334 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !3332)
!3335 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !3325)
!3336 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !3325)
!3337 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !3325)
!3338 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !3325)
!3340 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !3339)
!3341 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !3339)
!3342 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !3339)
!3344 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !3343)
!3345 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !3343)
!3346 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !3343)
!3347 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !3343)
!3348 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !3343)
!3349 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !3339)
!3351 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !3350)
!3352 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !3350)
!3353 = !DILocation(line: 708, column: 15, scope: !2586, inlinedAt: !3312)
!3354 = !DILocation(line: 718, column: 12, scope: !2633, inlinedAt: !3312)
!3355 = !DILocation(line: 718, column: 7, scope: !2586, inlinedAt: !3312)
!3356 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 719, column: 9, scope: !2639, inlinedAt: !3312)
!3360 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3357)
!3361 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3358)
!3362 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3359)
!3363 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 719, column: 31, scope: !2639, inlinedAt: !3312)
!3367 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3364)
!3368 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3365)
!3369 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3366)
!3370 = !DILocation(line: 719, column: 28, scope: !2639, inlinedAt: !3312)
!3371 = !DILocation(line: 719, column: 9, scope: !2640, inlinedAt: !3312)
!3372 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 723, column: 16, scope: !2657, inlinedAt: !3312)
!3376 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3373)
!3377 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3374)
!3378 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3375)
!3379 = !DILocation(line: 725, column: 3, scope: !2640, inlinedAt: !3312)
!3380 = !DILocation(line: 0, scope: !2586, inlinedAt: !3312)
!3381 = !DILocation(line: 727, column: 10, scope: !2586, inlinedAt: !3312)
!3382 = !DILocation(line: 727, column: 3, scope: !2586, inlinedAt: !3312)
!3383 = !DILocation(line: 733, column: 3, scope: !3306)
!3384 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !1298, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3385)
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "f_to", arg: 1, scope: !3384, file: !124, line: 736, type: !240)
!3387 = !DILocalVariable(name: "new_to", scope: !3388, file: !124, line: 744, type: !240)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !124, line: 740, column: 38)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !124, line: 740, column: 7)
!3390 = !DILocation(line: 736, column: 35, scope: !3384)
!3391 = !DILocation(line: 383, column: 42, scope: !1480, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 740, column: 7, scope: !3389)
!3393 = !DILocation(line: 386, column: 26, scope: !1487, inlinedAt: !3392)
!3394 = !DILocation(line: 386, column: 26, scope: !1485, inlinedAt: !3392)
!3395 = !DILocation(line: 386, column: 20, scope: !1480, inlinedAt: !3392)
!3396 = !DILocation(line: 387, column: 23, scope: !1480, inlinedAt: !3392)
!3397 = !DILocation(line: 387, column: 7, scope: !1480, inlinedAt: !3392)
!3398 = !DILocation(line: 392, column: 12, scope: !1492, inlinedAt: !3392)
!3399 = !DILocation(line: 392, column: 27, scope: !1497, inlinedAt: !3392)
!3400 = !DILocation(line: 392, column: 3, scope: !1492, inlinedAt: !3392)
!3401 = !DILocation(line: 394, column: 14, scope: !1496, inlinedAt: !3392)
!3402 = !DILocation(line: 394, column: 31, scope: !1496, inlinedAt: !3392)
!3403 = !DILocation(line: 394, column: 40, scope: !1496, inlinedAt: !3392)
!3404 = !DILocation(line: 390, column: 21, scope: !1480, inlinedAt: !3392)
!3405 = !DILocation(line: 395, column: 5, scope: !1494, inlinedAt: !3392)
!3406 = !DILocation(line: 391, column: 15, scope: !1480, inlinedAt: !3392)
!3407 = !DILocation(line: 0, scope: !1495, inlinedAt: !3392)
!3408 = !DILocation(line: 395, column: 5, scope: !1495, inlinedAt: !3392)
!3409 = !DILocation(line: 395, column: 5, scope: !1500, inlinedAt: !3392)
!3410 = !DILocation(line: 400, column: 16, scope: !1521, inlinedAt: !3392)
!3411 = !DILocation(line: 400, column: 11, scope: !1522, inlinedAt: !3392)
!3412 = !DILocation(line: 392, column: 43, scope: !1497, inlinedAt: !3392)
!3413 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 744, column: 26, scope: !3388)
!3418 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3414)
!3419 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3415)
!3420 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !3416)
!3421 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !3417)
!3422 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !3417)
!3423 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !3417)
!3425 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !3424)
!3426 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !3424)
!3427 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !3417)
!3428 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !3417)
!3429 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !3417)
!3430 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !3417)
!3432 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !3431)
!3433 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !3431)
!3434 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !3431)
!3436 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !3435)
!3437 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !3435)
!3438 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !3435)
!3439 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !3435)
!3440 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !3435)
!3441 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !3431)
!3443 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !3442)
!3444 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !3442)
!3445 = !DILocation(line: 744, column: 17, scope: !3388)
!3446 = !DILocation(line: 746, column: 16, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3388, file: !124, line: 746, column: 9)
!3448 = !DILocation(line: 746, column: 9, scope: !3388)
!3449 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 747, column: 11, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !124, line: 747, column: 11)
!3454 = distinct !DILexicalBlock(scope: !3447, file: !124, line: 746, column: 25)
!3455 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3450)
!3456 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3451)
!3457 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3452)
!3458 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 747, column: 33, scope: !3453)
!3462 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3459)
!3463 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3460)
!3464 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3461)
!3465 = !DILocation(line: 747, column: 30, scope: !3453)
!3466 = !DILocation(line: 747, column: 11, scope: !3454)
!3467 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 751, column: 20, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3453, file: !124, line: 750, column: 14)
!3472 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3468)
!3473 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3469)
!3474 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3470)
!3475 = !DILocation(line: 753, column: 5, scope: !3454)
!3476 = !DILocation(line: 0, scope: !3388)
!3477 = !DILocation(line: 756, column: 5, scope: !3388)
!3478 = !DILocation(line: 758, column: 5, scope: !3388)
!3479 = !DILocation(line: 401, column: 33, scope: !1530, inlinedAt: !3392)
!3480 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 401, column: 9, scope: !1530, inlinedAt: !3392)
!3482 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !3481)
!3483 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !3481)
!3484 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !3481)
!3486 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !3485)
!3487 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !3485)
!3488 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !3485)
!3489 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !3485)
!3490 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !3485)
!3491 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !3481)
!3493 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !3492)
!3494 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !3492)
!3495 = !DILocation(line: 762, column: 3, scope: !3384)
!3496 = !DILocation(line: 765, column: 3, scope: !3384)
!3497 = !DILocation(line: 0, scope: !3384)
!3498 = !DILocation(line: 766, column: 1, scope: !3384)
!3499 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !3500, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3505)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!48, !3502, !31}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!29, !31}
!3505 = !{!3506, !3507}
!3506 = !DILocalVariable(name: "cond_function", arg: 1, scope: !3499, file: !124, line: 768, type: !3502)
!3507 = !DILocalVariable(name: "state", arg: 2, scope: !3499, file: !124, line: 768, type: !31)
!3508 = !DILocation(line: 768, column: 42, scope: !3499)
!3509 = !DILocation(line: 768, column: 77, scope: !3499)
!3510 = !DILocation(line: 770, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3499, file: !124, line: 770, column: 7)
!3512 = !DILocation(line: 770, column: 7, scope: !3499)
!3513 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 704, column: 7, scope: !2585, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 771, column: 12, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3511, file: !124, line: 770, column: 28)
!3519 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3514)
!3520 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3515)
!3521 = !DILocation(line: 98, column: 30, scope: !786, inlinedAt: !3516)
!3522 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 704, column: 30, scope: !2585, inlinedAt: !3517)
!3524 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3523)
!3525 = !DILocation(line: 704, column: 27, scope: !2585, inlinedAt: !3517)
!3526 = !DILocation(line: 704, column: 7, scope: !2586, inlinedAt: !3517)
!3527 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 708, column: 22, scope: !2586, inlinedAt: !3517)
!3532 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3528)
!3533 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3529)
!3534 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !3530)
!3535 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !3531)
!3536 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !3531)
!3537 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !3531)
!3539 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !3538)
!3540 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !3538)
!3541 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !3531)
!3542 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !3531)
!3543 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !3531)
!3544 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !3531)
!3546 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !3545)
!3547 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !3545)
!3548 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !3545)
!3550 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !3549)
!3551 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !3549)
!3552 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !3549)
!3553 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !3549)
!3554 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !3549)
!3555 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !3545)
!3557 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !3556)
!3558 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !3556)
!3559 = !DILocation(line: 708, column: 15, scope: !2586, inlinedAt: !3517)
!3560 = !DILocation(line: 718, column: 12, scope: !2633, inlinedAt: !3517)
!3561 = !DILocation(line: 718, column: 7, scope: !2586, inlinedAt: !3517)
!3562 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 719, column: 9, scope: !2639, inlinedAt: !3517)
!3566 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3563)
!3567 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3564)
!3568 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3565)
!3569 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 719, column: 31, scope: !2639, inlinedAt: !3517)
!3573 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3570)
!3574 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3571)
!3575 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3572)
!3576 = !DILocation(line: 719, column: 28, scope: !2639, inlinedAt: !3517)
!3577 = !DILocation(line: 719, column: 9, scope: !2640, inlinedAt: !3517)
!3578 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 723, column: 16, scope: !2657, inlinedAt: !3517)
!3582 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3579)
!3583 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3580)
!3584 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3581)
!3585 = !DILocation(line: 725, column: 3, scope: !2640, inlinedAt: !3517)
!3586 = !DILocation(line: 0, scope: !2586, inlinedAt: !3517)
!3587 = !DILocation(line: 727, column: 10, scope: !2586, inlinedAt: !3517)
!3588 = !DILocation(line: 727, column: 3, scope: !2586, inlinedAt: !3517)
!3589 = !DILocation(line: 771, column: 5, scope: !3518)
!3590 = !DILocation(line: 0, scope: !3499)
!3591 = !DILocation(line: 774, column: 1, scope: !3499)
!3592 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !3593, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!48, !240, !3502, !31}
!3595 = !{!3596, !3597, !3598}
!3596 = !DILocalVariable(name: "fib", arg: 1, scope: !3592, file: !124, line: 776, type: !240)
!3597 = !DILocalVariable(name: "cond_function", arg: 2, scope: !3592, file: !124, line: 776, type: !3502)
!3598 = !DILocalVariable(name: "state", arg: 3, scope: !3592, file: !124, line: 776, type: !31)
!3599 = !DILocation(line: 776, column: 47, scope: !3592)
!3600 = !DILocation(line: 776, column: 62, scope: !3592)
!3601 = !DILocation(line: 776, column: 97, scope: !3592)
!3602 = !DILocation(line: 778, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3592, file: !124, line: 778, column: 7)
!3604 = !DILocation(line: 778, column: 7, scope: !3592)
!3605 = !DILocation(line: 779, column: 12, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !124, line: 778, column: 28)
!3607 = !DILocation(line: 779, column: 5, scope: !3606)
!3608 = !DILocation(line: 0, scope: !3592)
!3609 = !DILocation(line: 782, column: 1, scope: !3592)
!3610 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !769, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!3612 = !DILocalVariable(name: "curr", scope: !3610, file: !124, line: 787, type: !240)
!3613 = !DILocalVariable(name: "size", scope: !3610, file: !124, line: 790, type: !25)
!3614 = !DILocalVariable(name: "alloc_size", scope: !3610, file: !124, line: 790, type: !25)
!3615 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !3610, file: !124, line: 791, type: !25)
!3616 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !3610, file: !124, line: 792, type: !25)
!3617 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !3610, file: !124, line: 793, type: !25)
!3618 = !DILocalVariable(name: "child_stack", scope: !3610, file: !124, line: 794, type: !31)
!3619 = !DILocalVariable(name: "rsp", scope: !3610, file: !124, line: 795, type: !25)
!3620 = !DILocalVariable(name: "rbp0", scope: !3610, file: !124, line: 800, type: !31)
!3621 = !DILocalVariable(name: "rbp1", scope: !3610, file: !124, line: 801, type: !31)
!3622 = !DILocalVariable(name: "rbp_tos", scope: !3610, file: !124, line: 802, type: !31)
!3623 = !DILocalVariable(name: "ret0_addr", scope: !3610, file: !124, line: 803, type: !31)
!3624 = !DILocalVariable(name: "rbp_stash_addr", scope: !3610, file: !124, line: 815, type: !31)
!3625 = !DILocalVariable(name: "new", scope: !3610, file: !124, line: 831, type: !240)
!3626 = !DILocalVariable(name: "rbp_stash_ptr", scope: !3610, file: !124, line: 847, type: !75)
!3627 = !DILocalVariable(name: "rbp2_ptr", scope: !3610, file: !124, line: 851, type: !75)
!3628 = !DILocalVariable(name: "ret2_ptr", scope: !3610, file: !124, line: 852, type: !75)
!3629 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 787, column: 22, scope: !3610)
!3633 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3630)
!3634 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3631)
!3635 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3632)
!3636 = !DILocation(line: 787, column: 15, scope: !3610)
!3637 = !DILocation(line: 798, column: 3, scope: !3610)
!3638 = !{i32 23631}
!3639 = !DILocation(line: 795, column: 16, scope: !3610)
!3640 = !DILocation(line: 800, column: 21, scope: !3610)
!3641 = !DILocation(line: 800, column: 9, scope: !3610)
!3642 = !DILocation(line: 801, column: 21, scope: !3610)
!3643 = !DILocation(line: 801, column: 9, scope: !3610)
!3644 = !DILocation(line: 802, column: 21, scope: !3610)
!3645 = !DILocation(line: 802, column: 9, scope: !3610)
!3646 = !DILocation(line: 803, column: 26, scope: !3610)
!3647 = !DILocation(line: 803, column: 9, scope: !3610)
!3648 = !DILocation(line: 805, column: 44, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3610, file: !124, line: 805, column: 7)
!3650 = !DILocation(line: 805, column: 25, scope: !3649)
!3651 = !DILocation(line: 0, scope: !3610)
!3652 = !DILocation(line: 806, column: 46, scope: !3649)
!3653 = !DILocation(line: 806, column: 20, scope: !3649)
!3654 = !DILocation(line: 805, column: 50, scope: !3649)
!3655 = !DILocation(line: 815, column: 36, scope: !3610)
!3656 = !DILocation(line: 815, column: 9, scope: !3610)
!3657 = !DILocation(line: 821, column: 19, scope: !3610)
!3658 = !DILocation(line: 821, column: 24, scope: !3610)
!3659 = !DILocation(line: 790, column: 12, scope: !3610)
!3660 = !DILocation(line: 822, column: 37, scope: !3610)
!3661 = !DILocation(line: 791, column: 16, scope: !3610)
!3662 = !DILocation(line: 792, column: 16, scope: !3610)
!3663 = !DILocation(line: 825, column: 32, scope: !3610)
!3664 = !DILocation(line: 825, column: 57, scope: !3610)
!3665 = !DILocation(line: 793, column: 16, scope: !3610)
!3666 = !DILocation(line: 790, column: 18, scope: !3610)
!3667 = !DILocation(line: 831, column: 3, scope: !3610)
!3668 = !DILocation(line: 831, column: 15, scope: !3610)
!3669 = !DILocation(line: 832, column: 3, scope: !3610)
!3670 = !DILocation(line: 835, column: 15, scope: !3610)
!3671 = !DILocation(line: 113, column: 31, scope: !806, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 835, column: 3, scope: !3610)
!3673 = !DILocation(line: 113, column: 43, scope: !806, inlinedAt: !3672)
!3674 = !DILocation(line: 115, column: 8, scope: !806, inlinedAt: !3672)
!3675 = !DILocation(line: 115, column: 12, scope: !806, inlinedAt: !3672)
!3676 = !DILocation(line: 116, column: 6, scope: !806, inlinedAt: !3672)
!3677 = !DILocation(line: 116, column: 26, scope: !806, inlinedAt: !3672)
!3678 = !DILocation(line: 837, column: 17, scope: !3610)
!3679 = !DILocation(line: 837, column: 22, scope: !3610)
!3680 = !DILocation(line: 794, column: 17, scope: !3610)
!3681 = !DILocation(line: 839, column: 22, scope: !3610)
!3682 = !DILocation(line: 839, column: 35, scope: !3610)
!3683 = !DILocation(line: 839, column: 3, scope: !3610)
!3684 = !DILocation(line: 840, column: 57, scope: !3610)
!3685 = !DILocation(line: 840, column: 14, scope: !3610)
!3686 = !DILocation(line: 840, column: 3, scope: !3610)
!3687 = !DILocation(line: 840, column: 8, scope: !3610)
!3688 = !DILocation(line: 840, column: 12, scope: !3610)
!3689 = !DILocation(line: 847, column: 35, scope: !3610)
!3690 = !DILocation(line: 847, column: 40, scope: !3610)
!3691 = !DILocation(line: 847, column: 78, scope: !3610)
!3692 = !DILocation(line: 847, column: 26, scope: !3610)
!3693 = !DILocation(line: 847, column: 10, scope: !3610)
!3694 = !DILocation(line: 848, column: 37, scope: !3610)
!3695 = !DILocation(line: 848, column: 20, scope: !3610)
!3696 = !DILocation(line: 848, column: 18, scope: !3610)
!3697 = !DILocation(line: 851, column: 30, scope: !3610)
!3698 = !DILocation(line: 851, column: 35, scope: !3610)
!3699 = !DILocation(line: 851, column: 39, scope: !3610)
!3700 = !DILocation(line: 851, column: 68, scope: !3610)
!3701 = !DILocation(line: 851, column: 21, scope: !3610)
!3702 = !DILocation(line: 851, column: 10, scope: !3610)
!3703 = !DILocation(line: 852, column: 29, scope: !3610)
!3704 = !DILocation(line: 852, column: 10, scope: !3610)
!3705 = !DILocation(line: 861, column: 13, scope: !3610)
!3706 = !DILocation(line: 868, column: 16, scope: !3610)
!3707 = !DILocation(line: 868, column: 21, scope: !3610)
!3708 = !DILocation(line: 868, column: 24, scope: !3610)
!3709 = !DILocation(line: 868, column: 4, scope: !3610)
!3710 = !DILocation(line: 868, column: 41, scope: !3610)
!3711 = !DILocation(line: 871, column: 16, scope: !3610)
!3712 = !DILocation(line: 663, column: 30, scope: !934, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 871, column: 3, scope: !3610)
!3714 = !DILocation(line: 663, column: 41, scope: !934, inlinedAt: !3713)
!3715 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 666, column: 30, scope: !934, inlinedAt: !3713)
!3719 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3716)
!3720 = !DILocation(line: 666, column: 16, scope: !934, inlinedAt: !3713)
!3721 = !DILocation(line: 0, scope: !934, inlinedAt: !3713)
!3722 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 674, column: 41, scope: !934, inlinedAt: !3713)
!3726 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3723)
!3727 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3724)
!3728 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !3725)
!3729 = !DILocation(line: 674, column: 21, scope: !934, inlinedAt: !3713)
!3730 = !DILocation(line: 678, column: 6, scope: !934, inlinedAt: !3713)
!3731 = !DILocation(line: 678, column: 15, scope: !934, inlinedAt: !3713)
!3732 = !DILocation(line: 679, column: 22, scope: !934, inlinedAt: !3713)
!3733 = !DILocation(line: 116, column: 52, scope: !1005, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 679, column: 3, scope: !934, inlinedAt: !3713)
!3735 = !DILocation(line: 116, column: 76, scope: !1005, inlinedAt: !3734)
!3736 = !DILocation(line: 118, column: 25, scope: !1005, inlinedAt: !3734)
!3737 = !DILocation(line: 85, column: 49, scope: !1013, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 118, column: 2, scope: !1005, inlinedAt: !3734)
!3739 = !DILocation(line: 86, column: 28, scope: !1013, inlinedAt: !3738)
!3740 = !DILocation(line: 87, column: 28, scope: !1013, inlinedAt: !3738)
!3741 = !DILocation(line: 89, column: 13, scope: !1013, inlinedAt: !3738)
!3742 = !DILocation(line: 90, column: 8, scope: !1013, inlinedAt: !3738)
!3743 = !DILocation(line: 90, column: 13, scope: !1013, inlinedAt: !3738)
!3744 = !DILocation(line: 91, column: 8, scope: !1013, inlinedAt: !3738)
!3745 = !DILocation(line: 91, column: 13, scope: !1013, inlinedAt: !3738)
!3746 = !DILocation(line: 92, column: 8, scope: !1013, inlinedAt: !3738)
!3747 = !DILocation(line: 92, column: 13, scope: !1013, inlinedAt: !3738)
!3748 = !DILocation(line: 683, column: 20, scope: !1031, inlinedAt: !3713)
!3749 = !DILocation(line: 683, column: 7, scope: !1031, inlinedAt: !3713)
!3750 = !DILocation(line: 683, column: 7, scope: !934, inlinedAt: !3713)
!3751 = !DILocation(line: 687, column: 5, scope: !1035, inlinedAt: !3713)
!3752 = !DILocation(line: 688, column: 3, scope: !1035, inlinedAt: !3713)
!3753 = !DILocation(line: 873, column: 10, scope: !3610)
!3754 = !DILocation(line: 874, column: 1, scope: !3610)
!3755 = !DILocation(line: 873, column: 3, scope: !3610)
!3756 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !1298, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3757)
!3757 = !{!3758, !3759, !3760}
!3758 = !DILocalVariable(name: "wait_on", arg: 1, scope: !3756, file: !124, line: 877, type: !240)
!3759 = !DILocalVariable(name: "curr_fiber", scope: !3756, file: !124, line: 887, type: !240)
!3760 = !DILocalVariable(name: "wait_q", scope: !3756, file: !124, line: 896, type: !150)
!3761 = !DILocation(line: 877, column: 31, scope: !3756)
!3762 = !DILocation(line: 883, column: 8, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3756, file: !124, line: 883, column: 7)
!3764 = !DILocation(line: 883, column: 7, scope: !3756)
!3765 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 887, column: 28, scope: !3756)
!3769 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3766)
!3770 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3767)
!3771 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3768)
!3772 = !DILocation(line: 887, column: 15, scope: !3756)
!3773 = !DILocation(line: 896, column: 41, scope: !3756)
!3774 = !DILocation(line: 896, column: 21, scope: !3756)
!3775 = !DILocation(line: 897, column: 31, scope: !3756)
!3776 = !DILocation(line: 116, column: 52, scope: !1005, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 897, column: 3, scope: !3756)
!3778 = !DILocation(line: 116, column: 76, scope: !1005, inlinedAt: !3777)
!3779 = !DILocation(line: 118, column: 25, scope: !1005, inlinedAt: !3777)
!3780 = !DILocation(line: 85, column: 49, scope: !1013, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 118, column: 2, scope: !1005, inlinedAt: !3777)
!3782 = !DILocation(line: 86, column: 28, scope: !1013, inlinedAt: !3781)
!3783 = !DILocation(line: 87, column: 28, scope: !1013, inlinedAt: !3781)
!3784 = !DILocation(line: 89, column: 13, scope: !1013, inlinedAt: !3781)
!3785 = !DILocation(line: 90, column: 8, scope: !1013, inlinedAt: !3781)
!3786 = !DILocation(line: 90, column: 13, scope: !1013, inlinedAt: !3781)
!3787 = !DILocation(line: 91, column: 8, scope: !1013, inlinedAt: !3781)
!3788 = !DILocation(line: 91, column: 13, scope: !1013, inlinedAt: !3781)
!3789 = !DILocation(line: 92, column: 8, scope: !1013, inlinedAt: !3781)
!3790 = !DILocation(line: 92, column: 13, scope: !1013, inlinedAt: !3781)
!3791 = !DILocation(line: 898, column: 12, scope: !3756)
!3792 = !DILocation(line: 898, column: 20, scope: !3756)
!3793 = !DILocation(line: 899, column: 15, scope: !3756)
!3794 = !DILocation(line: 899, column: 24, scope: !3756)
!3795 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 98, column: 10, scope: !786, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 704, column: 7, scope: !2585, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 903, column: 10, scope: !3756)
!3800 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3796)
!3801 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3797)
!3802 = !DILocation(line: 98, column: 30, scope: !786, inlinedAt: !3798)
!3803 = !DILocation(line: 258, column: 26, scope: !1383, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 704, column: 30, scope: !2585, inlinedAt: !3799)
!3805 = !DILocation(line: 258, column: 26, scope: !1384, inlinedAt: !3804)
!3806 = !DILocation(line: 704, column: 27, scope: !2585, inlinedAt: !3799)
!3807 = !DILocation(line: 704, column: 7, scope: !2586, inlinedAt: !3799)
!3808 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 105, column: 12, scope: !796, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 122, column: 41, scope: !819, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 708, column: 22, scope: !2586, inlinedAt: !3799)
!3813 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3809)
!3814 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3810)
!3815 = !DILocation(line: 105, column: 32, scope: !796, inlinedAt: !3811)
!3816 = !DILocation(line: 122, column: 21, scope: !819, inlinedAt: !3812)
!3817 = !DILocation(line: 125, column: 15, scope: !819, inlinedAt: !3812)
!3818 = !DILocation(line: 184, column: 54, scope: !843, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 126, column: 9, scope: !826, inlinedAt: !3812)
!3820 = !DILocation(line: 186, column: 15, scope: !843, inlinedAt: !3819)
!3821 = !DILocation(line: 186, column: 20, scope: !843, inlinedAt: !3819)
!3822 = !DILocation(line: 126, column: 7, scope: !819, inlinedAt: !3812)
!3823 = !DILocation(line: 128, column: 25, scope: !824, inlinedAt: !3812)
!3824 = !DILocation(line: 131, column: 40, scope: !825, inlinedAt: !3812)
!3825 = !DILocation(line: 151, column: 52, scope: !855, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 131, column: 5, scope: !825, inlinedAt: !3812)
!3827 = !DILocation(line: 153, column: 20, scope: !855, inlinedAt: !3826)
!3828 = !DILocation(line: 153, column: 33, scope: !855, inlinedAt: !3826)
!3829 = !DILocation(line: 128, column: 50, scope: !864, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 153, column: 2, scope: !855, inlinedAt: !3826)
!3831 = !DILocation(line: 128, column: 75, scope: !864, inlinedAt: !3830)
!3832 = !DILocation(line: 130, column: 8, scope: !864, inlinedAt: !3830)
!3833 = !DILocation(line: 130, column: 13, scope: !864, inlinedAt: !3830)
!3834 = !DILocation(line: 131, column: 8, scope: !864, inlinedAt: !3830)
!3835 = !DILocation(line: 131, column: 13, scope: !864, inlinedAt: !3830)
!3836 = !DILocation(line: 73, column: 53, scope: !877, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 154, column: 2, scope: !855, inlinedAt: !3826)
!3838 = !DILocation(line: 75, column: 13, scope: !877, inlinedAt: !3837)
!3839 = !DILocation(line: 76, column: 13, scope: !877, inlinedAt: !3837)
!3840 = !DILocation(line: 708, column: 15, scope: !2586, inlinedAt: !3799)
!3841 = !DILocation(line: 718, column: 12, scope: !2633, inlinedAt: !3799)
!3842 = !DILocation(line: 718, column: 7, scope: !2586, inlinedAt: !3799)
!3843 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 85, column: 10, scope: !768, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 719, column: 9, scope: !2639, inlinedAt: !3799)
!3847 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3844)
!3848 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3845)
!3849 = !DILocation(line: 85, column: 30, scope: !768, inlinedAt: !3846)
!3850 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 719, column: 31, scope: !2639, inlinedAt: !3799)
!3854 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3851)
!3855 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3852)
!3856 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3853)
!3857 = !DILocation(line: 719, column: 28, scope: !2639, inlinedAt: !3799)
!3858 = !DILocation(line: 719, column: 9, scope: !2640, inlinedAt: !3799)
!3859 = !DILocation(line: 129, column: 25, scope: !760, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 78, column: 10, scope: !753, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 92, column: 10, scope: !778, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 723, column: 16, scope: !2657, inlinedAt: !3799)
!3863 = !DILocation(line: 129, column: 12, scope: !760, inlinedAt: !3860)
!3864 = !DILocation(line: 78, column: 21, scope: !753, inlinedAt: !3861)
!3865 = !DILocation(line: 92, column: 30, scope: !778, inlinedAt: !3862)
!3866 = !DILocation(line: 725, column: 3, scope: !2640, inlinedAt: !3799)
!3867 = !DILocation(line: 0, scope: !2586, inlinedAt: !3799)
!3868 = !DILocation(line: 727, column: 10, scope: !2586, inlinedAt: !3799)
!3869 = !DILocation(line: 727, column: 3, scope: !2586, inlinedAt: !3799)
!3870 = !DILocation(line: 0, scope: !3756)
!3871 = !DILocation(line: 904, column: 1, scope: !3756)
