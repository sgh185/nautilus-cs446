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
  br label %219, !dbg !569

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
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !616
  call void @llvm.dbg.value(metadata i8* %13, metadata !606, metadata !DIExpression()) #11, !dbg !618
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !619
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !620
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !621
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !622
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !623
  %27 = call i8* @kmem_malloc(i64 152) #12, !dbg !624
  call void @llvm.dbg.value(metadata i8* %27, metadata !612, metadata !DIExpression()) #11, !dbg !624
  call void @llvm.dbg.value(metadata i8* %27, metadata !610, metadata !DIExpression()) #11, !dbg !622
  %28 = icmp eq i8* %27, null, !dbg !625
  br i1 %28, label %nk_fiber_create.exit, label %29, !dbg !627

; <label>:29:                                     ; preds = %20
  %30 = call i8* @memset(i8* nonnull %27, i8 signext 0, i64 152) #12, !dbg !628
  %31 = getelementptr inbounds i8, i8* %27, i64 44, !dbg !629
  %32 = bitcast i8* %31 to i32*, !dbg !629
  store i32 0, i32* %32, align 4, !dbg !630
  %33 = getelementptr inbounds i8, i8* %27, i64 24, !dbg !631
  %34 = bitcast i8* %33 to i64*, !dbg !631
  store i64 2097152, i64* %34, align 8, !dbg !632
  %35 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !633
  call void @llvm.dbg.value(metadata i8* %35, metadata !614, metadata !DIExpression()) #11, !dbg !633
  %36 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !634
  %37 = bitcast i8* %36 to i8**, !dbg !634
  store i8* %35, i8** %37, align 8, !dbg !635
  %38 = icmp eq i8* %35, null, !dbg !636
  br i1 %38, label %39, label %40, !dbg !638

; <label>:39:                                     ; preds = %29
  call void @kmem_free(i8* nonnull %27) #12, !dbg !639
  br label %nk_fiber_create.exit, !dbg !641

; <label>:40:                                     ; preds = %29
  %41 = ptrtoint i8* %35 to i64, !dbg !638
  %42 = getelementptr inbounds i8, i8* %27, i64 120, !dbg !642
  %43 = bitcast i8* %42 to void (i8*, i8**)**, !dbg !642
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %43, align 8, !dbg !643
  %44 = getelementptr inbounds i8, i8* %27, i64 128, !dbg !644
  %45 = bitcast i8* %44 to i8**, !dbg !644
  store i8* %13, i8** %45, align 8, !dbg !645
  %46 = getelementptr inbounds i8, i8* %27, i64 136, !dbg !646
  %47 = bitcast i8* %46 to i8***, !dbg !646
  store i8** null, i8*** %47, align 8, !dbg !647
  call void @llvm.dbg.value(metadata i8* %27, metadata !648, metadata !DIExpression()) #11, !dbg !653
  %48 = load i64, i64* %34, align 8, !dbg !655
  %49 = bitcast i8* %27 to i64*, !dbg !656
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !663
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !665
  %50 = add i64 %41, -8, !dbg !666
  %51 = add i64 %50, %48, !dbg !667
  store i64 %51, i64* %49, align 8, !dbg !667
  %52 = inttoptr i64 %51 to i64*, !dbg !668
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %52, align 8, !dbg !669
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !670
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !672
  %53 = load i64, i64* %49, align 8, !dbg !673
  %54 = add i64 %53, -8, !dbg !673
  store i64 %54, i64* %49, align 8, !dbg !673
  %55 = inttoptr i64 %54 to i64*, !dbg !674
  store i64 0, i64* %55, align 8, !dbg !675
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !676
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !678
  %56 = load i64, i64* %49, align 8, !dbg !679
  %57 = add i64 %56, -8, !dbg !679
  store i64 %57, i64* %49, align 8, !dbg !679
  %58 = inttoptr i64 %57 to i64*, !dbg !680
  store i64 0, i64* %58, align 8, !dbg !681
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !682
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !684
  %59 = load i64, i64* %49, align 8, !dbg !685
  %60 = add i64 %59, -8, !dbg !685
  store i64 %60, i64* %49, align 8, !dbg !685
  %61 = inttoptr i64 %60 to i64*, !dbg !686
  store i64 0, i64* %61, align 8, !dbg !687
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !688
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !690
  %62 = load i64, i64* %49, align 8, !dbg !691
  %63 = add i64 %62, -8, !dbg !691
  store i64 %63, i64* %49, align 8, !dbg !691
  %64 = inttoptr i64 %63 to i64*, !dbg !692
  store i64 0, i64* %64, align 8, !dbg !693
  call void @llvm.dbg.value(metadata i8* %27, metadata !657, metadata !DIExpression()) #11, !dbg !694
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !696
  %65 = load i64, i64* %49, align 8, !dbg !697
  %66 = add i64 %65, -8, !dbg !697
  store i64 %66, i64* %49, align 8, !dbg !697
  %67 = inttoptr i64 %66 to i64*, !dbg !698
  store i64 0, i64* %67, align 8, !dbg !699
  %68 = ptrtoint i8* %27 to i64, !dbg !700
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !701
  call void @llvm.dbg.value(metadata i64 %68, metadata !662, metadata !DIExpression()) #11, !dbg !703
  %69 = load i64, i64* %49, align 8, !dbg !704
  %70 = add i64 %69, -8, !dbg !704
  store i64 %70, i64* %49, align 8, !dbg !704
  %71 = inttoptr i64 %70 to i64*, !dbg !705
  store i64 %68, i64* %71, align 8, !dbg !706
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !707
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !709
  %72 = load i64, i64* %49, align 8, !dbg !710
  %73 = add i64 %72, -8, !dbg !710
  store i64 %73, i64* %49, align 8, !dbg !710
  %74 = inttoptr i64 %73 to i64*, !dbg !711
  store i64 0, i64* %74, align 8, !dbg !712
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !713
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !715
  %75 = load i64, i64* %49, align 8, !dbg !716
  %76 = add i64 %75, -8, !dbg !716
  store i64 %76, i64* %49, align 8, !dbg !716
  %77 = inttoptr i64 %76 to i64*, !dbg !717
  store i64 0, i64* %77, align 8, !dbg !718
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !719
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !721
  %78 = load i64, i64* %49, align 8, !dbg !722
  %79 = add i64 %78, -8, !dbg !722
  store i64 %79, i64* %49, align 8, !dbg !722
  %80 = inttoptr i64 %79 to i64*, !dbg !723
  store i64 0, i64* %80, align 8, !dbg !724
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !727
  %81 = load i64, i64* %49, align 8, !dbg !728
  %82 = add i64 %81, -8, !dbg !728
  store i64 %82, i64* %49, align 8, !dbg !728
  %83 = inttoptr i64 %82 to i64*, !dbg !729
  store i64 0, i64* %83, align 8, !dbg !730
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !731
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !733
  %84 = load i64, i64* %49, align 8, !dbg !734
  %85 = add i64 %84, -8, !dbg !734
  store i64 %85, i64* %49, align 8, !dbg !734
  %86 = inttoptr i64 %85 to i64*, !dbg !735
  store i64 0, i64* %86, align 8, !dbg !736
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !737
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !739
  %87 = load i64, i64* %49, align 8, !dbg !740
  %88 = add i64 %87, -8, !dbg !740
  store i64 %88, i64* %49, align 8, !dbg !740
  %89 = inttoptr i64 %88 to i64*, !dbg !741
  store i64 0, i64* %89, align 8, !dbg !742
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !743
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !745
  %90 = load i64, i64* %49, align 8, !dbg !746
  %91 = add i64 %90, -8, !dbg !746
  store i64 %91, i64* %49, align 8, !dbg !746
  %92 = inttoptr i64 %91 to i64*, !dbg !747
  store i64 0, i64* %92, align 8, !dbg !748
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !749
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !751
  %93 = load i64, i64* %49, align 8, !dbg !752
  %94 = add i64 %93, -8, !dbg !752
  store i64 %94, i64* %49, align 8, !dbg !752
  %95 = inttoptr i64 %94 to i64*, !dbg !753
  store i64 0, i64* %95, align 8, !dbg !754
  call void @llvm.dbg.value(metadata i64 %68, metadata !657, metadata !DIExpression()) #11, !dbg !755
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !757
  %96 = load i64, i64* %49, align 8, !dbg !758
  %97 = add i64 %96, -8, !dbg !758
  store i64 %97, i64* %49, align 8, !dbg !758
  %98 = inttoptr i64 %97 to i64*, !dbg !759
  store i64 0, i64* %98, align 8, !dbg !760
  %99 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !761
  store i8* %27, i8** %99, align 8, !dbg !761
  %100 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !764, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %100, metadata !772, metadata !DIExpression()) #11, !dbg !764
  call void @llvm.dbg.value(metadata %struct.nk_thread* %100, metadata !771, metadata !DIExpression()) #11, !dbg !775
  %101 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %100, i64 0, i32 24, !dbg !776
  %102 = bitcast %struct.nk_virtual_console** %101 to i64*, !dbg !776
  %103 = load i64, i64* %102, align 8, !dbg !776
  %104 = getelementptr inbounds i8, i8* %27, i64 48, !dbg !777
  %105 = bitcast i8* %104 to i64*, !dbg !778
  store i64 %103, i64* %105, align 8, !dbg !778
  %106 = getelementptr inbounds i8, i8* %27, i64 104, !dbg !779
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !785
  %107 = bitcast i8* %106 to i8**, !dbg !787
  store i8* %106, i8** %107, align 8, !dbg !787
  %108 = getelementptr inbounds i8, i8* %27, i64 112, !dbg !788
  %109 = bitcast i8* %108 to i8**, !dbg !789
  store i8* %106, i8** %109, align 8, !dbg !789
  %110 = getelementptr inbounds i8, i8* %27, i64 96, !dbg !790
  %111 = bitcast i8* %110 to i32*, !dbg !790
  store i32 0, i32* %111, align 8, !dbg !791
  %112 = getelementptr inbounds i8, i8* %27, i64 64, !dbg !792
  call void @llvm.dbg.value(metadata i8* %112, metadata !780, metadata !DIExpression()) #11, !dbg !793
  %113 = bitcast i8* %112 to i8**, !dbg !795
  store i8* %112, i8** %113, align 8, !dbg !795
  %114 = getelementptr inbounds i8, i8* %27, i64 72, !dbg !796
  %115 = bitcast i8* %114 to i8**, !dbg !797
  store i8* %112, i8** %115, align 8, !dbg !797
  %116 = getelementptr inbounds i8, i8* %27, i64 80, !dbg !798
  call void @llvm.dbg.value(metadata i8* %116, metadata !780, metadata !DIExpression()) #11, !dbg !799
  %117 = bitcast i8* %116 to i8**, !dbg !801
  store i8* %116, i8** %117, align 8, !dbg !801
  %118 = getelementptr inbounds i8, i8* %27, i64 88, !dbg !802
  %119 = bitcast i8* %118 to i8**, !dbg !803
  store i8* %116, i8** %119, align 8, !dbg !803
  br label %nk_fiber_create.exit, !dbg !804

nk_fiber_create.exit:                             ; preds = %20, %39, %40
  %120 = phi i32 [ 0, %40 ], [ -22, %39 ], [ -22, %20 ], !dbg !805
  %121 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !806
  %122 = call i32 @nk_fiber_run(%struct.nk_fiber* %121, i8 zeroext 1) #12, !dbg !807
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !532, metadata !DIExpression(DW_OP_deref)), !dbg !808
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_2, metadata !583, metadata !DIExpression()) #11, !dbg !809
  call void @llvm.dbg.value(metadata i8* %14, metadata !589, metadata !DIExpression()) #11, !dbg !811
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !812
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !813
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !814
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !593, metadata !DIExpression()) #11, !dbg !815
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_2, metadata !601, metadata !DIExpression()) #11, !dbg !816
  call void @llvm.dbg.value(metadata i8* %14, metadata !606, metadata !DIExpression()) #11, !dbg !818
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !820
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %2, metadata !609, metadata !DIExpression()) #11, !dbg !821
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !822
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !823
  %123 = call i8* @kmem_malloc(i64 152) #12, !dbg !824
  call void @llvm.dbg.value(metadata i8* %123, metadata !612, metadata !DIExpression()) #11, !dbg !824
  call void @llvm.dbg.value(metadata i8* %123, metadata !610, metadata !DIExpression()) #11, !dbg !822
  %124 = icmp eq i8* %123, null, !dbg !825
  br i1 %124, label %nk_fiber_create.exit1, label %125, !dbg !826

; <label>:125:                                    ; preds = %nk_fiber_create.exit
  %126 = call i8* @memset(i8* nonnull %123, i8 signext 0, i64 152) #12, !dbg !827
  %127 = getelementptr inbounds i8, i8* %123, i64 44, !dbg !828
  %128 = bitcast i8* %127 to i32*, !dbg !828
  store i32 0, i32* %128, align 4, !dbg !829
  %129 = getelementptr inbounds i8, i8* %123, i64 24, !dbg !830
  %130 = bitcast i8* %129 to i64*, !dbg !830
  store i64 2097152, i64* %130, align 8, !dbg !831
  %131 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !832
  call void @llvm.dbg.value(metadata i8* %131, metadata !614, metadata !DIExpression()) #11, !dbg !832
  %132 = getelementptr inbounds i8, i8* %123, i64 8, !dbg !833
  %133 = bitcast i8* %132 to i8**, !dbg !833
  store i8* %131, i8** %133, align 8, !dbg !834
  %134 = icmp eq i8* %131, null, !dbg !835
  br i1 %134, label %135, label %136, !dbg !836

; <label>:135:                                    ; preds = %125
  call void @kmem_free(i8* nonnull %123) #12, !dbg !837
  br label %nk_fiber_create.exit1, !dbg !838

; <label>:136:                                    ; preds = %125
  %137 = ptrtoint i8* %131 to i64, !dbg !836
  %138 = getelementptr inbounds i8, i8* %123, i64 120, !dbg !839
  %139 = bitcast i8* %138 to void (i8*, i8**)**, !dbg !839
  store void (i8*, i8**)* @routine_simple_2, void (i8*, i8**)** %139, align 8, !dbg !840
  %140 = getelementptr inbounds i8, i8* %123, i64 128, !dbg !841
  %141 = bitcast i8* %140 to i8**, !dbg !841
  store i8* %14, i8** %141, align 8, !dbg !842
  %142 = getelementptr inbounds i8, i8* %123, i64 136, !dbg !843
  %143 = bitcast i8* %142 to i8***, !dbg !843
  store i8** null, i8*** %143, align 8, !dbg !844
  call void @llvm.dbg.value(metadata i8* %123, metadata !648, metadata !DIExpression()) #11, !dbg !845
  %144 = load i64, i64* %130, align 8, !dbg !847
  %145 = bitcast i8* %123 to i64*, !dbg !848
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !849
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !851
  %146 = add i64 %137, -8, !dbg !852
  %147 = add i64 %146, %144, !dbg !853
  store i64 %147, i64* %145, align 8, !dbg !853
  %148 = inttoptr i64 %147 to i64*, !dbg !854
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %148, align 8, !dbg !855
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !858
  %149 = load i64, i64* %145, align 8, !dbg !859
  %150 = add i64 %149, -8, !dbg !859
  store i64 %150, i64* %145, align 8, !dbg !859
  %151 = inttoptr i64 %150 to i64*, !dbg !860
  store i64 0, i64* %151, align 8, !dbg !861
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !862
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !864
  %152 = load i64, i64* %145, align 8, !dbg !865
  %153 = add i64 %152, -8, !dbg !865
  store i64 %153, i64* %145, align 8, !dbg !865
  %154 = inttoptr i64 %153 to i64*, !dbg !866
  store i64 0, i64* %154, align 8, !dbg !867
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !870
  %155 = load i64, i64* %145, align 8, !dbg !871
  %156 = add i64 %155, -8, !dbg !871
  store i64 %156, i64* %145, align 8, !dbg !871
  %157 = inttoptr i64 %156 to i64*, !dbg !872
  store i64 0, i64* %157, align 8, !dbg !873
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !876
  %158 = load i64, i64* %145, align 8, !dbg !877
  %159 = add i64 %158, -8, !dbg !877
  store i64 %159, i64* %145, align 8, !dbg !877
  %160 = inttoptr i64 %159 to i64*, !dbg !878
  store i64 0, i64* %160, align 8, !dbg !879
  call void @llvm.dbg.value(metadata i8* %123, metadata !657, metadata !DIExpression()) #11, !dbg !880
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !882
  %161 = load i64, i64* %145, align 8, !dbg !883
  %162 = add i64 %161, -8, !dbg !883
  store i64 %162, i64* %145, align 8, !dbg !883
  %163 = inttoptr i64 %162 to i64*, !dbg !884
  store i64 0, i64* %163, align 8, !dbg !885
  %164 = ptrtoint i8* %123 to i64, !dbg !886
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !887
  call void @llvm.dbg.value(metadata i64 %164, metadata !662, metadata !DIExpression()) #11, !dbg !889
  %165 = load i64, i64* %145, align 8, !dbg !890
  %166 = add i64 %165, -8, !dbg !890
  store i64 %166, i64* %145, align 8, !dbg !890
  %167 = inttoptr i64 %166 to i64*, !dbg !891
  store i64 %164, i64* %167, align 8, !dbg !892
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !893
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !895
  %168 = load i64, i64* %145, align 8, !dbg !896
  %169 = add i64 %168, -8, !dbg !896
  store i64 %169, i64* %145, align 8, !dbg !896
  %170 = inttoptr i64 %169 to i64*, !dbg !897
  store i64 0, i64* %170, align 8, !dbg !898
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !901
  %171 = load i64, i64* %145, align 8, !dbg !902
  %172 = add i64 %171, -8, !dbg !902
  store i64 %172, i64* %145, align 8, !dbg !902
  %173 = inttoptr i64 %172 to i64*, !dbg !903
  store i64 0, i64* %173, align 8, !dbg !904
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !905
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !907
  %174 = load i64, i64* %145, align 8, !dbg !908
  %175 = add i64 %174, -8, !dbg !908
  store i64 %175, i64* %145, align 8, !dbg !908
  %176 = inttoptr i64 %175 to i64*, !dbg !909
  store i64 0, i64* %176, align 8, !dbg !910
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !913
  %177 = load i64, i64* %145, align 8, !dbg !914
  %178 = add i64 %177, -8, !dbg !914
  store i64 %178, i64* %145, align 8, !dbg !914
  %179 = inttoptr i64 %178 to i64*, !dbg !915
  store i64 0, i64* %179, align 8, !dbg !916
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !917
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !919
  %180 = load i64, i64* %145, align 8, !dbg !920
  %181 = add i64 %180, -8, !dbg !920
  store i64 %181, i64* %145, align 8, !dbg !920
  %182 = inttoptr i64 %181 to i64*, !dbg !921
  store i64 0, i64* %182, align 8, !dbg !922
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !923
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !925
  %183 = load i64, i64* %145, align 8, !dbg !926
  %184 = add i64 %183, -8, !dbg !926
  store i64 %184, i64* %145, align 8, !dbg !926
  %185 = inttoptr i64 %184 to i64*, !dbg !927
  store i64 0, i64* %185, align 8, !dbg !928
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !929
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !931
  %186 = load i64, i64* %145, align 8, !dbg !932
  %187 = add i64 %186, -8, !dbg !932
  store i64 %187, i64* %145, align 8, !dbg !932
  %188 = inttoptr i64 %187 to i64*, !dbg !933
  store i64 0, i64* %188, align 8, !dbg !934
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !935
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !937
  %189 = load i64, i64* %145, align 8, !dbg !938
  %190 = add i64 %189, -8, !dbg !938
  store i64 %190, i64* %145, align 8, !dbg !938
  %191 = inttoptr i64 %190 to i64*, !dbg !939
  store i64 0, i64* %191, align 8, !dbg !940
  call void @llvm.dbg.value(metadata i64 %164, metadata !657, metadata !DIExpression()) #11, !dbg !941
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !943
  %192 = load i64, i64* %145, align 8, !dbg !944
  %193 = add i64 %192, -8, !dbg !944
  store i64 %193, i64* %145, align 8, !dbg !944
  %194 = inttoptr i64 %193 to i64*, !dbg !945
  store i64 0, i64* %194, align 8, !dbg !946
  %195 = bitcast %struct.nk_fiber** %2 to i8**, !dbg !947
  store i8* %123, i8** %195, align 8, !dbg !947
  %196 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !948, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %196, metadata !772, metadata !DIExpression()) #11, !dbg !948
  call void @llvm.dbg.value(metadata %struct.nk_thread* %196, metadata !771, metadata !DIExpression()) #11, !dbg !950
  %197 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %196, i64 0, i32 24, !dbg !951
  %198 = bitcast %struct.nk_virtual_console** %197 to i64*, !dbg !951
  %199 = load i64, i64* %198, align 8, !dbg !951
  %200 = getelementptr inbounds i8, i8* %123, i64 48, !dbg !952
  %201 = bitcast i8* %200 to i64*, !dbg !953
  store i64 %199, i64* %201, align 8, !dbg !953
  %202 = getelementptr inbounds i8, i8* %123, i64 104, !dbg !954
  call void @llvm.dbg.value(metadata i8* %202, metadata !780, metadata !DIExpression()) #11, !dbg !955
  %203 = bitcast i8* %202 to i8**, !dbg !957
  store i8* %202, i8** %203, align 8, !dbg !957
  %204 = getelementptr inbounds i8, i8* %123, i64 112, !dbg !958
  %205 = bitcast i8* %204 to i8**, !dbg !959
  store i8* %202, i8** %205, align 8, !dbg !959
  %206 = getelementptr inbounds i8, i8* %123, i64 96, !dbg !960
  %207 = bitcast i8* %206 to i32*, !dbg !960
  store i32 0, i32* %207, align 8, !dbg !961
  %208 = getelementptr inbounds i8, i8* %123, i64 64, !dbg !962
  call void @llvm.dbg.value(metadata i8* %208, metadata !780, metadata !DIExpression()) #11, !dbg !963
  %209 = bitcast i8* %208 to i8**, !dbg !965
  store i8* %208, i8** %209, align 8, !dbg !965
  %210 = getelementptr inbounds i8, i8* %123, i64 72, !dbg !966
  %211 = bitcast i8* %210 to i8**, !dbg !967
  store i8* %208, i8** %211, align 8, !dbg !967
  %212 = getelementptr inbounds i8, i8* %123, i64 80, !dbg !968
  call void @llvm.dbg.value(metadata i8* %212, metadata !780, metadata !DIExpression()) #11, !dbg !969
  %213 = bitcast i8* %212 to i8**, !dbg !971
  store i8* %212, i8** %213, align 8, !dbg !971
  %214 = getelementptr inbounds i8, i8* %123, i64 88, !dbg !972
  %215 = bitcast i8* %214 to i8**, !dbg !973
  store i8* %212, i8** %215, align 8, !dbg !973
  br label %nk_fiber_create.exit1, !dbg !974

nk_fiber_create.exit1:                            ; preds = %nk_fiber_create.exit, %135, %136
  %216 = phi i32 [ 0, %136 ], [ -22, %135 ], [ -22, %nk_fiber_create.exit ], !dbg !975
  %217 = load %struct.nk_fiber*, %struct.nk_fiber** %2, align 8, !dbg !976
  %218 = call i32 @nk_fiber_run(%struct.nk_fiber* %217, i8 zeroext 1) #12, !dbg !977
  br label %219, !dbg !978

; <label>:219:                                    ; preds = %nk_fiber_create.exit1, %18
  %220 = phi i32 [ 0, %nk_fiber_create.exit1 ], [ -1, %18 ], !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #11, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #11, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !980
  ret i32 %220, !dbg !980
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
define dso_local void @routine_simple_1(i8*, i8** nocapture readnone) #0 !dbg !981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !983, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8** undef, metadata !984, metadata !DIExpression()), !dbg !988
  %3 = bitcast i8* %0 to i64*, !dbg !989
  call void @llvm.dbg.value(metadata i64* %3, metadata !985, metadata !DIExpression()), !dbg !990
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !991
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !992
  call void @llvm.dbg.value(metadata i32 0, metadata !986, metadata !DIExpression()), !dbg !993
  %5 = load i64, i64* %3, align 8, !dbg !994
  %6 = icmp eq i64 %5, 0, !dbg !995
  br i1 %6, label %15, label %7, !dbg !996

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !986, metadata !DIExpression()), !dbg !993
  %9 = add i32 %8, 1, !dbg !997
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #12, !dbg !999
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #12, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %9, metadata !986, metadata !DIExpression()), !dbg !993
  %12 = zext i32 %9 to i64, !dbg !1001
  %13 = load i64, i64* %3, align 8, !dbg !994
  %14 = icmp ugt i64 %13, %12, !dbg !995
  br i1 %14, label %7, label %15, !dbg !996, !llvm.loop !1002

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !1004
  call void @llvm.dbg.value(metadata i32 %16, metadata !986, metadata !DIExpression()), !dbg !993
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %16) #12, !dbg !1005
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1006
  ret void, !dbg !1007
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !1008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1010, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata i8** undef, metadata !1011, metadata !DIExpression()), !dbg !1015
  %3 = bitcast i8* %0 to i64*, !dbg !1016
  call void @llvm.dbg.value(metadata i64* %3, metadata !1012, metadata !DIExpression()), !dbg !1017
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1018
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !1019
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !1020
  %5 = load i64, i64* %3, align 8, !dbg !1021
  %6 = icmp eq i64 %5, 0, !dbg !1022
  br i1 %6, label %15, label %7, !dbg !1023

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1013, metadata !DIExpression()), !dbg !1020
  %9 = add i32 %8, 1, !dbg !1024
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %8) #12, !dbg !1026
  %11 = tail call i32 (...) bitcast (i32 ()* @nk_fiber_yield to i32 (...)*)() #12, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %9, metadata !1013, metadata !DIExpression()), !dbg !1020
  %12 = zext i32 %9 to i64, !dbg !1028
  %13 = load i64, i64* %3, align 8, !dbg !1021
  %14 = icmp ugt i64 %13, %12, !dbg !1022
  br i1 %14, label %7, label %15, !dbg !1023, !llvm.loop !1029

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !1031
  call void @llvm.dbg.value(metadata i32 %16, metadata !1013, metadata !DIExpression()), !dbg !1020
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #12, !dbg !1032
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1033
  ret void, !dbg !1034
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1035 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1037, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %1, metadata !1038, metadata !DIExpression()), !dbg !1040
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1041
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1050, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !1052
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !1053
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !1053
  %9 = load i64, i64* %8, align 8, !dbg !1053
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1054
  %10 = bitcast i64* %4 to i8*, !dbg !1055
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1055
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1056
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %11, metadata !1047, metadata !DIExpression()) #11, !dbg !1057
  %12 = icmp eq i8* %11, null, !dbg !1058
  br i1 %12, label %13, label %15, !dbg !1060

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1061
  br label %115, !dbg !1063

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !1064
  call void @llvm.dbg.value(metadata i64* %16, metadata !1046, metadata !DIExpression()) #11, !dbg !1065
  %17 = load i64, i64* %4, align 8, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %17, metadata !1045, metadata !DIExpression()) #11, !dbg !1067
  %18 = urem i64 %17, 5000, !dbg !1068
  store i64 %18, i64* %16, align 8, !dbg !1069
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1044, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1070
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1074
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1075
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !1077
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !1080
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1081
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1084
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1085
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !1084
  %20 = icmp eq i8* %19, null, !dbg !1087
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !1088

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !1089
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !1090
  %24 = bitcast i8* %23 to i32*, !dbg !1090
  store i32 0, i32* %24, align 4, !dbg !1091
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1092
  %26 = bitcast i8* %25 to i64*, !dbg !1092
  store i64 2097152, i64* %26, align 8, !dbg !1093
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !1094
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1095
  %29 = bitcast i8* %28 to i8**, !dbg !1095
  store i8* %27, i8** %29, align 8, !dbg !1096
  %30 = icmp eq i8* %27, null, !dbg !1097
  br i1 %30, label %31, label %32, !dbg !1098

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !1099
  br label %nk_fiber_create.exit, !dbg !1100

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !1098
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !1101
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !1101
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !1102
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !1103
  %37 = bitcast i8* %36 to i8**, !dbg !1103
  store i8* %11, i8** %37, align 8, !dbg !1104
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !1105
  %39 = bitcast i8* %38 to i8***, !dbg !1105
  store i8** null, i8*** %39, align 8, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !1107
  %40 = load i64, i64* %26, align 8, !dbg !1109
  %41 = bitcast i8* %19 to i64*, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1111
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1113
  %42 = add i64 %33, -8, !dbg !1114
  %43 = add i64 %42, %40, !dbg !1115
  store i64 %43, i64* %41, align 8, !dbg !1115
  %44 = inttoptr i64 %43 to i64*, !dbg !1116
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1118
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1120
  %45 = load i64, i64* %41, align 8, !dbg !1121
  %46 = add i64 %45, -8, !dbg !1121
  store i64 %46, i64* %41, align 8, !dbg !1121
  %47 = inttoptr i64 %46 to i64*, !dbg !1122
  store i64 0, i64* %47, align 8, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1124
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1126
  %48 = load i64, i64* %41, align 8, !dbg !1127
  %49 = add i64 %48, -8, !dbg !1127
  store i64 %49, i64* %41, align 8, !dbg !1127
  %50 = inttoptr i64 %49 to i64*, !dbg !1128
  store i64 0, i64* %50, align 8, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1130
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1132
  %51 = load i64, i64* %41, align 8, !dbg !1133
  %52 = add i64 %51, -8, !dbg !1133
  store i64 %52, i64* %41, align 8, !dbg !1133
  %53 = inttoptr i64 %52 to i64*, !dbg !1134
  store i64 0, i64* %53, align 8, !dbg !1135
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1136
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1138
  %54 = load i64, i64* %41, align 8, !dbg !1139
  %55 = add i64 %54, -8, !dbg !1139
  store i64 %55, i64* %41, align 8, !dbg !1139
  %56 = inttoptr i64 %55 to i64*, !dbg !1140
  store i64 0, i64* %56, align 8, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1142
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1144
  %57 = load i64, i64* %41, align 8, !dbg !1145
  %58 = add i64 %57, -8, !dbg !1145
  store i64 %58, i64* %41, align 8, !dbg !1145
  %59 = inttoptr i64 %58 to i64*, !dbg !1146
  store i64 0, i64* %59, align 8, !dbg !1147
  %60 = ptrtoint i8* %19 to i64, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !1151
  %61 = load i64, i64* %41, align 8, !dbg !1152
  %62 = add i64 %61, -8, !dbg !1152
  store i64 %62, i64* %41, align 8, !dbg !1152
  %63 = inttoptr i64 %62 to i64*, !dbg !1153
  store i64 %60, i64* %63, align 8, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1157
  %64 = load i64, i64* %41, align 8, !dbg !1158
  %65 = add i64 %64, -8, !dbg !1158
  store i64 %65, i64* %41, align 8, !dbg !1158
  %66 = inttoptr i64 %65 to i64*, !dbg !1159
  store i64 0, i64* %66, align 8, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1163
  %67 = load i64, i64* %41, align 8, !dbg !1164
  %68 = add i64 %67, -8, !dbg !1164
  store i64 %68, i64* %41, align 8, !dbg !1164
  %69 = inttoptr i64 %68 to i64*, !dbg !1165
  store i64 0, i64* %69, align 8, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1169
  %70 = load i64, i64* %41, align 8, !dbg !1170
  %71 = add i64 %70, -8, !dbg !1170
  store i64 %71, i64* %41, align 8, !dbg !1170
  %72 = inttoptr i64 %71 to i64*, !dbg !1171
  store i64 0, i64* %72, align 8, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1175
  %73 = load i64, i64* %41, align 8, !dbg !1176
  %74 = add i64 %73, -8, !dbg !1176
  store i64 %74, i64* %41, align 8, !dbg !1176
  %75 = inttoptr i64 %74 to i64*, !dbg !1177
  store i64 0, i64* %75, align 8, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1181
  %76 = load i64, i64* %41, align 8, !dbg !1182
  %77 = add i64 %76, -8, !dbg !1182
  store i64 %77, i64* %41, align 8, !dbg !1182
  %78 = inttoptr i64 %77 to i64*, !dbg !1183
  store i64 0, i64* %78, align 8, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1187
  %79 = load i64, i64* %41, align 8, !dbg !1188
  %80 = add i64 %79, -8, !dbg !1188
  store i64 %80, i64* %41, align 8, !dbg !1188
  %81 = inttoptr i64 %80 to i64*, !dbg !1189
  store i64 0, i64* %81, align 8, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1191
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1193
  %82 = load i64, i64* %41, align 8, !dbg !1194
  %83 = add i64 %82, -8, !dbg !1194
  store i64 %83, i64* %41, align 8, !dbg !1194
  %84 = inttoptr i64 %83 to i64*, !dbg !1195
  store i64 0, i64* %84, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1197
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1199
  %85 = load i64, i64* %41, align 8, !dbg !1200
  %86 = add i64 %85, -8, !dbg !1200
  store i64 %86, i64* %41, align 8, !dbg !1200
  %87 = inttoptr i64 %86 to i64*, !dbg !1201
  store i64 0, i64* %87, align 8, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1203
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1205
  %88 = load i64, i64* %41, align 8, !dbg !1206
  %89 = add i64 %88, -8, !dbg !1206
  store i64 %89, i64* %41, align 8, !dbg !1206
  %90 = inttoptr i64 %89 to i64*, !dbg !1207
  store i64 0, i64* %90, align 8, !dbg !1208
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !1209
  store i8* %19, i8** %91, align 8, !dbg !1209
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1210, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !1210
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !1212
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !1213
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !1213
  %95 = load i64, i64* %94, align 8, !dbg !1213
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !1214
  %97 = bitcast i8* %96 to i64*, !dbg !1215
  store i64 %95, i64* %97, align 8, !dbg !1215
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !1216
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !1217
  %99 = bitcast i8* %98 to i8**, !dbg !1219
  store i8* %98, i8** %99, align 8, !dbg !1219
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !1220
  %101 = bitcast i8* %100 to i8**, !dbg !1221
  store i8* %98, i8** %101, align 8, !dbg !1221
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !1222
  %103 = bitcast i8* %102 to i32*, !dbg !1222
  store i32 0, i32* %103, align 8, !dbg !1223
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !1225
  %105 = bitcast i8* %104 to i8**, !dbg !1227
  store i8* %104, i8** %105, align 8, !dbg !1227
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !1228
  %107 = bitcast i8* %106 to i8**, !dbg !1229
  store i8* %104, i8** %107, align 8, !dbg !1229
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !1231
  %109 = bitcast i8* %108 to i8**, !dbg !1233
  store i8* %108, i8** %109, align 8, !dbg !1233
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !1234
  %111 = bitcast i8* %110 to i8**, !dbg !1235
  store i8* %108, i8** %111, align 8, !dbg !1235
  br label %nk_fiber_create.exit, !dbg !1236

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !1237
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1238
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !1239
  br label %115, !dbg !1240

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1241
  ret i32 0, !dbg !1242
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !1042 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1243
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1244, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !1246
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !1247
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !1247
  %7 = load i64, i64* %6, align 8, !dbg !1247
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1248
  %8 = bitcast i64* %2 to i8*, !dbg !1249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1249
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !1250
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %9, metadata !1047, metadata !DIExpression()), !dbg !1251
  %10 = icmp eq i8* %9, null, !dbg !1252
  br i1 %10, label %11, label %13, !dbg !1253

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1254
  br label %113, !dbg !1255

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !1256
  call void @llvm.dbg.value(metadata i64* %14, metadata !1046, metadata !DIExpression()), !dbg !1257
  %15 = load i64, i64* %2, align 8, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %15, metadata !1045, metadata !DIExpression()), !dbg !1259
  %16 = urem i64 %15, 5000, !dbg !1260
  store i64 %16, i64* %14, align 8, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1044, metadata !DIExpression(DW_OP_deref)), !dbg !1262
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !1265
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1267
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1268
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !1269
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !1272
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1273
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !1275
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1276
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1277
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !1276
  %18 = icmp eq i8* %17, null, !dbg !1279
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !1280

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !1281
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !1282
  %22 = bitcast i8* %21 to i32*, !dbg !1282
  store i32 0, i32* %22, align 4, !dbg !1283
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !1284
  %24 = bitcast i8* %23 to i64*, !dbg !1284
  store i64 2097152, i64* %24, align 8, !dbg !1285
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !1286
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !1287
  %27 = bitcast i8* %26 to i8**, !dbg !1287
  store i8* %25, i8** %27, align 8, !dbg !1288
  %28 = icmp eq i8* %25, null, !dbg !1289
  br i1 %28, label %29, label %30, !dbg !1290

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !1291
  br label %nk_fiber_create.exit, !dbg !1292

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !1290
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !1293
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !1293
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !1294
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !1295
  %35 = bitcast i8* %34 to i8**, !dbg !1295
  store i8* %9, i8** %35, align 8, !dbg !1296
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !1297
  %37 = bitcast i8* %36 to i8***, !dbg !1297
  store i8** null, i8*** %37, align 8, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !1299
  %38 = load i64, i64* %24, align 8, !dbg !1301
  %39 = bitcast i8* %17 to i64*, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1303
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1305
  %40 = add i64 %31, -8, !dbg !1306
  %41 = add i64 %40, %38, !dbg !1307
  store i64 %41, i64* %39, align 8, !dbg !1307
  %42 = inttoptr i64 %41 to i64*, !dbg !1308
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1312
  %43 = load i64, i64* %39, align 8, !dbg !1313
  %44 = add i64 %43, -8, !dbg !1313
  store i64 %44, i64* %39, align 8, !dbg !1313
  %45 = inttoptr i64 %44 to i64*, !dbg !1314
  store i64 0, i64* %45, align 8, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1318
  %46 = load i64, i64* %39, align 8, !dbg !1319
  %47 = add i64 %46, -8, !dbg !1319
  store i64 %47, i64* %39, align 8, !dbg !1319
  %48 = inttoptr i64 %47 to i64*, !dbg !1320
  store i64 0, i64* %48, align 8, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1324
  %49 = load i64, i64* %39, align 8, !dbg !1325
  %50 = add i64 %49, -8, !dbg !1325
  store i64 %50, i64* %39, align 8, !dbg !1325
  %51 = inttoptr i64 %50 to i64*, !dbg !1326
  store i64 0, i64* %51, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1328
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1330
  %52 = load i64, i64* %39, align 8, !dbg !1331
  %53 = add i64 %52, -8, !dbg !1331
  store i64 %53, i64* %39, align 8, !dbg !1331
  %54 = inttoptr i64 %53 to i64*, !dbg !1332
  store i64 0, i64* %54, align 8, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1334
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1336
  %55 = load i64, i64* %39, align 8, !dbg !1337
  %56 = add i64 %55, -8, !dbg !1337
  store i64 %56, i64* %39, align 8, !dbg !1337
  %57 = inttoptr i64 %56 to i64*, !dbg !1338
  store i64 0, i64* %57, align 8, !dbg !1339
  %58 = ptrtoint i8* %17 to i64, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !1343
  %59 = load i64, i64* %39, align 8, !dbg !1344
  %60 = add i64 %59, -8, !dbg !1344
  store i64 %60, i64* %39, align 8, !dbg !1344
  %61 = inttoptr i64 %60 to i64*, !dbg !1345
  store i64 %58, i64* %61, align 8, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1347
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1349
  %62 = load i64, i64* %39, align 8, !dbg !1350
  %63 = add i64 %62, -8, !dbg !1350
  store i64 %63, i64* %39, align 8, !dbg !1350
  %64 = inttoptr i64 %63 to i64*, !dbg !1351
  store i64 0, i64* %64, align 8, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1353
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1355
  %65 = load i64, i64* %39, align 8, !dbg !1356
  %66 = add i64 %65, -8, !dbg !1356
  store i64 %66, i64* %39, align 8, !dbg !1356
  %67 = inttoptr i64 %66 to i64*, !dbg !1357
  store i64 0, i64* %67, align 8, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1361
  %68 = load i64, i64* %39, align 8, !dbg !1362
  %69 = add i64 %68, -8, !dbg !1362
  store i64 %69, i64* %39, align 8, !dbg !1362
  %70 = inttoptr i64 %69 to i64*, !dbg !1363
  store i64 0, i64* %70, align 8, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1367
  %71 = load i64, i64* %39, align 8, !dbg !1368
  %72 = add i64 %71, -8, !dbg !1368
  store i64 %72, i64* %39, align 8, !dbg !1368
  %73 = inttoptr i64 %72 to i64*, !dbg !1369
  store i64 0, i64* %73, align 8, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1371
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1373
  %74 = load i64, i64* %39, align 8, !dbg !1374
  %75 = add i64 %74, -8, !dbg !1374
  store i64 %75, i64* %39, align 8, !dbg !1374
  %76 = inttoptr i64 %75 to i64*, !dbg !1375
  store i64 0, i64* %76, align 8, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1379
  %77 = load i64, i64* %39, align 8, !dbg !1380
  %78 = add i64 %77, -8, !dbg !1380
  store i64 %78, i64* %39, align 8, !dbg !1380
  %79 = inttoptr i64 %78 to i64*, !dbg !1381
  store i64 0, i64* %79, align 8, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1383
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1385
  %80 = load i64, i64* %39, align 8, !dbg !1386
  %81 = add i64 %80, -8, !dbg !1386
  store i64 %81, i64* %39, align 8, !dbg !1386
  %82 = inttoptr i64 %81 to i64*, !dbg !1387
  store i64 0, i64* %82, align 8, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1389
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1391
  %83 = load i64, i64* %39, align 8, !dbg !1392
  %84 = add i64 %83, -8, !dbg !1392
  store i64 %84, i64* %39, align 8, !dbg !1392
  %85 = inttoptr i64 %84 to i64*, !dbg !1393
  store i64 0, i64* %85, align 8, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1395
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1397
  %86 = load i64, i64* %39, align 8, !dbg !1398
  %87 = add i64 %86, -8, !dbg !1398
  store i64 %87, i64* %39, align 8, !dbg !1398
  %88 = inttoptr i64 %87 to i64*, !dbg !1399
  store i64 0, i64* %88, align 8, !dbg !1400
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !1401
  store i8* %17, i8** %89, align 8, !dbg !1401
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1402, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !1404
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !1405
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !1405
  %93 = load i64, i64* %92, align 8, !dbg !1405
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !1406
  %95 = bitcast i8* %94 to i64*, !dbg !1407
  store i64 %93, i64* %95, align 8, !dbg !1407
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !1409
  %97 = bitcast i8* %96 to i8**, !dbg !1411
  store i8* %96, i8** %97, align 8, !dbg !1411
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !1412
  %99 = bitcast i8* %98 to i8**, !dbg !1413
  store i8* %96, i8** %99, align 8, !dbg !1413
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !1414
  %101 = bitcast i8* %100 to i32*, !dbg !1414
  store i32 0, i32* %101, align 8, !dbg !1415
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !1417
  %103 = bitcast i8* %102 to i8**, !dbg !1419
  store i8* %102, i8** %103, align 8, !dbg !1419
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !1420
  %105 = bitcast i8* %104 to i8**, !dbg !1421
  store i8* %102, i8** %105, align 8, !dbg !1421
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !1423
  %107 = bitcast i8* %106 to i8**, !dbg !1425
  store i8* %106, i8** %107, align 8, !dbg !1425
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !1426
  %109 = bitcast i8* %108 to i8**, !dbg !1427
  store i8* %106, i8** %109, align 8, !dbg !1427
  br label %nk_fiber_create.exit, !dbg !1428

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !1429
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1430
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !1431
  br label %113, !dbg !1432

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1434
  ret i32 %114, !dbg !1434
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1435 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1441
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1447
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1448
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1448
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1449
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1450 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1453
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1456
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1457
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1457
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1458
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1458
  ret %struct.nk_fiber* %6, !dbg !1459
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1460 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1461
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1464
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1465
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1465
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1466
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1466
  ret %struct.nk_fiber* %6, !dbg !1467
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1468 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1469
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1472
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1473
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1473
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1474
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1474
  ret %struct.nk_thread* %6, !dbg !1475
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1476 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1479
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1482
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1483
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1483
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1484
  ret %struct.list_head* %5, !dbg !1485
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !1487
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1488
  %4 = load i64, i64* %3, align 8, !dbg !1489
  %5 = add i64 %4, -8, !dbg !1489
  store i64 %5, i64* %3, align 8, !dbg !1489
  %6 = inttoptr i64 %5 to i64*, !dbg !1490
  store i64 %1, i64* %6, align 8, !dbg !1491
  ret void, !dbg !1492
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1493 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1507
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1511
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1512
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1512
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1513
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1495, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1516, metadata !DIExpression()), !dbg !1521
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1523
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1523
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1524
  br i1 %8, label %20, label %9, !dbg !1525

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()), !dbg !1526
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1526
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1526
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1497, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1496, metadata !DIExpression()), !dbg !1515
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1527
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1528, metadata !DIExpression()), !dbg !1531
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1533
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1533
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1534
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1535, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1540, metadata !DIExpression()), !dbg !1543
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1544
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1545
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1546
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !1548
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1550
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1550
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1551
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1551
  br label %20, !dbg !1552

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1553
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1496, metadata !DIExpression()), !dbg !1515
  ret %struct.nk_fiber* %21, !dbg !1554
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1555 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1557, metadata !DIExpression()), !dbg !1568
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1569
  store i32 4, i32* %3, align 4, !dbg !1570
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1558, metadata !DIExpression()), !dbg !1571
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1572
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1560, metadata !DIExpression()), !dbg !1573
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1574
  %6 = load i32, i32* %5, align 8, !dbg !1574
  %7 = icmp sgt i32 %6, 0, !dbg !1575
  br i1 %7, label %8, label %66, !dbg !1576

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1576

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1561, metadata !DIExpression()), !dbg !1577
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1578
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1578
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1577
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1577
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1577
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1561, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1559, metadata !DIExpression()), !dbg !1579
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1580
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1528, metadata !DIExpression()), !dbg !1581
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1583
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1583
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1584
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1584
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1535, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1540, metadata !DIExpression()), !dbg !1587
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1588
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1589
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1590
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !1592
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1594
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1595
  %24 = load i32, i32* %5, align 8, !dbg !1596
  %25 = add i32 %24, -1, !dbg !1596
  store i32 %25, i32* %5, align 8, !dbg !1596
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1597
  br i1 %26, label %63, label %27, !dbg !1599

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1600, metadata !DIExpression()) #11, !dbg !1608
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()) #11, !dbg !1611
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %28, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1616
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1617, !srcloc !1637
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1624, metadata !DIExpression()) #11, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1623, metadata !DIExpression()) #11, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1622, metadata !DIExpression()) #11, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1640
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1647
  %30 = load i64, i64* %2, align 8, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %30, metadata !1645, metadata !DIExpression()) #11, !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1650
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1651
  %32 = load i32, i32* %31, align 8, !dbg !1651
  %33 = zext i32 %32 to i64, !dbg !1652
  %34 = urem i64 %30, %33, !dbg !1653
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1654, !srcloc !1655
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1632, metadata !DIExpression()) #11, !dbg !1654
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1630, metadata !DIExpression()) #11, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1629, metadata !DIExpression()) #11, !dbg !1657
  %36 = shl nuw i64 %34, 32, !dbg !1658
  %37 = ashr exact i64 %36, 32, !dbg !1658
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1658
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1616
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1659
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1659
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1659
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1606, metadata !DIExpression()) #11, !dbg !1616
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1660
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1664
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1665
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1665
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1607, metadata !DIExpression()) #11, !dbg !1667
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1668
  store i32 1, i32* %49, align 4, !dbg !1669
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1670
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1671, metadata !DIExpression()) #11, !dbg !1675
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1674, metadata !DIExpression()) #11, !dbg !1677
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1678
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1679, metadata !DIExpression()) #11, !dbg !1686
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1684, metadata !DIExpression()) #11, !dbg !1688
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1685, metadata !DIExpression()) #11, !dbg !1689
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1690
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1691
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1692
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1693
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1694
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1695
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1696
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1697
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1697
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1699
  br i1 %58, label %61, label %59, !dbg !1700

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !1701
  br label %61, !dbg !1703

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1574
  br label %63, !dbg !1574

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1574
  %65 = icmp sgt i32 %64, 0, !dbg !1575
  br i1 %65, label %11, label %66, !dbg !1576, !llvm.loop !1704

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1706
  store i8 1, i8* %67, align 8, !dbg !1707
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1708
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1713
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1714
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1714
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1495, metadata !DIExpression()) #11, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1516, metadata !DIExpression()) #11, !dbg !1718
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1720
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1720
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1721
  br i1 %75, label %88, label %76, !dbg !1722

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !1723
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1723
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1497, metadata !DIExpression()) #11, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1496, metadata !DIExpression()) #11, !dbg !1717
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1724
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1528, metadata !DIExpression()) #11, !dbg !1725
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1727
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1727
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1728
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1535, metadata !DIExpression()) #11, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1540, metadata !DIExpression()) #11, !dbg !1731
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1732
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1733
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1734
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1735
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !1736
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1738
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1738
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1739
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1739
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1496, metadata !DIExpression()) #11, !dbg !1717
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1558, metadata !DIExpression()), !dbg !1571
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1740
  br i1 %87, label %88, label %95, !dbg !1742

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1743
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1748
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1749
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1749
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1750
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1750
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1558, metadata !DIExpression()), !dbg !1571
  br label %95, !dbg !1751

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1752
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1558, metadata !DIExpression()), !dbg !1571
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1753
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1756
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1757
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1757
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1758
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1759
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1760
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1763
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1764
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1764
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1765
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1765
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1766
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1528, metadata !DIExpression()), !dbg !1767
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1769
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1769
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1770
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1770
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1535, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1540, metadata !DIExpression()), !dbg !1773
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1774
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1775
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1776
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1777
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !1778
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1780
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1781
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1782
  %116 = load i8*, i8** %115, align 8, !dbg !1782
  call void @kmem_free(i8* %116) #12, !dbg !1782
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1783
  call void @kmem_free(i8* %117) #12, !dbg !1783
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !1784
  ret void, !dbg !1785
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1601 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1600, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %1, metadata !1605, metadata !DIExpression()), !dbg !1787
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1788
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1792
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1793
  %6 = icmp eq i8 %1, 0, !dbg !1794
  br i1 %6, label %20, label %7, !dbg !1795

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1796, !srcloc !1637
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1624, metadata !DIExpression()) #11, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1623, metadata !DIExpression()) #11, !dbg !1799
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1622, metadata !DIExpression()) #11, !dbg !1800
  %9 = bitcast i64* %3 to i8*, !dbg !1801
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1801
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !1803
  %10 = load i64, i64* %3, align 8, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %10, metadata !1645, metadata !DIExpression()) #11, !dbg !1805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1806
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1807
  %12 = load i32, i32* %11, align 8, !dbg !1807
  %13 = zext i32 %12 to i64, !dbg !1808
  %14 = urem i64 %10, %13, !dbg !1809
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1810, !srcloc !1655
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1632, metadata !DIExpression()) #11, !dbg !1810
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1630, metadata !DIExpression()) #11, !dbg !1811
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1629, metadata !DIExpression()) #11, !dbg !1812
  %16 = shl nuw i64 %14, 32, !dbg !1813
  %17 = ashr exact i64 %16, 32, !dbg !1813
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1813
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1793
  br label %20, !dbg !1814

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1815
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1815
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1815
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1815
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1606, metadata !DIExpression()), !dbg !1793
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1816
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1820
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1821
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1821
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1822
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1607, metadata !DIExpression()), !dbg !1823
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1824
  store i32 1, i32* %31, align 4, !dbg !1825
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1671, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1674, metadata !DIExpression()), !dbg !1829
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1830
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1679, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1684, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1685, metadata !DIExpression()), !dbg !1834
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1835
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1836
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1837
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1838
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1839
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1840
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1841
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1842
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1842
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1843
  br i1 %40, label %43, label %41, !dbg !1844

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !1845
  br label %43, !dbg !1846

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1847
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1850, metadata !DIExpression()), !dbg !1851
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1852
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1852
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1853
  %5 = load i8*, i8** %4, align 8, !dbg !1853
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1854
  %7 = load i8**, i8*** %6, align 8, !dbg !1854
  tail call void %3(i8* %5, i8** %7) #12, !dbg !1855
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !1856
  ret void, !dbg !1857
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !1858
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1859
  %3 = bitcast i8** %2 to i64*, !dbg !1859
  %4 = load i64, i64* %3, align 8, !dbg !1859
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1860
  %6 = load i64, i64* %5, align 8, !dbg !1860
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1861
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !1864
  %8 = add i64 %4, -8, !dbg !1865
  %9 = add i64 %8, %6, !dbg !1866
  store i64 %9, i64* %7, align 8, !dbg !1866
  %10 = inttoptr i64 %9 to i64*, !dbg !1867
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1868
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1871
  %11 = load i64, i64* %7, align 8, !dbg !1872
  %12 = add i64 %11, -8, !dbg !1872
  store i64 %12, i64* %7, align 8, !dbg !1872
  %13 = inttoptr i64 %12 to i64*, !dbg !1873
  store i64 0, i64* %13, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1877
  %14 = load i64, i64* %7, align 8, !dbg !1878
  %15 = add i64 %14, -8, !dbg !1878
  store i64 %15, i64* %7, align 8, !dbg !1878
  %16 = inttoptr i64 %15 to i64*, !dbg !1879
  store i64 0, i64* %16, align 8, !dbg !1880
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1883
  %17 = load i64, i64* %7, align 8, !dbg !1884
  %18 = add i64 %17, -8, !dbg !1884
  store i64 %18, i64* %7, align 8, !dbg !1884
  %19 = inttoptr i64 %18 to i64*, !dbg !1885
  store i64 0, i64* %19, align 8, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1889
  %20 = load i64, i64* %7, align 8, !dbg !1890
  %21 = add i64 %20, -8, !dbg !1890
  store i64 %21, i64* %7, align 8, !dbg !1890
  %22 = inttoptr i64 %21 to i64*, !dbg !1891
  store i64 0, i64* %22, align 8, !dbg !1892
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1895
  %23 = load i64, i64* %7, align 8, !dbg !1896
  %24 = add i64 %23, -8, !dbg !1896
  store i64 %24, i64* %7, align 8, !dbg !1896
  %25 = inttoptr i64 %24 to i64*, !dbg !1897
  store i64 0, i64* %25, align 8, !dbg !1898
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1899
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !1902
  %27 = load i64, i64* %7, align 8, !dbg !1903
  %28 = add i64 %27, -8, !dbg !1903
  store i64 %28, i64* %7, align 8, !dbg !1903
  %29 = inttoptr i64 %28 to i64*, !dbg !1904
  store i64 %26, i64* %29, align 8, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1908
  %30 = load i64, i64* %7, align 8, !dbg !1909
  %31 = add i64 %30, -8, !dbg !1909
  store i64 %31, i64* %7, align 8, !dbg !1909
  %32 = inttoptr i64 %31 to i64*, !dbg !1910
  store i64 0, i64* %32, align 8, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1914
  %33 = load i64, i64* %7, align 8, !dbg !1915
  %34 = add i64 %33, -8, !dbg !1915
  store i64 %34, i64* %7, align 8, !dbg !1915
  %35 = inttoptr i64 %34 to i64*, !dbg !1916
  store i64 0, i64* %35, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1920
  %36 = load i64, i64* %7, align 8, !dbg !1921
  %37 = add i64 %36, -8, !dbg !1921
  store i64 %37, i64* %7, align 8, !dbg !1921
  %38 = inttoptr i64 %37 to i64*, !dbg !1922
  store i64 0, i64* %38, align 8, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1926
  %39 = load i64, i64* %7, align 8, !dbg !1927
  %40 = add i64 %39, -8, !dbg !1927
  store i64 %40, i64* %7, align 8, !dbg !1927
  %41 = inttoptr i64 %40 to i64*, !dbg !1928
  store i64 0, i64* %41, align 8, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1932
  %42 = load i64, i64* %7, align 8, !dbg !1933
  %43 = add i64 %42, -8, !dbg !1933
  store i64 %43, i64* %7, align 8, !dbg !1933
  %44 = inttoptr i64 %43 to i64*, !dbg !1934
  store i64 0, i64* %44, align 8, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1938
  %45 = load i64, i64* %7, align 8, !dbg !1939
  %46 = add i64 %45, -8, !dbg !1939
  store i64 %46, i64* %7, align 8, !dbg !1939
  %47 = inttoptr i64 %46 to i64*, !dbg !1940
  store i64 0, i64* %47, align 8, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1944
  %48 = load i64, i64* %7, align 8, !dbg !1945
  %49 = add i64 %48, -8, !dbg !1945
  store i64 %49, i64* %7, align 8, !dbg !1945
  %50 = inttoptr i64 %49 to i64*, !dbg !1946
  store i64 0, i64* %50, align 8, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1950
  %51 = load i64, i64* %7, align 8, !dbg !1951
  %52 = add i64 %51, -8, !dbg !1951
  store i64 %52, i64* %7, align 8, !dbg !1951
  %53 = inttoptr i64 %52 to i64*, !dbg !1952
  store i64 0, i64* %53, align 8, !dbg !1953
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1956
  %54 = load i64, i64* %7, align 8, !dbg !1957
  %55 = add i64 %54, -8, !dbg !1957
  store i64 %55, i64* %7, align 8, !dbg !1957
  %56 = inttoptr i64 %55 to i64*, !dbg !1958
  store i64 0, i64* %56, align 8, !dbg !1959
  ret void, !dbg !1960
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1961 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1965, metadata !DIExpression()), !dbg !1970
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1971
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1975
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1976
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1976
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1977
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1977
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1966, metadata !DIExpression()), !dbg !1978
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1979
  %9 = load i32, i32* %8, align 4, !dbg !1979
  %10 = add i32 %9, -3, !dbg !1981
  %11 = icmp ult i32 %10, 2, !dbg !1981
  br i1 %11, label %13, label %12, !dbg !1981

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1982
  br label %13, !dbg !1984

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1985
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1989
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1990
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1990
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1991
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1991
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1992
  br i1 %20, label %36, label %21, !dbg !1993

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1994
  %23 = icmp eq i32 %22, 3, !dbg !1995
  br i1 %23, label %36, label %24, !dbg !1996

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1997
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2001
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2002
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2002
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2003
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1967, metadata !DIExpression()), !dbg !2004
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1671, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1674, metadata !DIExpression()), !dbg !2008
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2009
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1679, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1684, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1685, metadata !DIExpression()), !dbg !2013
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2014
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2015
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2016
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2017
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2018
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2019
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2020
  br label %36, !dbg !2021

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2022
  %38 = load i32, i32* %37, align 8, !dbg !2022
  %39 = icmp eq i32 %38, 0, !dbg !2024
  br i1 %39, label %40, label %55, !dbg !2025

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2026
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2026
  %43 = load i64, i64* %42, align 8, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2034
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2036
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2040
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2041
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2041
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2042
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2033, metadata !DIExpression()) #11, !dbg !2043
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2044
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2045
  store i64 %43, i64* %51, align 8, !dbg !2045
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2046, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !2048
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2049
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2050
  store i64 %43, i64* %54, align 8, !dbg !2050
  br label %55, !dbg !2051

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2052
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2055
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2056
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2056
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2057
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2058
  store i32 1, i32* %8, align 4, !dbg !2059
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2060
  store i32 5, i32* %61, align 4, !dbg !2061
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !2062
  ret i32 0, !dbg !2063
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2029 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2028, metadata !DIExpression()), !dbg !2064
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2065
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2069
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2070
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2070
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2071
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2071
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2033, metadata !DIExpression()), !dbg !2072
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2073
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2074
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2075, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !2075
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !2077
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2078
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2079
  ret void, !dbg !2080
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2081 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2086
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2090
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2091
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2091
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2092
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2092
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2085, metadata !DIExpression()), !dbg !2093
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !2094
  ret void, !dbg !2095
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2096 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2100, metadata !DIExpression()), !dbg !2103
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2104
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2108
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2109
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2109
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2110
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2110
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2101, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2112
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2113
  %9 = zext i1 %8 to i8, !dbg !2115
  call void @llvm.dbg.value(metadata i8 %9, metadata !2102, metadata !DIExpression()), !dbg !2112
  ret i8 %9, !dbg !2116
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1626 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2117, !srcloc !1637
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1624, metadata !DIExpression()) #11, !dbg !2117
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1623, metadata !DIExpression()) #11, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1622, metadata !DIExpression()) #11, !dbg !2120
  %3 = bitcast i64* %1 to i8*, !dbg !2121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2121
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !2123
  %4 = load i64, i64* %1, align 8, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %4, metadata !1645, metadata !DIExpression()) #11, !dbg !2125
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2126
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2127
  %6 = load i32, i32* %5, align 8, !dbg !2127
  %7 = zext i32 %6 to i64, !dbg !2128
  %8 = urem i64 %4, %7, !dbg !2129
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2130, !srcloc !1655
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1632, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1630, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1629, metadata !DIExpression()), !dbg !2132
  %10 = shl nuw i64 %8, 32, !dbg !2133
  %11 = ashr exact i64 %10, 32, !dbg !2133
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2133
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2133
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2134
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2134
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2135
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2135
  ret %struct.nk_thread* %17, !dbg !2136
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2137 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2139, metadata !DIExpression()), !dbg !2158
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2159, !srcloc !2160
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2143, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2141, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2140, metadata !DIExpression()), !dbg !2162
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2163
  %4 = load i32, i32* %3, align 8, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %4, metadata !2145, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 0, metadata !2148, metadata !DIExpression()), !dbg !2165
  %5 = icmp sgt i32 %4, 0, !dbg !2166
  br i1 %5, label %6, label %38, !dbg !2167

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2168
  br label %8, !dbg !2168

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2148, metadata !DIExpression()), !dbg !2165
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2168
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2168
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2169
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2169
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2146, metadata !DIExpression()), !dbg !2171
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2172
  call void @llvm.dbg.value(metadata i8** %15, metadata !2147, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2173
  %16 = load i8*, i8** %15, align 8, !dbg !2174
  br label %17, !dbg !2175

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2174
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2176
  %20 = bitcast i8* %18 to i8**, !dbg !2176
  %21 = load i8*, i8** %20, align 8, !dbg !2176
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2176
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2176
  br i1 %22, label %27, label %23, !dbg !2175

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2174
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2147, metadata !DIExpression()), !dbg !2173
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2177
  br i1 %26, label %30, label %17, !dbg !2180, !llvm.loop !2181

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2165
  %29 = icmp slt i64 %28, %7, !dbg !2166
  br i1 %29, label %8, label %38, !dbg !2167, !llvm.loop !2184

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1528, metadata !DIExpression()), !dbg !2188
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2190
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2190
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2191
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1535, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1540, metadata !DIExpression()), !dbg !2194
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2195
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2196
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2197
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2198
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !2199
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2201
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2202
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2203
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2204 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2233, !srcloc !2234
  call void @llvm.dbg.value(metadata i32 %1, metadata !2209, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %1, metadata !2207, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 %1, metadata !2206, metadata !DIExpression()), !dbg !2236
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2237
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2211, metadata !DIExpression()), !dbg !2240
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2241
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2242
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2243
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2244
  br i1 %6, label %7, label %109, !dbg !2245

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2246
  %9 = icmp eq i64 %8, 0, !dbg !2252
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %10, metadata !2257, metadata !DIExpression()) #11, !dbg !2259
  %11 = icmp eq i64 %10, 0, !dbg !2260
  br i1 %11, label %17, label %12, !dbg !2262

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2263
  %14 = inttoptr i64 %13 to i16*, !dbg !2265
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2266
  %16 = zext i16 %15 to i32, !dbg !2266
  br label %17, !dbg !2267

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2268
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %19, metadata !2273, metadata !DIExpression()) #11, !dbg !2275
  %20 = icmp eq i64 %19, 0, !dbg !2276
  br i1 %20, label %25, label %21, !dbg !2278

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2279
  %23 = inttoptr i64 %22 to i16*, !dbg !2281
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2282
  br label %25, !dbg !2283

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2284

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2212, metadata !DIExpression()), !dbg !2285
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2286, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !2286
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !2288
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2218, metadata !DIExpression()), !dbg !2285
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !2289
  %29 = icmp eq i32 %28, 0, !dbg !2289
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2290
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %31, metadata !2297, metadata !DIExpression()) #11, !dbg !2301
  %32 = icmp eq i64 %31, 0, !dbg !2302
  br i1 %32, label %38, label %33, !dbg !2304

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2305
  %35 = inttoptr i64 %34 to i16*, !dbg !2307
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2308
  %37 = icmp eq i16 %36, 0, !dbg !2309
  br i1 %37, label %38, label %39, !dbg !2290

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2290

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2290
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2290
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2290
  br i1 %29, label %60, label %44, !dbg !2310

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2311

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2311
  %47 = load i64, i64* %46, align 32, !dbg !2311
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2311
  %49 = load i8, i8* %48, align 8, !dbg !2311
  %50 = icmp eq i8 %49, 0, !dbg !2311
  br i1 %50, label %51, label %56, !dbg !2311

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2311
  %53 = load i8, i8* %52, align 64, !dbg !2311
  %54 = icmp eq i8 %53, 0, !dbg !2311
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !2311
  br label %56, !dbg !2311

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !2311
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2311
  br label %76, !dbg !2311

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2312

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2312
  %63 = load i64, i64* %62, align 32, !dbg !2312
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2312
  %65 = load i8, i8* %64, align 8, !dbg !2312
  %66 = icmp eq i8 %65, 0, !dbg !2312
  br i1 %66, label %67, label %72, !dbg !2312

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2312
  %69 = load i8, i8* %68, align 64, !dbg !2312
  %70 = icmp eq i8 %69, 0, !dbg !2312
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !2312
  br label %72, !dbg !2312

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !2312
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2312
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %77, metadata !2317, metadata !DIExpression()) #11, !dbg !2319
  %78 = icmp eq i64 %77, 0, !dbg !2320
  br i1 %78, label %109, label %79, !dbg !2322

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2323
  %81 = inttoptr i64 %80 to i16*, !dbg !2325
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2326
  br label %109, !dbg !2327

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2231, metadata !DIExpression()), !dbg !2328
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !2329
  %85 = icmp eq i32 %84, 0, !dbg !2329
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %86, metadata !2297, metadata !DIExpression()) #11, !dbg !2336
  %87 = icmp eq i64 %86, 0, !dbg !2337
  br i1 %87, label %93, label %88, !dbg !2338

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2339
  %90 = inttoptr i64 %89 to i16*, !dbg !2340
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2341
  %92 = icmp eq i16 %91, 0, !dbg !2342
  br i1 %92, label %93, label %94, !dbg !2343

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2343

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2343
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2343
  br i1 %85, label %100, label %98, !dbg !2344

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2345
  br label %102, !dbg !2345

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2347
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %103, metadata !2317, metadata !DIExpression()) #11, !dbg !2352
  %104 = icmp eq i64 %103, 0, !dbg !2353
  br i1 %104, label %109, label %105, !dbg !2354

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2355
  %107 = inttoptr i64 %106 to i16*, !dbg !2356
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2357
  br label %109, !dbg !2358

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2359
  ret i32 %110, !dbg !2360
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2361 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2393, !srcloc !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2370, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2368, metadata !DIExpression()), !dbg !2395
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %2, metadata !2366, metadata !DIExpression()), !dbg !2396
  %3 = icmp eq i8* %2, null, !dbg !2397
  br i1 %3, label %4, label %106, !dbg !2398

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2399
  %6 = icmp eq i64 %5, 0, !dbg !2401
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %7, metadata !2257, metadata !DIExpression()) #11, !dbg !2405
  %8 = icmp eq i64 %7, 0, !dbg !2406
  br i1 %8, label %14, label %9, !dbg !2407

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2408
  %11 = inttoptr i64 %10 to i16*, !dbg !2409
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2410
  %13 = zext i16 %12 to i32, !dbg !2410
  br label %14, !dbg !2411

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2412
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %16, metadata !2273, metadata !DIExpression()) #11, !dbg !2416
  %17 = icmp eq i64 %16, 0, !dbg !2417
  br i1 %17, label %22, label %18, !dbg !2418

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2419
  %20 = inttoptr i64 %19 to i16*, !dbg !2420
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2421
  br label %22, !dbg !2422

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2423

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2372, metadata !DIExpression()), !dbg !2424
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2425, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2378, metadata !DIExpression()), !dbg !2424
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2428
  %26 = icmp eq i32 %25, 0, !dbg !2428
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2429
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %28, metadata !2297, metadata !DIExpression()) #11, !dbg !2434
  %29 = icmp eq i64 %28, 0, !dbg !2435
  br i1 %29, label %35, label %30, !dbg !2436

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2437
  %32 = inttoptr i64 %31 to i16*, !dbg !2438
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2439
  %34 = icmp eq i16 %33, 0, !dbg !2440
  br i1 %34, label %35, label %36, !dbg !2429

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2429

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2429
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2429
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2429
  br i1 %26, label %57, label %41, !dbg !2441

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2442

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2442
  %44 = load i64, i64* %43, align 32, !dbg !2442
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2442
  %46 = load i8, i8* %45, align 8, !dbg !2442
  %47 = icmp eq i8 %46, 0, !dbg !2442
  br i1 %47, label %48, label %53, !dbg !2442

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2442
  %50 = load i8, i8* %49, align 64, !dbg !2442
  %51 = icmp eq i8 %50, 0, !dbg !2442
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2442
  br label %53, !dbg !2442

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2442
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2442
  br label %73, !dbg !2442

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2443

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2443
  %60 = load i64, i64* %59, align 32, !dbg !2443
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2443
  %62 = load i8, i8* %61, align 8, !dbg !2443
  %63 = icmp eq i8 %62, 0, !dbg !2443
  br i1 %63, label %64, label %69, !dbg !2443

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2443
  %66 = load i8, i8* %65, align 64, !dbg !2443
  %67 = icmp eq i8 %66, 0, !dbg !2443
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2443
  br label %69, !dbg !2443

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2443
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2443
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %74, metadata !2317, metadata !DIExpression()) #11, !dbg !2447
  %75 = icmp eq i64 %74, 0, !dbg !2448
  br i1 %75, label %114, label %76, !dbg !2449

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2450
  %78 = inttoptr i64 %77 to i16*, !dbg !2451
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2452
  br label %114, !dbg !2453

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2391, metadata !DIExpression()), !dbg !2454
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2455
  %82 = icmp eq i32 %81, 0, !dbg !2455
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %83, metadata !2297, metadata !DIExpression()) #11, !dbg !2462
  %84 = icmp eq i64 %83, 0, !dbg !2463
  br i1 %84, label %90, label %85, !dbg !2464

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2465
  %87 = inttoptr i64 %86 to i16*, !dbg !2466
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2467
  %89 = icmp eq i16 %88, 0, !dbg !2468
  br i1 %89, label %90, label %91, !dbg !2469

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2469

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2469
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2469
  br i1 %82, label %97, label %95, !dbg !2470

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2471
  br label %99, !dbg !2471

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2473
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %100, metadata !2317, metadata !DIExpression()) #11, !dbg !2478
  %101 = icmp eq i64 %100, 0, !dbg !2479
  br i1 %101, label %114, label %102, !dbg !2480

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2481
  %104 = inttoptr i64 %103 to i16*, !dbg !2482
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2483
  br label %114, !dbg !2484

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2365, metadata !DIExpression()), !dbg !2486
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !2487
  %109 = bitcast i8* %2 to i32*, !dbg !2488
  tail call void @spinlock_init(i32* %109) #12, !dbg !2489
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !2491
  %111 = bitcast i8* %110 to i8**, !dbg !2493
  store i8* %110, i8** %111, align 8, !dbg !2493
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2494
  %113 = bitcast i8* %112 to i8**, !dbg !2495
  store i8* %110, i8** %113, align 8, !dbg !2495
  br label %115, !dbg !2496

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !2497
  br label %115, !dbg !2498

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2499
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2500
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2501 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2544
  %2 = zext i32 %1 to i64, !dbg !2545
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2545
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2503, metadata !DIExpression()), !dbg !2546
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2547
  %6 = icmp eq i64 %5, 0, !dbg !2549
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %7, metadata !2257, metadata !DIExpression()) #11, !dbg !2553
  %8 = icmp eq i64 %7, 0, !dbg !2554
  br i1 %8, label %14, label %9, !dbg !2555

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2556
  %11 = inttoptr i64 %10 to i16*, !dbg !2557
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2558
  %13 = zext i16 %12 to i32, !dbg !2558
  br label %14, !dbg !2559

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2560
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %16, metadata !2273, metadata !DIExpression()) #11, !dbg !2564
  %17 = icmp eq i64 %16, 0, !dbg !2565
  br i1 %17, label %22, label %18, !dbg !2566

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2567
  %20 = inttoptr i64 %19 to i16*, !dbg !2568
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2569
  br label %22, !dbg !2570

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2571

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2504, metadata !DIExpression()), !dbg !2572
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2573, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2508, metadata !DIExpression()), !dbg !2572
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2576
  %26 = icmp eq i32 %25, 0, !dbg !2576
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2577
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %28, metadata !2297, metadata !DIExpression()) #11, !dbg !2582
  %29 = icmp eq i64 %28, 0, !dbg !2583
  br i1 %29, label %35, label %30, !dbg !2584

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2585
  %32 = inttoptr i64 %31 to i16*, !dbg !2586
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2587
  %34 = icmp eq i16 %33, 0, !dbg !2588
  br i1 %34, label %35, label %36, !dbg !2577

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2577

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2577
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2577
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2577
  br i1 %26, label %57, label %41, !dbg !2589

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2590

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2590
  %44 = load i64, i64* %43, align 32, !dbg !2590
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2590
  %46 = load i8, i8* %45, align 8, !dbg !2590
  %47 = icmp eq i8 %46, 0, !dbg !2590
  br i1 %47, label %48, label %53, !dbg !2590

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2590
  %50 = load i8, i8* %49, align 64, !dbg !2590
  %51 = icmp eq i8 %50, 0, !dbg !2590
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2590
  br label %53, !dbg !2590

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2590
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !2590
  br label %73, !dbg !2590

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2591

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2591
  %60 = load i64, i64* %59, align 32, !dbg !2591
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2591
  %62 = load i8, i8* %61, align 8, !dbg !2591
  %63 = icmp eq i8 %62, 0, !dbg !2591
  br i1 %63, label %64, label %69, !dbg !2591

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2591
  %66 = load i8, i8* %65, align 64, !dbg !2591
  %67 = icmp eq i8 %66, 0, !dbg !2591
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2591
  br label %69, !dbg !2591

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2591
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !2591
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %74, metadata !2317, metadata !DIExpression()) #11, !dbg !2595
  %75 = icmp eq i64 %74, 0, !dbg !2596
  br i1 %75, label %106, label %76, !dbg !2597

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2598
  %78 = inttoptr i64 %77 to i16*, !dbg !2599
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2600
  br label %106, !dbg !2601

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2521, metadata !DIExpression()), !dbg !2602
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2603
  %82 = icmp eq i32 %81, 0, !dbg !2603
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %83, metadata !2297, metadata !DIExpression()) #11, !dbg !2610
  %84 = icmp eq i64 %83, 0, !dbg !2611
  br i1 %84, label %90, label %85, !dbg !2612

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2613
  %87 = inttoptr i64 %86 to i16*, !dbg !2614
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2615
  %89 = icmp eq i16 %88, 0, !dbg !2616
  br i1 %89, label %90, label %91, !dbg !2617

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2617

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2617
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2617
  br i1 %82, label %97, label %95, !dbg !2618

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2619
  br label %99, !dbg !2619

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2621
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %100, metadata !2317, metadata !DIExpression()) #11, !dbg !2626
  %101 = icmp eq i64 %100, 0, !dbg !2627
  br i1 %101, label %106, label %102, !dbg !2628

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2629
  %104 = inttoptr i64 %103 to i16*, !dbg !2630
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2631
  br label %106, !dbg !2632

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2633
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2634
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2635
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2636
  br i1 %109, label %110, label %212, !dbg !2637

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2638
  %112 = icmp eq i64 %111, 0, !dbg !2640
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %113, metadata !2257, metadata !DIExpression()) #11, !dbg !2644
  %114 = icmp eq i64 %113, 0, !dbg !2645
  br i1 %114, label %120, label %115, !dbg !2646

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2647
  %117 = inttoptr i64 %116 to i16*, !dbg !2648
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2649
  %119 = zext i16 %118 to i32, !dbg !2649
  br label %120, !dbg !2650

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2651
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %122, metadata !2273, metadata !DIExpression()) #11, !dbg !2655
  %123 = icmp eq i64 %122, 0, !dbg !2656
  br i1 %123, label %128, label %124, !dbg !2657

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2658
  %126 = inttoptr i64 %125 to i16*, !dbg !2659
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2660
  br label %128, !dbg !2661

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2662

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2523, metadata !DIExpression()), !dbg !2663
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2664, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2529, metadata !DIExpression()), !dbg !2663
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !2667
  %132 = icmp eq i32 %131, 0, !dbg !2667
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2668
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %134, metadata !2297, metadata !DIExpression()) #11, !dbg !2673
  %135 = icmp eq i64 %134, 0, !dbg !2674
  br i1 %135, label %141, label %136, !dbg !2675

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2676
  %138 = inttoptr i64 %137 to i16*, !dbg !2677
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2678
  %140 = icmp eq i16 %139, 0, !dbg !2679
  br i1 %140, label %141, label %142, !dbg !2668

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2668

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2668
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2668
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2668
  br i1 %132, label %163, label %147, !dbg !2680

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2681

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2681
  %150 = load i64, i64* %149, align 32, !dbg !2681
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2681
  %152 = load i8, i8* %151, align 8, !dbg !2681
  %153 = icmp eq i8 %152, 0, !dbg !2681
  br i1 %153, label %154, label %159, !dbg !2681

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2681
  %156 = load i8, i8* %155, align 64, !dbg !2681
  %157 = icmp eq i8 %156, 0, !dbg !2681
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !2681
  br label %159, !dbg !2681

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !2681
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2681
  br label %179, !dbg !2681

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2682

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2682
  %166 = load i64, i64* %165, align 32, !dbg !2682
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2682
  %168 = load i8, i8* %167, align 8, !dbg !2682
  %169 = icmp eq i8 %168, 0, !dbg !2682
  br i1 %169, label %170, label %175, !dbg !2682

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2682
  %172 = load i8, i8* %171, align 64, !dbg !2682
  %173 = icmp eq i8 %172, 0, !dbg !2682
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !2682
  br label %175, !dbg !2682

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !2682
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2682
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %180, metadata !2317, metadata !DIExpression()) #11, !dbg !2686
  %181 = icmp eq i64 %180, 0, !dbg !2687
  br i1 %181, label %212, label %182, !dbg !2688

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2689
  %184 = inttoptr i64 %183 to i16*, !dbg !2690
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2691
  br label %212, !dbg !2692

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2542, metadata !DIExpression()), !dbg !2693
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !2694
  %188 = icmp eq i32 %187, 0, !dbg !2694
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %189, metadata !2297, metadata !DIExpression()) #11, !dbg !2701
  %190 = icmp eq i64 %189, 0, !dbg !2702
  br i1 %190, label %196, label %191, !dbg !2703

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2704
  %193 = inttoptr i64 %192 to i16*, !dbg !2705
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2706
  %195 = icmp eq i16 %194, 0, !dbg !2707
  br i1 %195, label %196, label %197, !dbg !2708

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2708

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2708
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2708
  br i1 %188, label %203, label %201, !dbg !2709

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2710
  br label %205, !dbg !2710

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2712
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %206, metadata !2317, metadata !DIExpression()) #11, !dbg !2717
  %207 = icmp eq i64 %206, 0, !dbg !2718
  br i1 %207, label %212, label %208, !dbg !2719

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2720
  %210 = inttoptr i64 %209 to i16*, !dbg !2721
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2722
  br label %212, !dbg !2723

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2724
  ret i32 %213, !dbg !2725
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2726 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2728, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8** undef, metadata !2729, metadata !DIExpression()), !dbg !2843
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2844, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !2844
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !2846
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2847
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !2848
  %8 = icmp eq i32 %7, 0, !dbg !2848
  br i1 %8, label %111, label %9, !dbg !2849

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2850
  %11 = icmp eq i64 %10, 0, !dbg !2852
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %12, metadata !2257, metadata !DIExpression()) #11, !dbg !2856
  %13 = icmp eq i64 %12, 0, !dbg !2857
  br i1 %13, label %19, label %14, !dbg !2858

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2859
  %16 = inttoptr i64 %15 to i16*, !dbg !2860
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2861
  %18 = zext i16 %17 to i32, !dbg !2861
  br label %19, !dbg !2862

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2863
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %21, metadata !2273, metadata !DIExpression()) #11, !dbg !2867
  %22 = icmp eq i64 %21, 0, !dbg !2868
  br i1 %22, label %27, label %23, !dbg !2869

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2870
  %25 = inttoptr i64 %24 to i16*, !dbg !2871
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2872
  br label %27, !dbg !2873

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2874

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2730, metadata !DIExpression()), !dbg !2875
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2876, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2736, metadata !DIExpression()), !dbg !2875
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !2879
  %31 = icmp eq i32 %30, 0, !dbg !2879
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2880
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %33, metadata !2297, metadata !DIExpression()) #11, !dbg !2885
  %34 = icmp eq i64 %33, 0, !dbg !2886
  br i1 %34, label %40, label %35, !dbg !2887

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2888
  %37 = inttoptr i64 %36 to i16*, !dbg !2889
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2890
  %39 = icmp eq i16 %38, 0, !dbg !2891
  br i1 %39, label %40, label %41, !dbg !2880

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2880

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2880
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2880
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2880
  br i1 %31, label %62, label %46, !dbg !2892

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2893

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2893
  %49 = load i64, i64* %48, align 32, !dbg !2893
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2893
  %51 = load i8, i8* %50, align 8, !dbg !2893
  %52 = icmp eq i8 %51, 0, !dbg !2893
  br i1 %52, label %53, label %58, !dbg !2893

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2893
  %55 = load i8, i8* %54, align 64, !dbg !2893
  %56 = icmp eq i8 %55, 0, !dbg !2893
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2893
  br label %58, !dbg !2893

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2893
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2893
  br label %78, !dbg !2893

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2894

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2894
  %65 = load i64, i64* %64, align 32, !dbg !2894
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2894
  %67 = load i8, i8* %66, align 8, !dbg !2894
  %68 = icmp eq i8 %67, 0, !dbg !2894
  br i1 %68, label %69, label %74, !dbg !2894

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2894
  %71 = load i8, i8* %70, align 64, !dbg !2894
  %72 = icmp eq i8 %71, 0, !dbg !2894
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2894
  br label %74, !dbg !2894

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2894
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2894
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %79, metadata !2317, metadata !DIExpression()) #11, !dbg !2898
  %80 = icmp eq i64 %79, 0, !dbg !2899
  br i1 %80, label %449, label %81, !dbg !2900

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2901
  %83 = inttoptr i64 %82 to i16*, !dbg !2902
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2903
  br label %449, !dbg !2904

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2749, metadata !DIExpression()), !dbg !2905
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !2906
  %87 = icmp eq i32 %86, 0, !dbg !2906
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %88, metadata !2297, metadata !DIExpression()) #11, !dbg !2913
  %89 = icmp eq i64 %88, 0, !dbg !2914
  br i1 %89, label %95, label %90, !dbg !2915

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2916
  %92 = inttoptr i64 %91 to i16*, !dbg !2917
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2918
  %94 = icmp eq i16 %93, 0, !dbg !2919
  br i1 %94, label %95, label %96, !dbg !2920

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2920

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2920
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2920
  br i1 %87, label %102, label %100, !dbg !2921

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2922
  br label %104, !dbg !2922

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2924
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %105, metadata !2317, metadata !DIExpression()) #11, !dbg !2929
  %106 = icmp eq i64 %105, 0, !dbg !2930
  br i1 %106, label %449, label %107, !dbg !2931

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2932
  %109 = inttoptr i64 %108 to i16*, !dbg !2933
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2934
  br label %449, !dbg !2935

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !2936
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2937
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2937
  store i64 100000000, i64* %113, align 8, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2751, metadata !DIExpression(DW_OP_deref)), !dbg !2937
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !2938
  %115 = icmp eq i32 %114, 0, !dbg !2938
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2939
  br i1 %115, label %219, label %117, !dbg !2940

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2941
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %119, metadata !2257, metadata !DIExpression()) #11, !dbg !2945
  %120 = icmp eq i64 %119, 0, !dbg !2946
  br i1 %120, label %126, label %121, !dbg !2947

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2948
  %123 = inttoptr i64 %122 to i16*, !dbg !2949
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2950
  %125 = zext i16 %124 to i32, !dbg !2950
  br label %126, !dbg !2951

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2952
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %128, metadata !2273, metadata !DIExpression()) #11, !dbg !2956
  %129 = icmp eq i64 %128, 0, !dbg !2957
  br i1 %129, label %134, label %130, !dbg !2958

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2959
  %132 = inttoptr i64 %131 to i16*, !dbg !2960
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2961
  br label %134, !dbg !2962

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2963

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2777, metadata !DIExpression()), !dbg !2964
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2965, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2783, metadata !DIExpression()), !dbg !2964
  %137 = call i32 @nk_vc_is_active() #12, !dbg !2968
  %138 = icmp eq i32 %137, 0, !dbg !2968
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2969
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %140, metadata !2297, metadata !DIExpression()) #11, !dbg !2974
  %141 = icmp eq i64 %140, 0, !dbg !2975
  br i1 %141, label %147, label %142, !dbg !2976

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2977
  %144 = inttoptr i64 %143 to i16*, !dbg !2978
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2979
  %146 = icmp eq i16 %145, 0, !dbg !2980
  br i1 %146, label %147, label %148, !dbg !2969

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2969

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2969
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2969
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2969
  br i1 %138, label %169, label %153, !dbg !2981

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2982

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2982
  %156 = load i64, i64* %155, align 32, !dbg !2982
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2982
  %158 = load i8, i8* %157, align 8, !dbg !2982
  %159 = icmp eq i8 %158, 0, !dbg !2982
  br i1 %159, label %160, label %165, !dbg !2982

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2982
  %162 = load i8, i8* %161, align 64, !dbg !2982
  %163 = icmp eq i8 %162, 0, !dbg !2982
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !2982
  br label %165, !dbg !2982

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !2982
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2982
  br label %185, !dbg !2982

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2983

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2983
  %172 = load i64, i64* %171, align 32, !dbg !2983
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2983
  %174 = load i8, i8* %173, align 8, !dbg !2983
  %175 = icmp eq i8 %174, 0, !dbg !2983
  br i1 %175, label %176, label %181, !dbg !2983

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2983
  %178 = load i8, i8* %177, align 64, !dbg !2983
  %179 = icmp eq i8 %178, 0, !dbg !2983
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !2983
  br label %181, !dbg !2983

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !2983
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2983
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %186, metadata !2317, metadata !DIExpression()) #11, !dbg !2987
  %187 = icmp eq i64 %186, 0, !dbg !2988
  br i1 %187, label %218, label %188, !dbg !2989

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2990
  %190 = inttoptr i64 %189 to i16*, !dbg !2991
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2992
  br label %218, !dbg !2993

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2796, metadata !DIExpression()), !dbg !2994
  %193 = call i32 @nk_vc_is_active() #12, !dbg !2995
  %194 = icmp eq i32 %193, 0, !dbg !2995
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %195, metadata !2297, metadata !DIExpression()) #11, !dbg !3002
  %196 = icmp eq i64 %195, 0, !dbg !3003
  br i1 %196, label %202, label %197, !dbg !3004

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3005
  %199 = inttoptr i64 %198 to i16*, !dbg !3006
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3007
  %201 = icmp eq i16 %200, 0, !dbg !3008
  br i1 %201, label %202, label %203, !dbg !3009

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3009

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3009
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3009
  br i1 %194, label %209, label %207, !dbg !3010

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3011
  br label %211, !dbg !3011

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3013
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %212, metadata !2317, metadata !DIExpression()) #11, !dbg !3018
  %213 = icmp eq i64 %212, 0, !dbg !3019
  br i1 %213, label %218, label %214, !dbg !3020

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3021
  %216 = inttoptr i64 %215 to i16*, !dbg !3022
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3023
  br label %218, !dbg !3024

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !3025
  unreachable, !dbg !3025

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3026
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3029
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3029
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2798, metadata !DIExpression()), !dbg !3030
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3031
  br i1 %223, label %224, label %326, !dbg !3032

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3033
  %226 = icmp eq i64 %225, 0, !dbg !3035
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %227, metadata !2257, metadata !DIExpression()) #11, !dbg !3039
  %228 = icmp eq i64 %227, 0, !dbg !3040
  br i1 %228, label %234, label %229, !dbg !3041

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3042
  %231 = inttoptr i64 %230 to i16*, !dbg !3043
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3044
  %233 = zext i16 %232 to i32, !dbg !3044
  br label %234, !dbg !3045

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3046
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %236, metadata !2273, metadata !DIExpression()) #11, !dbg !3050
  %237 = icmp eq i64 %236, 0, !dbg !3051
  br i1 %237, label %242, label %238, !dbg !3052

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3053
  %240 = inttoptr i64 %239 to i16*, !dbg !3054
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3055
  br label %242, !dbg !3056

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3057

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2799, metadata !DIExpression()), !dbg !3058
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3059, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !3061
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2805, metadata !DIExpression()), !dbg !3058
  %245 = call i32 @nk_vc_is_active() #12, !dbg !3062
  %246 = icmp eq i32 %245, 0, !dbg !3062
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3063
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %248, metadata !2297, metadata !DIExpression()) #11, !dbg !3068
  %249 = icmp eq i64 %248, 0, !dbg !3069
  br i1 %249, label %255, label %250, !dbg !3070

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3071
  %252 = inttoptr i64 %251 to i16*, !dbg !3072
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3073
  %254 = icmp eq i16 %253, 0, !dbg !3074
  br i1 %254, label %255, label %256, !dbg !3063

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3063

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3063
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3063
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3063
  br i1 %246, label %277, label %261, !dbg !3075

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3076

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3076
  %264 = load i64, i64* %263, align 32, !dbg !3076
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3076
  %266 = load i8, i8* %265, align 8, !dbg !3076
  %267 = icmp eq i8 %266, 0, !dbg !3076
  br i1 %267, label %268, label %273, !dbg !3076

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3076
  %270 = load i8, i8* %269, align 64, !dbg !3076
  %271 = icmp eq i8 %270, 0, !dbg !3076
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !3076
  br label %273, !dbg !3076

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !3076
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3076
  br label %293, !dbg !3076

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3077

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3077
  %280 = load i64, i64* %279, align 32, !dbg !3077
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3077
  %282 = load i8, i8* %281, align 8, !dbg !3077
  %283 = icmp eq i8 %282, 0, !dbg !3077
  br i1 %283, label %284, label %289, !dbg !3077

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3077
  %286 = load i8, i8* %285, align 64, !dbg !3077
  %287 = icmp eq i8 %286, 0, !dbg !3077
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !3077
  br label %289, !dbg !3077

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !3077
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3077
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %294, metadata !2317, metadata !DIExpression()) #11, !dbg !3081
  %295 = icmp eq i64 %294, 0, !dbg !3082
  br i1 %295, label %326, label %296, !dbg !3083

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3084
  %298 = inttoptr i64 %297 to i16*, !dbg !3085
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3086
  br label %326, !dbg !3087

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2818, metadata !DIExpression()), !dbg !3088
  %301 = call i32 @nk_vc_is_active() #12, !dbg !3089
  %302 = icmp eq i32 %301, 0, !dbg !3089
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %303, metadata !2297, metadata !DIExpression()) #11, !dbg !3096
  %304 = icmp eq i64 %303, 0, !dbg !3097
  br i1 %304, label %310, label %305, !dbg !3098

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3099
  %307 = inttoptr i64 %306 to i16*, !dbg !3100
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3101
  %309 = icmp eq i16 %308, 0, !dbg !3102
  br i1 %309, label %310, label %311, !dbg !3103

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3103

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3103
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3103
  br i1 %302, label %317, label %315, !dbg !3104

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3105
  br label %319, !dbg !3105

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3107
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %320, metadata !2317, metadata !DIExpression()) #11, !dbg !3112
  %321 = icmp eq i64 %320, 0, !dbg !3113
  br i1 %321, label %326, label %322, !dbg !3114

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3115
  %324 = inttoptr i64 %323 to i16*, !dbg !3116
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3117
  br label %326, !dbg !3118

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3119, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !3121
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3122
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3123
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3124
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !3126
  %331 = icmp slt i32 %330, 0, !dbg !3127
  br i1 %331, label %332, label %434, !dbg !3128

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3129
  %334 = icmp eq i64 %333, 0, !dbg !3131
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %335, metadata !2257, metadata !DIExpression()) #11, !dbg !3135
  %336 = icmp eq i64 %335, 0, !dbg !3136
  br i1 %336, label %342, label %337, !dbg !3137

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3138
  %339 = inttoptr i64 %338 to i16*, !dbg !3139
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3140
  %341 = zext i16 %340 to i32, !dbg !3140
  br label %342, !dbg !3141

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3142
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %344, metadata !2273, metadata !DIExpression()) #11, !dbg !3146
  %345 = icmp eq i64 %344, 0, !dbg !3147
  br i1 %345, label %350, label %346, !dbg !3148

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3149
  %348 = inttoptr i64 %347 to i16*, !dbg !3150
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3151
  br label %350, !dbg !3152

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3153

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2821, metadata !DIExpression()), !dbg !3154
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3155, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !3155
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2827, metadata !DIExpression()), !dbg !3154
  %353 = call i32 @nk_vc_is_active() #12, !dbg !3158
  %354 = icmp eq i32 %353, 0, !dbg !3158
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3159
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %356, metadata !2297, metadata !DIExpression()) #11, !dbg !3164
  %357 = icmp eq i64 %356, 0, !dbg !3165
  br i1 %357, label %363, label %358, !dbg !3166

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3167
  %360 = inttoptr i64 %359 to i16*, !dbg !3168
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3169
  %362 = icmp eq i16 %361, 0, !dbg !3170
  br i1 %362, label %363, label %364, !dbg !3159

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3159

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3159
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3159
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3159
  br i1 %354, label %385, label %369, !dbg !3171

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3172

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3172
  %372 = load i64, i64* %371, align 32, !dbg !3172
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3172
  %374 = load i8, i8* %373, align 8, !dbg !3172
  %375 = icmp eq i8 %374, 0, !dbg !3172
  br i1 %375, label %376, label %381, !dbg !3172

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3172
  %378 = load i8, i8* %377, align 64, !dbg !3172
  %379 = icmp eq i8 %378, 0, !dbg !3172
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !3172
  br label %381, !dbg !3172

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !3172
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3172
  br label %401, !dbg !3172

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3173

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3173
  %388 = load i64, i64* %387, align 32, !dbg !3173
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3173
  %390 = load i8, i8* %389, align 8, !dbg !3173
  %391 = icmp eq i8 %390, 0, !dbg !3173
  br i1 %391, label %392, label %397, !dbg !3173

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3173
  %394 = load i8, i8* %393, align 64, !dbg !3173
  %395 = icmp eq i8 %394, 0, !dbg !3173
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !3173
  br label %397, !dbg !3173

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !3173
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3173
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %402, metadata !2317, metadata !DIExpression()) #11, !dbg !3177
  %403 = icmp eq i64 %402, 0, !dbg !3178
  br i1 %403, label %434, label %404, !dbg !3179

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3180
  %406 = inttoptr i64 %405 to i16*, !dbg !3181
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3182
  br label %434, !dbg !3183

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2840, metadata !DIExpression()), !dbg !3184
  %409 = call i32 @nk_vc_is_active() #12, !dbg !3185
  %410 = icmp eq i32 %409, 0, !dbg !3185
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %411, metadata !2297, metadata !DIExpression()) #11, !dbg !3192
  %412 = icmp eq i64 %411, 0, !dbg !3193
  br i1 %412, label %418, label %413, !dbg !3194

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3195
  %415 = inttoptr i64 %414 to i16*, !dbg !3196
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3197
  %417 = icmp eq i16 %416, 0, !dbg !3198
  br i1 %417, label %418, label %419, !dbg !3199

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3199

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3199
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3199
  br i1 %410, label %425, label %423, !dbg !3200

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3201
  br label %427, !dbg !3201

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3203
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %428, metadata !2317, metadata !DIExpression()) #11, !dbg !3208
  %429 = icmp eq i64 %428, 0, !dbg !3209
  br i1 %429, label %434, label %430, !dbg !3210

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3211
  %432 = inttoptr i64 %431 to i16*, !dbg !3212
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3213
  br label %434, !dbg !3214

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3215
  %436 = load i64, i64* %435, align 8, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3216
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3217
  store i64 %436, i64* %438, align 8, !dbg !3217
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3218
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3219
  store i64 %436, i64* %440, align 8, !dbg !3219
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3220
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2820, metadata !DIExpression()), !dbg !3125
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3221
  store i32 1, i32* %442, align 8, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2820, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1850, metadata !DIExpression()) #11, !dbg !3223
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3225
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3225
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3226
  %446 = load i8*, i8** %445, align 8, !dbg !3226
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3227
  %448 = load i8**, i8*** %447, align 8, !dbg !3227
  call void %444(i8* %446, i8** %448) #12, !dbg !3228
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3230
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3230
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3233, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8** %1, metadata !3234, metadata !DIExpression()), !dbg !3236
  br label %3, !dbg !3237

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3238
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3248
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3249
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3249
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3250
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3250
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3251, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !3251
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !3253
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3254
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3255

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3256
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3261
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3262
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3262
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1495, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1516, metadata !DIExpression()) #11, !dbg !3266
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3268
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3268
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3269
  br i1 %20, label %33, label %21, !dbg !3270

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !3271
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3271
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1497, metadata !DIExpression()) #11, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1496, metadata !DIExpression()) #11, !dbg !3265
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3272
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1528, metadata !DIExpression()) #11, !dbg !3273
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3275
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3275
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3276
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1535, metadata !DIExpression()) #11, !dbg !3277
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1540, metadata !DIExpression()) #11, !dbg !3279
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3280
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3281
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3282
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3283
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !3284
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3286
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3286
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3287
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3287
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1496, metadata !DIExpression()) #11, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !3245, metadata !DIExpression()) #11, !dbg !3288
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3289
  br i1 %32, label %33, label %54, !dbg !3291

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3292
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3298
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3299
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3299
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3300
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3300
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3301
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3305
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !3306
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !3306
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !3307
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !3307
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !3308
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !3309

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3310
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !3315
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !3316
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !3316
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !3317
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3245, metadata !DIExpression()) #11, !dbg !3288
  br label %54, !dbg !3318

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !3319
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3245, metadata !DIExpression()) #11, !dbg !3288
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !3320
  br label %nk_fiber_yield.exit, !dbg !3321

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !3319
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3322
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3327
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3328
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3328
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !3330, metadata !DIExpression()), !dbg !3334
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !3336
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !3333, metadata !DIExpression()), !dbg !3337
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !3338
  br i1 %65, label %66, label %70, !dbg !3339

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !3340
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !3340
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !3341
  br i1 %69, label %71, label %70, !dbg !3342

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !3343, !llvm.loop !3344

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !3346
  br label %70, !dbg !3348
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !3354
  %6 = icmp eq i64 %3, 0, !dbg !3355
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !3356
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !3354
  %9 = icmp eq i8* %8, null, !dbg !3358
  br i1 %9, label %104, label %10, !dbg !3359

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !3360
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3361
  %13 = bitcast i8* %12 to i32*, !dbg !3361
  store i32 0, i32* %13, align 4, !dbg !3362
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3363
  %15 = bitcast i8* %14 to i64*, !dbg !3363
  store i64 %7, i64* %15, align 8, !dbg !3364
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !3365
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3366
  %18 = bitcast i8* %17 to i8**, !dbg !3366
  store i8* %16, i8** %18, align 8, !dbg !3367
  %19 = icmp eq i8* %16, null, !dbg !3368
  br i1 %19, label %20, label %21, !dbg !3369

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !3370
  br label %104, !dbg !3371

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3369
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3372
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3372
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3373
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3374
  %26 = bitcast i8* %25 to i8**, !dbg !3374
  store i8* %1, i8** %26, align 8, !dbg !3375
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3376
  %28 = bitcast i8* %27 to i8***, !dbg !3376
  store i8** %2, i8*** %28, align 8, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !3378
  %29 = load i64, i64* %15, align 8, !dbg !3380
  %30 = bitcast i8* %8 to i64*, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !3384
  %31 = add i64 %22, -8, !dbg !3385
  %32 = add i64 %31, %29, !dbg !3386
  store i64 %32, i64* %30, align 8, !dbg !3386
  %33 = inttoptr i64 %32 to i64*, !dbg !3387
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3391
  %34 = load i64, i64* %30, align 8, !dbg !3392
  %35 = add i64 %34, -8, !dbg !3392
  store i64 %35, i64* %30, align 8, !dbg !3392
  %36 = inttoptr i64 %35 to i64*, !dbg !3393
  store i64 0, i64* %36, align 8, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3397
  %37 = load i64, i64* %30, align 8, !dbg !3398
  %38 = add i64 %37, -8, !dbg !3398
  store i64 %38, i64* %30, align 8, !dbg !3398
  %39 = inttoptr i64 %38 to i64*, !dbg !3399
  store i64 0, i64* %39, align 8, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3403
  %40 = load i64, i64* %30, align 8, !dbg !3404
  %41 = add i64 %40, -8, !dbg !3404
  store i64 %41, i64* %30, align 8, !dbg !3404
  %42 = inttoptr i64 %41 to i64*, !dbg !3405
  store i64 0, i64* %42, align 8, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3409
  %43 = load i64, i64* %30, align 8, !dbg !3410
  %44 = add i64 %43, -8, !dbg !3410
  store i64 %44, i64* %30, align 8, !dbg !3410
  %45 = inttoptr i64 %44 to i64*, !dbg !3411
  store i64 0, i64* %45, align 8, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3415
  %46 = load i64, i64* %30, align 8, !dbg !3416
  %47 = add i64 %46, -8, !dbg !3416
  store i64 %47, i64* %30, align 8, !dbg !3416
  %48 = inttoptr i64 %47 to i64*, !dbg !3417
  store i64 0, i64* %48, align 8, !dbg !3418
  %49 = ptrtoint i8* %8 to i64, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !3422
  %50 = load i64, i64* %30, align 8, !dbg !3423
  %51 = add i64 %50, -8, !dbg !3423
  store i64 %51, i64* %30, align 8, !dbg !3423
  %52 = inttoptr i64 %51 to i64*, !dbg !3424
  store i64 %49, i64* %52, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3428
  %53 = load i64, i64* %30, align 8, !dbg !3429
  %54 = add i64 %53, -8, !dbg !3429
  store i64 %54, i64* %30, align 8, !dbg !3429
  %55 = inttoptr i64 %54 to i64*, !dbg !3430
  store i64 0, i64* %55, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3434
  %56 = load i64, i64* %30, align 8, !dbg !3435
  %57 = add i64 %56, -8, !dbg !3435
  store i64 %57, i64* %30, align 8, !dbg !3435
  %58 = inttoptr i64 %57 to i64*, !dbg !3436
  store i64 0, i64* %58, align 8, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3440
  %59 = load i64, i64* %30, align 8, !dbg !3441
  %60 = add i64 %59, -8, !dbg !3441
  store i64 %60, i64* %30, align 8, !dbg !3441
  %61 = inttoptr i64 %60 to i64*, !dbg !3442
  store i64 0, i64* %61, align 8, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3446
  %62 = load i64, i64* %30, align 8, !dbg !3447
  %63 = add i64 %62, -8, !dbg !3447
  store i64 %63, i64* %30, align 8, !dbg !3447
  %64 = inttoptr i64 %63 to i64*, !dbg !3448
  store i64 0, i64* %64, align 8, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3452
  %65 = load i64, i64* %30, align 8, !dbg !3453
  %66 = add i64 %65, -8, !dbg !3453
  store i64 %66, i64* %30, align 8, !dbg !3453
  %67 = inttoptr i64 %66 to i64*, !dbg !3454
  store i64 0, i64* %67, align 8, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3458
  %68 = load i64, i64* %30, align 8, !dbg !3459
  %69 = add i64 %68, -8, !dbg !3459
  store i64 %69, i64* %30, align 8, !dbg !3459
  %70 = inttoptr i64 %69 to i64*, !dbg !3460
  store i64 0, i64* %70, align 8, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3464
  %71 = load i64, i64* %30, align 8, !dbg !3465
  %72 = add i64 %71, -8, !dbg !3465
  store i64 %72, i64* %30, align 8, !dbg !3465
  %73 = inttoptr i64 %72 to i64*, !dbg !3466
  store i64 0, i64* %73, align 8, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3470
  %74 = load i64, i64* %30, align 8, !dbg !3471
  %75 = add i64 %74, -8, !dbg !3471
  store i64 %75, i64* %30, align 8, !dbg !3471
  %76 = inttoptr i64 %75 to i64*, !dbg !3472
  store i64 0, i64* %76, align 8, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3476
  %77 = load i64, i64* %30, align 8, !dbg !3477
  %78 = add i64 %77, -8, !dbg !3477
  store i64 %78, i64* %30, align 8, !dbg !3477
  %79 = inttoptr i64 %78 to i64*, !dbg !3478
  store i64 0, i64* %79, align 8, !dbg !3479
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3480
  br i1 %80, label %83, label %81, !dbg !3481

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3482
  store i8* %8, i8** %82, align 8, !dbg !3482
  br label %83, !dbg !3483

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3484, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !3486
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3487
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3487
  %87 = load i64, i64* %86, align 8, !dbg !3487
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3488
  %89 = bitcast i8* %88 to i64*, !dbg !3489
  store i64 %87, i64* %89, align 8, !dbg !3489
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !3491
  %91 = bitcast i8* %90 to i8**, !dbg !3493
  store i8* %90, i8** %91, align 8, !dbg !3493
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3494
  %93 = bitcast i8* %92 to i8**, !dbg !3495
  store i8* %90, i8** %93, align 8, !dbg !3495
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3496
  %95 = bitcast i8* %94 to i32*, !dbg !3496
  store i32 0, i32* %95, align 8, !dbg !3497
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !3499
  %97 = bitcast i8* %96 to i8**, !dbg !3501
  store i8* %96, i8** %97, align 8, !dbg !3501
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3502
  %99 = bitcast i8* %98 to i8**, !dbg !3503
  store i8* %96, i8** %99, align 8, !dbg !3503
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !3505
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

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !3243 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3513
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3517
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3518
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3518
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3519
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3519
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3520, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !3520
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !3522
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3523
  br i1 %8, label %9, label %54, !dbg !3524

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3525
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3530
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3531
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3531
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3532
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1495, metadata !DIExpression()) #11, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1516, metadata !DIExpression()) #11, !dbg !3535
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3537
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3537
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3538
  br i1 %17, label %30, label %18, !dbg !3539

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !3540
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3540
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1497, metadata !DIExpression()) #11, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1496, metadata !DIExpression()) #11, !dbg !3534
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1528, metadata !DIExpression()) #11, !dbg !3542
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3544
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3544
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1535, metadata !DIExpression()) #11, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1540, metadata !DIExpression()) #11, !dbg !3548
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3549
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3550
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3551
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !3553
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3555
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3555
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3556
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1496, metadata !DIExpression()) #11, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3245, metadata !DIExpression()), !dbg !3557
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3558
  br i1 %29, label %30, label %51, !dbg !3559

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3560
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3564
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3565
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3565
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3566
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3566
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3567
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3571
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3572
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3572
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3573
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3573
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3574
  br i1 %43, label %54, label %44, !dbg !3575

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3576
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3580
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3581
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3581
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3582
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3582
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3245, metadata !DIExpression()), !dbg !3557
  br label %51, !dbg !3583

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3584
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3245, metadata !DIExpression()), !dbg !3557
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !3585
  br label %54, !dbg !3586

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3584
  ret i32 %55, !dbg !3587
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3588 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3631
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3633
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3590, metadata !DIExpression()), !dbg !3634
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3635
  %5 = icmp eq i64 %4, 0, !dbg !3637
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %6, metadata !2257, metadata !DIExpression()) #11, !dbg !3641
  %7 = icmp eq i64 %6, 0, !dbg !3642
  br i1 %7, label %13, label %8, !dbg !3643

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3644
  %10 = inttoptr i64 %9 to i16*, !dbg !3645
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3646
  %12 = zext i16 %11 to i32, !dbg !3646
  br label %13, !dbg !3647

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3648
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3649
  call void @llvm.dbg.value(metadata i64 %15, metadata !2273, metadata !DIExpression()) #11, !dbg !3652
  %16 = icmp eq i64 %15, 0, !dbg !3653
  br i1 %16, label %21, label %17, !dbg !3654

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3655
  %19 = inttoptr i64 %18 to i16*, !dbg !3656
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3657
  br label %21, !dbg !3658

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3659

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3591, metadata !DIExpression()), !dbg !3660
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3661, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !3661
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !3663
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3595, metadata !DIExpression()), !dbg !3660
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !3664
  %25 = icmp eq i32 %24, 0, !dbg !3664
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3665
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %27, metadata !2297, metadata !DIExpression()) #11, !dbg !3670
  %28 = icmp eq i64 %27, 0, !dbg !3671
  br i1 %28, label %34, label %29, !dbg !3672

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3673
  %31 = inttoptr i64 %30 to i16*, !dbg !3674
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3675
  %33 = icmp eq i16 %32, 0, !dbg !3676
  br i1 %33, label %34, label %35, !dbg !3665

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3665

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3665
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3665
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3665
  br i1 %25, label %58, label %40, !dbg !3677

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3678

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3678
  %43 = load i64, i64* %42, align 32, !dbg !3678
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3678
  %45 = load i8, i8* %44, align 8, !dbg !3678
  %46 = icmp eq i8 %45, 0, !dbg !3678
  br i1 %46, label %47, label %52, !dbg !3678

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3678
  %49 = load i8, i8* %48, align 64, !dbg !3678
  %50 = icmp eq i8 %49, 0, !dbg !3678
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !3678
  br label %52, !dbg !3678

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !3678
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3678
  %56 = load i32, i32* %55, align 8, !dbg !3678
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !3678
  br label %76, !dbg !3678

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3679

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3679
  %61 = load i64, i64* %60, align 32, !dbg !3679
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3679
  %63 = load i8, i8* %62, align 8, !dbg !3679
  %64 = icmp eq i8 %63, 0, !dbg !3679
  br i1 %64, label %65, label %70, !dbg !3679

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3679
  %67 = load i8, i8* %66, align 64, !dbg !3679
  %68 = icmp eq i8 %67, 0, !dbg !3679
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !3679
  br label %70, !dbg !3679

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !3679
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3679
  %74 = load i32, i32* %73, align 8, !dbg !3679
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !3679
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %77, metadata !2317, metadata !DIExpression()) #11, !dbg !3683
  %78 = icmp eq i64 %77, 0, !dbg !3684
  br i1 %78, label %111, label %79, !dbg !3685

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3686
  %81 = inttoptr i64 %80 to i16*, !dbg !3687
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3688
  br label %111, !dbg !3689

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3608, metadata !DIExpression()), !dbg !3690
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3691
  %85 = icmp eq i32 %84, 0, !dbg !3691
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %86, metadata !2297, metadata !DIExpression()) #11, !dbg !3698
  %87 = icmp eq i64 %86, 0, !dbg !3699
  br i1 %87, label %93, label %88, !dbg !3700

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3701
  %90 = inttoptr i64 %89 to i16*, !dbg !3702
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3703
  %92 = icmp eq i16 %91, 0, !dbg !3704
  br i1 %92, label %93, label %94, !dbg !3705

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3705

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3705
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3705
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3705
  %99 = load i32, i32* %98, align 8, !dbg !3705
  br i1 %85, label %102, label %100, !dbg !3706

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3707
  br label %104, !dbg !3707

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3709
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %105, metadata !2317, metadata !DIExpression()) #11, !dbg !3714
  %106 = icmp eq i64 %105, 0, !dbg !3715
  br i1 %106, label %111, label %107, !dbg !3716

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3717
  %109 = inttoptr i64 %108 to i16*, !dbg !3718
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3719
  br label %111, !dbg !3720

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3721
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3721
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3752, !srcloc !3753
  call void @llvm.dbg.value(metadata i32 %113, metadata !3729, metadata !DIExpression()) #11, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %113, metadata !3726, metadata !DIExpression()) #11, !dbg !3754
  call void @llvm.dbg.value(metadata i8** %1, metadata !3724, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3755
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !3756
  %115 = icmp eq i32 %114, 0, !dbg !3756
  br i1 %115, label %321, label %116, !dbg !3757

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3758
  %118 = icmp eq i64 %117, 0, !dbg !3760
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %119, metadata !2257, metadata !DIExpression()) #11, !dbg !3764
  %120 = icmp eq i64 %119, 0, !dbg !3765
  br i1 %120, label %126, label %121, !dbg !3766

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3767
  %123 = inttoptr i64 %122 to i16*, !dbg !3768
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3769
  %125 = zext i16 %124 to i32, !dbg !3769
  br label %126, !dbg !3770

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3771
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %128, metadata !2273, metadata !DIExpression()) #11, !dbg !3775
  %129 = icmp eq i64 %128, 0, !dbg !3776
  br i1 %129, label %134, label %130, !dbg !3777

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3778
  %132 = inttoptr i64 %131 to i16*, !dbg !3779
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3780
  br label %134, !dbg !3781

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3782

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3731, metadata !DIExpression()) #11, !dbg !3783
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3784, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3784
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3786
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3736, metadata !DIExpression()) #11, !dbg !3783
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3787
  %138 = icmp eq i32 %137, 0, !dbg !3787
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3788
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %140, metadata !2297, metadata !DIExpression()) #11, !dbg !3793
  %141 = icmp eq i64 %140, 0, !dbg !3794
  br i1 %141, label %147, label %142, !dbg !3795

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3796
  %144 = inttoptr i64 %143 to i16*, !dbg !3797
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3798
  %146 = icmp eq i16 %145, 0, !dbg !3799
  br i1 %146, label %147, label %148, !dbg !3788

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3788

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3788
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3788
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3788
  br i1 %138, label %169, label %153, !dbg !3800

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3801

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3801
  %156 = load i64, i64* %155, align 32, !dbg !3801
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3801
  %158 = load i8, i8* %157, align 8, !dbg !3801
  %159 = icmp eq i8 %158, 0, !dbg !3801
  br i1 %159, label %160, label %165, !dbg !3801

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3801
  %162 = load i8, i8* %161, align 64, !dbg !3801
  %163 = icmp eq i8 %162, 0, !dbg !3801
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3801
  br label %165, !dbg !3801

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3801
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3801
  br label %185, !dbg !3801

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3802

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3802
  %172 = load i64, i64* %171, align 32, !dbg !3802
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3802
  %174 = load i8, i8* %173, align 8, !dbg !3802
  %175 = icmp eq i8 %174, 0, !dbg !3802
  br i1 %175, label %176, label %181, !dbg !3802

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3802
  %178 = load i8, i8* %177, align 64, !dbg !3802
  %179 = icmp eq i8 %178, 0, !dbg !3802
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3802
  br label %181, !dbg !3802

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3802
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3802
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %186, metadata !2317, metadata !DIExpression()) #11, !dbg !3806
  %187 = icmp eq i64 %186, 0, !dbg !3807
  br i1 %187, label %218, label %188, !dbg !3808

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3809
  %190 = inttoptr i64 %189 to i16*, !dbg !3810
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3811
  br label %218, !dbg !3812

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3749, metadata !DIExpression()) #11, !dbg !3813
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3814
  %194 = icmp eq i32 %193, 0, !dbg !3814
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %195, metadata !2297, metadata !DIExpression()) #11, !dbg !3821
  %196 = icmp eq i64 %195, 0, !dbg !3822
  br i1 %196, label %202, label %197, !dbg !3823

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3824
  %199 = inttoptr i64 %198 to i16*, !dbg !3825
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3826
  %201 = icmp eq i16 %200, 0, !dbg !3827
  br i1 %201, label %202, label %203, !dbg !3828

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3828

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3828
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3828
  br i1 %194, label %209, label %207, !dbg !3829

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3830
  br label %211, !dbg !3830

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3832
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %212, metadata !2317, metadata !DIExpression()) #11, !dbg !3837
  %213 = icmp eq i64 %212, 0, !dbg !3838
  br i1 %213, label %218, label %214, !dbg !3839

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3840
  %216 = inttoptr i64 %215 to i16*, !dbg !3841
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3842
  br label %218, !dbg !3843

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3844
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3845
  %220 = icmp eq i64 %219, 0, !dbg !3847
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %221, metadata !2257, metadata !DIExpression()) #11, !dbg !3851
  %222 = icmp eq i64 %221, 0, !dbg !3852
  br i1 %222, label %228, label %223, !dbg !3853

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3854
  %225 = inttoptr i64 %224 to i16*, !dbg !3855
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3856
  %227 = zext i16 %226 to i32, !dbg !3856
  br label %228, !dbg !3857

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3858
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %230, metadata !2273, metadata !DIExpression()) #11, !dbg !3862
  %231 = icmp eq i64 %230, 0, !dbg !3863
  br i1 %231, label %236, label %232, !dbg !3864

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3865
  %234 = inttoptr i64 %233 to i16*, !dbg !3866
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3867
  br label %236, !dbg !3868

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3869

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3610, metadata !DIExpression()), !dbg !3870
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3871, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !3871
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !3873
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3616, metadata !DIExpression()), !dbg !3870
  %239 = call i32 @nk_vc_is_active() #12, !dbg !3874
  %240 = icmp eq i32 %239, 0, !dbg !3874
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3875
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %242, metadata !2297, metadata !DIExpression()) #11, !dbg !3880
  %243 = icmp eq i64 %242, 0, !dbg !3881
  br i1 %243, label %249, label %244, !dbg !3882

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3883
  %246 = inttoptr i64 %245 to i16*, !dbg !3884
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3885
  %248 = icmp eq i16 %247, 0, !dbg !3886
  br i1 %248, label %249, label %250, !dbg !3875

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3875

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3875
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3875
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3875
  br i1 %240, label %271, label %255, !dbg !3887

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3888

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3888
  %258 = load i64, i64* %257, align 32, !dbg !3888
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3888
  %260 = load i8, i8* %259, align 8, !dbg !3888
  %261 = icmp eq i8 %260, 0, !dbg !3888
  br i1 %261, label %262, label %267, !dbg !3888

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3888
  %264 = load i8, i8* %263, align 64, !dbg !3888
  %265 = icmp eq i8 %264, 0, !dbg !3888
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3888
  br label %267, !dbg !3888

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3888
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3888
  br label %287, !dbg !3888

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3889

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3889
  %274 = load i64, i64* %273, align 32, !dbg !3889
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3889
  %276 = load i8, i8* %275, align 8, !dbg !3889
  %277 = icmp eq i8 %276, 0, !dbg !3889
  br i1 %277, label %278, label %283, !dbg !3889

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3889
  %280 = load i8, i8* %279, align 64, !dbg !3889
  %281 = icmp eq i8 %280, 0, !dbg !3889
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3889
  br label %283, !dbg !3889

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3889
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3889
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %288, metadata !2317, metadata !DIExpression()) #11, !dbg !3893
  %289 = icmp eq i64 %288, 0, !dbg !3894
  br i1 %289, label %320, label %290, !dbg !3895

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3896
  %292 = inttoptr i64 %291 to i16*, !dbg !3897
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3898
  br label %320, !dbg !3899

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3629, metadata !DIExpression()), !dbg !3900
  %295 = call i32 @nk_vc_is_active() #12, !dbg !3901
  %296 = icmp eq i32 %295, 0, !dbg !3901
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %297, metadata !2297, metadata !DIExpression()) #11, !dbg !3908
  %298 = icmp eq i64 %297, 0, !dbg !3909
  br i1 %298, label %304, label %299, !dbg !3910

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3911
  %301 = inttoptr i64 %300 to i16*, !dbg !3912
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3913
  %303 = icmp eq i16 %302, 0, !dbg !3914
  br i1 %303, label %304, label %305, !dbg !3915

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3915

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3915
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3915
  br i1 %296, label %311, label %309, !dbg !3916

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3917
  br label %313, !dbg !3917

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3919
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %314, metadata !2317, metadata !DIExpression()) #11, !dbg !3924
  %315 = icmp eq i64 %314, 0, !dbg !3925
  br i1 %315, label %320, label %316, !dbg !3926

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3927
  %318 = inttoptr i64 %317 to i16*, !dbg !3928
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3929
  br label %320, !dbg !3930

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !3931
  unreachable, !dbg !3931

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3844
  ret void, !dbg !3932
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !3938
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !3939
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3940
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !3941
  ret i32 0, !dbg !3942
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !3943 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !3944
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3945
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3950
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3951
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3951
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !3952
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !3952
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3953, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !3953
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !3955
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !3956
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !3957

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3958
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !3963
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !3964
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !3964
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !3965
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1495, metadata !DIExpression()) #11, !dbg !3966
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3967
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1516, metadata !DIExpression()) #11, !dbg !3968
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !3970
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !3970
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !3971
  br i1 %18, label %31, label %19, !dbg !3972

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !3973
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !3973
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1497, metadata !DIExpression()) #11, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1496, metadata !DIExpression()) #11, !dbg !3967
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !3974
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1528, metadata !DIExpression()) #11, !dbg !3975
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !3977
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !3977
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1535, metadata !DIExpression()) #11, !dbg !3979
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1540, metadata !DIExpression()) #11, !dbg !3981
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !3982
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3983
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !3984
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !3985
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !3986
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3988
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !3988
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !3989
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !3989
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1496, metadata !DIExpression()) #11, !dbg !3967
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !3245, metadata !DIExpression()) #11, !dbg !3990
  %30 = icmp eq %struct.list_head** %20, null, !dbg !3991
  br i1 %30, label %31, label %52, !dbg !3992

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3993
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !3997
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !3998
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !3998
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !3999
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !3999
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4000
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4004
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4005
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4005
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4006
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4006
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4007
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4008

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4009
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4013
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4014
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4014
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4015
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4015
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !3245, metadata !DIExpression()) #11, !dbg !3990
  br label %52, !dbg !4016

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4017
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3245, metadata !DIExpression()) #11, !dbg !3990
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !4018
  br label %nk_fiber_yield.exit, !dbg !4019

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4017
  ret i32 %55, !dbg !4020
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4021 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4023, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2139, metadata !DIExpression()) #11, !dbg !4028
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !4030, !srcloc !2160
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2143, metadata !DIExpression()) #11, !dbg !4030
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2141, metadata !DIExpression()) #11, !dbg !4031
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2140, metadata !DIExpression()) #11, !dbg !4032
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4033
  %4 = load i32, i32* %3, align 8, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %4, metadata !2145, metadata !DIExpression()) #11, !dbg !4034
  call void @llvm.dbg.value(metadata i32 0, metadata !2148, metadata !DIExpression()) #11, !dbg !4035
  %5 = icmp sgt i32 %4, 0, !dbg !4036
  br i1 %5, label %6, label %30, !dbg !4037

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4038
  br label %8, !dbg !4038

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2148, metadata !DIExpression()) #11, !dbg !4035
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4038
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4038
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4039
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4039
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4040
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2146, metadata !DIExpression()) #11, !dbg !4041
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4042
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2150, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4042
  call void @llvm.dbg.value(metadata i8** %15, metadata !2147, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !4043
  %16 = load i8*, i8** %15, align 8, !dbg !4044
  br label %17, !dbg !4045

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4044
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4046
  %20 = bitcast i8* %18 to i8**, !dbg !4046
  %21 = load i8*, i8** %20, align 8, !dbg !4046
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !4046
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4046
  br i1 %22, label %27, label %23, !dbg !4045

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4044
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4044
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2147, metadata !DIExpression()) #11, !dbg !4043
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4047
  br i1 %26, label %75, label %17, !dbg !4048, !llvm.loop !2181

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4049
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !4035
  %29 = icmp slt i64 %28, %7, !dbg !4036
  br i1 %29, label %8, label %30, !dbg !4037, !llvm.loop !2184

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4050
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4055
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4056
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4056
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4057
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1495, metadata !DIExpression()) #11, !dbg !4058
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4059
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1516, metadata !DIExpression()) #11, !dbg !4060
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4062
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4062
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4063
  br i1 %38, label %51, label %39, !dbg !4064

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !4065
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4065
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1497, metadata !DIExpression()) #11, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1496, metadata !DIExpression()) #11, !dbg !4059
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1528, metadata !DIExpression()) #11, !dbg !4067
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4069
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4069
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4070
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1535, metadata !DIExpression()) #11, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1540, metadata !DIExpression()) #11, !dbg !4073
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4074
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4075
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4076
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4077
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !4078
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4080
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4080
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4081
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4081
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1496, metadata !DIExpression()) #11, !dbg !4059
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4024, metadata !DIExpression()), !dbg !4082
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4083
  br i1 %50, label %51, label %72, !dbg !4085

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4086
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4092
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4093
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4093
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4094
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4094
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4095
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4099
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4100
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4100
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4101
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4101
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4102
  br i1 %64, label %84, label %65, !dbg !4103

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4104
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4109
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4110
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4110
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4111
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4111
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4024, metadata !DIExpression()), !dbg !4082
  br label %72, !dbg !4112

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4113
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4024, metadata !DIExpression()), !dbg !4082
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !4114
  br label %84, !dbg !4115

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1528, metadata !DIExpression()) #11, !dbg !4117
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4119
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4119
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4120
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4120
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1535, metadata !DIExpression()) #11, !dbg !4121
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1540, metadata !DIExpression()) #11, !dbg !4123
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4124
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4125
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4126
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4127
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !4128
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4130
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4131
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4132
  br label %84, !dbg !4133

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4134
  ret i32 %85, !dbg !4135
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4136 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i8* %1, metadata !4144, metadata !DIExpression()), !dbg !4146
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !4147
  %4 = icmp eq i8 %3, 0, !dbg !4147
  br i1 %4, label %60, label %5, !dbg !4149

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4150
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4156
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4157
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4157
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4158
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4158
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4159, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !4159
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !4161
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4162
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4163

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4164
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4169
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4170
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4170
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4171
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1495, metadata !DIExpression()) #11, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4173
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1516, metadata !DIExpression()) #11, !dbg !4174
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4176
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4176
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4177
  br i1 %22, label %35, label %23, !dbg !4178

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !4179
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4179
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1497, metadata !DIExpression()) #11, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1496, metadata !DIExpression()) #11, !dbg !4173
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4180
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1528, metadata !DIExpression()) #11, !dbg !4181
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4183
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4183
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1535, metadata !DIExpression()) #11, !dbg !4185
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1540, metadata !DIExpression()) #11, !dbg !4187
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4188
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4189
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4190
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4191
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !4192
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4194
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4194
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4195
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1496, metadata !DIExpression()) #11, !dbg !4173
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !3245, metadata !DIExpression()) #11, !dbg !4196
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4197
  br i1 %34, label %35, label %56, !dbg !4198

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4199
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4203
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4204
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4204
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4205
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4205
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4206
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4210
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4211
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4211
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4212
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4212
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4213
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4214

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4215
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4219
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4220
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4220
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4221
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4221
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3245, metadata !DIExpression()) #11, !dbg !4196
  br label %56, !dbg !4222

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4223
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !3245, metadata !DIExpression()) #11, !dbg !4196
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !4224
  br label %nk_fiber_yield.exit, !dbg !4225

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4223
  br label %60, !dbg !4226

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4227
  ret i32 %61, !dbg !4228
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4229 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4233, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i8* %2, metadata !4235, metadata !DIExpression()), !dbg !4238
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !4239
  %5 = icmp eq i8 %4, 0, !dbg !4239
  br i1 %5, label %8, label %6, !dbg !4241

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4242
  br label %8, !dbg !4244

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4245
  ret i32 %9, !dbg !4246
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4247 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4266
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4270
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4271
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4271
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4272
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4272
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4249, metadata !DIExpression()), !dbg !4273
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4274, !srcloc !4275
  call void @llvm.dbg.value(metadata i64 %8, metadata !4256, metadata !DIExpression()), !dbg !4276
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4277
  call void @llvm.dbg.value(metadata i8* %9, metadata !4257, metadata !DIExpression()), !dbg !4278
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4279
  call void @llvm.dbg.value(metadata i8* %10, metadata !4258, metadata !DIExpression()), !dbg !4280
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4281
  call void @llvm.dbg.value(metadata i8* %11, metadata !4259, metadata !DIExpression()), !dbg !4282
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4283
  call void @llvm.dbg.value(metadata i8* %12, metadata !4260, metadata !DIExpression()), !dbg !4284
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4285
  %14 = load i8*, i8** %13, align 8, !dbg !4285
  %15 = icmp ugt i8* %11, %14, !dbg !4287
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4288
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4289
  %19 = icmp ult i8* %11, %18, !dbg !4290
  %20 = and i1 %15, %19, !dbg !4291
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %21, metadata !4259, metadata !DIExpression()), !dbg !4282
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4292
  call void @llvm.dbg.value(metadata i8* %22, metadata !4261, metadata !DIExpression()), !dbg !4293
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4294
  %24 = ptrtoint i8* %23 to i64, !dbg !4295
  %25 = ptrtoint i8* %12 to i64, !dbg !4295
  %26 = sub i64 %24, %25, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %26, metadata !4250, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4296
  %27 = ptrtoint i8* %10 to i64, !dbg !4297
  call void @llvm.dbg.value(metadata i64 undef, metadata !4252, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 72, metadata !4253, metadata !DIExpression()), !dbg !4299
  %28 = bitcast i8* %22 to i64*, !dbg !4300
  %29 = load i64, i64* %28, align 8, !dbg !4300
  %30 = sub i64 %29, %25, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %30, metadata !4254, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %17, metadata !4251, metadata !DIExpression()), !dbg !4303
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4304
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4304
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4262, metadata !DIExpression(DW_OP_deref)), !dbg !4305
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !4306
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4307
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4262, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !4310
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4311
  %35 = load i64, i64* %34, align 8, !dbg !4312
  %36 = add i64 %35, -8, !dbg !4312
  store i64 %36, i64* %34, align 8, !dbg !4312
  %37 = inttoptr i64 %36 to i64*, !dbg !4313
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4314
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4315
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4262, metadata !DIExpression()), !dbg !4305
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4316
  %40 = load i8*, i8** %39, align 8, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %40, metadata !4255, metadata !DIExpression()), !dbg !4317
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4318
  %42 = sub i64 -16, %26, !dbg !4319
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4319
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !4320
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4321
  %46 = ptrtoint i8* %45 to i64, !dbg !4322
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4323
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4262, metadata !DIExpression()), !dbg !4305
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4324
  store i64 %46, i64* %48, align 8, !dbg !4325
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4326
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4262, metadata !DIExpression()), !dbg !4305
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4327
  %51 = load i64, i64* %50, align 8, !dbg !4327
  %52 = add i64 %51, 64, !dbg !4328
  %53 = inttoptr i64 %52 to i8**, !dbg !4329
  call void @llvm.dbg.value(metadata i8** %53, metadata !4263, metadata !DIExpression()), !dbg !4330
  %54 = add i64 %30, %51, !dbg !4331
  %55 = inttoptr i64 %54 to i8*, !dbg !4332
  store i8* %55, i8** %53, align 8, !dbg !4333
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4334
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4262, metadata !DIExpression()), !dbg !4305
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4335
  %58 = load i64, i64* %57, align 8, !dbg !4335
  %59 = sub i64 8, %25, !dbg !4297
  %60 = add i64 %59, %27, !dbg !4336
  %61 = add i64 %60, %58, !dbg !4337
  %62 = inttoptr i64 %61 to i8**, !dbg !4338
  call void @llvm.dbg.value(metadata i8** %62, metadata !4264, metadata !DIExpression()), !dbg !4339
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4340
  call void @llvm.dbg.value(metadata i8** %63, metadata !4265, metadata !DIExpression()), !dbg !4341
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4342
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4342
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4343
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4262, metadata !DIExpression()), !dbg !4305
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4344
  %67 = load i64, i64* %66, align 8, !dbg !4344
  %68 = add i64 %67, 112, !dbg !4345
  %69 = inttoptr i64 %68 to i64*, !dbg !4346
  store i64 0, i64* %69, align 8, !dbg !4347
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4348
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4262, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1600, metadata !DIExpression()) #11, !dbg !4349
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()) #11, !dbg !4351
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4352
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4356
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1606, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !4357
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4358
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4358
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4358
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4358
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1606, metadata !DIExpression()) #11, !dbg !4357
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4359
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4363
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4364
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4364
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4365
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1607, metadata !DIExpression()) #11, !dbg !4366
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4367
  store i32 1, i32* %82, align 4, !dbg !4368
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4369
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1671, metadata !DIExpression()) #11, !dbg !4370
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1674, metadata !DIExpression()) #11, !dbg !4372
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4373
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4373
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1679, metadata !DIExpression()) #11, !dbg !4374
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1684, metadata !DIExpression()) #11, !dbg !4376
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1685, metadata !DIExpression()) #11, !dbg !4377
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4378
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4379
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4380
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4381
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4382
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4383
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4384
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4385
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4385
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4386
  br i1 %91, label %94, label %92, !dbg !4387

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !4388
  br label %94, !dbg !4389

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4390
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4262, metadata !DIExpression()), !dbg !4305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4391
  ret %struct.nk_fiber* %95, !dbg !4392
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4393 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4395, metadata !DIExpression()), !dbg !4398
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4399
  br i1 %2, label %75, label %3, !dbg !4401

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4402
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4406
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4407
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4407
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4408
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4408
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4396, metadata !DIExpression()), !dbg !4409
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4397, metadata !DIExpression()), !dbg !4411
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4412
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1671, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1674, metadata !DIExpression()), !dbg !4415
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4416
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4416
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1679, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1684, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1685, metadata !DIExpression()), !dbg !4420
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4421
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4422
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4423
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4424
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4425
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4426
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4427
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4428
  %18 = load i32, i32* %17, align 8, !dbg !4429
  %19 = add i32 %18, 1, !dbg !4429
  store i32 %19, i32* %17, align 8, !dbg !4429
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4430
  store i32 3, i32* %20, align 4, !dbg !4431
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4432
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !4437
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !4438
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !4438
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !4439
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !4439
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4440, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !4440
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !4442
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !4443
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !4444

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4445
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !4450
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !4451
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !4451
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !4452
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1495, metadata !DIExpression()) #11, !dbg !4453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4454
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1516, metadata !DIExpression()) #11, !dbg !4455
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !4457
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !4457
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !4458
  br i1 %37, label %50, label %38, !dbg !4459

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1497, metadata !DIExpression()) #11, !dbg !4460
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !4460
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1497, metadata !DIExpression()) #11, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1496, metadata !DIExpression()) #11, !dbg !4454
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !4461
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1528, metadata !DIExpression()) #11, !dbg !4462
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !4464
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4464
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1535, metadata !DIExpression()) #11, !dbg !4466
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1540, metadata !DIExpression()) #11, !dbg !4468
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !4469
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !4470
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !4471
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4472
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !4473
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !4475
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !4475
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4476
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !4476
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1496, metadata !DIExpression()) #11, !dbg !4454
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !3245, metadata !DIExpression()) #11, !dbg !4477
  %49 = icmp eq %struct.list_head** %39, null, !dbg !4478
  br i1 %49, label %50, label %71, !dbg !4479

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4480
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !4484
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !4485
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !4485
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !4486
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !4486
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4487
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !4491
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !4492
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !4492
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !4493
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !4493
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !4494
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !4495

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4496
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !4500
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !4501
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !4501
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !4502
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !4502
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3245, metadata !DIExpression()) #11, !dbg !4477
  br label %71, !dbg !4503

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !4504
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !3245, metadata !DIExpression()) #11, !dbg !4477
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !4505
  br label %nk_fiber_yield.exit, !dbg !4506

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !4504
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !4507
  ret i32 %76, !dbg !4508
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
!601 = !DILocalVariable(name: "fun", arg: 1, scope: !602, file: !124, line: 602, type: !259)
!602 = distinct !DISubprogram(name: "nk_fiber_create", scope: !124, file: !124, line: 602, type: !603, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!48, !259, !31, !75, !45, !587}
!605 = !{!601, !606, !607, !608, !609, !610, !611, !612, !614}
!606 = !DILocalVariable(name: "input", arg: 2, scope: !602, file: !124, line: 602, type: !31)
!607 = !DILocalVariable(name: "output", arg: 3, scope: !602, file: !124, line: 602, type: !75)
!608 = !DILocalVariable(name: "stack_size", arg: 4, scope: !602, file: !124, line: 602, type: !45)
!609 = !DILocalVariable(name: "fiber_output", arg: 5, scope: !602, file: !124, line: 602, type: !587)
!610 = !DILocalVariable(name: "fiber", scope: !602, file: !124, line: 605, type: !240)
!611 = !DILocalVariable(name: "required_stack_size", scope: !602, file: !124, line: 608, type: !45)
!612 = !DILocalVariable(name: "p", scope: !613, file: !124, line: 611, type: !31)
!613 = distinct !DILexicalBlock(scope: !602, file: !124, line: 611, column: 11)
!614 = !DILocalVariable(name: "p", scope: !615, file: !124, line: 628, type: !31)
!615 = distinct !DILexicalBlock(scope: !602, file: !124, line: 628, column: 26)
!616 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !617)
!617 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !595)
!618 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !617)
!619 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !617)
!620 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !617)
!621 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !617)
!622 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !617)
!623 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !617)
!624 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !617)
!625 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !617)
!626 = distinct !DILexicalBlock(scope: !602, file: !124, line: 614, column: 7)
!627 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !617)
!628 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !617)
!629 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !617)
!630 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !617)
!631 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !617)
!632 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !617)
!633 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !617)
!634 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !617)
!635 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !617)
!636 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !617)
!637 = distinct !DILexicalBlock(scope: !602, file: !124, line: 631, column: 7)
!638 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !617)
!639 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !617)
!640 = distinct !DILexicalBlock(scope: !637, file: !124, line: 631, column: 21)
!641 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !617)
!642 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !617)
!643 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !617)
!644 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !617)
!645 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !617)
!646 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !617)
!647 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !617)
!648 = !DILocalVariable(name: "f", arg: 1, scope: !649, file: !124, line: 274, type: !240)
!649 = distinct !DISubprogram(name: "_nk_fiber_init", scope: !124, file: !124, line: 274, type: !650, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !240}
!652 = !{!648}
!653 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !654)
!654 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !617)
!655 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !654)
!656 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !654)
!657 = !DILocalVariable(name: "f", arg: 1, scope: !658, file: !124, line: 113, type: !240)
!658 = distinct !DISubprogram(name: "_fiber_push", scope: !124, file: !124, line: 113, type: !659, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !240, !25}
!661 = !{!657, !662}
!662 = !DILocalVariable(name: "x", arg: 2, scope: !658, file: !124, line: 113, type: !25)
!663 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !664)
!664 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !654)
!665 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !664)
!666 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !654)
!667 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !664)
!668 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !664)
!669 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !664)
!670 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !671)
!671 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !654)
!672 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !671)
!673 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !671)
!674 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !671)
!675 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !671)
!676 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !677)
!677 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !654)
!678 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !677)
!679 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !677)
!680 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !677)
!681 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !677)
!682 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !683)
!683 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !654)
!684 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !683)
!685 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !683)
!686 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !683)
!687 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !683)
!688 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !689)
!689 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !654)
!690 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !689)
!691 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !689)
!692 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !689)
!693 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !689)
!694 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !695)
!695 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !654)
!696 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !695)
!697 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !695)
!698 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !695)
!699 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !695)
!700 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !654)
!701 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !702)
!702 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !654)
!703 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !702)
!704 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !702)
!705 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !702)
!706 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !702)
!707 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !708)
!708 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !654)
!709 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !708)
!710 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !708)
!711 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !708)
!712 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !708)
!713 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !714)
!714 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !654)
!715 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !714)
!716 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !714)
!717 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !714)
!718 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !714)
!719 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !720)
!720 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !654)
!721 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !720)
!722 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !720)
!723 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !720)
!724 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !720)
!725 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !726)
!726 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !654)
!727 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !726)
!728 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !726)
!729 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !726)
!730 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !726)
!731 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !732)
!732 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !654)
!733 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !732)
!734 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !732)
!735 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !732)
!736 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !732)
!737 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !738)
!738 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !654)
!739 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !738)
!740 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !738)
!741 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !738)
!742 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !738)
!743 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !744)
!744 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !654)
!745 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !744)
!746 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !744)
!747 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !744)
!748 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !744)
!749 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !750)
!750 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !654)
!751 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !750)
!752 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !750)
!753 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !750)
!754 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !750)
!755 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !756)
!756 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !654)
!757 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !756)
!758 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !756)
!759 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !756)
!760 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !756)
!761 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !617)
!762 = distinct !DILexicalBlock(scope: !763, file: !124, line: 647, column: 20)
!763 = distinct !DILexicalBlock(scope: !602, file: !124, line: 647, column: 7)
!764 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !773)
!765 = distinct !DILexicalBlock(scope: !766, file: !16, line: 258, column: 26)
!766 = distinct !DILexicalBlock(scope: !767, file: !16, line: 258, column: 26)
!767 = distinct !DISubprogram(name: "get_cur_thread", scope: !16, file: !16, line: 256, type: !768, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!285}
!770 = !{!771, !772}
!771 = !DILocalVariable(name: "__r", scope: !766, file: !16, line: 258, type: !160)
!772 = !DILocalVariable(name: "__r", scope: !765, file: !16, line: 258, type: !160)
!773 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !617)
!774 = !{i32 -2147260788}
!775 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !773)
!776 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !617)
!777 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !617)
!778 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !617)
!779 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !617)
!780 = !DILocalVariable(name: "list", arg: 1, scope: !781, file: !53, line: 73, type: !150)
!781 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !53, file: !53, line: 73, type: !782, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !150}
!784 = !{!780}
!785 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !786)
!786 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !617)
!787 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !786)
!788 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !786)
!789 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !786)
!790 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !617)
!791 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !617)
!792 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !617)
!793 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !794)
!794 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !617)
!795 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !794)
!796 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !794)
!797 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !794)
!798 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !617)
!799 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !800)
!800 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !617)
!801 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !800)
!802 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !800)
!803 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !800)
!804 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !617)
!805 = !DILocation(line: 0, scope: !602, inlinedAt: !617)
!806 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !595)
!807 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !595)
!808 = !DILocation(line: 105, column: 15, scope: !506)
!809 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !810)
!810 = distinct !DILocation(line: 120, column: 3, scope: !506)
!811 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !810)
!812 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !810)
!813 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !810)
!814 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !810)
!815 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !810)
!816 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !817)
!817 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !810)
!818 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !817)
!819 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !817)
!820 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !817)
!821 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !817)
!822 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !817)
!823 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !817)
!824 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !817)
!825 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !817)
!826 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !817)
!827 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !817)
!828 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !817)
!829 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !817)
!830 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !817)
!831 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !817)
!832 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !817)
!833 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !817)
!834 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !817)
!835 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !817)
!836 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !817)
!837 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !817)
!838 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !817)
!839 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !817)
!840 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !817)
!841 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !817)
!842 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !817)
!843 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !817)
!844 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !817)
!845 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !846)
!846 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !817)
!847 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !846)
!848 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !846)
!849 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !850)
!850 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !846)
!851 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !850)
!852 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !846)
!853 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !850)
!854 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !850)
!855 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !850)
!856 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !857)
!857 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !846)
!858 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !857)
!859 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !857)
!860 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !857)
!861 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !857)
!862 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !863)
!863 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !846)
!864 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !863)
!865 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !863)
!866 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !863)
!867 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !863)
!868 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !869)
!869 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !846)
!870 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !869)
!871 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !869)
!872 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !869)
!873 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !869)
!874 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !875)
!875 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !846)
!876 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !875)
!877 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !875)
!878 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !875)
!879 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !875)
!880 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !881)
!881 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !846)
!882 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !881)
!883 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !881)
!884 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !881)
!885 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !881)
!886 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !846)
!887 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !888)
!888 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !846)
!889 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !888)
!890 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !888)
!891 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !888)
!892 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !888)
!893 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !894)
!894 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !846)
!895 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !894)
!896 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !894)
!897 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !894)
!898 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !894)
!899 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !900)
!900 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !846)
!901 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !900)
!902 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !900)
!903 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !900)
!904 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !900)
!905 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !906)
!906 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !846)
!907 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !906)
!908 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !906)
!909 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !906)
!910 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !906)
!911 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !912)
!912 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !846)
!913 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !912)
!914 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !912)
!915 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !912)
!916 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !912)
!917 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !918)
!918 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !846)
!919 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !918)
!920 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !918)
!921 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !918)
!922 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !918)
!923 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !924)
!924 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !846)
!925 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !924)
!926 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !924)
!927 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !924)
!928 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !924)
!929 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !930)
!930 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !846)
!931 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !930)
!932 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !930)
!933 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !930)
!934 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !930)
!935 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !936)
!936 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !846)
!937 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !936)
!938 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !936)
!939 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !936)
!940 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !936)
!941 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !942)
!942 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !846)
!943 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !942)
!944 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !942)
!945 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !942)
!946 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !942)
!947 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !817)
!948 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !949)
!949 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !817)
!950 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !949)
!951 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !817)
!952 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !817)
!953 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !817)
!954 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !817)
!955 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !956)
!956 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !817)
!957 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !956)
!958 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !956)
!959 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !956)
!960 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !817)
!961 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !817)
!962 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !817)
!963 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !964)
!964 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !817)
!965 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !964)
!966 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !964)
!967 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !964)
!968 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !817)
!969 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !970)
!970 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !817)
!971 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !970)
!972 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !970)
!973 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !970)
!974 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !817)
!975 = !DILocation(line: 0, scope: !602, inlinedAt: !817)
!976 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !810)
!977 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !810)
!978 = !DILocation(line: 121, column: 3, scope: !506)
!979 = !DILocation(line: 0, scope: !506)
!980 = !DILocation(line: 122, column: 1, scope: !506)
!981 = distinct !DISubprogram(name: "routine_simple_1", scope: !3, file: !3, line: 57, type: !81, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!982 = !{!983, !984, !985, !986}
!983 = !DILocalVariable(name: "i", arg: 1, scope: !981, file: !3, line: 57, type: !31)
!984 = !DILocalVariable(name: "o", arg: 2, scope: !981, file: !3, line: 57, type: !75)
!985 = !DILocalVariable(name: "end", scope: !981, file: !3, line: 59, type: !24)
!986 = !DILocalVariable(name: "a", scope: !981, file: !3, line: 61, type: !7)
!987 = !DILocation(line: 57, column: 29, scope: !981)
!988 = !DILocation(line: 57, column: 39, scope: !981)
!989 = !DILocation(line: 59, column: 19, scope: !981)
!990 = !DILocation(line: 59, column: 13, scope: !981)
!991 = !DILocation(line: 60, column: 19, scope: !981)
!992 = !DILocation(line: 60, column: 3, scope: !981)
!993 = !DILocation(line: 61, column: 16, scope: !981)
!994 = !DILocation(line: 62, column: 13, scope: !981)
!995 = !DILocation(line: 62, column: 11, scope: !981)
!996 = !DILocation(line: 62, column: 3, scope: !981)
!997 = !DILocation(line: 63, column: 52, scope: !998)
!998 = distinct !DILexicalBlock(scope: !981, file: !3, line: 62, column: 18)
!999 = !DILocation(line: 63, column: 5, scope: !998)
!1000 = !DILocation(line: 64, column: 5, scope: !998)
!1001 = !DILocation(line: 62, column: 9, scope: !981)
!1002 = distinct !{!1002, !996, !1003}
!1003 = !DILocation(line: 65, column: 3, scope: !981)
!1004 = !DILocation(line: 0, scope: !981)
!1005 = !DILocation(line: 66, column: 3, scope: !981)
!1006 = !DILocation(line: 67, column: 3, scope: !981)
!1007 = !DILocation(line: 68, column: 1, scope: !981)
!1008 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1009 = !{!1010, !1011, !1012, !1013}
!1010 = !DILocalVariable(name: "i", arg: 1, scope: !1008, file: !3, line: 70, type: !31)
!1011 = !DILocalVariable(name: "o", arg: 2, scope: !1008, file: !3, line: 70, type: !75)
!1012 = !DILocalVariable(name: "end", scope: !1008, file: !3, line: 72, type: !24)
!1013 = !DILocalVariable(name: "a", scope: !1008, file: !3, line: 74, type: !7)
!1014 = !DILocation(line: 70, column: 29, scope: !1008)
!1015 = !DILocation(line: 70, column: 39, scope: !1008)
!1016 = !DILocation(line: 72, column: 19, scope: !1008)
!1017 = !DILocation(line: 72, column: 13, scope: !1008)
!1018 = !DILocation(line: 73, column: 19, scope: !1008)
!1019 = !DILocation(line: 73, column: 3, scope: !1008)
!1020 = !DILocation(line: 74, column: 16, scope: !1008)
!1021 = !DILocation(line: 76, column: 13, scope: !1008)
!1022 = !DILocation(line: 76, column: 11, scope: !1008)
!1023 = !DILocation(line: 76, column: 3, scope: !1008)
!1024 = !DILocation(line: 77, column: 52, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 76, column: 18)
!1026 = !DILocation(line: 77, column: 5, scope: !1025)
!1027 = !DILocation(line: 78, column: 5, scope: !1025)
!1028 = !DILocation(line: 76, column: 9, scope: !1008)
!1029 = distinct !{!1029, !1023, !1030}
!1030 = !DILocation(line: 79, column: 3, scope: !1008)
!1031 = !DILocation(line: 0, scope: !1008)
!1032 = !DILocation(line: 80, column: 3, scope: !1008)
!1033 = !DILocation(line: 81, column: 3, scope: !1008)
!1034 = !DILocation(line: 82, column: 1, scope: !1008)
!1035 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1036 = !{!1037, !1038}
!1037 = !DILocalVariable(name: "buf", arg: 1, scope: !1035, file: !3, line: 127, type: !113)
!1038 = !DILocalVariable(name: "priv", arg: 2, scope: !1035, file: !3, line: 127, type: !31)
!1039 = !DILocation(line: 127, column: 23, scope: !1035)
!1040 = !DILocation(line: 127, column: 35, scope: !1035)
!1041 = !DILocation(line: 88, column: 3, scope: !1042, inlinedAt: !1049)
!1042 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046, !1047}
!1044 = !DILocalVariable(name: "simple", scope: !1042, file: !3, line: 88, type: !511)
!1045 = !DILocalVariable(name: "t", scope: !1042, file: !3, line: 90, type: !25)
!1046 = !DILocalVariable(name: "f_input", scope: !1042, file: !3, line: 92, type: !24)
!1047 = !DILocalVariable(name: "p", scope: !1048, file: !3, line: 92, type: !31)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 92, column: 23)
!1049 = distinct !DILocation(line: 129, column: 3, scope: !1035)
!1050 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 89, column: 8, scope: !1042, inlinedAt: !1049)
!1052 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1051)
!1053 = !DILocation(line: 89, column: 26, scope: !1042, inlinedAt: !1049)
!1054 = !DILocation(line: 89, column: 6, scope: !1042, inlinedAt: !1049)
!1055 = !DILocation(line: 90, column: 3, scope: !1042, inlinedAt: !1049)
!1056 = !DILocation(line: 91, column: 3, scope: !1042, inlinedAt: !1049)
!1057 = !DILocation(line: 92, column: 23, scope: !1048, inlinedAt: !1049)
!1058 = !DILocation(line: 93, column: 8, scope: !1059, inlinedAt: !1049)
!1059 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 93, column: 7)
!1060 = !DILocation(line: 93, column: 7, scope: !1042, inlinedAt: !1049)
!1061 = !DILocation(line: 94, column: 5, scope: !1062, inlinedAt: !1049)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 93, column: 17)
!1063 = !DILocation(line: 95, column: 5, scope: !1062, inlinedAt: !1049)
!1064 = !DILocation(line: 92, column: 23, scope: !1042, inlinedAt: !1049)
!1065 = !DILocation(line: 92, column: 13, scope: !1042, inlinedAt: !1049)
!1066 = !DILocation(line: 97, column: 14, scope: !1042, inlinedAt: !1049)
!1067 = !DILocation(line: 90, column: 12, scope: !1042, inlinedAt: !1049)
!1068 = !DILocation(line: 97, column: 16, scope: !1042, inlinedAt: !1049)
!1069 = !DILocation(line: 97, column: 12, scope: !1042, inlinedAt: !1049)
!1070 = !DILocation(line: 88, column: 15, scope: !1042, inlinedAt: !1049)
!1071 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 98, column: 3, scope: !1042, inlinedAt: !1049)
!1073 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1072)
!1074 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1072)
!1075 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1072)
!1076 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1072)
!1077 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1072)
!1078 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1072)
!1080 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1079)
!1081 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1079)
!1082 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1079)
!1083 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1079)
!1084 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1079)
!1085 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1079)
!1086 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1079)
!1087 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1079)
!1088 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1079)
!1089 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1079)
!1090 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1079)
!1091 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1079)
!1092 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1079)
!1093 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1079)
!1094 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1079)
!1095 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1079)
!1096 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1079)
!1097 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1079)
!1098 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1079)
!1099 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1079)
!1100 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1079)
!1101 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1079)
!1102 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1079)
!1103 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1079)
!1104 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1079)
!1105 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1079)
!1106 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1079)
!1107 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1079)
!1109 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1108)
!1110 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1108)
!1111 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1108)
!1113 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1112)
!1114 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1108)
!1115 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1112)
!1116 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1112)
!1117 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1112)
!1118 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1108)
!1120 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1119)
!1121 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1119)
!1122 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1119)
!1123 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1119)
!1124 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1108)
!1126 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1125)
!1127 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1125)
!1128 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1125)
!1129 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1125)
!1130 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1108)
!1132 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1131)
!1133 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1131)
!1134 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1131)
!1135 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1131)
!1136 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1108)
!1138 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1137)
!1139 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1137)
!1140 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1137)
!1141 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1137)
!1142 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1108)
!1144 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1143)
!1145 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1143)
!1146 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1143)
!1147 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1143)
!1148 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1108)
!1149 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1108)
!1151 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1150)
!1152 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1150)
!1153 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1150)
!1154 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1150)
!1155 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1108)
!1157 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1156)
!1158 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1156)
!1159 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1156)
!1160 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1156)
!1161 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1108)
!1163 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1162)
!1164 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1162)
!1165 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1162)
!1166 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1162)
!1167 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1108)
!1169 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1168)
!1170 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1168)
!1171 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1168)
!1172 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1168)
!1173 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1108)
!1175 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1174)
!1176 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1174)
!1177 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1174)
!1178 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1174)
!1179 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1108)
!1181 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1180)
!1182 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1180)
!1183 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1180)
!1184 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1180)
!1185 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1108)
!1187 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1186)
!1188 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1186)
!1189 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1186)
!1190 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1186)
!1191 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1108)
!1193 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1192)
!1194 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1192)
!1195 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1192)
!1196 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1192)
!1197 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1108)
!1199 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1198)
!1200 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1198)
!1201 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1198)
!1202 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1198)
!1203 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1108)
!1205 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1204)
!1206 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1204)
!1207 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1204)
!1208 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1204)
!1209 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1079)
!1210 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1079)
!1212 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1211)
!1213 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1079)
!1214 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1079)
!1215 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1079)
!1216 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1079)
!1217 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1079)
!1219 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1218)
!1220 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1218)
!1221 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1218)
!1222 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1079)
!1223 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1079)
!1224 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1079)
!1225 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1079)
!1227 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1226)
!1228 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1226)
!1229 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1226)
!1230 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1079)
!1231 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1079)
!1233 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1232)
!1234 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1232)
!1235 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1232)
!1236 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1079)
!1237 = !DILocation(line: 0, scope: !602, inlinedAt: !1079)
!1238 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1072)
!1239 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1072)
!1240 = !DILocation(line: 99, column: 3, scope: !1042, inlinedAt: !1049)
!1241 = !DILocation(line: 100, column: 1, scope: !1042, inlinedAt: !1049)
!1242 = !DILocation(line: 130, column: 3, scope: !1035)
!1243 = !DILocation(line: 88, column: 3, scope: !1042)
!1244 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 89, column: 8, scope: !1042)
!1246 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1245)
!1247 = !DILocation(line: 89, column: 26, scope: !1042)
!1248 = !DILocation(line: 89, column: 6, scope: !1042)
!1249 = !DILocation(line: 90, column: 3, scope: !1042)
!1250 = !DILocation(line: 91, column: 3, scope: !1042)
!1251 = !DILocation(line: 92, column: 23, scope: !1048)
!1252 = !DILocation(line: 93, column: 8, scope: !1059)
!1253 = !DILocation(line: 93, column: 7, scope: !1042)
!1254 = !DILocation(line: 94, column: 5, scope: !1062)
!1255 = !DILocation(line: 95, column: 5, scope: !1062)
!1256 = !DILocation(line: 92, column: 23, scope: !1042)
!1257 = !DILocation(line: 92, column: 13, scope: !1042)
!1258 = !DILocation(line: 97, column: 14, scope: !1042)
!1259 = !DILocation(line: 90, column: 12, scope: !1042)
!1260 = !DILocation(line: 97, column: 16, scope: !1042)
!1261 = !DILocation(line: 97, column: 12, scope: !1042)
!1262 = !DILocation(line: 88, column: 15, scope: !1042)
!1263 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 98, column: 3, scope: !1042)
!1265 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1264)
!1266 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1264)
!1267 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1264)
!1268 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1264)
!1269 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1264)
!1270 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1264)
!1272 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1271)
!1273 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1271)
!1274 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1271)
!1275 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1271)
!1276 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1271)
!1277 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1271)
!1278 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1271)
!1279 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1271)
!1280 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1271)
!1281 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1271)
!1282 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1271)
!1283 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1271)
!1284 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1271)
!1285 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1271)
!1286 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1271)
!1287 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1271)
!1288 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1271)
!1289 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1271)
!1290 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1271)
!1291 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1271)
!1292 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1271)
!1293 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1271)
!1294 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1271)
!1295 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1271)
!1296 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1271)
!1297 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1271)
!1298 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1271)
!1299 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1271)
!1301 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1300)
!1302 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1300)
!1303 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1300)
!1305 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1304)
!1306 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1300)
!1307 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1304)
!1308 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1304)
!1309 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1304)
!1310 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1300)
!1312 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1311)
!1313 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1311)
!1314 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1311)
!1315 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1311)
!1316 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1300)
!1318 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1317)
!1319 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1317)
!1320 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1317)
!1321 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1317)
!1322 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1300)
!1324 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1323)
!1325 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1323)
!1326 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1323)
!1327 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1323)
!1328 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1300)
!1330 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1329)
!1331 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1329)
!1332 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1329)
!1333 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1329)
!1334 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1300)
!1336 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1335)
!1337 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1335)
!1338 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1335)
!1339 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1335)
!1340 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1300)
!1341 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1300)
!1343 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1342)
!1344 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1342)
!1345 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1342)
!1346 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1342)
!1347 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1300)
!1349 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1348)
!1350 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1348)
!1351 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1348)
!1352 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1348)
!1353 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1300)
!1355 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1354)
!1356 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1354)
!1357 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1354)
!1358 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1354)
!1359 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1300)
!1361 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1360)
!1362 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1360)
!1363 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1360)
!1364 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1360)
!1365 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1300)
!1367 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1366)
!1368 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1366)
!1369 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1366)
!1370 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1366)
!1371 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1300)
!1373 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1372)
!1374 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1372)
!1375 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1372)
!1376 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1372)
!1377 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1300)
!1379 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1378)
!1380 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1378)
!1381 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1378)
!1382 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1378)
!1383 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1300)
!1385 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1384)
!1386 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1384)
!1387 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1384)
!1388 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1384)
!1389 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1300)
!1391 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1390)
!1392 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1390)
!1393 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1390)
!1394 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1390)
!1395 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1300)
!1397 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1396)
!1398 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1396)
!1399 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1396)
!1400 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1396)
!1401 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1271)
!1402 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1271)
!1404 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1403)
!1405 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1271)
!1406 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1271)
!1407 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1271)
!1408 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1271)
!1409 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1271)
!1411 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1410)
!1412 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1410)
!1413 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1410)
!1414 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1271)
!1415 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1271)
!1416 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1271)
!1417 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1271)
!1419 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1418)
!1420 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1418)
!1421 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1418)
!1422 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1271)
!1423 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1271)
!1425 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1424)
!1426 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1424)
!1427 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1424)
!1428 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1271)
!1429 = !DILocation(line: 0, scope: !602, inlinedAt: !1271)
!1430 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1264)
!1431 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1264)
!1432 = !DILocation(line: 99, column: 3, scope: !1042)
!1433 = !DILocation(line: 0, scope: !1042)
!1434 = !DILocation(line: 100, column: 1, scope: !1042)
!1435 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1436, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1440 = !{}
!1441 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1446)
!1442 = distinct !DISubprogram(name: "get_cpu", scope: !1443, file: !1443, line: 127, type: !1444, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1443 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!270}
!1446 = distinct !DILocation(line: 78, column: 10, scope: !1435)
!1447 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1446)
!1448 = !DILocation(line: 78, column: 21, scope: !1435)
!1449 = !DILocation(line: 78, column: 3, scope: !1435)
!1450 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1451, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!240}
!1453 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 85, column: 10, scope: !1450)
!1456 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1454)
!1457 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1455)
!1458 = !DILocation(line: 85, column: 30, scope: !1450)
!1459 = !DILocation(line: 85, column: 3, scope: !1450)
!1460 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1451, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1461 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 92, column: 10, scope: !1460)
!1464 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1462)
!1465 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1463)
!1466 = !DILocation(line: 92, column: 30, scope: !1460)
!1467 = !DILocation(line: 92, column: 3, scope: !1460)
!1468 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1469 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 98, column: 10, scope: !1468)
!1472 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1470)
!1473 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1471)
!1474 = !DILocation(line: 98, column: 30, scope: !1468)
!1475 = !DILocation(line: 98, column: 3, scope: !1468)
!1476 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1477, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!150}
!1479 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 105, column: 12, scope: !1476)
!1482 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1480)
!1483 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1481)
!1484 = !DILocation(line: 105, column: 32, scope: !1476)
!1485 = !DILocation(line: 105, column: 3, scope: !1476)
!1486 = !DILocation(line: 113, column: 31, scope: !658)
!1487 = !DILocation(line: 113, column: 43, scope: !658)
!1488 = !DILocation(line: 115, column: 8, scope: !658)
!1489 = !DILocation(line: 115, column: 12, scope: !658)
!1490 = !DILocation(line: 116, column: 6, scope: !658)
!1491 = !DILocation(line: 116, column: 26, scope: !658)
!1492 = !DILocation(line: 117, column: 1, scope: !658)
!1493 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1451, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1494)
!1494 = !{!1495, !1496, !1497, !1501}
!1495 = !DILocalVariable(name: "fiber_sched_queue", scope: !1493, file: !124, line: 122, type: !150)
!1496 = !DILocalVariable(name: "fiber_to_schedule", scope: !1493, file: !124, line: 125, type: !240)
!1497 = !DILocalVariable(name: "first", scope: !1498, file: !124, line: 128, type: !240)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 128, column: 25)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !124, line: 126, column: 40)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !124, line: 126, column: 7)
!1501 = !DILocalVariable(name: "__mptr", scope: !1502, file: !124, line: 128, type: !1505)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !124, line: 128, column: 25)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !124, line: 128, column: 25)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 128, column: 25)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1507 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 122, column: 41, scope: !1493)
!1511 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1508)
!1512 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1509)
!1513 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !1510)
!1514 = !DILocation(line: 122, column: 21, scope: !1493)
!1515 = !DILocation(line: 125, column: 15, scope: !1493)
!1516 = !DILocalVariable(name: "head", arg: 1, scope: !1517, file: !53, line: 184, type: !1505)
!1517 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1518, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!48, !1505}
!1520 = !{!1516}
!1521 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 126, column: 9, scope: !1500)
!1523 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !1522)
!1524 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !1522)
!1525 = !DILocation(line: 126, column: 7, scope: !1493)
!1526 = !DILocation(line: 128, column: 25, scope: !1498)
!1527 = !DILocation(line: 131, column: 40, scope: !1499)
!1528 = !DILocalVariable(name: "entry", arg: 1, scope: !1529, file: !53, line: 151, type: !150)
!1529 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1530)
!1530 = !{!1528}
!1531 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 131, column: 5, scope: !1499)
!1533 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !1532)
!1534 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !1532)
!1535 = !DILocalVariable(name: "prev", arg: 1, scope: !1536, file: !53, line: 128, type: !150)
!1536 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1537, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !150, !150}
!1539 = !{!1535, !1540}
!1540 = !DILocalVariable(name: "next", arg: 2, scope: !1536, file: !53, line: 128, type: !150)
!1541 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !1532)
!1543 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !1542)
!1544 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !1542)
!1545 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !1542)
!1546 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !1542)
!1547 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !1542)
!1548 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !1532)
!1550 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1549)
!1551 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1549)
!1552 = !DILocation(line: 132, column: 3, scope: !1499)
!1553 = !DILocation(line: 0, scope: !1493)
!1554 = !DILocation(line: 139, column: 3, scope: !1493)
!1555 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1564}
!1557 = !DILocalVariable(name: "f", arg: 1, scope: !1555, file: !124, line: 144, type: !240)
!1558 = !DILocalVariable(name: "next", scope: !1555, file: !124, line: 149, type: !240)
!1559 = !DILocalVariable(name: "temp", scope: !1555, file: !124, line: 155, type: !240)
!1560 = !DILocalVariable(name: "waitq", scope: !1555, file: !124, line: 156, type: !150)
!1561 = !DILocalVariable(name: "first", scope: !1562, file: !124, line: 163, type: !240)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !124, line: 163, column: 12)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !124, line: 160, column: 25)
!1564 = !DILocalVariable(name: "__mptr", scope: !1565, file: !124, line: 163, type: !1505)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !124, line: 163, column: 12)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !124, line: 163, column: 12)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !124, line: 163, column: 12)
!1568 = !DILocation(line: 144, column: 33, scope: !1555)
!1569 = !DILocation(line: 147, column: 6, scope: !1555)
!1570 = !DILocation(line: 147, column: 15, scope: !1555)
!1571 = !DILocation(line: 149, column: 15, scope: !1555)
!1572 = !DILocation(line: 156, column: 34, scope: !1555)
!1573 = !DILocation(line: 156, column: 21, scope: !1555)
!1574 = !DILocation(line: 160, column: 12, scope: !1555)
!1575 = !DILocation(line: 160, column: 21, scope: !1555)
!1576 = !DILocation(line: 160, column: 3, scope: !1555)
!1577 = !DILocation(line: 163, column: 12, scope: !1562)
!1578 = !DILocation(line: 163, column: 12, scope: !1567)
!1579 = !DILocation(line: 155, column: 15, scope: !1555)
!1580 = !DILocation(line: 164, column: 27, scope: !1563)
!1581 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 164, column: 5, scope: !1563)
!1583 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !1582)
!1584 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !1582)
!1585 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !1582)
!1587 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !1586)
!1588 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !1586)
!1589 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !1586)
!1590 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !1586)
!1591 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !1586)
!1592 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !1582)
!1594 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1593)
!1595 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1593)
!1596 = !DILocation(line: 165, column: 16, scope: !1563)
!1597 = !DILocation(line: 168, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1563, file: !124, line: 168, column: 9)
!1599 = !DILocation(line: 168, column: 9, scope: !1563)
!1600 = !DILocalVariable(name: "f", arg: 1, scope: !1601, file: !124, line: 663, type: !240)
!1601 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !1602, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!48, !240, !29}
!1604 = !{!1600, !1605, !1606, !1607}
!1605 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1601, file: !124, line: 663, type: !29)
!1606 = !DILocalVariable(name: "curr_thread", scope: !1601, file: !124, line: 666, type: !285)
!1607 = !DILocalVariable(name: "fiber_sched_queue", scope: !1601, file: !124, line: 674, type: !150)
!1608 = !DILocation(line: 663, column: 30, scope: !1601, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 171, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1598, file: !124, line: 168, column: 14)
!1611 = !DILocation(line: 663, column: 41, scope: !1601, inlinedAt: !1609)
!1612 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 666, column: 30, scope: !1601, inlinedAt: !1609)
!1616 = !DILocation(line: 666, column: 16, scope: !1601, inlinedAt: !1609)
!1617 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !1625)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !124, line: 366, column: 29)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !124, line: 366, column: 29)
!1620 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1621)
!1621 = !{!1622, !1623, !1624}
!1622 = !DILocalVariable(name: "sys", scope: !1620, file: !124, line: 366, type: !264)
!1623 = !DILocalVariable(name: "__r", scope: !1619, file: !124, line: 366, type: !264)
!1624 = !DILocalVariable(name: "__r", scope: !1618, file: !124, line: 366, type: !264)
!1625 = distinct !DILocation(line: 373, column: 20, scope: !1626, inlinedAt: !1634)
!1626 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1627)
!1627 = !{!1628, !1629, !1630, !1632}
!1628 = !DILocalVariable(name: "random_cpu", scope: !1626, file: !124, line: 373, type: !48)
!1629 = !DILocalVariable(name: "sys", scope: !1626, file: !124, line: 374, type: !264)
!1630 = !DILocalVariable(name: "__r", scope: !1631, file: !124, line: 374, type: !264)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !124, line: 374, column: 27)
!1632 = !DILocalVariable(name: "__r", scope: !1633, file: !124, line: 374, type: !264)
!1633 = distinct !DILexicalBlock(scope: !1631, file: !124, line: 374, column: 27)
!1634 = distinct !DILocation(line: 670, column: 19, scope: !1635, inlinedAt: !1609)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !124, line: 669, column: 23)
!1636 = distinct !DILexicalBlock(scope: !1601, file: !124, line: 669, column: 7)
!1637 = !{i32 -2147185108}
!1638 = !DILocation(line: 366, column: 29, scope: !1619, inlinedAt: !1625)
!1639 = !DILocation(line: 366, column: 23, scope: !1620, inlinedAt: !1625)
!1640 = !DILocation(line: 358, column: 5, scope: !1641, inlinedAt: !1646)
!1641 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !1642, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!25}
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "t", scope: !1641, file: !124, line: 358, type: !25)
!1646 = distinct !DILocation(line: 367, column: 18, scope: !1620, inlinedAt: !1625)
!1647 = !DILocation(line: 359, column: 5, scope: !1641, inlinedAt: !1646)
!1648 = !DILocation(line: 360, column: 12, scope: !1641, inlinedAt: !1646)
!1649 = !DILocation(line: 358, column: 14, scope: !1641, inlinedAt: !1646)
!1650 = !DILocation(line: 361, column: 1, scope: !1641, inlinedAt: !1646)
!1651 = !DILocation(line: 367, column: 39, scope: !1620, inlinedAt: !1625)
!1652 = !DILocation(line: 367, column: 34, scope: !1620, inlinedAt: !1625)
!1653 = !DILocation(line: 367, column: 32, scope: !1620, inlinedAt: !1625)
!1654 = !DILocation(line: 374, column: 27, scope: !1633, inlinedAt: !1634)
!1655 = !{i32 -2147182107}
!1656 = !DILocation(line: 374, column: 27, scope: !1631, inlinedAt: !1634)
!1657 = !DILocation(line: 374, column: 21, scope: !1626, inlinedAt: !1634)
!1658 = !DILocation(line: 375, column: 10, scope: !1626, inlinedAt: !1634)
!1659 = !DILocation(line: 0, scope: !1601, inlinedAt: !1609)
!1660 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 674, column: 41, scope: !1601, inlinedAt: !1609)
!1664 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1661)
!1665 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1662)
!1666 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !1663)
!1667 = !DILocation(line: 674, column: 21, scope: !1601, inlinedAt: !1609)
!1668 = !DILocation(line: 678, column: 6, scope: !1601, inlinedAt: !1609)
!1669 = !DILocation(line: 678, column: 15, scope: !1601, inlinedAt: !1609)
!1670 = !DILocation(line: 679, column: 22, scope: !1601, inlinedAt: !1609)
!1671 = !DILocalVariable(name: "nelm", arg: 1, scope: !1672, file: !53, line: 116, type: !150)
!1672 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1537, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1673)
!1673 = !{!1671, !1674}
!1674 = !DILocalVariable(name: "head", arg: 2, scope: !1672, file: !53, line: 116, type: !150)
!1675 = !DILocation(line: 116, column: 52, scope: !1672, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 679, column: 3, scope: !1601, inlinedAt: !1609)
!1677 = !DILocation(line: 116, column: 76, scope: !1672, inlinedAt: !1676)
!1678 = !DILocation(line: 118, column: 25, scope: !1672, inlinedAt: !1676)
!1679 = !DILocalVariable(name: "nelm", arg: 1, scope: !1680, file: !53, line: 85, type: !150)
!1680 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1681, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !150, !150, !150}
!1683 = !{!1679, !1684, !1685}
!1684 = !DILocalVariable(name: "prev", arg: 2, scope: !1680, file: !53, line: 86, type: !150)
!1685 = !DILocalVariable(name: "next", arg: 3, scope: !1680, file: !53, line: 87, type: !150)
!1686 = !DILocation(line: 85, column: 49, scope: !1680, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 118, column: 2, scope: !1672, inlinedAt: !1676)
!1688 = !DILocation(line: 86, column: 28, scope: !1680, inlinedAt: !1687)
!1689 = !DILocation(line: 87, column: 28, scope: !1680, inlinedAt: !1687)
!1690 = !DILocation(line: 89, column: 13, scope: !1680, inlinedAt: !1687)
!1691 = !DILocation(line: 90, column: 8, scope: !1680, inlinedAt: !1687)
!1692 = !DILocation(line: 90, column: 13, scope: !1680, inlinedAt: !1687)
!1693 = !DILocation(line: 91, column: 8, scope: !1680, inlinedAt: !1687)
!1694 = !DILocation(line: 91, column: 13, scope: !1680, inlinedAt: !1687)
!1695 = !DILocation(line: 92, column: 8, scope: !1680, inlinedAt: !1687)
!1696 = !DILocation(line: 92, column: 13, scope: !1680, inlinedAt: !1687)
!1697 = !DILocation(line: 683, column: 20, scope: !1698, inlinedAt: !1609)
!1698 = distinct !DILexicalBlock(scope: !1601, file: !124, line: 683, column: 7)
!1699 = !DILocation(line: 683, column: 7, scope: !1698, inlinedAt: !1609)
!1700 = !DILocation(line: 683, column: 7, scope: !1601, inlinedAt: !1609)
!1701 = !DILocation(line: 687, column: 5, scope: !1702, inlinedAt: !1609)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !124, line: 683, column: 26)
!1703 = !DILocation(line: 688, column: 3, scope: !1702, inlinedAt: !1609)
!1704 = distinct !{!1704, !1576, !1705}
!1705 = !DILocation(line: 173, column: 3, scope: !1555)
!1706 = !DILocation(line: 175, column: 6, scope: !1555)
!1707 = !DILocation(line: 175, column: 14, scope: !1555)
!1708 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 179, column: 10, scope: !1555)
!1713 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1709)
!1714 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1710)
!1715 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !1711)
!1716 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !1712)
!1717 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !1712)
!1718 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !1712)
!1720 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !1719)
!1721 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !1719)
!1722 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !1712)
!1723 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !1712)
!1724 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !1712)
!1725 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !1712)
!1727 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !1726)
!1728 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !1726)
!1729 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !1726)
!1731 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !1730)
!1732 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !1730)
!1733 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !1730)
!1734 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !1730)
!1735 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !1730)
!1736 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !1726)
!1738 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1737)
!1739 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1737)
!1740 = !DILocation(line: 180, column: 8, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1555, file: !124, line: 180, column: 7)
!1742 = !DILocation(line: 180, column: 7, scope: !1555)
!1743 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 181, column: 12, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !124, line: 180, column: 16)
!1748 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1744)
!1749 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1745)
!1750 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !1746)
!1751 = !DILocation(line: 182, column: 3, scope: !1747)
!1752 = !DILocation(line: 0, scope: !1555)
!1753 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 183, column: 3, scope: !1555)
!1756 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1754)
!1757 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1755)
!1758 = !DILocation(line: 183, column: 23, scope: !1555)
!1759 = !DILocation(line: 183, column: 34, scope: !1555)
!1760 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 186, column: 19, scope: !1555)
!1763 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1761)
!1764 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1762)
!1765 = !DILocation(line: 186, column: 39, scope: !1555)
!1766 = !DILocation(line: 186, column: 51, scope: !1555)
!1767 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 186, column: 3, scope: !1555)
!1769 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !1768)
!1770 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !1768)
!1771 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !1768)
!1773 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !1772)
!1774 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !1772)
!1775 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !1772)
!1776 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !1772)
!1777 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !1772)
!1778 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !1768)
!1780 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1779)
!1781 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1779)
!1782 = !DILocation(line: 189, column: 3, scope: !1555)
!1783 = !DILocation(line: 190, column: 3, scope: !1555)
!1784 = !DILocation(line: 193, column: 3, scope: !1555)
!1785 = !DILocation(line: 196, column: 1, scope: !1555)
!1786 = !DILocation(line: 663, column: 30, scope: !1601)
!1787 = !DILocation(line: 663, column: 41, scope: !1601)
!1788 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 666, column: 30, scope: !1601)
!1792 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1789)
!1793 = !DILocation(line: 666, column: 16, scope: !1601)
!1794 = !DILocation(line: 669, column: 7, scope: !1636)
!1795 = !DILocation(line: 669, column: 7, scope: !1601)
!1796 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 373, column: 20, scope: !1626, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 670, column: 19, scope: !1635)
!1799 = !DILocation(line: 366, column: 29, scope: !1619, inlinedAt: !1797)
!1800 = !DILocation(line: 366, column: 23, scope: !1620, inlinedAt: !1797)
!1801 = !DILocation(line: 358, column: 5, scope: !1641, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 367, column: 18, scope: !1620, inlinedAt: !1797)
!1803 = !DILocation(line: 359, column: 5, scope: !1641, inlinedAt: !1802)
!1804 = !DILocation(line: 360, column: 12, scope: !1641, inlinedAt: !1802)
!1805 = !DILocation(line: 358, column: 14, scope: !1641, inlinedAt: !1802)
!1806 = !DILocation(line: 361, column: 1, scope: !1641, inlinedAt: !1802)
!1807 = !DILocation(line: 367, column: 39, scope: !1620, inlinedAt: !1797)
!1808 = !DILocation(line: 367, column: 34, scope: !1620, inlinedAt: !1797)
!1809 = !DILocation(line: 367, column: 32, scope: !1620, inlinedAt: !1797)
!1810 = !DILocation(line: 374, column: 27, scope: !1633, inlinedAt: !1798)
!1811 = !DILocation(line: 374, column: 27, scope: !1631, inlinedAt: !1798)
!1812 = !DILocation(line: 374, column: 21, scope: !1626, inlinedAt: !1798)
!1813 = !DILocation(line: 375, column: 10, scope: !1626, inlinedAt: !1798)
!1814 = !DILocation(line: 671, column: 3, scope: !1635)
!1815 = !DILocation(line: 0, scope: !1601)
!1816 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 674, column: 41, scope: !1601)
!1820 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1817)
!1821 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1818)
!1822 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !1819)
!1823 = !DILocation(line: 674, column: 21, scope: !1601)
!1824 = !DILocation(line: 678, column: 6, scope: !1601)
!1825 = !DILocation(line: 678, column: 15, scope: !1601)
!1826 = !DILocation(line: 679, column: 22, scope: !1601)
!1827 = !DILocation(line: 116, column: 52, scope: !1672, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 679, column: 3, scope: !1601)
!1829 = !DILocation(line: 116, column: 76, scope: !1672, inlinedAt: !1828)
!1830 = !DILocation(line: 118, column: 25, scope: !1672, inlinedAt: !1828)
!1831 = !DILocation(line: 85, column: 49, scope: !1680, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 118, column: 2, scope: !1672, inlinedAt: !1828)
!1833 = !DILocation(line: 86, column: 28, scope: !1680, inlinedAt: !1832)
!1834 = !DILocation(line: 87, column: 28, scope: !1680, inlinedAt: !1832)
!1835 = !DILocation(line: 89, column: 13, scope: !1680, inlinedAt: !1832)
!1836 = !DILocation(line: 90, column: 8, scope: !1680, inlinedAt: !1832)
!1837 = !DILocation(line: 90, column: 13, scope: !1680, inlinedAt: !1832)
!1838 = !DILocation(line: 91, column: 8, scope: !1680, inlinedAt: !1832)
!1839 = !DILocation(line: 91, column: 13, scope: !1680, inlinedAt: !1832)
!1840 = !DILocation(line: 92, column: 8, scope: !1680, inlinedAt: !1832)
!1841 = !DILocation(line: 92, column: 13, scope: !1680, inlinedAt: !1832)
!1842 = !DILocation(line: 683, column: 20, scope: !1698)
!1843 = !DILocation(line: 683, column: 7, scope: !1698)
!1844 = !DILocation(line: 683, column: 7, scope: !1601)
!1845 = !DILocation(line: 687, column: 5, scope: !1702)
!1846 = !DILocation(line: 688, column: 3, scope: !1702)
!1847 = !DILocation(line: 690, column: 3, scope: !1601)
!1848 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1849)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "f_to", arg: 1, scope: !1848, file: !124, line: 198, type: !240)
!1851 = !DILocation(line: 198, column: 33, scope: !1848)
!1852 = !DILocation(line: 202, column: 9, scope: !1848)
!1853 = !DILocation(line: 202, column: 19, scope: !1848)
!1854 = !DILocation(line: 202, column: 32, scope: !1848)
!1855 = !DILocation(line: 202, column: 3, scope: !1848)
!1856 = !DILocation(line: 208, column: 3, scope: !1848)
!1857 = !DILocation(line: 210, column: 3, scope: !1848)
!1858 = !DILocation(line: 274, column: 33, scope: !649)
!1859 = !DILocation(line: 276, column: 26, scope: !649)
!1860 = !DILocation(line: 276, column: 37, scope: !649)
!1861 = !DILocation(line: 276, column: 6, scope: !649)
!1862 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 277, column: 3, scope: !649)
!1864 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1863)
!1865 = !DILocation(line: 276, column: 32, scope: !649)
!1866 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1863)
!1867 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1863)
!1868 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1863)
!1869 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 278, column: 3, scope: !649)
!1871 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1870)
!1872 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1870)
!1873 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1870)
!1874 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1870)
!1875 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 279, column: 3, scope: !649)
!1877 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1876)
!1878 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1876)
!1879 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1876)
!1880 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1876)
!1881 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 280, column: 3, scope: !649)
!1883 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1882)
!1884 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1882)
!1885 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1882)
!1886 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1882)
!1887 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 281, column: 3, scope: !649)
!1889 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1888)
!1890 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1888)
!1891 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1888)
!1892 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1888)
!1893 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 282, column: 3, scope: !649)
!1895 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1894)
!1896 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1894)
!1897 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1894)
!1898 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1894)
!1899 = !DILocation(line: 283, column: 18, scope: !649)
!1900 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 283, column: 3, scope: !649)
!1902 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1901)
!1903 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1901)
!1904 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1901)
!1905 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1901)
!1906 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 284, column: 3, scope: !649)
!1908 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1907)
!1909 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1907)
!1910 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1907)
!1911 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1907)
!1912 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 285, column: 3, scope: !649)
!1914 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1913)
!1915 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1913)
!1916 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1913)
!1917 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1913)
!1918 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 286, column: 3, scope: !649)
!1920 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1919)
!1921 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1919)
!1922 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1919)
!1923 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1919)
!1924 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 287, column: 3, scope: !649)
!1926 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1925)
!1927 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1925)
!1928 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1925)
!1929 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1925)
!1930 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 288, column: 3, scope: !649)
!1932 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1931)
!1933 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1931)
!1934 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1931)
!1935 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1931)
!1936 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 289, column: 3, scope: !649)
!1938 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1937)
!1939 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1937)
!1940 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1937)
!1941 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1937)
!1942 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 290, column: 3, scope: !649)
!1944 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1943)
!1945 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1943)
!1946 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1943)
!1947 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1943)
!1948 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 291, column: 3, scope: !649)
!1950 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1949)
!1951 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1949)
!1952 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1949)
!1953 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1949)
!1954 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 292, column: 3, scope: !649)
!1956 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1955)
!1957 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1955)
!1958 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1955)
!1959 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1955)
!1960 = !DILocation(line: 294, column: 3, scope: !649)
!1961 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !1962, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!48, !240}
!1964 = !{!1965, !1966, !1967}
!1965 = !DILocalVariable(name: "f_to", arg: 1, scope: !1961, file: !124, line: 299, type: !240)
!1966 = !DILocalVariable(name: "f_from", scope: !1961, file: !124, line: 302, type: !240)
!1967 = !DILocalVariable(name: "fiber_sched_queue", scope: !1968, file: !124, line: 312, type: !150)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !124, line: 310, column: 63)
!1969 = distinct !DILexicalBlock(scope: !1961, file: !124, line: 310, column: 7)
!1970 = !DILocation(line: 299, column: 36, scope: !1961)
!1971 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 302, column: 24, scope: !1961)
!1975 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1972)
!1976 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1973)
!1977 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !1974)
!1978 = !DILocation(line: 302, column: 15, scope: !1961)
!1979 = !DILocation(line: 305, column: 15, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1961, file: !124, line: 305, column: 7)
!1981 = !DILocation(line: 305, column: 32, scope: !1980)
!1982 = !DILocation(line: 306, column: 22, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !124, line: 305, column: 61)
!1984 = !DILocation(line: 307, column: 3, scope: !1983)
!1985 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 310, column: 17, scope: !1969)
!1989 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1986)
!1990 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1987)
!1991 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !1988)
!1992 = !DILocation(line: 310, column: 14, scope: !1969)
!1993 = !DILocation(line: 310, column: 34, scope: !1969)
!1994 = !DILocation(line: 310, column: 45, scope: !1969)
!1995 = !DILocation(line: 310, column: 54, scope: !1969)
!1996 = !DILocation(line: 310, column: 7, scope: !1961)
!1997 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 312, column: 43, scope: !1968)
!2001 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !1998)
!2002 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !1999)
!2003 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !2000)
!2004 = !DILocation(line: 312, column: 23, scope: !1968)
!2005 = !DILocation(line: 318, column: 29, scope: !1968)
!2006 = !DILocation(line: 116, column: 52, scope: !1672, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 318, column: 5, scope: !1968)
!2008 = !DILocation(line: 116, column: 76, scope: !1672, inlinedAt: !2007)
!2009 = !DILocation(line: 118, column: 25, scope: !1672, inlinedAt: !2007)
!2010 = !DILocation(line: 85, column: 49, scope: !1680, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 118, column: 2, scope: !1672, inlinedAt: !2007)
!2012 = !DILocation(line: 86, column: 28, scope: !1680, inlinedAt: !2011)
!2013 = !DILocation(line: 87, column: 28, scope: !1680, inlinedAt: !2011)
!2014 = !DILocation(line: 89, column: 13, scope: !1680, inlinedAt: !2011)
!2015 = !DILocation(line: 90, column: 8, scope: !1680, inlinedAt: !2011)
!2016 = !DILocation(line: 90, column: 13, scope: !1680, inlinedAt: !2011)
!2017 = !DILocation(line: 91, column: 8, scope: !1680, inlinedAt: !2011)
!2018 = !DILocation(line: 91, column: 13, scope: !1680, inlinedAt: !2011)
!2019 = !DILocation(line: 92, column: 8, scope: !1680, inlinedAt: !2011)
!2020 = !DILocation(line: 92, column: 13, scope: !1680, inlinedAt: !2011)
!2021 = !DILocation(line: 319, column: 3, scope: !1968)
!2022 = !DILocation(line: 323, column: 16, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1961, file: !124, line: 323, column: 7)
!2024 = !DILocation(line: 323, column: 8, scope: !2023)
!2025 = !DILocation(line: 323, column: 7, scope: !1961)
!2026 = !DILocation(line: 324, column: 29, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !124, line: 323, column: 24)
!2028 = !DILocalVariable(name: "vc", arg: 1, scope: !2029, file: !124, line: 907, type: !88)
!2029 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 907, type: !2030, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !88}
!2032 = !{!2028, !2033}
!2033 = !DILocalVariable(name: "curr_fiber", scope: !2029, file: !124, line: 910, type: !240)
!2034 = !DILocation(line: 907, column: 49, scope: !2029, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 324, column: 5, scope: !2027)
!2036 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 910, column: 28, scope: !2029, inlinedAt: !2035)
!2040 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2037)
!2041 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !2038)
!2042 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !2039)
!2043 = !DILocation(line: 910, column: 15, scope: !2029, inlinedAt: !2035)
!2044 = !DILocation(line: 913, column: 15, scope: !2029, inlinedAt: !2035)
!2045 = !DILocation(line: 913, column: 18, scope: !2029, inlinedAt: !2035)
!2046 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 914, column: 3, scope: !2029, inlinedAt: !2035)
!2048 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2047)
!2049 = !DILocation(line: 914, column: 21, scope: !2029, inlinedAt: !2035)
!2050 = !DILocation(line: 914, column: 24, scope: !2029, inlinedAt: !2035)
!2051 = !DILocation(line: 325, column: 3, scope: !2027)
!2052 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 328, column: 3, scope: !1961)
!2055 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2053)
!2056 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !2054)
!2057 = !DILocation(line: 328, column: 23, scope: !1961)
!2058 = !DILocation(line: 328, column: 34, scope: !1961)
!2059 = !DILocation(line: 329, column: 20, scope: !1961)
!2060 = !DILocation(line: 330, column: 9, scope: !1961)
!2061 = !DILocation(line: 330, column: 18, scope: !1961)
!2062 = !DILocation(line: 331, column: 3, scope: !1961)
!2063 = !DILocation(line: 333, column: 3, scope: !1961)
!2064 = !DILocation(line: 907, column: 49, scope: !2029)
!2065 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 910, column: 28, scope: !2029)
!2069 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2066)
!2070 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !2067)
!2071 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !2068)
!2072 = !DILocation(line: 910, column: 15, scope: !2029)
!2073 = !DILocation(line: 913, column: 15, scope: !2029)
!2074 = !DILocation(line: 913, column: 18, scope: !2029)
!2075 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 914, column: 3, scope: !2029)
!2077 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2076)
!2078 = !DILocation(line: 914, column: 21, scope: !2029)
!2079 = !DILocation(line: 914, column: 24, scope: !2029)
!2080 = !DILocation(line: 915, column: 1, scope: !2029)
!2081 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !2082, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null}
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "curr", scope: !2081, file: !124, line: 338, type: !240)
!2086 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 338, column: 22, scope: !2081)
!2090 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2087)
!2091 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !2088)
!2092 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !2089)
!2093 = !DILocation(line: 338, column: 15, scope: !2081)
!2094 = !DILocation(line: 340, column: 3, scope: !2081)
!2095 = !DILocation(line: 341, column: 1, scope: !2081)
!2096 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !2097, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!29, !240}
!2099 = !{!2100, !2101, !2102}
!2100 = !DILocalVariable(name: "f", arg: 1, scope: !2096, file: !124, line: 343, type: !240)
!2101 = !DILocalVariable(name: "idle_fiber", scope: !2096, file: !124, line: 345, type: !240)
!2102 = !DILocalVariable(name: "result", scope: !2096, file: !124, line: 348, type: !29)
!2103 = !DILocation(line: 343, column: 36, scope: !2096)
!2104 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 345, column: 28, scope: !2096)
!2108 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2105)
!2109 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !2106)
!2110 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !2107)
!2111 = !DILocation(line: 345, column: 15, scope: !2096)
!2112 = !DILocation(line: 348, column: 11, scope: !2096)
!2113 = !DILocation(line: 349, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2096, file: !124, line: 349, column: 7)
!2115 = !DILocation(line: 349, column: 7, scope: !2096)
!2116 = !DILocation(line: 353, column: 3, scope: !2096)
!2117 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 373, column: 20, scope: !1626)
!2119 = !DILocation(line: 366, column: 29, scope: !1619, inlinedAt: !2118)
!2120 = !DILocation(line: 366, column: 23, scope: !1620, inlinedAt: !2118)
!2121 = !DILocation(line: 358, column: 5, scope: !1641, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 367, column: 18, scope: !1620, inlinedAt: !2118)
!2123 = !DILocation(line: 359, column: 5, scope: !1641, inlinedAt: !2122)
!2124 = !DILocation(line: 360, column: 12, scope: !1641, inlinedAt: !2122)
!2125 = !DILocation(line: 358, column: 14, scope: !1641, inlinedAt: !2122)
!2126 = !DILocation(line: 361, column: 1, scope: !1641, inlinedAt: !2122)
!2127 = !DILocation(line: 367, column: 39, scope: !1620, inlinedAt: !2118)
!2128 = !DILocation(line: 367, column: 34, scope: !1620, inlinedAt: !2118)
!2129 = !DILocation(line: 367, column: 32, scope: !1620, inlinedAt: !2118)
!2130 = !DILocation(line: 374, column: 27, scope: !1633)
!2131 = !DILocation(line: 374, column: 27, scope: !1631)
!2132 = !DILocation(line: 374, column: 21, scope: !1626)
!2133 = !DILocation(line: 375, column: 10, scope: !1626)
!2134 = !DILocation(line: 375, column: 33, scope: !1626)
!2135 = !DILocation(line: 375, column: 42, scope: !1626)
!2136 = !DILocation(line: 375, column: 3, scope: !1626)
!2137 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !1962, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2138)
!2138 = !{!2139, !2140, !2141, !2143, !2145, !2146, !2147, !2148, !2150, !2155}
!2139 = !DILocalVariable(name: "to_del", arg: 1, scope: !2137, file: !124, line: 383, type: !240)
!2140 = !DILocalVariable(name: "sys", scope: !2137, file: !124, line: 386, type: !264)
!2141 = !DILocalVariable(name: "__r", scope: !2142, file: !124, line: 386, type: !264)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !124, line: 386, column: 26)
!2143 = !DILocalVariable(name: "__r", scope: !2144, file: !124, line: 386, type: !264)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !124, line: 386, column: 26)
!2145 = !DILocalVariable(name: "cpu_iter", scope: !2137, file: !124, line: 387, type: !48)
!2146 = !DILocalVariable(name: "temp", scope: !2137, file: !124, line: 390, type: !150)
!2147 = !DILocalVariable(name: "test", scope: !2137, file: !124, line: 391, type: !240)
!2148 = !DILocalVariable(name: "iter", scope: !2149, file: !124, line: 392, type: !48)
!2149 = distinct !DILexicalBlock(scope: !2137, file: !124, line: 392, column: 3)
!2150 = !DILocalVariable(name: "__mptr", scope: !2151, file: !124, line: 395, type: !1505)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !124, line: 395, column: 5)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !124, line: 395, column: 5)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !124, line: 392, column: 46)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !124, line: 392, column: 3)
!2155 = !DILocalVariable(name: "__mptr", scope: !2156, file: !124, line: 395, type: !1505)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !124, line: 395, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2152, file: !124, line: 395, column: 5)
!2158 = !DILocation(line: 383, column: 42, scope: !2137)
!2159 = !DILocation(line: 386, column: 26, scope: !2144)
!2160 = !{i32 -2147179106}
!2161 = !DILocation(line: 386, column: 26, scope: !2142)
!2162 = !DILocation(line: 386, column: 20, scope: !2137)
!2163 = !DILocation(line: 387, column: 23, scope: !2137)
!2164 = !DILocation(line: 387, column: 7, scope: !2137)
!2165 = !DILocation(line: 392, column: 12, scope: !2149)
!2166 = !DILocation(line: 392, column: 27, scope: !2154)
!2167 = !DILocation(line: 392, column: 3, scope: !2149)
!2168 = !DILocation(line: 394, column: 14, scope: !2153)
!2169 = !DILocation(line: 394, column: 31, scope: !2153)
!2170 = !DILocation(line: 394, column: 40, scope: !2153)
!2171 = !DILocation(line: 390, column: 21, scope: !2137)
!2172 = !DILocation(line: 395, column: 5, scope: !2151)
!2173 = !DILocation(line: 391, column: 15, scope: !2137)
!2174 = !DILocation(line: 0, scope: !2152)
!2175 = !DILocation(line: 395, column: 5, scope: !2152)
!2176 = !DILocation(line: 395, column: 5, scope: !2157)
!2177 = !DILocation(line: 400, column: 16, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !124, line: 400, column: 11)
!2179 = distinct !DILexicalBlock(scope: !2157, file: !124, line: 395, column: 48)
!2180 = !DILocation(line: 400, column: 11, scope: !2179)
!2181 = distinct !{!2181, !2175, !2182}
!2182 = !DILocation(line: 404, column: 5, scope: !2152)
!2183 = !DILocation(line: 392, column: 43, scope: !2154)
!2184 = distinct !{!2184, !2167, !2185}
!2185 = !DILocation(line: 405, column: 3, scope: !2149)
!2186 = !DILocation(line: 401, column: 33, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2178, file: !124, line: 400, column: 26)
!2188 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 401, column: 9, scope: !2187)
!2190 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !2189)
!2191 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !2189)
!2192 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !2189)
!2194 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !2193)
!2195 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !2193)
!2196 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !2193)
!2197 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !2193)
!2198 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !2193)
!2199 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !2189)
!2201 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2200)
!2202 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2200)
!2203 = !DILocation(line: 408, column: 1, scope: !2137)
!2204 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2205)
!2205 = !{!2206, !2207, !2209, !2211, !2212, !2218, !2219, !2224, !2226, !2229, !2231}
!2206 = !DILocalVariable(name: "id", scope: !2204, file: !124, line: 437, type: !291)
!2207 = !DILocalVariable(name: "__r", scope: !2208, file: !124, line: 437, type: !291)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !124, line: 437, column: 19)
!2209 = !DILocalVariable(name: "__r", scope: !2210, file: !124, line: 437, type: !291)
!2210 = distinct !DILexicalBlock(scope: !2208, file: !124, line: 437, column: 19)
!2211 = !DILocalVariable(name: "my_cpu", scope: !2204, file: !124, line: 438, type: !270)
!2212 = !DILocalVariable(name: "_p", scope: !2213, file: !124, line: 444, type: !48)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !124, line: 444, column: 2)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !124, line: 444, column: 2)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !124, line: 444, column: 2)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !124, line: 443, column: 29)
!2217 = distinct !DILexicalBlock(scope: !2204, file: !124, line: 443, column: 9)
!2218 = !DILocalVariable(name: "_t", scope: !2213, file: !124, line: 444, type: !160)
!2219 = !DILocalVariable(name: "__r", scope: !2220, file: !124, line: 444, type: !291)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !124, line: 444, column: 2)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !124, line: 444, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !124, line: 444, column: 2)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !124, line: 444, column: 2)
!2224 = !DILocalVariable(name: "__r", scope: !2225, file: !124, line: 444, type: !291)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !124, line: 444, column: 2)
!2226 = !DILocalVariable(name: "__r", scope: !2227, file: !124, line: 444, type: !291)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !124, line: 444, column: 2)
!2228 = distinct !DILexicalBlock(scope: !2222, file: !124, line: 444, column: 2)
!2229 = !DILocalVariable(name: "__r", scope: !2230, file: !124, line: 444, type: !291)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !124, line: 444, column: 2)
!2231 = !DILocalVariable(name: "_p", scope: !2232, file: !124, line: 444, type: !48)
!2232 = distinct !DILexicalBlock(scope: !2214, file: !124, line: 444, column: 2)
!2233 = !DILocation(line: 437, column: 19, scope: !2210)
!2234 = !{i32 -2147162343}
!2235 = !DILocation(line: 437, column: 19, scope: !2208)
!2236 = !DILocation(line: 437, column: 14, scope: !2204)
!2237 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 438, column: 27, scope: !2204)
!2239 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !2238)
!2240 = !DILocation(line: 438, column: 18, scope: !2204)
!2241 = !DILocation(line: 442, column: 23, scope: !2204)
!2242 = !DILocation(line: 442, column: 13, scope: !2204)
!2243 = !DILocation(line: 442, column: 21, scope: !2204)
!2244 = !DILocation(line: 443, column: 10, scope: !2217)
!2245 = !DILocation(line: 443, column: 9, scope: !2204)
!2246 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2251)
!2247 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2248, file: !2248, line: 39, type: !2249, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!2248 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!31}
!2251 = distinct !DILocation(line: 444, column: 2, scope: !2214)
!2252 = !DILocation(line: 444, column: 2, scope: !2214)
!2253 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2258)
!2255 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2248, file: !2248, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2256)
!2256 = !{!2257}
!2257 = !DILocalVariable(name: "base", scope: !2255, file: !2248, line: 84, type: !31)
!2258 = distinct !DILocation(line: 0, scope: !2214)
!2259 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2258)
!2260 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2258)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !2248, line: 85, column: 9)
!2262 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2258)
!2263 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2258)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !2248, line: 85, column: 15)
!2265 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2258)
!2266 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2258)
!2267 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2258)
!2268 = !DILocation(line: 0, scope: !2261, inlinedAt: !2258)
!2269 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2274)
!2271 = distinct !DISubprogram(name: "preempt_disable", scope: !2248, file: !2248, line: 46, type: !2082, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2272)
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "base", scope: !2271, file: !2248, line: 48, type: !31)
!2274 = distinct !DILocation(line: 0, scope: !2214)
!2275 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2274)
!2276 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2274)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !2248, line: 49, column: 9)
!2278 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2274)
!2279 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2274)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !2248, line: 49, column: 15)
!2281 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2274)
!2282 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2274)
!2283 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2274)
!2284 = !DILocation(line: 444, column: 2, scope: !2215)
!2285 = !DILocation(line: 444, column: 2, scope: !2213)
!2286 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 444, column: 2, scope: !2213)
!2288 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2287)
!2289 = !DILocation(line: 444, column: 2, scope: !2222)
!2290 = !DILocation(line: 0, scope: !2222)
!2291 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2298)
!2293 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2248, file: !2248, line: 94, type: !2294, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!39}
!2296 = !{!2297}
!2297 = !DILocalVariable(name: "base", scope: !2293, file: !2248, line: 96, type: !31)
!2298 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2300)
!2299 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2248, file: !2248, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!2300 = distinct !DILocation(line: 0, scope: !2222)
!2301 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2298)
!2302 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2298)
!2303 = distinct !DILexicalBlock(scope: !2293, file: !2248, line: 97, column: 9)
!2304 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2298)
!2305 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2298)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !2248, line: 97, column: 15)
!2307 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2298)
!2308 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2298)
!2309 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2298)
!2310 = !DILocation(line: 444, column: 2, scope: !2223)
!2311 = !DILocation(line: 444, column: 2, scope: !2221)
!2312 = !DILocation(line: 444, column: 2, scope: !2228)
!2313 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2318)
!2315 = distinct !DISubprogram(name: "preempt_enable", scope: !2248, file: !2248, line: 57, type: !2082, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2316)
!2316 = !{!2317}
!2317 = !DILocalVariable(name: "base", scope: !2315, file: !2248, line: 59, type: !31)
!2318 = distinct !DILocation(line: 444, column: 2, scope: !2213)
!2319 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2318)
!2320 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2318)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !2248, line: 60, column: 9)
!2322 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2318)
!2323 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2318)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !2248, line: 60, column: 15)
!2325 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2318)
!2326 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2318)
!2327 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2318)
!2328 = !DILocation(line: 444, column: 2, scope: !2232)
!2329 = !DILocation(line: 444, column: 2, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !124, line: 444, column: 2)
!2331 = distinct !DILexicalBlock(scope: !2232, file: !124, line: 444, column: 2)
!2332 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 0, scope: !2330)
!2336 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2334)
!2337 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2334)
!2338 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2334)
!2339 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2334)
!2340 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2334)
!2341 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2334)
!2342 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2334)
!2343 = !DILocation(line: 0, scope: !2330)
!2344 = !DILocation(line: 444, column: 2, scope: !2331)
!2345 = !DILocation(line: 444, column: 2, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2330, file: !124, line: 444, column: 2)
!2347 = !DILocation(line: 444, column: 2, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2330, file: !124, line: 444, column: 2)
!2349 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 444, column: 2, scope: !2232)
!2352 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2351)
!2353 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2351)
!2354 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2351)
!2355 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2351)
!2356 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2351)
!2357 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2351)
!2358 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2351)
!2359 = !DILocation(line: 0, scope: !2204)
!2360 = !DILocation(line: 449, column: 1, scope: !2204)
!2361 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !2362, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!280}
!2364 = !{!2365, !2366, !2368, !2370, !2372, !2378, !2379, !2384, !2386, !2389, !2391}
!2365 = !DILocalVariable(name: "state", scope: !2361, file: !124, line: 412, type: !280)
!2366 = !DILocalVariable(name: "p", scope: !2367, file: !124, line: 412, type: !31)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !124, line: 412, column: 74)
!2368 = !DILocalVariable(name: "__r", scope: !2369, file: !124, line: 412, type: !291)
!2369 = distinct !DILexicalBlock(scope: !2367, file: !124, line: 412, column: 74)
!2370 = !DILocalVariable(name: "__r", scope: !2371, file: !124, line: 412, type: !291)
!2371 = distinct !DILexicalBlock(scope: !2369, file: !124, line: 412, column: 74)
!2372 = !DILocalVariable(name: "_p", scope: !2373, file: !124, line: 415, type: !48)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !124, line: 415, column: 9)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !124, line: 415, column: 9)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !124, line: 415, column: 9)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !124, line: 414, column: 17)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !124, line: 414, column: 9)
!2378 = !DILocalVariable(name: "_t", scope: !2373, file: !124, line: 415, type: !160)
!2379 = !DILocalVariable(name: "__r", scope: !2380, file: !124, line: 415, type: !291)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !124, line: 415, column: 9)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !124, line: 415, column: 9)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !124, line: 415, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !124, line: 415, column: 9)
!2384 = !DILocalVariable(name: "__r", scope: !2385, file: !124, line: 415, type: !291)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !124, line: 415, column: 9)
!2386 = !DILocalVariable(name: "__r", scope: !2387, file: !124, line: 415, type: !291)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !124, line: 415, column: 9)
!2388 = distinct !DILexicalBlock(scope: !2382, file: !124, line: 415, column: 9)
!2389 = !DILocalVariable(name: "__r", scope: !2390, file: !124, line: 415, type: !291)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !124, line: 415, column: 9)
!2391 = !DILocalVariable(name: "_p", scope: !2392, file: !124, line: 415, type: !48)
!2392 = distinct !DILexicalBlock(scope: !2374, file: !124, line: 415, column: 9)
!2393 = !DILocation(line: 412, column: 74, scope: !2371)
!2394 = !{i32 -2147173852}
!2395 = !DILocation(line: 412, column: 74, scope: !2369)
!2396 = !DILocation(line: 412, column: 74, scope: !2367)
!2397 = !DILocation(line: 414, column: 10, scope: !2377)
!2398 = !DILocation(line: 414, column: 9, scope: !2361)
!2399 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 415, column: 9, scope: !2374)
!2401 = !DILocation(line: 415, column: 9, scope: !2374)
!2402 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 0, scope: !2374)
!2405 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2404)
!2406 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2404)
!2407 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2404)
!2408 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2404)
!2409 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2404)
!2410 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2404)
!2411 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2404)
!2412 = !DILocation(line: 0, scope: !2261, inlinedAt: !2404)
!2413 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 0, scope: !2374)
!2416 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2415)
!2417 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2415)
!2418 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2415)
!2419 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2415)
!2420 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2415)
!2421 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2415)
!2422 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2415)
!2423 = !DILocation(line: 415, column: 9, scope: !2375)
!2424 = !DILocation(line: 415, column: 9, scope: !2373)
!2425 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 415, column: 9, scope: !2373)
!2427 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2426)
!2428 = !DILocation(line: 415, column: 9, scope: !2382)
!2429 = !DILocation(line: 0, scope: !2382)
!2430 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 0, scope: !2382)
!2434 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2432)
!2435 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2432)
!2436 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2432)
!2437 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2432)
!2438 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2432)
!2439 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2432)
!2440 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2432)
!2441 = !DILocation(line: 415, column: 9, scope: !2383)
!2442 = !DILocation(line: 415, column: 9, scope: !2381)
!2443 = !DILocation(line: 415, column: 9, scope: !2388)
!2444 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 415, column: 9, scope: !2373)
!2447 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2446)
!2448 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2446)
!2449 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2446)
!2450 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2446)
!2451 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2446)
!2452 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2446)
!2453 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2446)
!2454 = !DILocation(line: 415, column: 9, scope: !2392)
!2455 = !DILocation(line: 415, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !124, line: 415, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2392, file: !124, line: 415, column: 9)
!2458 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 0, scope: !2456)
!2462 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2460)
!2463 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2460)
!2464 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2460)
!2465 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2460)
!2466 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2460)
!2467 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2460)
!2468 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2460)
!2469 = !DILocation(line: 0, scope: !2456)
!2470 = !DILocation(line: 415, column: 9, scope: !2457)
!2471 = !DILocation(line: 415, column: 9, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2456, file: !124, line: 415, column: 9)
!2473 = !DILocation(line: 415, column: 9, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2456, file: !124, line: 415, column: 9)
!2475 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 415, column: 9, scope: !2392)
!2478 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2477)
!2479 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2477)
!2480 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2477)
!2481 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2477)
!2482 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2477)
!2483 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2477)
!2484 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2477)
!2485 = !DILocation(line: 412, column: 43, scope: !2361)
!2486 = !DILocation(line: 412, column: 35, scope: !2361)
!2487 = !DILocation(line: 419, column: 2, scope: !2361)
!2488 = !DILocation(line: 421, column: 27, scope: !2361)
!2489 = !DILocation(line: 421, column: 5, scope: !2361)
!2490 = !DILocation(line: 424, column: 29, scope: !2361)
!2491 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 424, column: 5, scope: !2361)
!2493 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2492)
!2494 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2492)
!2495 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2492)
!2496 = !DILocation(line: 426, column: 5, scope: !2361)
!2497 = !DILocation(line: 429, column: 5, scope: !2361)
!2498 = !DILocation(line: 431, column: 5, scope: !2361)
!2499 = !DILocation(line: 0, scope: !2361)
!2500 = !DILocation(line: 432, column: 1, scope: !2361)
!2501 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2502)
!2502 = !{!2503, !2504, !2508, !2509, !2514, !2516, !2519, !2521, !2523, !2529, !2530, !2535, !2537, !2540, !2542}
!2503 = !DILocalVariable(name: "my_cpu", scope: !2501, file: !124, line: 454, type: !270)
!2504 = !DILocalVariable(name: "_p", scope: !2505, file: !124, line: 456, type: !48)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !124, line: 456, column: 5)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !124, line: 456, column: 5)
!2507 = distinct !DILexicalBlock(scope: !2501, file: !124, line: 456, column: 5)
!2508 = !DILocalVariable(name: "_t", scope: !2505, file: !124, line: 456, type: !160)
!2509 = !DILocalVariable(name: "__r", scope: !2510, file: !124, line: 456, type: !291)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !124, line: 456, column: 5)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !124, line: 456, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !124, line: 456, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !124, line: 456, column: 5)
!2514 = !DILocalVariable(name: "__r", scope: !2515, file: !124, line: 456, type: !291)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !124, line: 456, column: 5)
!2516 = !DILocalVariable(name: "__r", scope: !2517, file: !124, line: 456, type: !291)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !124, line: 456, column: 5)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !124, line: 456, column: 5)
!2519 = !DILocalVariable(name: "__r", scope: !2520, file: !124, line: 456, type: !291)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !124, line: 456, column: 5)
!2521 = !DILocalVariable(name: "_p", scope: !2522, file: !124, line: 456, type: !48)
!2522 = distinct !DILexicalBlock(scope: !2506, file: !124, line: 456, column: 5)
!2523 = !DILocalVariable(name: "_p", scope: !2524, file: !124, line: 464, type: !48)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !124, line: 464, column: 2)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !124, line: 464, column: 2)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !124, line: 464, column: 2)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !124, line: 463, column: 29)
!2528 = distinct !DILexicalBlock(scope: !2501, file: !124, line: 463, column: 9)
!2529 = !DILocalVariable(name: "_t", scope: !2524, file: !124, line: 464, type: !160)
!2530 = !DILocalVariable(name: "__r", scope: !2531, file: !124, line: 464, type: !291)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !124, line: 464, column: 2)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !124, line: 464, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !124, line: 464, column: 2)
!2534 = distinct !DILexicalBlock(scope: !2524, file: !124, line: 464, column: 2)
!2535 = !DILocalVariable(name: "__r", scope: !2536, file: !124, line: 464, type: !291)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !124, line: 464, column: 2)
!2537 = !DILocalVariable(name: "__r", scope: !2538, file: !124, line: 464, type: !291)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !124, line: 464, column: 2)
!2539 = distinct !DILexicalBlock(scope: !2533, file: !124, line: 464, column: 2)
!2540 = !DILocalVariable(name: "__r", scope: !2541, file: !124, line: 464, type: !291)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !124, line: 464, column: 2)
!2542 = !DILocalVariable(name: "_p", scope: !2543, file: !124, line: 464, type: !48)
!2543 = distinct !DILexicalBlock(scope: !2525, file: !124, line: 464, column: 2)
!2544 = !DILocation(line: 454, column: 88, scope: !2501)
!2545 = !DILocation(line: 454, column: 27, scope: !2501)
!2546 = !DILocation(line: 454, column: 18, scope: !2501)
!2547 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 456, column: 5, scope: !2506)
!2549 = !DILocation(line: 456, column: 5, scope: !2506)
!2550 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 0, scope: !2506)
!2553 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2552)
!2554 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2552)
!2555 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2552)
!2556 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2552)
!2557 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2552)
!2558 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2552)
!2559 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2552)
!2560 = !DILocation(line: 0, scope: !2261, inlinedAt: !2552)
!2561 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 0, scope: !2506)
!2564 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2563)
!2565 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2563)
!2566 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2563)
!2567 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2563)
!2568 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2563)
!2569 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2563)
!2570 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2563)
!2571 = !DILocation(line: 456, column: 5, scope: !2507)
!2572 = !DILocation(line: 456, column: 5, scope: !2505)
!2573 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 456, column: 5, scope: !2505)
!2575 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2574)
!2576 = !DILocation(line: 456, column: 5, scope: !2512)
!2577 = !DILocation(line: 0, scope: !2512)
!2578 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 0, scope: !2512)
!2582 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2580)
!2583 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2580)
!2584 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2580)
!2585 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2580)
!2586 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2580)
!2587 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2580)
!2588 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2580)
!2589 = !DILocation(line: 456, column: 5, scope: !2513)
!2590 = !DILocation(line: 456, column: 5, scope: !2511)
!2591 = !DILocation(line: 456, column: 5, scope: !2518)
!2592 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 456, column: 5, scope: !2505)
!2595 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2594)
!2596 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2594)
!2597 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2594)
!2598 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2594)
!2599 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2594)
!2600 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2594)
!2601 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2594)
!2602 = !DILocation(line: 456, column: 5, scope: !2522)
!2603 = !DILocation(line: 456, column: 5, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !124, line: 456, column: 5)
!2605 = distinct !DILexicalBlock(scope: !2522, file: !124, line: 456, column: 5)
!2606 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 0, scope: !2604)
!2610 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2608)
!2611 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2608)
!2612 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2608)
!2613 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2608)
!2614 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2608)
!2615 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2608)
!2616 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2608)
!2617 = !DILocation(line: 0, scope: !2604)
!2618 = !DILocation(line: 456, column: 5, scope: !2605)
!2619 = !DILocation(line: 456, column: 5, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2604, file: !124, line: 456, column: 5)
!2621 = !DILocation(line: 456, column: 5, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2604, file: !124, line: 456, column: 5)
!2623 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 456, column: 5, scope: !2522)
!2626 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2625)
!2627 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2625)
!2628 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2625)
!2629 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2625)
!2630 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2625)
!2631 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2625)
!2632 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2625)
!2633 = !DILocation(line: 462, column: 23, scope: !2501)
!2634 = !DILocation(line: 462, column: 13, scope: !2501)
!2635 = !DILocation(line: 462, column: 21, scope: !2501)
!2636 = !DILocation(line: 463, column: 10, scope: !2528)
!2637 = !DILocation(line: 463, column: 9, scope: !2501)
!2638 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 464, column: 2, scope: !2525)
!2640 = !DILocation(line: 464, column: 2, scope: !2525)
!2641 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 0, scope: !2525)
!2644 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2643)
!2645 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2643)
!2646 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2643)
!2647 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2643)
!2648 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2643)
!2649 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2643)
!2650 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2643)
!2651 = !DILocation(line: 0, scope: !2261, inlinedAt: !2643)
!2652 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 0, scope: !2525)
!2655 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2654)
!2656 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2654)
!2657 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2654)
!2658 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2654)
!2659 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2654)
!2660 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2654)
!2661 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2654)
!2662 = !DILocation(line: 464, column: 2, scope: !2526)
!2663 = !DILocation(line: 464, column: 2, scope: !2524)
!2664 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 464, column: 2, scope: !2524)
!2666 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2665)
!2667 = !DILocation(line: 464, column: 2, scope: !2533)
!2668 = !DILocation(line: 0, scope: !2533)
!2669 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 0, scope: !2533)
!2673 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2671)
!2674 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2671)
!2675 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2671)
!2676 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2671)
!2677 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2671)
!2678 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2671)
!2679 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2671)
!2680 = !DILocation(line: 464, column: 2, scope: !2534)
!2681 = !DILocation(line: 464, column: 2, scope: !2532)
!2682 = !DILocation(line: 464, column: 2, scope: !2539)
!2683 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 464, column: 2, scope: !2524)
!2686 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2685)
!2687 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2685)
!2688 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2685)
!2689 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2685)
!2690 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2685)
!2691 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2685)
!2692 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2685)
!2693 = !DILocation(line: 464, column: 2, scope: !2543)
!2694 = !DILocation(line: 464, column: 2, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !124, line: 464, column: 2)
!2696 = distinct !DILexicalBlock(scope: !2543, file: !124, line: 464, column: 2)
!2697 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 0, scope: !2695)
!2701 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2699)
!2702 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2699)
!2703 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2699)
!2704 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2699)
!2705 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2699)
!2706 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2699)
!2707 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2699)
!2708 = !DILocation(line: 0, scope: !2695)
!2709 = !DILocation(line: 464, column: 2, scope: !2696)
!2710 = !DILocation(line: 464, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2695, file: !124, line: 464, column: 2)
!2712 = !DILocation(line: 464, column: 2, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2695, file: !124, line: 464, column: 2)
!2714 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 464, column: 2, scope: !2543)
!2717 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2716)
!2718 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2716)
!2719 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2716)
!2720 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2716)
!2721 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2716)
!2722 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2716)
!2723 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2716)
!2724 = !DILocation(line: 0, scope: !2501)
!2725 = !DILocation(line: 469, column: 1, scope: !2501)
!2726 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2727)
!2727 = !{!2728, !2729, !2730, !2736, !2737, !2742, !2744, !2747, !2749, !2751, !2777, !2783, !2784, !2789, !2791, !2794, !2796, !2798, !2799, !2805, !2806, !2811, !2813, !2816, !2818, !2820, !2821, !2827, !2828, !2833, !2835, !2838, !2840}
!2728 = !DILocalVariable(name: "in", arg: 1, scope: !2726, file: !124, line: 511, type: !31)
!2729 = !DILocalVariable(name: "out", arg: 2, scope: !2726, file: !124, line: 511, type: !75)
!2730 = !DILocalVariable(name: "_p", scope: !2731, file: !124, line: 515, type: !48)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !124, line: 515, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !124, line: 515, column: 5)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !124, line: 515, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !124, line: 514, column: 51)
!2735 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 514, column: 7)
!2736 = !DILocalVariable(name: "_t", scope: !2731, file: !124, line: 515, type: !160)
!2737 = !DILocalVariable(name: "__r", scope: !2738, file: !124, line: 515, type: !291)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !124, line: 515, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !124, line: 515, column: 5)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !124, line: 515, column: 5)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !124, line: 515, column: 5)
!2742 = !DILocalVariable(name: "__r", scope: !2743, file: !124, line: 515, type: !291)
!2743 = distinct !DILexicalBlock(scope: !2738, file: !124, line: 515, column: 5)
!2744 = !DILocalVariable(name: "__r", scope: !2745, file: !124, line: 515, type: !291)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !124, line: 515, column: 5)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !124, line: 515, column: 5)
!2747 = !DILocalVariable(name: "__r", scope: !2748, file: !124, line: 515, type: !291)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !124, line: 515, column: 5)
!2749 = !DILocalVariable(name: "_p", scope: !2750, file: !124, line: 515, type: !48)
!2750 = distinct !DILexicalBlock(scope: !2732, file: !124, line: 515, column: 5)
!2751 = !DILocalVariable(name: "c", scope: !2726, file: !124, line: 520, type: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2753)
!2753 = !{!2754, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2752, file: !86, line: 68, baseType: !2755, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2752, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !86, line: 80, baseType: !2758, size: 256, offset: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !86, line: 80, size: 256, elements: !2759)
!2759 = !{!2760, !2766, !2773}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2758, file: !86, line: 81, baseType: !2761, size: 192)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2761, file: !86, line: 50, baseType: !25, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2761, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2761, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2758, file: !86, line: 82, baseType: !2767, size: 256)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2767, file: !86, line: 56, baseType: !25, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2767, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2767, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2767, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2758, file: !86, line: 83, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2775)
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2774, file: !86, line: 63, baseType: !25, size: 64)
!2777 = !DILocalVariable(name: "_p", scope: !2778, file: !124, line: 525, type: !48)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !124, line: 525, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !124, line: 525, column: 5)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !124, line: 525, column: 5)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !124, line: 524, column: 47)
!2782 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 524, column: 7)
!2783 = !DILocalVariable(name: "_t", scope: !2778, file: !124, line: 525, type: !160)
!2784 = !DILocalVariable(name: "__r", scope: !2785, file: !124, line: 525, type: !291)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !124, line: 525, column: 5)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !124, line: 525, column: 5)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !124, line: 525, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2778, file: !124, line: 525, column: 5)
!2789 = !DILocalVariable(name: "__r", scope: !2790, file: !124, line: 525, type: !291)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !124, line: 525, column: 5)
!2791 = !DILocalVariable(name: "__r", scope: !2792, file: !124, line: 525, type: !291)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !124, line: 525, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2787, file: !124, line: 525, column: 5)
!2794 = !DILocalVariable(name: "__r", scope: !2795, file: !124, line: 525, type: !291)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !124, line: 525, column: 5)
!2796 = !DILocalVariable(name: "_p", scope: !2797, file: !124, line: 525, type: !48)
!2797 = distinct !DILexicalBlock(scope: !2779, file: !124, line: 525, column: 5)
!2798 = !DILocalVariable(name: "state", scope: !2726, file: !124, line: 534, type: !1438)
!2799 = !DILocalVariable(name: "_p", scope: !2800, file: !124, line: 536, type: !48)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !124, line: 536, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !124, line: 536, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !124, line: 536, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !124, line: 535, column: 17)
!2804 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 535, column: 7)
!2805 = !DILocalVariable(name: "_t", scope: !2800, file: !124, line: 536, type: !160)
!2806 = !DILocalVariable(name: "__r", scope: !2807, file: !124, line: 536, type: !291)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !124, line: 536, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !124, line: 536, column: 5)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !124, line: 536, column: 5)
!2810 = distinct !DILexicalBlock(scope: !2800, file: !124, line: 536, column: 5)
!2811 = !DILocalVariable(name: "__r", scope: !2812, file: !124, line: 536, type: !291)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !124, line: 536, column: 5)
!2813 = !DILocalVariable(name: "__r", scope: !2814, file: !124, line: 536, type: !291)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !124, line: 536, column: 5)
!2815 = distinct !DILexicalBlock(scope: !2809, file: !124, line: 536, column: 5)
!2816 = !DILocalVariable(name: "__r", scope: !2817, file: !124, line: 536, type: !291)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !124, line: 536, column: 5)
!2818 = !DILocalVariable(name: "_p", scope: !2819, file: !124, line: 536, type: !48)
!2819 = distinct !DILexicalBlock(scope: !2801, file: !124, line: 536, column: 5)
!2820 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2726, file: !124, line: 541, type: !240)
!2821 = !DILocalVariable(name: "_p", scope: !2822, file: !124, line: 543, type: !48)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !124, line: 543, column: 5)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !124, line: 543, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !124, line: 543, column: 5)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !124, line: 542, column: 71)
!2826 = distinct !DILexicalBlock(scope: !2726, file: !124, line: 542, column: 7)
!2827 = !DILocalVariable(name: "_t", scope: !2822, file: !124, line: 543, type: !160)
!2828 = !DILocalVariable(name: "__r", scope: !2829, file: !124, line: 543, type: !291)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 543, column: 5)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 543, column: 5)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !124, line: 543, column: 5)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !124, line: 543, column: 5)
!2833 = !DILocalVariable(name: "__r", scope: !2834, file: !124, line: 543, type: !291)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !124, line: 543, column: 5)
!2835 = !DILocalVariable(name: "__r", scope: !2836, file: !124, line: 543, type: !291)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !124, line: 543, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 543, column: 5)
!2838 = !DILocalVariable(name: "__r", scope: !2839, file: !124, line: 543, type: !291)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !124, line: 543, column: 5)
!2840 = !DILocalVariable(name: "_p", scope: !2841, file: !124, line: 543, type: !48)
!2841 = distinct !DILexicalBlock(scope: !2823, file: !124, line: 543, column: 5)
!2842 = !DILocation(line: 511, column: 27, scope: !2726)
!2843 = !DILocation(line: 511, column: 38, scope: !2726)
!2844 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 514, column: 22, scope: !2735)
!2846 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2845)
!2847 = !DILocation(line: 514, column: 22, scope: !2735)
!2848 = !DILocation(line: 514, column: 7, scope: !2735)
!2849 = !DILocation(line: 514, column: 7, scope: !2726)
!2850 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 515, column: 5, scope: !2732)
!2852 = !DILocation(line: 515, column: 5, scope: !2732)
!2853 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 0, scope: !2732)
!2856 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2855)
!2857 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2855)
!2858 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2855)
!2859 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2855)
!2860 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2855)
!2861 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2855)
!2862 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2855)
!2863 = !DILocation(line: 0, scope: !2261, inlinedAt: !2855)
!2864 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 0, scope: !2732)
!2867 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2866)
!2868 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2866)
!2869 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2866)
!2870 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2866)
!2871 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2866)
!2872 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2866)
!2873 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2866)
!2874 = !DILocation(line: 515, column: 5, scope: !2733)
!2875 = !DILocation(line: 515, column: 5, scope: !2731)
!2876 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 515, column: 5, scope: !2731)
!2878 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2877)
!2879 = !DILocation(line: 515, column: 5, scope: !2740)
!2880 = !DILocation(line: 0, scope: !2740)
!2881 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 0, scope: !2740)
!2885 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2883)
!2886 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2883)
!2887 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2883)
!2888 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2883)
!2889 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2883)
!2890 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2883)
!2891 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2883)
!2892 = !DILocation(line: 515, column: 5, scope: !2741)
!2893 = !DILocation(line: 515, column: 5, scope: !2739)
!2894 = !DILocation(line: 515, column: 5, scope: !2746)
!2895 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 515, column: 5, scope: !2731)
!2898 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2897)
!2899 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2897)
!2900 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2897)
!2901 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2897)
!2902 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2897)
!2903 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2897)
!2904 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2897)
!2905 = !DILocation(line: 515, column: 5, scope: !2750)
!2906 = !DILocation(line: 515, column: 5, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !124, line: 515, column: 5)
!2908 = distinct !DILexicalBlock(scope: !2750, file: !124, line: 515, column: 5)
!2909 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 0, scope: !2907)
!2913 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2911)
!2914 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2911)
!2915 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2911)
!2916 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2911)
!2917 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2911)
!2918 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2911)
!2919 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2911)
!2920 = !DILocation(line: 0, scope: !2907)
!2921 = !DILocation(line: 515, column: 5, scope: !2908)
!2922 = !DILocation(line: 515, column: 5, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2907, file: !124, line: 515, column: 5)
!2924 = !DILocation(line: 515, column: 5, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2907, file: !124, line: 515, column: 5)
!2926 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 515, column: 5, scope: !2750)
!2929 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2928)
!2930 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2928)
!2931 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2928)
!2932 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2928)
!2933 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2928)
!2934 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2928)
!2935 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2928)
!2936 = !DILocation(line: 520, column: 3, scope: !2726)
!2937 = !DILocation(line: 520, column: 31, scope: !2726)
!2938 = !DILocation(line: 524, column: 7, scope: !2782)
!2939 = !DILocation(line: 0, scope: !2726)
!2940 = !DILocation(line: 524, column: 7, scope: !2726)
!2941 = !DILocation(line: 525, column: 5, scope: !2779)
!2942 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 0, scope: !2779)
!2945 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !2944)
!2946 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !2944)
!2947 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !2944)
!2948 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !2944)
!2949 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !2944)
!2950 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !2944)
!2951 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !2944)
!2952 = !DILocation(line: 0, scope: !2261, inlinedAt: !2944)
!2953 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 0, scope: !2779)
!2956 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !2955)
!2957 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !2955)
!2958 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !2955)
!2959 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !2955)
!2960 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !2955)
!2961 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !2955)
!2962 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !2955)
!2963 = !DILocation(line: 525, column: 5, scope: !2780)
!2964 = !DILocation(line: 525, column: 5, scope: !2778)
!2965 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 525, column: 5, scope: !2778)
!2967 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2966)
!2968 = !DILocation(line: 525, column: 5, scope: !2787)
!2969 = !DILocation(line: 0, scope: !2787)
!2970 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 0, scope: !2787)
!2974 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !2972)
!2975 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !2972)
!2976 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !2972)
!2977 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !2972)
!2978 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !2972)
!2979 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !2972)
!2980 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !2972)
!2981 = !DILocation(line: 525, column: 5, scope: !2788)
!2982 = !DILocation(line: 525, column: 5, scope: !2786)
!2983 = !DILocation(line: 525, column: 5, scope: !2793)
!2984 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 525, column: 5, scope: !2778)
!2987 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !2986)
!2988 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !2986)
!2989 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !2986)
!2990 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !2986)
!2991 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !2986)
!2992 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !2986)
!2993 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !2986)
!2994 = !DILocation(line: 525, column: 5, scope: !2797)
!2995 = !DILocation(line: 525, column: 5, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !124, line: 525, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2797, file: !124, line: 525, column: 5)
!2998 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 0, scope: !2996)
!3002 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3000)
!3003 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3000)
!3004 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3000)
!3005 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3000)
!3006 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3000)
!3007 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3000)
!3008 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3000)
!3009 = !DILocation(line: 0, scope: !2996)
!3010 = !DILocation(line: 525, column: 5, scope: !2997)
!3011 = !DILocation(line: 525, column: 5, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2996, file: !124, line: 525, column: 5)
!3013 = !DILocation(line: 525, column: 5, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2996, file: !124, line: 525, column: 5)
!3015 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 525, column: 5, scope: !2797)
!3018 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3017)
!3019 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3017)
!3020 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3017)
!3021 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3017)
!3022 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3017)
!3023 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3017)
!3024 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3017)
!3025 = !DILocation(line: 526, column: 5, scope: !2781)
!3026 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 534, column: 24, scope: !2726)
!3029 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3028)
!3030 = !DILocation(line: 534, column: 16, scope: !2726)
!3031 = !DILocation(line: 535, column: 8, scope: !2804)
!3032 = !DILocation(line: 535, column: 7, scope: !2726)
!3033 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 536, column: 5, scope: !2801)
!3035 = !DILocation(line: 536, column: 5, scope: !2801)
!3036 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 0, scope: !2801)
!3039 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !3038)
!3040 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !3038)
!3041 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !3038)
!3042 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !3038)
!3043 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !3038)
!3044 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !3038)
!3045 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !3038)
!3046 = !DILocation(line: 0, scope: !2261, inlinedAt: !3038)
!3047 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 0, scope: !2801)
!3050 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !3049)
!3051 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !3049)
!3052 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !3049)
!3053 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !3049)
!3054 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !3049)
!3055 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !3049)
!3056 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !3049)
!3057 = !DILocation(line: 536, column: 5, scope: !2802)
!3058 = !DILocation(line: 536, column: 5, scope: !2800)
!3059 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 536, column: 5, scope: !2800)
!3061 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3060)
!3062 = !DILocation(line: 536, column: 5, scope: !2809)
!3063 = !DILocation(line: 0, scope: !2809)
!3064 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 0, scope: !2809)
!3068 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3066)
!3069 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3066)
!3070 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3066)
!3071 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3066)
!3072 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3066)
!3073 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3066)
!3074 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3066)
!3075 = !DILocation(line: 536, column: 5, scope: !2810)
!3076 = !DILocation(line: 536, column: 5, scope: !2808)
!3077 = !DILocation(line: 536, column: 5, scope: !2815)
!3078 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 536, column: 5, scope: !2800)
!3081 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3080)
!3082 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3080)
!3083 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3080)
!3084 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3080)
!3085 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3080)
!3086 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3080)
!3087 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3080)
!3088 = !DILocation(line: 536, column: 5, scope: !2819)
!3089 = !DILocation(line: 536, column: 5, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !124, line: 536, column: 5)
!3091 = distinct !DILexicalBlock(scope: !2819, file: !124, line: 536, column: 5)
!3092 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 0, scope: !3090)
!3096 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3094)
!3097 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3094)
!3098 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3094)
!3099 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3094)
!3100 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3094)
!3101 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3094)
!3102 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3094)
!3103 = !DILocation(line: 0, scope: !3090)
!3104 = !DILocation(line: 536, column: 5, scope: !3091)
!3105 = !DILocation(line: 536, column: 5, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3090, file: !124, line: 536, column: 5)
!3107 = !DILocation(line: 536, column: 5, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3090, file: !124, line: 536, column: 5)
!3109 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 536, column: 5, scope: !2819)
!3112 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3111)
!3113 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3111)
!3114 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3111)
!3115 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3111)
!3116 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3111)
!3117 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3111)
!3118 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3111)
!3119 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 538, column: 25, scope: !2726)
!3121 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3120)
!3122 = !DILocation(line: 538, column: 10, scope: !2726)
!3123 = !DILocation(line: 538, column: 23, scope: !2726)
!3124 = !DILocation(line: 541, column: 3, scope: !2726)
!3125 = !DILocation(line: 541, column: 15, scope: !2726)
!3126 = !DILocation(line: 542, column: 7, scope: !2826)
!3127 = !DILocation(line: 542, column: 66, scope: !2826)
!3128 = !DILocation(line: 542, column: 7, scope: !2726)
!3129 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 543, column: 5, scope: !2823)
!3131 = !DILocation(line: 543, column: 5, scope: !2823)
!3132 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 0, scope: !2823)
!3135 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !3134)
!3136 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !3134)
!3137 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !3134)
!3138 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !3134)
!3139 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !3134)
!3140 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !3134)
!3141 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !3134)
!3142 = !DILocation(line: 0, scope: !2261, inlinedAt: !3134)
!3143 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 0, scope: !2823)
!3146 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !3145)
!3147 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !3145)
!3148 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !3145)
!3149 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !3145)
!3150 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !3145)
!3151 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !3145)
!3152 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !3145)
!3153 = !DILocation(line: 543, column: 5, scope: !2824)
!3154 = !DILocation(line: 543, column: 5, scope: !2822)
!3155 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 543, column: 5, scope: !2822)
!3157 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3156)
!3158 = !DILocation(line: 543, column: 5, scope: !2831)
!3159 = !DILocation(line: 0, scope: !2831)
!3160 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 0, scope: !2831)
!3164 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3162)
!3165 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3162)
!3166 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3162)
!3167 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3162)
!3168 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3162)
!3169 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3162)
!3170 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3162)
!3171 = !DILocation(line: 543, column: 5, scope: !2832)
!3172 = !DILocation(line: 543, column: 5, scope: !2830)
!3173 = !DILocation(line: 543, column: 5, scope: !2837)
!3174 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 543, column: 5, scope: !2822)
!3177 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3176)
!3178 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3176)
!3179 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3176)
!3180 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3176)
!3181 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3176)
!3182 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3176)
!3183 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3176)
!3184 = !DILocation(line: 543, column: 5, scope: !2841)
!3185 = !DILocation(line: 543, column: 5, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !124, line: 543, column: 5)
!3187 = distinct !DILexicalBlock(scope: !2841, file: !124, line: 543, column: 5)
!3188 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 0, scope: !3186)
!3192 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3190)
!3193 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3190)
!3194 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3190)
!3195 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3190)
!3196 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3190)
!3197 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3190)
!3198 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3190)
!3199 = !DILocation(line: 0, scope: !3186)
!3200 = !DILocation(line: 543, column: 5, scope: !3187)
!3201 = !DILocation(line: 543, column: 5, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3186, file: !124, line: 543, column: 5)
!3203 = !DILocation(line: 543, column: 5, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3186, file: !124, line: 543, column: 5)
!3205 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 543, column: 5, scope: !2841)
!3208 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3207)
!3209 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3207)
!3210 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3207)
!3211 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3207)
!3212 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3207)
!3213 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3207)
!3214 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3207)
!3215 = !DILocation(line: 547, column: 23, scope: !2726)
!3216 = !DILocation(line: 547, column: 10, scope: !2726)
!3217 = !DILocation(line: 547, column: 21, scope: !2726)
!3218 = !DILocation(line: 548, column: 10, scope: !2726)
!3219 = !DILocation(line: 548, column: 21, scope: !2726)
!3220 = !DILocation(line: 551, column: 3, scope: !2726)
!3221 = !DILocation(line: 551, column: 19, scope: !2726)
!3222 = !DILocation(line: 551, column: 27, scope: !2726)
!3223 = !DILocation(line: 198, column: 33, scope: !1848, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 554, column: 3, scope: !2726)
!3225 = !DILocation(line: 202, column: 9, scope: !1848, inlinedAt: !3224)
!3226 = !DILocation(line: 202, column: 19, scope: !1848, inlinedAt: !3224)
!3227 = !DILocation(line: 202, column: 32, scope: !1848, inlinedAt: !3224)
!3228 = !DILocation(line: 202, column: 3, scope: !1848, inlinedAt: !3224)
!3229 = !DILocation(line: 208, column: 3, scope: !1848, inlinedAt: !3224)
!3230 = !DILocation(line: 557, column: 1, scope: !2726)
!3231 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3232)
!3232 = !{!3233, !3234}
!3233 = !DILocalVariable(name: "in", arg: 1, scope: !3231, file: !124, line: 479, type: !31)
!3234 = !DILocalVariable(name: "out", arg: 2, scope: !3231, file: !124, line: 479, type: !75)
!3235 = !DILocation(line: 479, column: 35, scope: !3231)
!3236 = !DILocation(line: 479, column: 46, scope: !3231)
!3237 = !DILocation(line: 481, column: 3, scope: !3231)
!3238 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 711, column: 7, scope: !3242, inlinedAt: !3246)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !124, line: 711, column: 7)
!3243 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 709, type: !507, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "f_to", scope: !3243, file: !124, line: 715, type: !240)
!3246 = distinct !DILocation(line: 489, column: 5, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3231, file: !124, line: 481, column: 13)
!3248 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3239)
!3249 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3240)
!3250 = !DILocation(line: 98, column: 30, scope: !1468, inlinedAt: !3241)
!3251 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 711, column: 30, scope: !3242, inlinedAt: !3246)
!3253 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3252)
!3254 = !DILocation(line: 711, column: 27, scope: !3242, inlinedAt: !3246)
!3255 = !DILocation(line: 711, column: 7, scope: !3243, inlinedAt: !3246)
!3256 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 715, column: 22, scope: !3243, inlinedAt: !3246)
!3261 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3257)
!3262 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3258)
!3263 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !3259)
!3264 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !3260)
!3265 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !3260)
!3266 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !3260)
!3268 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !3267)
!3269 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !3267)
!3270 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !3260)
!3271 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !3260)
!3272 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !3260)
!3273 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !3260)
!3275 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !3274)
!3276 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !3274)
!3277 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !3274)
!3279 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !3278)
!3280 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !3278)
!3281 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !3278)
!3282 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !3278)
!3283 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !3278)
!3284 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !3274)
!3286 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3285)
!3287 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3285)
!3288 = !DILocation(line: 715, column: 15, scope: !3243, inlinedAt: !3246)
!3289 = !DILocation(line: 725, column: 12, scope: !3290, inlinedAt: !3246)
!3290 = distinct !DILexicalBlock(scope: !3243, file: !124, line: 725, column: 7)
!3291 = !DILocation(line: 725, column: 7, scope: !3243, inlinedAt: !3246)
!3292 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 726, column: 9, scope: !3296, inlinedAt: !3246)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !124, line: 726, column: 9)
!3297 = distinct !DILexicalBlock(scope: !3290, file: !124, line: 725, column: 21)
!3298 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3293)
!3299 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3294)
!3300 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !3295)
!3301 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 726, column: 31, scope: !3296, inlinedAt: !3246)
!3305 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3302)
!3306 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3303)
!3307 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !3304)
!3308 = !DILocation(line: 726, column: 28, scope: !3296, inlinedAt: !3246)
!3309 = !DILocation(line: 726, column: 9, scope: !3297, inlinedAt: !3246)
!3310 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 730, column: 16, scope: !3314, inlinedAt: !3246)
!3314 = distinct !DILexicalBlock(scope: !3296, file: !124, line: 729, column: 12)
!3315 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3311)
!3316 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3312)
!3317 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !3313)
!3318 = !DILocation(line: 732, column: 3, scope: !3297, inlinedAt: !3246)
!3319 = !DILocation(line: 0, scope: !3243, inlinedAt: !3246)
!3320 = !DILocation(line: 734, column: 10, scope: !3243, inlinedAt: !3246)
!3321 = !DILocation(line: 734, column: 3, scope: !3243, inlinedAt: !3246)
!3322 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 490, column: 28, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3247, file: !124, line: 490, column: 9)
!3327 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3323)
!3328 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3324)
!3329 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !3325)
!3330 = !DILocalVariable(name: "head", arg: 1, scope: !3331, file: !53, line: 201, type: !1505)
!3331 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1518, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3332)
!3332 = !{!3330, !3333}
!3333 = !DILocalVariable(name: "next", scope: !3331, file: !53, line: 203, type: !150)
!3334 = !DILocation(line: 201, column: 62, scope: !3331, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 490, column: 9, scope: !3326)
!3336 = !DILocation(line: 203, column: 33, scope: !3331, inlinedAt: !3335)
!3337 = !DILocation(line: 203, column: 20, scope: !3331, inlinedAt: !3335)
!3338 = !DILocation(line: 204, column: 15, scope: !3331, inlinedAt: !3335)
!3339 = !DILocation(line: 204, column: 24, scope: !3331, inlinedAt: !3335)
!3340 = !DILocation(line: 204, column: 42, scope: !3331, inlinedAt: !3335)
!3341 = !DILocation(line: 204, column: 33, scope: !3331, inlinedAt: !3335)
!3342 = !DILocation(line: 490, column: 9, scope: !3247)
!3343 = !DILocation(line: 489, column: 5, scope: !3247)
!3344 = distinct !{!3344, !3237, !3345}
!3345 = !DILocation(line: 508, column: 3, scope: !3231)
!3346 = !DILocation(line: 492, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3326, file: !124, line: 490, column: 47)
!3348 = !DILocation(line: 494, column: 5, scope: !3347)
!3349 = !DILocation(line: 602, column: 36, scope: !602)
!3350 = !DILocation(line: 602, column: 47, scope: !602)
!3351 = !DILocation(line: 602, column: 61, scope: !602)
!3352 = !DILocation(line: 602, column: 85, scope: !602)
!3353 = !DILocation(line: 602, column: 110, scope: !602)
!3354 = !DILocation(line: 605, column: 15, scope: !602)
!3355 = !DILocation(line: 608, column: 41, scope: !602)
!3356 = !DILocation(line: 608, column: 19, scope: !602)
!3357 = !DILocation(line: 611, column: 11, scope: !613)
!3358 = !DILocation(line: 614, column: 8, scope: !626)
!3359 = !DILocation(line: 614, column: 7, scope: !602)
!3360 = !DILocation(line: 620, column: 3, scope: !602)
!3361 = !DILocation(line: 623, column: 10, scope: !602)
!3362 = !DILocation(line: 623, column: 19, scope: !602)
!3363 = !DILocation(line: 625, column: 10, scope: !602)
!3364 = !DILocation(line: 625, column: 21, scope: !602)
!3365 = !DILocation(line: 628, column: 26, scope: !615)
!3366 = !DILocation(line: 628, column: 10, scope: !602)
!3367 = !DILocation(line: 628, column: 16, scope: !602)
!3368 = !DILocation(line: 631, column: 8, scope: !637)
!3369 = !DILocation(line: 631, column: 7, scope: !602)
!3370 = !DILocation(line: 634, column: 5, scope: !640)
!3371 = !DILocation(line: 635, column: 5, scope: !640)
!3372 = !DILocation(line: 639, column: 10, scope: !602)
!3373 = !DILocation(line: 639, column: 14, scope: !602)
!3374 = !DILocation(line: 640, column: 10, scope: !602)
!3375 = !DILocation(line: 640, column: 16, scope: !602)
!3376 = !DILocation(line: 641, column: 10, scope: !602)
!3377 = !DILocation(line: 641, column: 17, scope: !602)
!3378 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 644, column: 3, scope: !602)
!3380 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !3379)
!3381 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !3379)
!3382 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !3379)
!3384 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3383)
!3385 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !3379)
!3386 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3383)
!3387 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3383)
!3388 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3383)
!3389 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !3379)
!3391 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3390)
!3392 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3390)
!3393 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3390)
!3394 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3390)
!3395 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !3379)
!3397 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3396)
!3398 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3396)
!3399 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3396)
!3400 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3396)
!3401 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !3379)
!3403 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3402)
!3404 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3402)
!3405 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3402)
!3406 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3402)
!3407 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !3379)
!3409 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3408)
!3410 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3408)
!3411 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3408)
!3412 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3408)
!3413 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !3379)
!3415 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3414)
!3416 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3414)
!3417 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3414)
!3418 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3414)
!3419 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !3379)
!3420 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !3379)
!3422 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3421)
!3423 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3421)
!3424 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3421)
!3425 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3421)
!3426 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !3379)
!3428 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3427)
!3429 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3427)
!3430 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3427)
!3431 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3427)
!3432 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !3379)
!3434 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3433)
!3435 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3433)
!3436 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3433)
!3437 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3433)
!3438 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !3379)
!3440 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3439)
!3441 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3439)
!3442 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3439)
!3443 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3439)
!3444 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !3379)
!3446 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3445)
!3447 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3445)
!3448 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3445)
!3449 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3445)
!3450 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !3379)
!3452 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3451)
!3453 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3451)
!3454 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3451)
!3455 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3451)
!3456 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !3379)
!3458 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3457)
!3459 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3457)
!3460 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3457)
!3461 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3457)
!3462 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !3379)
!3464 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3463)
!3465 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3463)
!3466 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3463)
!3467 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3463)
!3468 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !3379)
!3470 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3469)
!3471 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3469)
!3472 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3469)
!3473 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3469)
!3474 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !3379)
!3476 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3475)
!3477 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3475)
!3478 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3475)
!3479 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3475)
!3480 = !DILocation(line: 647, column: 7, scope: !763)
!3481 = !DILocation(line: 647, column: 7, scope: !602)
!3482 = !DILocation(line: 648, column: 19, scope: !762)
!3483 = !DILocation(line: 649, column: 3, scope: !762)
!3484 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 650, column: 15, scope: !602)
!3486 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3485)
!3487 = !DILocation(line: 650, column: 33, scope: !602)
!3488 = !DILocation(line: 650, column: 10, scope: !602)
!3489 = !DILocation(line: 650, column: 13, scope: !602)
!3490 = !DILocation(line: 653, column: 27, scope: !602)
!3491 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 653, column: 3, scope: !602)
!3493 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3492)
!3494 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3492)
!3495 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3492)
!3496 = !DILocation(line: 656, column: 10, scope: !602)
!3497 = !DILocation(line: 656, column: 19, scope: !602)
!3498 = !DILocation(line: 657, column: 27, scope: !602)
!3499 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 657, column: 3, scope: !602)
!3501 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3500)
!3502 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3500)
!3503 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3500)
!3504 = !DILocation(line: 658, column: 27, scope: !602)
!3505 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 658, column: 3, scope: !602)
!3507 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3506)
!3508 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3506)
!3509 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3506)
!3510 = !DILocation(line: 660, column: 3, scope: !602)
!3511 = !DILocation(line: 0, scope: !602)
!3512 = !DILocation(line: 661, column: 1, scope: !602)
!3513 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 711, column: 7, scope: !3242)
!3517 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3514)
!3518 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3515)
!3519 = !DILocation(line: 98, column: 30, scope: !1468, inlinedAt: !3516)
!3520 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 711, column: 30, scope: !3242)
!3522 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3521)
!3523 = !DILocation(line: 711, column: 27, scope: !3242)
!3524 = !DILocation(line: 711, column: 7, scope: !3243)
!3525 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 715, column: 22, scope: !3243)
!3530 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3526)
!3531 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3527)
!3532 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !3528)
!3533 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !3529)
!3534 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !3529)
!3535 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !3529)
!3537 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !3536)
!3538 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !3536)
!3539 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !3529)
!3540 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !3529)
!3541 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !3529)
!3542 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !3529)
!3544 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !3543)
!3545 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !3543)
!3546 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !3543)
!3548 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !3547)
!3549 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !3547)
!3550 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !3547)
!3551 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !3547)
!3552 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !3547)
!3553 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !3543)
!3555 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3554)
!3556 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3554)
!3557 = !DILocation(line: 715, column: 15, scope: !3243)
!3558 = !DILocation(line: 725, column: 12, scope: !3290)
!3559 = !DILocation(line: 725, column: 7, scope: !3243)
!3560 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 726, column: 9, scope: !3296)
!3564 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3561)
!3565 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3562)
!3566 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !3563)
!3567 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 726, column: 31, scope: !3296)
!3571 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3568)
!3572 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3569)
!3573 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !3570)
!3574 = !DILocation(line: 726, column: 28, scope: !3296)
!3575 = !DILocation(line: 726, column: 9, scope: !3297)
!3576 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 730, column: 16, scope: !3314)
!3580 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3577)
!3581 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3578)
!3582 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !3579)
!3583 = !DILocation(line: 732, column: 3, scope: !3297)
!3584 = !DILocation(line: 0, scope: !3243)
!3585 = !DILocation(line: 734, column: 10, scope: !3243)
!3586 = !DILocation(line: 734, column: 3, scope: !3243)
!3587 = !DILocation(line: 735, column: 1, scope: !3243)
!3588 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !2082, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3589)
!3589 = !{!3590, !3591, !3595, !3596, !3601, !3603, !3606, !3608, !3610, !3616, !3617, !3622, !3624, !3627, !3629}
!3590 = !DILocalVariable(name: "my_cpu", scope: !3588, file: !124, line: 572, type: !270)
!3591 = !DILocalVariable(name: "_p", scope: !3592, file: !124, line: 573, type: !48)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !124, line: 573, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !124, line: 573, column: 5)
!3594 = distinct !DILexicalBlock(scope: !3588, file: !124, line: 573, column: 5)
!3595 = !DILocalVariable(name: "_t", scope: !3592, file: !124, line: 573, type: !160)
!3596 = !DILocalVariable(name: "__r", scope: !3597, file: !124, line: 573, type: !291)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !124, line: 573, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !124, line: 573, column: 5)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !124, line: 573, column: 5)
!3600 = distinct !DILexicalBlock(scope: !3592, file: !124, line: 573, column: 5)
!3601 = !DILocalVariable(name: "__r", scope: !3602, file: !124, line: 573, type: !291)
!3602 = distinct !DILexicalBlock(scope: !3597, file: !124, line: 573, column: 5)
!3603 = !DILocalVariable(name: "__r", scope: !3604, file: !124, line: 573, type: !291)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !124, line: 573, column: 5)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !124, line: 573, column: 5)
!3606 = !DILocalVariable(name: "__r", scope: !3607, file: !124, line: 573, type: !291)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !124, line: 573, column: 5)
!3608 = !DILocalVariable(name: "_p", scope: !3609, file: !124, line: 573, type: !48)
!3609 = distinct !DILexicalBlock(scope: !3593, file: !124, line: 573, column: 5)
!3610 = !DILocalVariable(name: "_p", scope: !3611, file: !124, line: 575, type: !48)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !124, line: 575, column: 2)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !124, line: 575, column: 2)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !124, line: 575, column: 2)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !124, line: 574, column: 45)
!3615 = distinct !DILexicalBlock(scope: !3588, file: !124, line: 574, column: 9)
!3616 = !DILocalVariable(name: "_t", scope: !3611, file: !124, line: 575, type: !160)
!3617 = !DILocalVariable(name: "__r", scope: !3618, file: !124, line: 575, type: !291)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !124, line: 575, column: 2)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !124, line: 575, column: 2)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !124, line: 575, column: 2)
!3621 = distinct !DILexicalBlock(scope: !3611, file: !124, line: 575, column: 2)
!3622 = !DILocalVariable(name: "__r", scope: !3623, file: !124, line: 575, type: !291)
!3623 = distinct !DILexicalBlock(scope: !3618, file: !124, line: 575, column: 2)
!3624 = !DILocalVariable(name: "__r", scope: !3625, file: !124, line: 575, type: !291)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !124, line: 575, column: 2)
!3626 = distinct !DILexicalBlock(scope: !3620, file: !124, line: 575, column: 2)
!3627 = !DILocalVariable(name: "__r", scope: !3628, file: !124, line: 575, type: !291)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !124, line: 575, column: 2)
!3629 = !DILocalVariable(name: "_p", scope: !3630, file: !124, line: 575, type: !48)
!3630 = distinct !DILexicalBlock(scope: !3612, file: !124, line: 575, column: 2)
!3631 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 572, column: 26, scope: !3588)
!3633 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3632)
!3634 = !DILocation(line: 572, column: 17, scope: !3588)
!3635 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 573, column: 5, scope: !3593)
!3637 = !DILocation(line: 573, column: 5, scope: !3593)
!3638 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 0, scope: !3593)
!3641 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !3640)
!3642 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !3640)
!3643 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !3640)
!3644 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !3640)
!3645 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !3640)
!3646 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !3640)
!3647 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !3640)
!3648 = !DILocation(line: 0, scope: !2261, inlinedAt: !3640)
!3649 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 0, scope: !3593)
!3652 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !3651)
!3653 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !3651)
!3654 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !3651)
!3655 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !3651)
!3656 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !3651)
!3657 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !3651)
!3658 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !3651)
!3659 = !DILocation(line: 573, column: 5, scope: !3594)
!3660 = !DILocation(line: 573, column: 5, scope: !3592)
!3661 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 573, column: 5, scope: !3592)
!3663 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3662)
!3664 = !DILocation(line: 573, column: 5, scope: !3599)
!3665 = !DILocation(line: 0, scope: !3599)
!3666 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 0, scope: !3599)
!3670 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3668)
!3671 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3668)
!3672 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3668)
!3673 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3668)
!3674 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3668)
!3675 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3668)
!3676 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3668)
!3677 = !DILocation(line: 573, column: 5, scope: !3600)
!3678 = !DILocation(line: 573, column: 5, scope: !3598)
!3679 = !DILocation(line: 573, column: 5, scope: !3605)
!3680 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 573, column: 5, scope: !3592)
!3683 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3682)
!3684 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3682)
!3685 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3682)
!3686 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3682)
!3687 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3682)
!3688 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3682)
!3689 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3682)
!3690 = !DILocation(line: 573, column: 5, scope: !3609)
!3691 = !DILocation(line: 573, column: 5, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !124, line: 573, column: 5)
!3693 = distinct !DILexicalBlock(scope: !3609, file: !124, line: 573, column: 5)
!3694 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 0, scope: !3692)
!3698 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3696)
!3699 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3696)
!3700 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3696)
!3701 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3696)
!3702 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3696)
!3703 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3696)
!3704 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3696)
!3705 = !DILocation(line: 0, scope: !3692)
!3706 = !DILocation(line: 573, column: 5, scope: !3693)
!3707 = !DILocation(line: 573, column: 5, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3692, file: !124, line: 573, column: 5)
!3709 = !DILocation(line: 573, column: 5, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3692, file: !124, line: 573, column: 5)
!3711 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 573, column: 5, scope: !3609)
!3714 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3713)
!3715 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3713)
!3716 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3713)
!3717 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3713)
!3718 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3713)
!3719 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3713)
!3720 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3713)
!3721 = !DILocation(line: 561, column: 3, scope: !3722, inlinedAt: !3751)
!3722 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3723)
!3723 = !{!3724, !3726, !3729, !3731, !3736, !3737, !3742, !3744, !3747, !3749}
!3724 = !DILocalVariable(name: "tid", scope: !3722, file: !124, line: 561, type: !3725)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!3726 = !DILocalVariable(name: "__r", scope: !3727, file: !124, line: 562, type: !291)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !124, line: 562, column: 79)
!3728 = distinct !DILexicalBlock(scope: !3722, file: !124, line: 562, column: 7)
!3729 = !DILocalVariable(name: "__r", scope: !3730, file: !124, line: 562, type: !291)
!3730 = distinct !DILexicalBlock(scope: !3727, file: !124, line: 562, column: 79)
!3731 = !DILocalVariable(name: "_p", scope: !3732, file: !124, line: 563, type: !48)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !124, line: 563, column: 7)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !124, line: 563, column: 7)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !124, line: 563, column: 7)
!3735 = distinct !DILexicalBlock(scope: !3728, file: !124, line: 562, column: 93)
!3736 = !DILocalVariable(name: "_t", scope: !3732, file: !124, line: 563, type: !160)
!3737 = !DILocalVariable(name: "__r", scope: !3738, file: !124, line: 563, type: !291)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !124, line: 563, column: 7)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !124, line: 563, column: 7)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !124, line: 563, column: 7)
!3741 = distinct !DILexicalBlock(scope: !3732, file: !124, line: 563, column: 7)
!3742 = !DILocalVariable(name: "__r", scope: !3743, file: !124, line: 563, type: !291)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !124, line: 563, column: 7)
!3744 = !DILocalVariable(name: "__r", scope: !3745, file: !124, line: 563, type: !291)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !124, line: 563, column: 7)
!3746 = distinct !DILexicalBlock(scope: !3740, file: !124, line: 563, column: 7)
!3747 = !DILocalVariable(name: "__r", scope: !3748, file: !124, line: 563, type: !291)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !124, line: 563, column: 7)
!3749 = !DILocalVariable(name: "_p", scope: !3750, file: !124, line: 563, type: !48)
!3750 = distinct !DILexicalBlock(scope: !3733, file: !124, line: 563, column: 7)
!3751 = distinct !DILocation(line: 574, column: 9, scope: !3615)
!3752 = !DILocation(line: 562, column: 79, scope: !3730, inlinedAt: !3751)
!3753 = !{i32 -2147099476}
!3754 = !DILocation(line: 562, column: 79, scope: !3727, inlinedAt: !3751)
!3755 = !DILocation(line: 561, column: 18, scope: !3722, inlinedAt: !3751)
!3756 = !DILocation(line: 562, column: 7, scope: !3728, inlinedAt: !3751)
!3757 = !DILocation(line: 562, column: 7, scope: !3722, inlinedAt: !3751)
!3758 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 563, column: 7, scope: !3733, inlinedAt: !3751)
!3760 = !DILocation(line: 563, column: 7, scope: !3733, inlinedAt: !3751)
!3761 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 0, scope: !3733, inlinedAt: !3751)
!3764 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !3763)
!3765 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !3763)
!3766 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !3763)
!3767 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !3763)
!3768 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !3763)
!3769 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !3763)
!3770 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !3763)
!3771 = !DILocation(line: 0, scope: !2261, inlinedAt: !3763)
!3772 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 0, scope: !3733, inlinedAt: !3751)
!3775 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !3774)
!3776 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !3774)
!3777 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !3774)
!3778 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !3774)
!3779 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !3774)
!3780 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !3774)
!3781 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !3774)
!3782 = !DILocation(line: 563, column: 7, scope: !3734, inlinedAt: !3751)
!3783 = !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3751)
!3784 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3751)
!3786 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3785)
!3787 = !DILocation(line: 563, column: 7, scope: !3740, inlinedAt: !3751)
!3788 = !DILocation(line: 0, scope: !3740, inlinedAt: !3751)
!3789 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 0, scope: !3740, inlinedAt: !3751)
!3793 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3791)
!3794 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3791)
!3795 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3791)
!3796 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3791)
!3797 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3791)
!3798 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3791)
!3799 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3791)
!3800 = !DILocation(line: 563, column: 7, scope: !3741, inlinedAt: !3751)
!3801 = !DILocation(line: 563, column: 7, scope: !3739, inlinedAt: !3751)
!3802 = !DILocation(line: 563, column: 7, scope: !3746, inlinedAt: !3751)
!3803 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3751)
!3806 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3805)
!3807 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3805)
!3808 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3805)
!3809 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3805)
!3810 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3805)
!3811 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3805)
!3812 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3805)
!3813 = !DILocation(line: 563, column: 7, scope: !3750, inlinedAt: !3751)
!3814 = !DILocation(line: 563, column: 7, scope: !3815, inlinedAt: !3751)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !124, line: 563, column: 7)
!3816 = distinct !DILexicalBlock(scope: !3750, file: !124, line: 563, column: 7)
!3817 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 0, scope: !3815, inlinedAt: !3751)
!3821 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3819)
!3822 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3819)
!3823 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3819)
!3824 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3819)
!3825 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3819)
!3826 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3819)
!3827 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3819)
!3828 = !DILocation(line: 0, scope: !3815, inlinedAt: !3751)
!3829 = !DILocation(line: 563, column: 7, scope: !3816, inlinedAt: !3751)
!3830 = !DILocation(line: 563, column: 7, scope: !3831, inlinedAt: !3751)
!3831 = distinct !DILexicalBlock(scope: !3815, file: !124, line: 563, column: 7)
!3832 = !DILocation(line: 563, column: 7, scope: !3833, inlinedAt: !3751)
!3833 = distinct !DILexicalBlock(scope: !3815, file: !124, line: 563, column: 7)
!3834 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 563, column: 7, scope: !3750, inlinedAt: !3751)
!3837 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3836)
!3838 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3836)
!3839 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3836)
!3840 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3836)
!3841 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3836)
!3842 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3836)
!3843 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3836)
!3844 = !DILocation(line: 568, column: 1, scope: !3722, inlinedAt: !3751)
!3845 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 575, column: 2, scope: !3612)
!3847 = !DILocation(line: 575, column: 2, scope: !3612)
!3848 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 84, column: 18, scope: !2255, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 0, scope: !3612)
!3851 = !DILocation(line: 84, column: 11, scope: !2255, inlinedAt: !3850)
!3852 = !DILocation(line: 85, column: 9, scope: !2261, inlinedAt: !3850)
!3853 = !DILocation(line: 85, column: 9, scope: !2255, inlinedAt: !3850)
!3854 = !DILocation(line: 87, column: 57, scope: !2264, inlinedAt: !3850)
!3855 = !DILocation(line: 87, column: 30, scope: !2264, inlinedAt: !3850)
!3856 = !DILocation(line: 87, column: 9, scope: !2264, inlinedAt: !3850)
!3857 = !DILocation(line: 87, column: 2, scope: !2264, inlinedAt: !3850)
!3858 = !DILocation(line: 0, scope: !2261, inlinedAt: !3850)
!3859 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 48, column: 18, scope: !2271, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 0, scope: !3612)
!3862 = !DILocation(line: 48, column: 11, scope: !2271, inlinedAt: !3861)
!3863 = !DILocation(line: 49, column: 9, scope: !2277, inlinedAt: !3861)
!3864 = !DILocation(line: 49, column: 9, scope: !2271, inlinedAt: !3861)
!3865 = !DILocation(line: 51, column: 50, scope: !2280, inlinedAt: !3861)
!3866 = !DILocation(line: 51, column: 23, scope: !2280, inlinedAt: !3861)
!3867 = !DILocation(line: 51, column: 2, scope: !2280, inlinedAt: !3861)
!3868 = !DILocation(line: 52, column: 5, scope: !2280, inlinedAt: !3861)
!3869 = !DILocation(line: 575, column: 2, scope: !3613)
!3870 = !DILocation(line: 575, column: 2, scope: !3611)
!3871 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 575, column: 2, scope: !3611)
!3873 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3872)
!3874 = !DILocation(line: 575, column: 2, scope: !3620)
!3875 = !DILocation(line: 0, scope: !3620)
!3876 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 0, scope: !3620)
!3880 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3878)
!3881 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3878)
!3882 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3878)
!3883 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3878)
!3884 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3878)
!3885 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3878)
!3886 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3878)
!3887 = !DILocation(line: 575, column: 2, scope: !3621)
!3888 = !DILocation(line: 575, column: 2, scope: !3619)
!3889 = !DILocation(line: 575, column: 2, scope: !3626)
!3890 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 575, column: 2, scope: !3611)
!3893 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3892)
!3894 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3892)
!3895 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3892)
!3896 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3892)
!3897 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3892)
!3898 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3892)
!3899 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3892)
!3900 = !DILocation(line: 575, column: 2, scope: !3630)
!3901 = !DILocation(line: 575, column: 2, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !124, line: 575, column: 2)
!3903 = distinct !DILexicalBlock(scope: !3630, file: !124, line: 575, column: 2)
!3904 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 96, column: 18, scope: !2293, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 107, column: 12, scope: !2299, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 0, scope: !3902)
!3908 = !DILocation(line: 96, column: 11, scope: !2293, inlinedAt: !3906)
!3909 = !DILocation(line: 97, column: 9, scope: !2303, inlinedAt: !3906)
!3910 = !DILocation(line: 97, column: 9, scope: !2293, inlinedAt: !3906)
!3911 = !DILocation(line: 98, column: 57, scope: !2306, inlinedAt: !3906)
!3912 = !DILocation(line: 98, column: 30, scope: !2306, inlinedAt: !3906)
!3913 = !DILocation(line: 98, column: 9, scope: !2306, inlinedAt: !3906)
!3914 = !DILocation(line: 98, column: 2, scope: !2306, inlinedAt: !3906)
!3915 = !DILocation(line: 0, scope: !3902)
!3916 = !DILocation(line: 575, column: 2, scope: !3903)
!3917 = !DILocation(line: 575, column: 2, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3902, file: !124, line: 575, column: 2)
!3919 = !DILocation(line: 575, column: 2, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3902, file: !124, line: 575, column: 2)
!3921 = !DILocation(line: 43, column: 21, scope: !2247, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 59, column: 18, scope: !2315, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 575, column: 2, scope: !3630)
!3924 = !DILocation(line: 59, column: 11, scope: !2315, inlinedAt: !3923)
!3925 = !DILocation(line: 60, column: 9, scope: !2321, inlinedAt: !3923)
!3926 = !DILocation(line: 60, column: 9, scope: !2315, inlinedAt: !3923)
!3927 = !DILocation(line: 62, column: 50, scope: !2324, inlinedAt: !3923)
!3928 = !DILocation(line: 62, column: 23, scope: !2324, inlinedAt: !3923)
!3929 = !DILocation(line: 62, column: 2, scope: !2324, inlinedAt: !3923)
!3930 = !DILocation(line: 63, column: 5, scope: !2324, inlinedAt: !3923)
!3931 = !DILocation(line: 576, column: 2, scope: !3614)
!3932 = !DILocation(line: 579, column: 1, scope: !3588)
!3933 = !DILocation(line: 693, column: 35, scope: !584)
!3934 = !DILocation(line: 693, column: 46, scope: !584)
!3935 = !DILocation(line: 693, column: 60, scope: !584)
!3936 = !DILocation(line: 693, column: 84, scope: !584)
!3937 = !DILocation(line: 693, column: 104, scope: !584)
!3938 = !DILocation(line: 693, column: 134, scope: !584)
!3939 = !DILocation(line: 695, column: 3, scope: !584)
!3940 = !DILocation(line: 696, column: 16, scope: !584)
!3941 = !DILocation(line: 696, column: 3, scope: !584)
!3942 = !DILocation(line: 698, column: 3, scope: !584)
!3943 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 701, type: !507, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1440)
!3944 = !DILocation(line: 703, column: 3, scope: !3943)
!3945 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 711, column: 7, scope: !3242, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 704, column: 10, scope: !3943)
!3950 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3946)
!3951 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3947)
!3952 = !DILocation(line: 98, column: 30, scope: !1468, inlinedAt: !3948)
!3953 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 711, column: 30, scope: !3242, inlinedAt: !3949)
!3955 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3954)
!3956 = !DILocation(line: 711, column: 27, scope: !3242, inlinedAt: !3949)
!3957 = !DILocation(line: 711, column: 7, scope: !3243, inlinedAt: !3949)
!3958 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 715, column: 22, scope: !3243, inlinedAt: !3949)
!3963 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3959)
!3964 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3960)
!3965 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !3961)
!3966 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !3962)
!3967 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !3962)
!3968 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !3962)
!3970 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !3969)
!3971 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !3969)
!3972 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !3962)
!3973 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !3962)
!3974 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !3962)
!3975 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !3962)
!3977 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !3976)
!3978 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !3976)
!3979 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !3976)
!3981 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !3980)
!3982 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !3980)
!3983 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !3980)
!3984 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !3980)
!3985 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !3980)
!3986 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !3976)
!3988 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3987)
!3989 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3987)
!3990 = !DILocation(line: 715, column: 15, scope: !3243, inlinedAt: !3949)
!3991 = !DILocation(line: 725, column: 12, scope: !3290, inlinedAt: !3949)
!3992 = !DILocation(line: 725, column: 7, scope: !3243, inlinedAt: !3949)
!3993 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 726, column: 9, scope: !3296, inlinedAt: !3949)
!3997 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !3994)
!3998 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !3995)
!3999 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !3996)
!4000 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 726, column: 31, scope: !3296, inlinedAt: !3949)
!4004 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4001)
!4005 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4002)
!4006 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4003)
!4007 = !DILocation(line: 726, column: 28, scope: !3296, inlinedAt: !3949)
!4008 = !DILocation(line: 726, column: 9, scope: !3297, inlinedAt: !3949)
!4009 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 730, column: 16, scope: !3314, inlinedAt: !3949)
!4013 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4010)
!4014 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4011)
!4015 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4012)
!4016 = !DILocation(line: 732, column: 3, scope: !3297, inlinedAt: !3949)
!4017 = !DILocation(line: 0, scope: !3243, inlinedAt: !3949)
!4018 = !DILocation(line: 734, column: 10, scope: !3243, inlinedAt: !3949)
!4019 = !DILocation(line: 734, column: 3, scope: !3243, inlinedAt: !3949)
!4020 = !DILocation(line: 704, column: 3, scope: !3943)
!4021 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 737, type: !1962, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4022)
!4022 = !{!4023, !4024}
!4023 = !DILocalVariable(name: "f_to", arg: 1, scope: !4021, file: !124, line: 737, type: !240)
!4024 = !DILocalVariable(name: "new_to", scope: !4025, file: !124, line: 745, type: !240)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !124, line: 741, column: 38)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !124, line: 741, column: 7)
!4027 = !DILocation(line: 737, column: 35, scope: !4021)
!4028 = !DILocation(line: 383, column: 42, scope: !2137, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 741, column: 7, scope: !4026)
!4030 = !DILocation(line: 386, column: 26, scope: !2144, inlinedAt: !4029)
!4031 = !DILocation(line: 386, column: 26, scope: !2142, inlinedAt: !4029)
!4032 = !DILocation(line: 386, column: 20, scope: !2137, inlinedAt: !4029)
!4033 = !DILocation(line: 387, column: 23, scope: !2137, inlinedAt: !4029)
!4034 = !DILocation(line: 387, column: 7, scope: !2137, inlinedAt: !4029)
!4035 = !DILocation(line: 392, column: 12, scope: !2149, inlinedAt: !4029)
!4036 = !DILocation(line: 392, column: 27, scope: !2154, inlinedAt: !4029)
!4037 = !DILocation(line: 392, column: 3, scope: !2149, inlinedAt: !4029)
!4038 = !DILocation(line: 394, column: 14, scope: !2153, inlinedAt: !4029)
!4039 = !DILocation(line: 394, column: 31, scope: !2153, inlinedAt: !4029)
!4040 = !DILocation(line: 394, column: 40, scope: !2153, inlinedAt: !4029)
!4041 = !DILocation(line: 390, column: 21, scope: !2137, inlinedAt: !4029)
!4042 = !DILocation(line: 395, column: 5, scope: !2151, inlinedAt: !4029)
!4043 = !DILocation(line: 391, column: 15, scope: !2137, inlinedAt: !4029)
!4044 = !DILocation(line: 0, scope: !2152, inlinedAt: !4029)
!4045 = !DILocation(line: 395, column: 5, scope: !2152, inlinedAt: !4029)
!4046 = !DILocation(line: 395, column: 5, scope: !2157, inlinedAt: !4029)
!4047 = !DILocation(line: 400, column: 16, scope: !2178, inlinedAt: !4029)
!4048 = !DILocation(line: 400, column: 11, scope: !2179, inlinedAt: !4029)
!4049 = !DILocation(line: 392, column: 43, scope: !2154, inlinedAt: !4029)
!4050 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 745, column: 26, scope: !4025)
!4055 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4051)
!4056 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4052)
!4057 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !4053)
!4058 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !4054)
!4059 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !4054)
!4060 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !4054)
!4062 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !4061)
!4063 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !4061)
!4064 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !4054)
!4065 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !4054)
!4066 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !4054)
!4067 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !4054)
!4069 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !4068)
!4070 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !4068)
!4071 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !4068)
!4073 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !4072)
!4074 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !4072)
!4075 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !4072)
!4076 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !4072)
!4077 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !4072)
!4078 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !4068)
!4080 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4079)
!4081 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4079)
!4082 = !DILocation(line: 745, column: 17, scope: !4025)
!4083 = !DILocation(line: 747, column: 16, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4025, file: !124, line: 747, column: 9)
!4085 = !DILocation(line: 747, column: 9, scope: !4025)
!4086 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 748, column: 11, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !124, line: 748, column: 11)
!4091 = distinct !DILexicalBlock(scope: !4084, file: !124, line: 747, column: 25)
!4092 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4087)
!4093 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4088)
!4094 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !4089)
!4095 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 748, column: 33, scope: !4090)
!4099 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4096)
!4100 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4097)
!4101 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4098)
!4102 = !DILocation(line: 748, column: 30, scope: !4090)
!4103 = !DILocation(line: 748, column: 11, scope: !4091)
!4104 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 752, column: 20, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4090, file: !124, line: 751, column: 14)
!4109 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4105)
!4110 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4106)
!4111 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4107)
!4112 = !DILocation(line: 754, column: 5, scope: !4091)
!4113 = !DILocation(line: 0, scope: !4025)
!4114 = !DILocation(line: 757, column: 5, scope: !4025)
!4115 = !DILocation(line: 759, column: 5, scope: !4025)
!4116 = !DILocation(line: 401, column: 33, scope: !2187, inlinedAt: !4029)
!4117 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 401, column: 9, scope: !2187, inlinedAt: !4029)
!4119 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !4118)
!4120 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !4118)
!4121 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !4118)
!4123 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !4122)
!4124 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !4122)
!4125 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !4122)
!4126 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !4122)
!4127 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !4122)
!4128 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !4118)
!4130 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4129)
!4131 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4129)
!4132 = !DILocation(line: 763, column: 3, scope: !4021)
!4133 = !DILocation(line: 766, column: 3, scope: !4021)
!4134 = !DILocation(line: 0, scope: !4021)
!4135 = !DILocation(line: 767, column: 1, scope: !4021)
!4136 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 769, type: !4137, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4142)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!48, !4139, !31}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!29, !31}
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4136, file: !124, line: 769, type: !4139)
!4144 = !DILocalVariable(name: "state", arg: 2, scope: !4136, file: !124, line: 769, type: !31)
!4145 = !DILocation(line: 769, column: 42, scope: !4136)
!4146 = !DILocation(line: 769, column: 77, scope: !4136)
!4147 = !DILocation(line: 771, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4136, file: !124, line: 771, column: 7)
!4149 = !DILocation(line: 771, column: 7, scope: !4136)
!4150 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 711, column: 7, scope: !3242, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 772, column: 12, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4148, file: !124, line: 771, column: 28)
!4156 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4151)
!4157 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4152)
!4158 = !DILocation(line: 98, column: 30, scope: !1468, inlinedAt: !4153)
!4159 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 711, column: 30, scope: !3242, inlinedAt: !4154)
!4161 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4160)
!4162 = !DILocation(line: 711, column: 27, scope: !3242, inlinedAt: !4154)
!4163 = !DILocation(line: 711, column: 7, scope: !3243, inlinedAt: !4154)
!4164 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 715, column: 22, scope: !3243, inlinedAt: !4154)
!4169 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4165)
!4170 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4166)
!4171 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !4167)
!4172 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !4168)
!4173 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !4168)
!4174 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !4168)
!4176 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !4175)
!4177 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !4175)
!4178 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !4168)
!4179 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !4168)
!4180 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !4168)
!4181 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !4168)
!4183 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !4182)
!4184 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !4182)
!4185 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !4182)
!4187 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !4186)
!4188 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !4186)
!4189 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !4186)
!4190 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !4186)
!4191 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !4186)
!4192 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !4182)
!4194 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4193)
!4195 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4193)
!4196 = !DILocation(line: 715, column: 15, scope: !3243, inlinedAt: !4154)
!4197 = !DILocation(line: 725, column: 12, scope: !3290, inlinedAt: !4154)
!4198 = !DILocation(line: 725, column: 7, scope: !3243, inlinedAt: !4154)
!4199 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 726, column: 9, scope: !3296, inlinedAt: !4154)
!4203 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4200)
!4204 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4201)
!4205 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !4202)
!4206 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 726, column: 31, scope: !3296, inlinedAt: !4154)
!4210 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4207)
!4211 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4208)
!4212 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4209)
!4213 = !DILocation(line: 726, column: 28, scope: !3296, inlinedAt: !4154)
!4214 = !DILocation(line: 726, column: 9, scope: !3297, inlinedAt: !4154)
!4215 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 730, column: 16, scope: !3314, inlinedAt: !4154)
!4219 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4216)
!4220 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4217)
!4221 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4218)
!4222 = !DILocation(line: 732, column: 3, scope: !3297, inlinedAt: !4154)
!4223 = !DILocation(line: 0, scope: !3243, inlinedAt: !4154)
!4224 = !DILocation(line: 734, column: 10, scope: !3243, inlinedAt: !4154)
!4225 = !DILocation(line: 734, column: 3, scope: !3243, inlinedAt: !4154)
!4226 = !DILocation(line: 772, column: 5, scope: !4155)
!4227 = !DILocation(line: 0, scope: !4136)
!4228 = !DILocation(line: 775, column: 1, scope: !4136)
!4229 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 777, type: !4230, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!48, !240, !4139, !31}
!4232 = !{!4233, !4234, !4235}
!4233 = !DILocalVariable(name: "fib", arg: 1, scope: !4229, file: !124, line: 777, type: !240)
!4234 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4229, file: !124, line: 777, type: !4139)
!4235 = !DILocalVariable(name: "state", arg: 3, scope: !4229, file: !124, line: 777, type: !31)
!4236 = !DILocation(line: 777, column: 47, scope: !4229)
!4237 = !DILocation(line: 777, column: 62, scope: !4229)
!4238 = !DILocation(line: 777, column: 97, scope: !4229)
!4239 = !DILocation(line: 779, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4229, file: !124, line: 779, column: 7)
!4241 = !DILocation(line: 779, column: 7, scope: !4229)
!4242 = !DILocation(line: 780, column: 12, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !124, line: 779, column: 28)
!4244 = !DILocation(line: 780, column: 5, scope: !4243)
!4245 = !DILocation(line: 0, scope: !4229)
!4246 = !DILocation(line: 783, column: 1, scope: !4229)
!4247 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 785, type: !1451, scopeLine: 786, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4249 = !DILocalVariable(name: "curr", scope: !4247, file: !124, line: 788, type: !240)
!4250 = !DILocalVariable(name: "size", scope: !4247, file: !124, line: 791, type: !25)
!4251 = !DILocalVariable(name: "alloc_size", scope: !4247, file: !124, line: 791, type: !25)
!4252 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4247, file: !124, line: 792, type: !25)
!4253 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4247, file: !124, line: 793, type: !25)
!4254 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4247, file: !124, line: 794, type: !25)
!4255 = !DILocalVariable(name: "child_stack", scope: !4247, file: !124, line: 795, type: !31)
!4256 = !DILocalVariable(name: "rsp", scope: !4247, file: !124, line: 796, type: !25)
!4257 = !DILocalVariable(name: "rbp0", scope: !4247, file: !124, line: 801, type: !31)
!4258 = !DILocalVariable(name: "rbp1", scope: !4247, file: !124, line: 802, type: !31)
!4259 = !DILocalVariable(name: "rbp_tos", scope: !4247, file: !124, line: 803, type: !31)
!4260 = !DILocalVariable(name: "ret0_addr", scope: !4247, file: !124, line: 804, type: !31)
!4261 = !DILocalVariable(name: "rbp_stash_addr", scope: !4247, file: !124, line: 816, type: !31)
!4262 = !DILocalVariable(name: "new", scope: !4247, file: !124, line: 832, type: !240)
!4263 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4247, file: !124, line: 848, type: !75)
!4264 = !DILocalVariable(name: "rbp2_ptr", scope: !4247, file: !124, line: 852, type: !75)
!4265 = !DILocalVariable(name: "ret2_ptr", scope: !4247, file: !124, line: 853, type: !75)
!4266 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 788, column: 22, scope: !4247)
!4270 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4267)
!4271 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4268)
!4272 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !4269)
!4273 = !DILocation(line: 788, column: 15, scope: !4247)
!4274 = !DILocation(line: 799, column: 3, scope: !4247)
!4275 = !{i32 23632}
!4276 = !DILocation(line: 796, column: 16, scope: !4247)
!4277 = !DILocation(line: 801, column: 21, scope: !4247)
!4278 = !DILocation(line: 801, column: 9, scope: !4247)
!4279 = !DILocation(line: 802, column: 21, scope: !4247)
!4280 = !DILocation(line: 802, column: 9, scope: !4247)
!4281 = !DILocation(line: 803, column: 21, scope: !4247)
!4282 = !DILocation(line: 803, column: 9, scope: !4247)
!4283 = !DILocation(line: 804, column: 26, scope: !4247)
!4284 = !DILocation(line: 804, column: 9, scope: !4247)
!4285 = !DILocation(line: 806, column: 44, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4247, file: !124, line: 806, column: 7)
!4287 = !DILocation(line: 806, column: 25, scope: !4286)
!4288 = !DILocation(line: 0, scope: !4247)
!4289 = !DILocation(line: 807, column: 46, scope: !4286)
!4290 = !DILocation(line: 807, column: 20, scope: !4286)
!4291 = !DILocation(line: 806, column: 50, scope: !4286)
!4292 = !DILocation(line: 816, column: 36, scope: !4247)
!4293 = !DILocation(line: 816, column: 9, scope: !4247)
!4294 = !DILocation(line: 822, column: 19, scope: !4247)
!4295 = !DILocation(line: 822, column: 24, scope: !4247)
!4296 = !DILocation(line: 791, column: 12, scope: !4247)
!4297 = !DILocation(line: 823, column: 37, scope: !4247)
!4298 = !DILocation(line: 792, column: 16, scope: !4247)
!4299 = !DILocation(line: 793, column: 16, scope: !4247)
!4300 = !DILocation(line: 826, column: 32, scope: !4247)
!4301 = !DILocation(line: 826, column: 57, scope: !4247)
!4302 = !DILocation(line: 794, column: 16, scope: !4247)
!4303 = !DILocation(line: 791, column: 18, scope: !4247)
!4304 = !DILocation(line: 832, column: 3, scope: !4247)
!4305 = !DILocation(line: 832, column: 15, scope: !4247)
!4306 = !DILocation(line: 833, column: 3, scope: !4247)
!4307 = !DILocation(line: 836, column: 15, scope: !4247)
!4308 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 836, column: 3, scope: !4247)
!4310 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4309)
!4311 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !4309)
!4312 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4309)
!4313 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4309)
!4314 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4309)
!4315 = !DILocation(line: 838, column: 17, scope: !4247)
!4316 = !DILocation(line: 838, column: 22, scope: !4247)
!4317 = !DILocation(line: 795, column: 17, scope: !4247)
!4318 = !DILocation(line: 840, column: 22, scope: !4247)
!4319 = !DILocation(line: 840, column: 35, scope: !4247)
!4320 = !DILocation(line: 840, column: 3, scope: !4247)
!4321 = !DILocation(line: 841, column: 57, scope: !4247)
!4322 = !DILocation(line: 841, column: 14, scope: !4247)
!4323 = !DILocation(line: 841, column: 3, scope: !4247)
!4324 = !DILocation(line: 841, column: 8, scope: !4247)
!4325 = !DILocation(line: 841, column: 12, scope: !4247)
!4326 = !DILocation(line: 848, column: 35, scope: !4247)
!4327 = !DILocation(line: 848, column: 40, scope: !4247)
!4328 = !DILocation(line: 848, column: 78, scope: !4247)
!4329 = !DILocation(line: 848, column: 26, scope: !4247)
!4330 = !DILocation(line: 848, column: 10, scope: !4247)
!4331 = !DILocation(line: 849, column: 37, scope: !4247)
!4332 = !DILocation(line: 849, column: 20, scope: !4247)
!4333 = !DILocation(line: 849, column: 18, scope: !4247)
!4334 = !DILocation(line: 852, column: 30, scope: !4247)
!4335 = !DILocation(line: 852, column: 35, scope: !4247)
!4336 = !DILocation(line: 852, column: 39, scope: !4247)
!4337 = !DILocation(line: 852, column: 68, scope: !4247)
!4338 = !DILocation(line: 852, column: 21, scope: !4247)
!4339 = !DILocation(line: 852, column: 10, scope: !4247)
!4340 = !DILocation(line: 853, column: 29, scope: !4247)
!4341 = !DILocation(line: 853, column: 10, scope: !4247)
!4342 = !DILocation(line: 862, column: 13, scope: !4247)
!4343 = !DILocation(line: 869, column: 16, scope: !4247)
!4344 = !DILocation(line: 869, column: 21, scope: !4247)
!4345 = !DILocation(line: 869, column: 24, scope: !4247)
!4346 = !DILocation(line: 869, column: 4, scope: !4247)
!4347 = !DILocation(line: 869, column: 41, scope: !4247)
!4348 = !DILocation(line: 872, column: 16, scope: !4247)
!4349 = !DILocation(line: 663, column: 30, scope: !1601, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 872, column: 3, scope: !4247)
!4351 = !DILocation(line: 663, column: 41, scope: !1601, inlinedAt: !4350)
!4352 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 666, column: 30, scope: !1601, inlinedAt: !4350)
!4356 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4353)
!4357 = !DILocation(line: 666, column: 16, scope: !1601, inlinedAt: !4350)
!4358 = !DILocation(line: 0, scope: !1601, inlinedAt: !4350)
!4359 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 674, column: 41, scope: !1601, inlinedAt: !4350)
!4363 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4360)
!4364 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4361)
!4365 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !4362)
!4366 = !DILocation(line: 674, column: 21, scope: !1601, inlinedAt: !4350)
!4367 = !DILocation(line: 678, column: 6, scope: !1601, inlinedAt: !4350)
!4368 = !DILocation(line: 678, column: 15, scope: !1601, inlinedAt: !4350)
!4369 = !DILocation(line: 679, column: 22, scope: !1601, inlinedAt: !4350)
!4370 = !DILocation(line: 116, column: 52, scope: !1672, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 679, column: 3, scope: !1601, inlinedAt: !4350)
!4372 = !DILocation(line: 116, column: 76, scope: !1672, inlinedAt: !4371)
!4373 = !DILocation(line: 118, column: 25, scope: !1672, inlinedAt: !4371)
!4374 = !DILocation(line: 85, column: 49, scope: !1680, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 118, column: 2, scope: !1672, inlinedAt: !4371)
!4376 = !DILocation(line: 86, column: 28, scope: !1680, inlinedAt: !4375)
!4377 = !DILocation(line: 87, column: 28, scope: !1680, inlinedAt: !4375)
!4378 = !DILocation(line: 89, column: 13, scope: !1680, inlinedAt: !4375)
!4379 = !DILocation(line: 90, column: 8, scope: !1680, inlinedAt: !4375)
!4380 = !DILocation(line: 90, column: 13, scope: !1680, inlinedAt: !4375)
!4381 = !DILocation(line: 91, column: 8, scope: !1680, inlinedAt: !4375)
!4382 = !DILocation(line: 91, column: 13, scope: !1680, inlinedAt: !4375)
!4383 = !DILocation(line: 92, column: 8, scope: !1680, inlinedAt: !4375)
!4384 = !DILocation(line: 92, column: 13, scope: !1680, inlinedAt: !4375)
!4385 = !DILocation(line: 683, column: 20, scope: !1698, inlinedAt: !4350)
!4386 = !DILocation(line: 683, column: 7, scope: !1698, inlinedAt: !4350)
!4387 = !DILocation(line: 683, column: 7, scope: !1601, inlinedAt: !4350)
!4388 = !DILocation(line: 687, column: 5, scope: !1702, inlinedAt: !4350)
!4389 = !DILocation(line: 688, column: 3, scope: !1702, inlinedAt: !4350)
!4390 = !DILocation(line: 874, column: 10, scope: !4247)
!4391 = !DILocation(line: 875, column: 1, scope: !4247)
!4392 = !DILocation(line: 874, column: 3, scope: !4247)
!4393 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 878, type: !1962, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4394)
!4394 = !{!4395, !4396, !4397}
!4395 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4393, file: !124, line: 878, type: !240)
!4396 = !DILocalVariable(name: "curr_fiber", scope: !4393, file: !124, line: 888, type: !240)
!4397 = !DILocalVariable(name: "wait_q", scope: !4393, file: !124, line: 897, type: !150)
!4398 = !DILocation(line: 878, column: 31, scope: !4393)
!4399 = !DILocation(line: 884, column: 8, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4393, file: !124, line: 884, column: 7)
!4401 = !DILocation(line: 884, column: 7, scope: !4393)
!4402 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 888, column: 28, scope: !4393)
!4406 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4403)
!4407 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4404)
!4408 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !4405)
!4409 = !DILocation(line: 888, column: 15, scope: !4393)
!4410 = !DILocation(line: 897, column: 41, scope: !4393)
!4411 = !DILocation(line: 897, column: 21, scope: !4393)
!4412 = !DILocation(line: 898, column: 31, scope: !4393)
!4413 = !DILocation(line: 116, column: 52, scope: !1672, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 898, column: 3, scope: !4393)
!4415 = !DILocation(line: 116, column: 76, scope: !1672, inlinedAt: !4414)
!4416 = !DILocation(line: 118, column: 25, scope: !1672, inlinedAt: !4414)
!4417 = !DILocation(line: 85, column: 49, scope: !1680, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 118, column: 2, scope: !1672, inlinedAt: !4414)
!4419 = !DILocation(line: 86, column: 28, scope: !1680, inlinedAt: !4418)
!4420 = !DILocation(line: 87, column: 28, scope: !1680, inlinedAt: !4418)
!4421 = !DILocation(line: 89, column: 13, scope: !1680, inlinedAt: !4418)
!4422 = !DILocation(line: 90, column: 8, scope: !1680, inlinedAt: !4418)
!4423 = !DILocation(line: 90, column: 13, scope: !1680, inlinedAt: !4418)
!4424 = !DILocation(line: 91, column: 8, scope: !1680, inlinedAt: !4418)
!4425 = !DILocation(line: 91, column: 13, scope: !1680, inlinedAt: !4418)
!4426 = !DILocation(line: 92, column: 8, scope: !1680, inlinedAt: !4418)
!4427 = !DILocation(line: 92, column: 13, scope: !1680, inlinedAt: !4418)
!4428 = !DILocation(line: 899, column: 12, scope: !4393)
!4429 = !DILocation(line: 899, column: 20, scope: !4393)
!4430 = !DILocation(line: 900, column: 15, scope: !4393)
!4431 = !DILocation(line: 900, column: 24, scope: !4393)
!4432 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 98, column: 10, scope: !1468, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 711, column: 7, scope: !3242, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 904, column: 10, scope: !4393)
!4437 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4433)
!4438 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4434)
!4439 = !DILocation(line: 98, column: 30, scope: !1468, inlinedAt: !4435)
!4440 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 711, column: 30, scope: !3242, inlinedAt: !4436)
!4442 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4441)
!4443 = !DILocation(line: 711, column: 27, scope: !3242, inlinedAt: !4436)
!4444 = !DILocation(line: 711, column: 7, scope: !3243, inlinedAt: !4436)
!4445 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 105, column: 12, scope: !1476, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 122, column: 41, scope: !1493, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 715, column: 22, scope: !3243, inlinedAt: !4436)
!4450 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4446)
!4451 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4447)
!4452 = !DILocation(line: 105, column: 32, scope: !1476, inlinedAt: !4448)
!4453 = !DILocation(line: 122, column: 21, scope: !1493, inlinedAt: !4449)
!4454 = !DILocation(line: 125, column: 15, scope: !1493, inlinedAt: !4449)
!4455 = !DILocation(line: 184, column: 54, scope: !1517, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 126, column: 9, scope: !1500, inlinedAt: !4449)
!4457 = !DILocation(line: 186, column: 15, scope: !1517, inlinedAt: !4456)
!4458 = !DILocation(line: 186, column: 20, scope: !1517, inlinedAt: !4456)
!4459 = !DILocation(line: 126, column: 7, scope: !1493, inlinedAt: !4449)
!4460 = !DILocation(line: 128, column: 25, scope: !1498, inlinedAt: !4449)
!4461 = !DILocation(line: 131, column: 40, scope: !1499, inlinedAt: !4449)
!4462 = !DILocation(line: 151, column: 52, scope: !1529, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 131, column: 5, scope: !1499, inlinedAt: !4449)
!4464 = !DILocation(line: 153, column: 20, scope: !1529, inlinedAt: !4463)
!4465 = !DILocation(line: 153, column: 33, scope: !1529, inlinedAt: !4463)
!4466 = !DILocation(line: 128, column: 50, scope: !1536, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 153, column: 2, scope: !1529, inlinedAt: !4463)
!4468 = !DILocation(line: 128, column: 75, scope: !1536, inlinedAt: !4467)
!4469 = !DILocation(line: 130, column: 8, scope: !1536, inlinedAt: !4467)
!4470 = !DILocation(line: 130, column: 13, scope: !1536, inlinedAt: !4467)
!4471 = !DILocation(line: 131, column: 8, scope: !1536, inlinedAt: !4467)
!4472 = !DILocation(line: 131, column: 13, scope: !1536, inlinedAt: !4467)
!4473 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 154, column: 2, scope: !1529, inlinedAt: !4463)
!4475 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4474)
!4476 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4474)
!4477 = !DILocation(line: 715, column: 15, scope: !3243, inlinedAt: !4436)
!4478 = !DILocation(line: 725, column: 12, scope: !3290, inlinedAt: !4436)
!4479 = !DILocation(line: 725, column: 7, scope: !3243, inlinedAt: !4436)
!4480 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 85, column: 10, scope: !1450, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 726, column: 9, scope: !3296, inlinedAt: !4436)
!4484 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4481)
!4485 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4482)
!4486 = !DILocation(line: 85, column: 30, scope: !1450, inlinedAt: !4483)
!4487 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 726, column: 31, scope: !3296, inlinedAt: !4436)
!4491 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4488)
!4492 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4489)
!4493 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4490)
!4494 = !DILocation(line: 726, column: 28, scope: !3296, inlinedAt: !4436)
!4495 = !DILocation(line: 726, column: 9, scope: !3297, inlinedAt: !4436)
!4496 = !DILocation(line: 129, column: 25, scope: !1442, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 78, column: 10, scope: !1435, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 92, column: 10, scope: !1460, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 730, column: 16, scope: !3314, inlinedAt: !4436)
!4500 = !DILocation(line: 129, column: 12, scope: !1442, inlinedAt: !4497)
!4501 = !DILocation(line: 78, column: 21, scope: !1435, inlinedAt: !4498)
!4502 = !DILocation(line: 92, column: 30, scope: !1460, inlinedAt: !4499)
!4503 = !DILocation(line: 732, column: 3, scope: !3297, inlinedAt: !4436)
!4504 = !DILocation(line: 0, scope: !3243, inlinedAt: !4436)
!4505 = !DILocation(line: 734, column: 10, scope: !3243, inlinedAt: !4436)
!4506 = !DILocation(line: 734, column: 3, scope: !3243, inlinedAt: !4436)
!4507 = !DILocation(line: 0, scope: !4393)
!4508 = !DILocation(line: 905, column: 1, scope: !4393)
