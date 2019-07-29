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
  br i1 %6, label %14, label %7, !dbg !996

; <label>:7:                                      ; preds = %2, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !986, metadata !DIExpression()), !dbg !993
  %9 = add i32 %8, 1, !dbg !997
  %10 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8) #12, !dbg !999
  call void @llvm.dbg.value(metadata i32 %9, metadata !986, metadata !DIExpression()), !dbg !993
  %11 = zext i32 %9 to i64, !dbg !1000
  %12 = load i64, i64* %3, align 8, !dbg !994
  %13 = icmp ugt i64 %12, %11, !dbg !995
  br i1 %13, label %7, label %14, !dbg !996, !llvm.loop !1001

; <label>:14:                                     ; preds = %7, %2
  %15 = phi i32 [ 0, %2 ], [ %9, %7 ], !dbg !1003
  call void @llvm.dbg.value(metadata i32 %15, metadata !986, metadata !DIExpression()), !dbg !993
  %16 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %15) #12, !dbg !1004
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1005
  ret void, !dbg !1006
}

; Function Attrs: noredzone nounwind
define dso_local void @routine_simple_2(i8*, i8** nocapture readnone) #0 !dbg !1007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1009, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i8** undef, metadata !1010, metadata !DIExpression()), !dbg !1014
  %3 = bitcast i8* %0 to i64*, !dbg !1015
  call void @llvm.dbg.value(metadata i64* %3, metadata !1011, metadata !DIExpression()), !dbg !1016
  %4 = load %struct.nk_virtual_console*, %struct.nk_virtual_console** @vc, align 8, !dbg !1017
  tail call void @nk_fiber_set_vc(%struct.nk_virtual_console* %4) #12, !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1019
  %5 = tail call i32 (...) bitcast (i32 ()* @wrapper_nk_fiber_yield to i32 (...)*)() #12, !dbg !1020
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1019
  %6 = load i64, i64* %3, align 8, !dbg !1021
  %7 = icmp eq i64 %6, 0, !dbg !1022
  br i1 %7, label %15, label %8, !dbg !1023

; <label>:8:                                      ; preds = %2, %8
  %9 = phi i32 [ %10, %8 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !1012, metadata !DIExpression()), !dbg !1019
  %10 = add i32 %9, 1, !dbg !1024
  %11 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %9) #12, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %10, metadata !1012, metadata !DIExpression()), !dbg !1019
  %12 = zext i32 %10 to i64, !dbg !1027
  %13 = load i64, i64* %3, align 8, !dbg !1021
  %14 = icmp ugt i64 %13, %12, !dbg !1022
  br i1 %14, label %8, label %15, !dbg !1023, !llvm.loop !1028

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %10, %8 ], !dbg !1030
  call void @llvm.dbg.value(metadata i32 %16, metadata !1012, metadata !DIExpression()), !dbg !1019
  %17 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %16) #12, !dbg !1031
  tail call void @kmem_free(i8* nonnull %0) #12, !dbg !1032
  ret void, !dbg !1033
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @kmem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @handle_fibers1(i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !1034 {
  %3 = alloca %struct.nk_fiber*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1036, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %1, metadata !1037, metadata !DIExpression()), !dbg !1039
  %5 = bitcast %struct.nk_fiber** %3 to i8*, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1040
  %6 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1049, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !551, metadata !DIExpression()) #11, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.nk_thread* %6, metadata !550, metadata !DIExpression()) #11, !dbg !1051
  %7 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %6, i64 0, i32 24, !dbg !1052
  %8 = bitcast %struct.nk_virtual_console** %7 to i64*, !dbg !1052
  %9 = load i64, i64* %8, align 8, !dbg !1052
  store i64 %9, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1053
  %10 = bitcast i64* %4 to i8*, !dbg !1054
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1054
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1055
  %11 = call i8* @kmem_malloc(i64 8) #12, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %11, metadata !1046, metadata !DIExpression()) #11, !dbg !1056
  %12 = icmp eq i8* %11, null, !dbg !1057
  br i1 %12, label %13, label %15, !dbg !1059

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1060
  br label %115, !dbg !1062

; <label>:15:                                     ; preds = %2
  %16 = bitcast i8* %11 to i64*, !dbg !1063
  call void @llvm.dbg.value(metadata i64* %16, metadata !1045, metadata !DIExpression()) #11, !dbg !1064
  %17 = load i64, i64* %4, align 8, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %17, metadata !1044, metadata !DIExpression()) #11, !dbg !1066
  %18 = urem i64 %17, 5000, !dbg !1067
  store i64 %18, i64* %16, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !1043, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1069
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1070
  call void @llvm.dbg.value(metadata i8* %11, metadata !589, metadata !DIExpression()) #11, !dbg !1072
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1074
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !593, metadata !DIExpression()) #11, !dbg !1076
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %11, metadata !606, metadata !DIExpression()) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1080
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %3, metadata !609, metadata !DIExpression()) #11, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1084
  %19 = call i8* @kmem_malloc(i64 152) #12, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %19, metadata !612, metadata !DIExpression()) #11, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %19, metadata !610, metadata !DIExpression()) #11, !dbg !1083
  %20 = icmp eq i8* %19, null, !dbg !1086
  br i1 %20, label %nk_fiber_create.exit, label %21, !dbg !1087

; <label>:21:                                     ; preds = %15
  %22 = call i8* @memset(i8* nonnull %19, i8 signext 0, i64 152) #12, !dbg !1088
  %23 = getelementptr inbounds i8, i8* %19, i64 44, !dbg !1089
  %24 = bitcast i8* %23 to i32*, !dbg !1089
  store i32 0, i32* %24, align 4, !dbg !1090
  %25 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1091
  %26 = bitcast i8* %25 to i64*, !dbg !1091
  store i64 2097152, i64* %26, align 8, !dbg !1092
  %27 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %27, metadata !614, metadata !DIExpression()) #11, !dbg !1093
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1094
  %29 = bitcast i8* %28 to i8**, !dbg !1094
  store i8* %27, i8** %29, align 8, !dbg !1095
  %30 = icmp eq i8* %27, null, !dbg !1096
  br i1 %30, label %31, label %32, !dbg !1097

; <label>:31:                                     ; preds = %21
  call void @kmem_free(i8* nonnull %19) #12, !dbg !1098
  br label %nk_fiber_create.exit, !dbg !1099

; <label>:32:                                     ; preds = %21
  %33 = ptrtoint i8* %27 to i64, !dbg !1097
  %34 = getelementptr inbounds i8, i8* %19, i64 120, !dbg !1100
  %35 = bitcast i8* %34 to void (i8*, i8**)**, !dbg !1100
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %35, align 8, !dbg !1101
  %36 = getelementptr inbounds i8, i8* %19, i64 128, !dbg !1102
  %37 = bitcast i8* %36 to i8**, !dbg !1102
  store i8* %11, i8** %37, align 8, !dbg !1103
  %38 = getelementptr inbounds i8, i8* %19, i64 136, !dbg !1104
  %39 = bitcast i8* %38 to i8***, !dbg !1104
  store i8** null, i8*** %39, align 8, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %19, metadata !648, metadata !DIExpression()) #11, !dbg !1106
  %40 = load i64, i64* %26, align 8, !dbg !1108
  %41 = bitcast i8* %19 to i64*, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1110
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1112
  %42 = add i64 %33, -8, !dbg !1113
  %43 = add i64 %42, %40, !dbg !1114
  store i64 %43, i64* %41, align 8, !dbg !1114
  %44 = inttoptr i64 %43 to i64*, !dbg !1115
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %44, align 8, !dbg !1116
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1117
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1119
  %45 = load i64, i64* %41, align 8, !dbg !1120
  %46 = add i64 %45, -8, !dbg !1120
  store i64 %46, i64* %41, align 8, !dbg !1120
  %47 = inttoptr i64 %46 to i64*, !dbg !1121
  store i64 0, i64* %47, align 8, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1123
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1125
  %48 = load i64, i64* %41, align 8, !dbg !1126
  %49 = add i64 %48, -8, !dbg !1126
  store i64 %49, i64* %41, align 8, !dbg !1126
  %50 = inttoptr i64 %49 to i64*, !dbg !1127
  store i64 0, i64* %50, align 8, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1129
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1131
  %51 = load i64, i64* %41, align 8, !dbg !1132
  %52 = add i64 %51, -8, !dbg !1132
  store i64 %52, i64* %41, align 8, !dbg !1132
  %53 = inttoptr i64 %52 to i64*, !dbg !1133
  store i64 0, i64* %53, align 8, !dbg !1134
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1135
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1137
  %54 = load i64, i64* %41, align 8, !dbg !1138
  %55 = add i64 %54, -8, !dbg !1138
  store i64 %55, i64* %41, align 8, !dbg !1138
  %56 = inttoptr i64 %55 to i64*, !dbg !1139
  store i64 0, i64* %56, align 8, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %19, metadata !657, metadata !DIExpression()) #11, !dbg !1141
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1143
  %57 = load i64, i64* %41, align 8, !dbg !1144
  %58 = add i64 %57, -8, !dbg !1144
  store i64 %58, i64* %41, align 8, !dbg !1144
  %59 = inttoptr i64 %58 to i64*, !dbg !1145
  store i64 0, i64* %59, align 8, !dbg !1146
  %60 = ptrtoint i8* %19 to i64, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %60, metadata !662, metadata !DIExpression()) #11, !dbg !1150
  %61 = load i64, i64* %41, align 8, !dbg !1151
  %62 = add i64 %61, -8, !dbg !1151
  store i64 %62, i64* %41, align 8, !dbg !1151
  %63 = inttoptr i64 %62 to i64*, !dbg !1152
  store i64 %60, i64* %63, align 8, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1154
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1156
  %64 = load i64, i64* %41, align 8, !dbg !1157
  %65 = add i64 %64, -8, !dbg !1157
  store i64 %65, i64* %41, align 8, !dbg !1157
  %66 = inttoptr i64 %65 to i64*, !dbg !1158
  store i64 0, i64* %66, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1160
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1162
  %67 = load i64, i64* %41, align 8, !dbg !1163
  %68 = add i64 %67, -8, !dbg !1163
  store i64 %68, i64* %41, align 8, !dbg !1163
  %69 = inttoptr i64 %68 to i64*, !dbg !1164
  store i64 0, i64* %69, align 8, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1166
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1168
  %70 = load i64, i64* %41, align 8, !dbg !1169
  %71 = add i64 %70, -8, !dbg !1169
  store i64 %71, i64* %41, align 8, !dbg !1169
  %72 = inttoptr i64 %71 to i64*, !dbg !1170
  store i64 0, i64* %72, align 8, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1174
  %73 = load i64, i64* %41, align 8, !dbg !1175
  %74 = add i64 %73, -8, !dbg !1175
  store i64 %74, i64* %41, align 8, !dbg !1175
  %75 = inttoptr i64 %74 to i64*, !dbg !1176
  store i64 0, i64* %75, align 8, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1178
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1180
  %76 = load i64, i64* %41, align 8, !dbg !1181
  %77 = add i64 %76, -8, !dbg !1181
  store i64 %77, i64* %41, align 8, !dbg !1181
  %78 = inttoptr i64 %77 to i64*, !dbg !1182
  store i64 0, i64* %78, align 8, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1184
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1186
  %79 = load i64, i64* %41, align 8, !dbg !1187
  %80 = add i64 %79, -8, !dbg !1187
  store i64 %80, i64* %41, align 8, !dbg !1187
  %81 = inttoptr i64 %80 to i64*, !dbg !1188
  store i64 0, i64* %81, align 8, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1192
  %82 = load i64, i64* %41, align 8, !dbg !1193
  %83 = add i64 %82, -8, !dbg !1193
  store i64 %83, i64* %41, align 8, !dbg !1193
  %84 = inttoptr i64 %83 to i64*, !dbg !1194
  store i64 0, i64* %84, align 8, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1196
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1198
  %85 = load i64, i64* %41, align 8, !dbg !1199
  %86 = add i64 %85, -8, !dbg !1199
  store i64 %86, i64* %41, align 8, !dbg !1199
  %87 = inttoptr i64 %86 to i64*, !dbg !1200
  store i64 0, i64* %87, align 8, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %60, metadata !657, metadata !DIExpression()) #11, !dbg !1202
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1204
  %88 = load i64, i64* %41, align 8, !dbg !1205
  %89 = add i64 %88, -8, !dbg !1205
  store i64 %89, i64* %41, align 8, !dbg !1205
  %90 = inttoptr i64 %89 to i64*, !dbg !1206
  store i64 0, i64* %90, align 8, !dbg !1207
  %91 = bitcast %struct.nk_fiber** %3 to i8**, !dbg !1208
  store i8* %19, i8** %91, align 8, !dbg !1208
  %92 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1209, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !772, metadata !DIExpression()) #11, !dbg !1209
  call void @llvm.dbg.value(metadata %struct.nk_thread* %92, metadata !771, metadata !DIExpression()) #11, !dbg !1211
  %93 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %92, i64 0, i32 24, !dbg !1212
  %94 = bitcast %struct.nk_virtual_console** %93 to i64*, !dbg !1212
  %95 = load i64, i64* %94, align 8, !dbg !1212
  %96 = getelementptr inbounds i8, i8* %19, i64 48, !dbg !1213
  %97 = bitcast i8* %96 to i64*, !dbg !1214
  store i64 %95, i64* %97, align 8, !dbg !1214
  %98 = getelementptr inbounds i8, i8* %19, i64 104, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !780, metadata !DIExpression()) #11, !dbg !1216
  %99 = bitcast i8* %98 to i8**, !dbg !1218
  store i8* %98, i8** %99, align 8, !dbg !1218
  %100 = getelementptr inbounds i8, i8* %19, i64 112, !dbg !1219
  %101 = bitcast i8* %100 to i8**, !dbg !1220
  store i8* %98, i8** %101, align 8, !dbg !1220
  %102 = getelementptr inbounds i8, i8* %19, i64 96, !dbg !1221
  %103 = bitcast i8* %102 to i32*, !dbg !1221
  store i32 0, i32* %103, align 8, !dbg !1222
  %104 = getelementptr inbounds i8, i8* %19, i64 64, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %104, metadata !780, metadata !DIExpression()) #11, !dbg !1224
  %105 = bitcast i8* %104 to i8**, !dbg !1226
  store i8* %104, i8** %105, align 8, !dbg !1226
  %106 = getelementptr inbounds i8, i8* %19, i64 72, !dbg !1227
  %107 = bitcast i8* %106 to i8**, !dbg !1228
  store i8* %104, i8** %107, align 8, !dbg !1228
  %108 = getelementptr inbounds i8, i8* %19, i64 80, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %108, metadata !780, metadata !DIExpression()) #11, !dbg !1230
  %109 = bitcast i8* %108 to i8**, !dbg !1232
  store i8* %108, i8** %109, align 8, !dbg !1232
  %110 = getelementptr inbounds i8, i8* %19, i64 88, !dbg !1233
  %111 = bitcast i8* %110 to i8**, !dbg !1234
  store i8* %108, i8** %111, align 8, !dbg !1234
  br label %nk_fiber_create.exit, !dbg !1235

nk_fiber_create.exit:                             ; preds = %15, %31, %32
  %112 = phi i32 [ 0, %32 ], [ -22, %31 ], [ -22, %15 ], !dbg !1236
  %113 = load %struct.nk_fiber*, %struct.nk_fiber** %3, align 8, !dbg !1237
  %114 = call i32 @nk_fiber_run(%struct.nk_fiber* %113, i8 zeroext 1) #12, !dbg !1238
  br label %115, !dbg !1239

; <label>:115:                                    ; preds = %13, %nk_fiber_create.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11, !dbg !1240
  ret i32 0, !dbg !1241
}

; Function Attrs: noredzone nounwind
define dso_local i32 @test_simple_routine1() local_unnamed_addr #0 !dbg !1041 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1242
  %4 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1243, !srcloc !553
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !551, metadata !DIExpression()) #11, !dbg !1243
  call void @llvm.dbg.value(metadata %struct.nk_thread* %4, metadata !550, metadata !DIExpression()) #11, !dbg !1245
  %5 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %4, i64 0, i32 24, !dbg !1246
  %6 = bitcast %struct.nk_virtual_console** %5 to i64*, !dbg !1246
  %7 = load i64, i64* %6, align 8, !dbg !1246
  store i64 %7, i64* bitcast (%struct.nk_virtual_console** @vc to i64*), align 8, !dbg !1247
  %8 = bitcast i64* %2 to i8*, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1248
  call void @nk_get_rand_bytes(i8* nonnull %8, i32 8) #12, !dbg !1249
  %9 = call i8* @kmem_malloc(i64 8) #12, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %9, metadata !1046, metadata !DIExpression()), !dbg !1250
  %10 = icmp eq i8* %9, null, !dbg !1251
  br i1 %10, label %11, label %13, !dbg !1252

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1253
  br label %113, !dbg !1254

; <label>:13:                                     ; preds = %0
  %14 = bitcast i8* %9 to i64*, !dbg !1255
  call void @llvm.dbg.value(metadata i64* %14, metadata !1045, metadata !DIExpression()), !dbg !1256
  %15 = load i64, i64* %2, align 8, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %15, metadata !1044, metadata !DIExpression()), !dbg !1258
  %16 = urem i64 %15, 5000, !dbg !1259
  store i64 %16, i64* %14, align 8, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !1043, metadata !DIExpression(DW_OP_deref)), !dbg !1261
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !583, metadata !DIExpression()) #11, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %9, metadata !589, metadata !DIExpression()) #11, !dbg !1264
  call void @llvm.dbg.value(metadata i8** null, metadata !590, metadata !DIExpression()) #11, !dbg !1265
  call void @llvm.dbg.value(metadata i64 0, metadata !591, metadata !DIExpression()) #11, !dbg !1266
  call void @llvm.dbg.value(metadata i8 1, metadata !592, metadata !DIExpression()) #11, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !593, metadata !DIExpression()) #11, !dbg !1268
  call void @llvm.dbg.value(metadata void (i8*, i8**)* @routine_simple_1, metadata !601, metadata !DIExpression()) #11, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %9, metadata !606, metadata !DIExpression()) #11, !dbg !1271
  call void @llvm.dbg.value(metadata i8** null, metadata !607, metadata !DIExpression()) #11, !dbg !1272
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()) #11, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !609, metadata !DIExpression()) #11, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()) #11, !dbg !1275
  call void @llvm.dbg.value(metadata i64 2097152, metadata !611, metadata !DIExpression()) #11, !dbg !1276
  %17 = call i8* @kmem_malloc(i64 152) #12, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %17, metadata !612, metadata !DIExpression()) #11, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %17, metadata !610, metadata !DIExpression()) #11, !dbg !1275
  %18 = icmp eq i8* %17, null, !dbg !1278
  br i1 %18, label %nk_fiber_create.exit, label %19, !dbg !1279

; <label>:19:                                     ; preds = %13
  %20 = call i8* @memset(i8* nonnull %17, i8 signext 0, i64 152) #12, !dbg !1280
  %21 = getelementptr inbounds i8, i8* %17, i64 44, !dbg !1281
  %22 = bitcast i8* %21 to i32*, !dbg !1281
  store i32 0, i32* %22, align 4, !dbg !1282
  %23 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !1283
  %24 = bitcast i8* %23 to i64*, !dbg !1283
  store i64 2097152, i64* %24, align 8, !dbg !1284
  %25 = call i8* @kmem_malloc(i64 2097152) #12, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %25, metadata !614, metadata !DIExpression()) #11, !dbg !1285
  %26 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !1286
  %27 = bitcast i8* %26 to i8**, !dbg !1286
  store i8* %25, i8** %27, align 8, !dbg !1287
  %28 = icmp eq i8* %25, null, !dbg !1288
  br i1 %28, label %29, label %30, !dbg !1289

; <label>:29:                                     ; preds = %19
  call void @kmem_free(i8* nonnull %17) #12, !dbg !1290
  br label %nk_fiber_create.exit, !dbg !1291

; <label>:30:                                     ; preds = %19
  %31 = ptrtoint i8* %25 to i64, !dbg !1289
  %32 = getelementptr inbounds i8, i8* %17, i64 120, !dbg !1292
  %33 = bitcast i8* %32 to void (i8*, i8**)**, !dbg !1292
  store void (i8*, i8**)* @routine_simple_1, void (i8*, i8**)** %33, align 8, !dbg !1293
  %34 = getelementptr inbounds i8, i8* %17, i64 128, !dbg !1294
  %35 = bitcast i8* %34 to i8**, !dbg !1294
  store i8* %9, i8** %35, align 8, !dbg !1295
  %36 = getelementptr inbounds i8, i8* %17, i64 136, !dbg !1296
  %37 = bitcast i8* %36 to i8***, !dbg !1296
  store i8** null, i8*** %37, align 8, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %17, metadata !648, metadata !DIExpression()) #11, !dbg !1298
  %38 = load i64, i64* %24, align 8, !dbg !1300
  %39 = bitcast i8* %17 to i64*, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1302
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()) #11, !dbg !1304
  %40 = add i64 %31, -8, !dbg !1305
  %41 = add i64 %40, %38, !dbg !1306
  store i64 %41, i64* %39, align 8, !dbg !1306
  %42 = inttoptr i64 %41 to i64*, !dbg !1307
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %42, align 8, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1311
  %43 = load i64, i64* %39, align 8, !dbg !1312
  %44 = add i64 %43, -8, !dbg !1312
  store i64 %44, i64* %39, align 8, !dbg !1312
  %45 = inttoptr i64 %44 to i64*, !dbg !1313
  store i64 0, i64* %45, align 8, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1317
  %46 = load i64, i64* %39, align 8, !dbg !1318
  %47 = add i64 %46, -8, !dbg !1318
  store i64 %47, i64* %39, align 8, !dbg !1318
  %48 = inttoptr i64 %47 to i64*, !dbg !1319
  store i64 0, i64* %48, align 8, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1321
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1323
  %49 = load i64, i64* %39, align 8, !dbg !1324
  %50 = add i64 %49, -8, !dbg !1324
  store i64 %50, i64* %39, align 8, !dbg !1324
  %51 = inttoptr i64 %50 to i64*, !dbg !1325
  store i64 0, i64* %51, align 8, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1327
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1329
  %52 = load i64, i64* %39, align 8, !dbg !1330
  %53 = add i64 %52, -8, !dbg !1330
  store i64 %53, i64* %39, align 8, !dbg !1330
  %54 = inttoptr i64 %53 to i64*, !dbg !1331
  store i64 0, i64* %54, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %17, metadata !657, metadata !DIExpression()) #11, !dbg !1333
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1335
  %55 = load i64, i64* %39, align 8, !dbg !1336
  %56 = add i64 %55, -8, !dbg !1336
  store i64 %56, i64* %39, align 8, !dbg !1336
  %57 = inttoptr i64 %56 to i64*, !dbg !1337
  store i64 0, i64* %57, align 8, !dbg !1338
  %58 = ptrtoint i8* %17 to i64, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %58, metadata !662, metadata !DIExpression()) #11, !dbg !1342
  %59 = load i64, i64* %39, align 8, !dbg !1343
  %60 = add i64 %59, -8, !dbg !1343
  store i64 %60, i64* %39, align 8, !dbg !1343
  %61 = inttoptr i64 %60 to i64*, !dbg !1344
  store i64 %58, i64* %61, align 8, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1346
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1348
  %62 = load i64, i64* %39, align 8, !dbg !1349
  %63 = add i64 %62, -8, !dbg !1349
  store i64 %63, i64* %39, align 8, !dbg !1349
  %64 = inttoptr i64 %63 to i64*, !dbg !1350
  store i64 0, i64* %64, align 8, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1352
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1354
  %65 = load i64, i64* %39, align 8, !dbg !1355
  %66 = add i64 %65, -8, !dbg !1355
  store i64 %66, i64* %39, align 8, !dbg !1355
  %67 = inttoptr i64 %66 to i64*, !dbg !1356
  store i64 0, i64* %67, align 8, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1358
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1360
  %68 = load i64, i64* %39, align 8, !dbg !1361
  %69 = add i64 %68, -8, !dbg !1361
  store i64 %69, i64* %39, align 8, !dbg !1361
  %70 = inttoptr i64 %69 to i64*, !dbg !1362
  store i64 0, i64* %70, align 8, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1364
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1366
  %71 = load i64, i64* %39, align 8, !dbg !1367
  %72 = add i64 %71, -8, !dbg !1367
  store i64 %72, i64* %39, align 8, !dbg !1367
  %73 = inttoptr i64 %72 to i64*, !dbg !1368
  store i64 0, i64* %73, align 8, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1372
  %74 = load i64, i64* %39, align 8, !dbg !1373
  %75 = add i64 %74, -8, !dbg !1373
  store i64 %75, i64* %39, align 8, !dbg !1373
  %76 = inttoptr i64 %75 to i64*, !dbg !1374
  store i64 0, i64* %76, align 8, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1378
  %77 = load i64, i64* %39, align 8, !dbg !1379
  %78 = add i64 %77, -8, !dbg !1379
  store i64 %78, i64* %39, align 8, !dbg !1379
  %79 = inttoptr i64 %78 to i64*, !dbg !1380
  store i64 0, i64* %79, align 8, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1382
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1384
  %80 = load i64, i64* %39, align 8, !dbg !1385
  %81 = add i64 %80, -8, !dbg !1385
  store i64 %81, i64* %39, align 8, !dbg !1385
  %82 = inttoptr i64 %81 to i64*, !dbg !1386
  store i64 0, i64* %82, align 8, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1388
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1390
  %83 = load i64, i64* %39, align 8, !dbg !1391
  %84 = add i64 %83, -8, !dbg !1391
  store i64 %84, i64* %39, align 8, !dbg !1391
  %85 = inttoptr i64 %84 to i64*, !dbg !1392
  store i64 0, i64* %85, align 8, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %58, metadata !657, metadata !DIExpression()) #11, !dbg !1394
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()) #11, !dbg !1396
  %86 = load i64, i64* %39, align 8, !dbg !1397
  %87 = add i64 %86, -8, !dbg !1397
  store i64 %87, i64* %39, align 8, !dbg !1397
  %88 = inttoptr i64 %87 to i64*, !dbg !1398
  store i64 0, i64* %88, align 8, !dbg !1399
  %89 = bitcast %struct.nk_fiber** %1 to i8**, !dbg !1400
  store i8* %17, i8** %89, align 8, !dbg !1400
  %90 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !1401, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !772, metadata !DIExpression()) #11, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.nk_thread* %90, metadata !771, metadata !DIExpression()) #11, !dbg !1403
  %91 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %90, i64 0, i32 24, !dbg !1404
  %92 = bitcast %struct.nk_virtual_console** %91 to i64*, !dbg !1404
  %93 = load i64, i64* %92, align 8, !dbg !1404
  %94 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !1405
  %95 = bitcast i8* %94 to i64*, !dbg !1406
  store i64 %93, i64* %95, align 8, !dbg !1406
  %96 = getelementptr inbounds i8, i8* %17, i64 104, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()) #11, !dbg !1408
  %97 = bitcast i8* %96 to i8**, !dbg !1410
  store i8* %96, i8** %97, align 8, !dbg !1410
  %98 = getelementptr inbounds i8, i8* %17, i64 112, !dbg !1411
  %99 = bitcast i8* %98 to i8**, !dbg !1412
  store i8* %96, i8** %99, align 8, !dbg !1412
  %100 = getelementptr inbounds i8, i8* %17, i64 96, !dbg !1413
  %101 = bitcast i8* %100 to i32*, !dbg !1413
  store i32 0, i32* %101, align 8, !dbg !1414
  %102 = getelementptr inbounds i8, i8* %17, i64 64, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %102, metadata !780, metadata !DIExpression()) #11, !dbg !1416
  %103 = bitcast i8* %102 to i8**, !dbg !1418
  store i8* %102, i8** %103, align 8, !dbg !1418
  %104 = getelementptr inbounds i8, i8* %17, i64 72, !dbg !1419
  %105 = bitcast i8* %104 to i8**, !dbg !1420
  store i8* %102, i8** %105, align 8, !dbg !1420
  %106 = getelementptr inbounds i8, i8* %17, i64 80, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %106, metadata !780, metadata !DIExpression()) #11, !dbg !1422
  %107 = bitcast i8* %106 to i8**, !dbg !1424
  store i8* %106, i8** %107, align 8, !dbg !1424
  %108 = getelementptr inbounds i8, i8* %17, i64 88, !dbg !1425
  %109 = bitcast i8* %108 to i8**, !dbg !1426
  store i8* %106, i8** %109, align 8, !dbg !1426
  br label %nk_fiber_create.exit, !dbg !1427

nk_fiber_create.exit:                             ; preds = %13, %29, %30
  %110 = phi i32 [ 0, %30 ], [ -22, %29 ], [ -22, %13 ], !dbg !1428
  %111 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !1429
  %112 = call i32 @nk_fiber_run(%struct.nk_fiber* %111, i8 zeroext 1) #12, !dbg !1430
  br label %113, !dbg !1431

; <label>:113:                                    ; preds = %nk_fiber_create.exit, %11
  %114 = phi i32 [ 0, %nk_fiber_create.exit ], [ -1, %11 ], !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #11, !dbg !1433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1433
  ret i32 %114, !dbg !1433
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber_percpu_state* @_get_fiber_state() local_unnamed_addr #0 !dbg !1434 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1440
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1446
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1447
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1447
  ret %struct.nk_fiber_percpu_state* %4, !dbg !1448
}

; Function Attrs: noredzone
declare dso_local i64 @msr_read(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @nk_fiber_current() local_unnamed_addr #0 !dbg !1449 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1452
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1455
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1456
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1456
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !1457
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1457
  ret %struct.nk_fiber* %6, !dbg !1458
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_nk_idle_fiber() local_unnamed_addr #0 !dbg !1459 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1460
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1463
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1464
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1464
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 3, !dbg !1465
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !1465
  ret %struct.nk_fiber* %6, !dbg !1466
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_fiber_thread() local_unnamed_addr #0 !dbg !1467 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1468
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1471
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1472
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1472
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !1473
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !1473
  ret %struct.nk_thread* %6, !dbg !1474
}

; Function Attrs: noredzone nounwind
define internal nonnull %struct.list_head* @_get_sched_head() local_unnamed_addr #0 !dbg !1475 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1478
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1481
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1482
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1482
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1483
  ret %struct.list_head* %5, !dbg !1484
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_fiber_push(%struct.nk_fiber* nocapture, i64) local_unnamed_addr #4 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i64 %1, metadata !662, metadata !DIExpression()), !dbg !1486
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1487
  %4 = load i64, i64* %3, align 8, !dbg !1488
  %5 = add i64 %4, -8, !dbg !1488
  store i64 %5, i64* %3, align 8, !dbg !1488
  %6 = inttoptr i64 %5 to i64*, !dbg !1489
  store i64 %1, i64* %6, align 8, !dbg !1490
  ret void, !dbg !1491
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @_rr_policy() local_unnamed_addr #0 !dbg !1492 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1506
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !1510
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !1511
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !1511
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 4, !dbg !1512
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1494, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata %struct.list_head* %5, metadata !1515, metadata !DIExpression()), !dbg !1520
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0, !dbg !1522
  %7 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1522
  %8 = icmp eq %struct.list_head* %7, %5, !dbg !1523
  br i1 %8, label %20, label %9, !dbg !1524

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()), !dbg !1525
  %10 = getelementptr %struct.list_head, %struct.list_head* %7, i64 -7, i32 1, !dbg !1525
  %11 = bitcast %struct.list_head** %10 to %struct.nk_fiber*, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1496, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %11, metadata !1495, metadata !DIExpression()), !dbg !1514
  %12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 13, !dbg !1526
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !1527, metadata !DIExpression()), !dbg !1530
  %13 = getelementptr inbounds %struct.list_head*, %struct.list_head** %10, i64 14, !dbg !1532
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !1532
  %15 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !1533
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1534, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1539, metadata !DIExpression()), !dbg !1542
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 1, !dbg !1543
  store %struct.list_head* %14, %struct.list_head** %16, align 8, !dbg !1544
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !1545
  store %struct.list_head* %15, %struct.list_head** %17, align 8, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.list_head** %12, metadata !780, metadata !DIExpression()), !dbg !1547
  %18 = bitcast %struct.list_head** %12 to %struct.list_head***, !dbg !1549
  store %struct.list_head** %12, %struct.list_head*** %18, align 8, !dbg !1549
  %19 = bitcast %struct.list_head** %13 to %struct.list_head***, !dbg !1550
  store %struct.list_head** %12, %struct.list_head*** %19, align 8, !dbg !1550
  br label %20, !dbg !1551

; <label>:20:                                     ; preds = %0, %9
  %21 = phi %struct.nk_fiber* [ null, %0 ], [ %11, %9 ], !dbg !1552
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1495, metadata !DIExpression()), !dbg !1514
  ret %struct.nk_fiber* %21, !dbg !1553
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_exit(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1554 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1556, metadata !DIExpression()), !dbg !1567
  %3 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1568
  store i32 4, i32* %3, align 4, !dbg !1569
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1557, metadata !DIExpression()), !dbg !1570
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !1571
  call void @llvm.dbg.value(metadata %struct.list_head* %4, metadata !1559, metadata !DIExpression()), !dbg !1572
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !1573
  %6 = load i32, i32* %5, align 8, !dbg !1573
  %7 = icmp sgt i32 %6, 0, !dbg !1574
  br i1 %7, label %8, label %66, !dbg !1575

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 0, i32 0
  %10 = bitcast i64* %2 to i8*
  br label %11, !dbg !1575

; <label>:11:                                     ; preds = %8, %63
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1560, metadata !DIExpression()), !dbg !1576
  %12 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1577
  %13 = icmp eq %struct.list_head* %12, %4, !dbg !1577
  %14 = getelementptr %struct.list_head, %struct.list_head* %12, i64 -5, !dbg !1576
  %15 = bitcast %struct.list_head* %14 to %struct.nk_fiber*, !dbg !1576
  %16 = select i1 %13, %struct.nk_fiber* null, %struct.nk_fiber* %15, !dbg !1576
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1560, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1558, metadata !DIExpression()), !dbg !1578
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, !dbg !1579
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1527, metadata !DIExpression()), !dbg !1580
  %18 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 10, i32 1, !dbg !1582
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !1582
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !1583
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1534, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata %struct.list_head* %21, metadata !1539, metadata !DIExpression()), !dbg !1586
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i64 0, i32 1, !dbg !1587
  store %struct.list_head* %19, %struct.list_head** %22, align 8, !dbg !1588
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !1589
  store %struct.list_head* %21, %struct.list_head** %23, align 8, !dbg !1590
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !780, metadata !DIExpression()), !dbg !1591
  store %struct.list_head* %17, %struct.list_head** %20, align 8, !dbg !1593
  store %struct.list_head* %17, %struct.list_head** %18, align 8, !dbg !1594
  %24 = load i32, i32* %5, align 8, !dbg !1595
  %25 = add i32 %24, -1, !dbg !1595
  store i32 %25, i32* %5, align 8, !dbg !1595
  %26 = icmp eq %struct.nk_fiber* %16, null, !dbg !1596
  br i1 %26, label %63, label %27, !dbg !1598

; <label>:27:                                     ; preds = %11
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %16, metadata !1599, metadata !DIExpression()) #11, !dbg !1607
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()) #11, !dbg !1610
  %28 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1611
  call void @llvm.dbg.value(metadata i64 %28, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1615
  %29 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1616, !srcloc !1636
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1623, metadata !DIExpression()) #11, !dbg !1616
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1622, metadata !DIExpression()) #11, !dbg !1637
  call void @llvm.dbg.value(metadata %struct.sys_info* %29, metadata !1621, metadata !DIExpression()) #11, !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1639
  call void @nk_get_rand_bytes(i8* nonnull %10, i32 8) #12, !dbg !1646
  %30 = load i64, i64* %2, align 8, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %30, metadata !1644, metadata !DIExpression()) #11, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11, !dbg !1649
  %31 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %29, i64 0, i32 2, !dbg !1650
  %32 = load i32, i32* %31, align 8, !dbg !1650
  %33 = zext i32 %32 to i64, !dbg !1651
  %34 = urem i64 %30, %33, !dbg !1652
  %35 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1653, !srcloc !1654
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1631, metadata !DIExpression()) #11, !dbg !1653
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1629, metadata !DIExpression()) #11, !dbg !1655
  call void @llvm.dbg.value(metadata %struct.sys_info* %35, metadata !1628, metadata !DIExpression()) #11, !dbg !1656
  %36 = shl nuw i64 %34, 32, !dbg !1657
  %37 = ashr exact i64 %36, 32, !dbg !1657
  %38 = getelementptr %struct.sys_info, %struct.sys_info* %35, i64 0, i32 0, i64 %37, !dbg !1657
  %39 = load %struct.cpu*, %struct.cpu** %38, align 8, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.cpu* %39, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !1615
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !1658
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !1658
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 1, !dbg !1658
  %43 = load %struct.nk_thread*, %struct.nk_thread** %42, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.nk_thread* %43, metadata !1605, metadata !DIExpression()) #11, !dbg !1615
  %44 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1659
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !1663
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !1664
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !1664
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1606, metadata !DIExpression()) #11, !dbg !1666
  %49 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 6, !dbg !1667
  store i32 1, i32* %49, align 4, !dbg !1668
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1670, metadata !DIExpression()) #11, !dbg !1674
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1673, metadata !DIExpression()) #11, !dbg !1676
  %51 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 4, i32 1, !dbg !1677
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.list_head* %50, metadata !1678, metadata !DIExpression()) #11, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.list_head* %52, metadata !1683, metadata !DIExpression()) #11, !dbg !1687
  call void @llvm.dbg.value(metadata %struct.list_head* %48, metadata !1684, metadata !DIExpression()) #11, !dbg !1688
  store %struct.list_head* %50, %struct.list_head** %51, align 8, !dbg !1689
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 0, i32 0, !dbg !1690
  store %struct.list_head* %48, %struct.list_head** %53, align 8, !dbg !1691
  %54 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %16, i64 0, i32 12, i32 1, !dbg !1692
  store %struct.list_head* %52, %struct.list_head** %54, align 8, !dbg !1693
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 0, i32 0, !dbg !1694
  store %struct.list_head* %50, %struct.list_head** %55, align 8, !dbg !1695
  %56 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %43, i64 0, i32 13, !dbg !1696
  %57 = load %struct.nk_timer*, %struct.nk_timer** %56, align 16, !dbg !1696
  %58 = icmp eq %struct.nk_timer* %57, null, !dbg !1698
  br i1 %58, label %61, label %59, !dbg !1699

; <label>:59:                                     ; preds = %27
  %60 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %57) #12, !dbg !1700
  br label %61, !dbg !1702

; <label>:61:                                     ; preds = %27, %59
  %62 = load i32, i32* %5, align 8, !dbg !1573
  br label %63, !dbg !1573

; <label>:63:                                     ; preds = %61, %11
  %64 = phi i32 [ %62, %61 ], [ %25, %11 ], !dbg !1573
  %65 = icmp sgt i32 %64, 0, !dbg !1574
  br i1 %65, label %11, label %66, !dbg !1575, !llvm.loop !1703

; <label>:66:                                     ; preds = %63, %1
  %67 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 16, !dbg !1705
  store i8 1, i8* %67, align 8, !dbg !1706
  %68 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1707
  %69 = inttoptr i64 %68 to %struct.cpu*, !dbg !1712
  %70 = getelementptr inbounds %struct.cpu, %struct.cpu* %69, i64 0, i32 5, !dbg !1713
  %71 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %70, align 8, !dbg !1713
  %72 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %71, i64 0, i32 4, !dbg !1714
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1494, metadata !DIExpression()) #11, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.list_head* %72, metadata !1515, metadata !DIExpression()) #11, !dbg !1717
  %73 = getelementptr inbounds %struct.list_head, %struct.list_head* %72, i64 0, i32 0, !dbg !1719
  %74 = load %struct.list_head*, %struct.list_head** %73, align 8, !dbg !1719
  %75 = icmp eq %struct.list_head* %74, %72, !dbg !1720
  br i1 %75, label %88, label %76, !dbg !1721

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !1722
  %77 = getelementptr %struct.list_head, %struct.list_head* %74, i64 -7, i32 1, !dbg !1722
  %78 = bitcast %struct.list_head** %77 to %struct.nk_fiber*, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1496, metadata !DIExpression()) #11, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1495, metadata !DIExpression()) #11, !dbg !1716
  %79 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 13, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !1527, metadata !DIExpression()) #11, !dbg !1724
  %80 = getelementptr inbounds %struct.list_head*, %struct.list_head** %77, i64 14, !dbg !1726
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8, !dbg !1726
  %82 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1534, metadata !DIExpression()) #11, !dbg !1728
  call void @llvm.dbg.value(metadata %struct.list_head* %82, metadata !1539, metadata !DIExpression()) #11, !dbg !1730
  %83 = getelementptr inbounds %struct.list_head, %struct.list_head* %82, i64 0, i32 1, !dbg !1731
  store %struct.list_head* %81, %struct.list_head** %83, align 8, !dbg !1732
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 0, i32 0, !dbg !1733
  store %struct.list_head* %82, %struct.list_head** %84, align 8, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.list_head** %79, metadata !780, metadata !DIExpression()) #11, !dbg !1735
  %85 = bitcast %struct.list_head** %79 to %struct.list_head***, !dbg !1737
  store %struct.list_head** %79, %struct.list_head*** %85, align 8, !dbg !1737
  %86 = bitcast %struct.list_head** %80 to %struct.list_head***, !dbg !1738
  store %struct.list_head** %79, %struct.list_head*** %86, align 8, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1495, metadata !DIExpression()) #11, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %78, metadata !1557, metadata !DIExpression()), !dbg !1570
  %87 = icmp eq %struct.list_head** %77, null, !dbg !1739
  br i1 %87, label %88, label %95, !dbg !1741

; <label>:88:                                     ; preds = %66, %76
  %89 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1742
  %90 = inttoptr i64 %89 to %struct.cpu*, !dbg !1747
  %91 = getelementptr inbounds %struct.cpu, %struct.cpu* %90, i64 0, i32 5, !dbg !1748
  %92 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %91, align 8, !dbg !1748
  %93 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %92, i64 0, i32 3, !dbg !1749
  %94 = load %struct.nk_fiber*, %struct.nk_fiber** %93, align 8, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %94, metadata !1557, metadata !DIExpression()), !dbg !1570
  br label %95, !dbg !1750

; <label>:95:                                     ; preds = %76, %88
  %96 = phi %struct.nk_fiber* [ %78, %76 ], [ %94, %88 ], !dbg !1751
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %96, metadata !1557, metadata !DIExpression()), !dbg !1570
  %97 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1752
  %98 = inttoptr i64 %97 to %struct.cpu*, !dbg !1755
  %99 = getelementptr inbounds %struct.cpu, %struct.cpu* %98, i64 0, i32 5, !dbg !1756
  %100 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %99, align 8, !dbg !1756
  %101 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %100, i64 0, i32 2, !dbg !1757
  store %struct.nk_fiber* %96, %struct.nk_fiber** %101, align 8, !dbg !1758
  %102 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1759
  %103 = inttoptr i64 %102 to %struct.cpu*, !dbg !1762
  %104 = getelementptr inbounds %struct.cpu, %struct.cpu* %103, i64 0, i32 5, !dbg !1763
  %105 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %104, align 8, !dbg !1763
  %106 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %105, i64 0, i32 2, !dbg !1764
  %107 = load %struct.nk_fiber*, %struct.nk_fiber** %106, align 8, !dbg !1764
  %108 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, !dbg !1765
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !1527, metadata !DIExpression()), !dbg !1766
  %109 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %107, i64 0, i32 12, i32 1, !dbg !1768
  %110 = load %struct.list_head*, %struct.list_head** %109, align 8, !dbg !1768
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 0, i32 0, !dbg !1769
  %112 = load %struct.list_head*, %struct.list_head** %111, align 8, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.list_head* %110, metadata !1534, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata %struct.list_head* %112, metadata !1539, metadata !DIExpression()), !dbg !1772
  %113 = getelementptr inbounds %struct.list_head, %struct.list_head* %112, i64 0, i32 1, !dbg !1773
  store %struct.list_head* %110, %struct.list_head** %113, align 8, !dbg !1774
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %110, i64 0, i32 0, !dbg !1775
  store %struct.list_head* %112, %struct.list_head** %114, align 8, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.list_head* %108, metadata !780, metadata !DIExpression()), !dbg !1777
  store %struct.list_head* %108, %struct.list_head** %111, align 8, !dbg !1779
  store %struct.list_head* %108, %struct.list_head** %109, align 8, !dbg !1780
  %115 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1781
  %116 = load i8*, i8** %115, align 8, !dbg !1781
  call void @kmem_free(i8* %116) #12, !dbg !1781
  %117 = bitcast %struct.nk_fiber* %0 to i8*, !dbg !1782
  call void @kmem_free(i8* %117) #12, !dbg !1782
  call void @_nk_exit_switch(%struct.nk_fiber* %96) #12, !dbg !1783
  ret void, !dbg !1784
}

; Function Attrs: noredzone
declare dso_local i32 @nk_timer_cancel(%struct.nk_timer*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_nk_exit_switch(%struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_run(%struct.nk_fiber*, i8 zeroext) local_unnamed_addr #0 !dbg !1600 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1599, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %1, metadata !1604, metadata !DIExpression()), !dbg !1786
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1787
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !1791
  call void @llvm.dbg.value(metadata %struct.cpu* %5, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1792
  %6 = icmp eq i8 %1, 0, !dbg !1793
  br i1 %6, label %20, label %7, !dbg !1794

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1795, !srcloc !1636
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1623, metadata !DIExpression()) #11, !dbg !1795
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1622, metadata !DIExpression()) #11, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.sys_info* %8, metadata !1621, metadata !DIExpression()) #11, !dbg !1799
  %9 = bitcast i64* %3 to i8*, !dbg !1800
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1800
  call void @nk_get_rand_bytes(i8* nonnull %9, i32 8) #12, !dbg !1802
  %10 = load i64, i64* %3, align 8, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %10, metadata !1644, metadata !DIExpression()) #11, !dbg !1804
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !1805
  %11 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %8, i64 0, i32 2, !dbg !1806
  %12 = load i32, i32* %11, align 8, !dbg !1806
  %13 = zext i32 %12 to i64, !dbg !1807
  %14 = urem i64 %10, %13, !dbg !1808
  %15 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !1809, !srcloc !1654
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1631, metadata !DIExpression()) #11, !dbg !1809
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1629, metadata !DIExpression()) #11, !dbg !1810
  call void @llvm.dbg.value(metadata %struct.sys_info* %15, metadata !1628, metadata !DIExpression()) #11, !dbg !1811
  %16 = shl nuw i64 %14, 32, !dbg !1812
  %17 = ashr exact i64 %16, 32, !dbg !1812
  %18 = getelementptr %struct.sys_info, %struct.sys_info* %15, i64 0, i32 0, i64 %17, !dbg !1812
  %19 = load %struct.cpu*, %struct.cpu** %18, align 8, !dbg !1812
  call void @llvm.dbg.value(metadata %struct.cpu* %19, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)), !dbg !1792
  br label %20, !dbg !1813

; <label>:20:                                     ; preds = %2, %7
  %21 = phi %struct.cpu* [ %19, %7 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.cpu, %struct.cpu* %21, i64 0, i32 5, !dbg !1814
  %23 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %22, align 8, !dbg !1814
  %24 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %23, i64 0, i32 1, !dbg !1814
  %25 = load %struct.nk_thread*, %struct.nk_thread** %24, align 8, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.nk_thread* %25, metadata !1605, metadata !DIExpression()), !dbg !1792
  %26 = call i64 @msr_read(i32 -1073741567) #12, !dbg !1815
  %27 = inttoptr i64 %26 to %struct.cpu*, !dbg !1819
  %28 = getelementptr inbounds %struct.cpu, %struct.cpu* %27, i64 0, i32 5, !dbg !1820
  %29 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %28, align 8, !dbg !1820
  %30 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1606, metadata !DIExpression()), !dbg !1822
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !1823
  store i32 1, i32* %31, align 4, !dbg !1824
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1670, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1673, metadata !DIExpression()), !dbg !1828
  %33 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %29, i64 0, i32 4, i32 1, !dbg !1829
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1678, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1683, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1684, metadata !DIExpression()), !dbg !1833
  store %struct.list_head* %32, %struct.list_head** %33, align 8, !dbg !1834
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !1835
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !1836
  %36 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !1837
  store %struct.list_head* %34, %struct.list_head** %36, align 8, !dbg !1838
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !1839
  store %struct.list_head* %32, %struct.list_head** %37, align 8, !dbg !1840
  %38 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %25, i64 0, i32 13, !dbg !1841
  %39 = load %struct.nk_timer*, %struct.nk_timer** %38, align 16, !dbg !1841
  %40 = icmp eq %struct.nk_timer* %39, null, !dbg !1842
  br i1 %40, label %43, label %41, !dbg !1843

; <label>:41:                                     ; preds = %20
  %42 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %39) #12, !dbg !1844
  br label %43, !dbg !1845

; <label>:43:                                     ; preds = %20, %41
  ret i32 0, !dbg !1846
}

; Function Attrs: noredzone nounwind
define internal void @_fiber_wrapper(%struct.nk_fiber*) #0 !dbg !1847 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1849, metadata !DIExpression()), !dbg !1850
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 13, !dbg !1851
  %3 = load void (i8*, i8**)*, void (i8*, i8**)** %2, align 8, !dbg !1851
  %4 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 14, !dbg !1852
  %5 = load i8*, i8** %4, align 8, !dbg !1852
  %6 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 15, !dbg !1853
  %7 = load i8**, i8*** %6, align 8, !dbg !1853
  tail call void %3(i8* %5, i8** %7) #12, !dbg !1854
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %0) #10, !dbg !1855
  ret void, !dbg !1856
}

; Function Attrs: norecurse noredzone nounwind
define internal void @_nk_fiber_init(%struct.nk_fiber*) local_unnamed_addr #4 !dbg !649 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !648, metadata !DIExpression()), !dbg !1857
  %2 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 1, !dbg !1858
  %3 = bitcast i8** %2 to i64*, !dbg !1858
  %4 = load i64, i64* %3, align 8, !dbg !1858
  %5 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 3, !dbg !1859
  %6 = load i64, i64* %5, align 8, !dbg !1859
  %7 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 0, !dbg !1860
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !1863
  %8 = add i64 %4, -8, !dbg !1864
  %9 = add i64 %8, %6, !dbg !1865
  store i64 %9, i64* %7, align 8, !dbg !1865
  %10 = inttoptr i64 %9 to i64*, !dbg !1866
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %10, align 8, !dbg !1867
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1870
  %11 = load i64, i64* %7, align 8, !dbg !1871
  %12 = add i64 %11, -8, !dbg !1871
  store i64 %12, i64* %7, align 8, !dbg !1871
  %13 = inttoptr i64 %12 to i64*, !dbg !1872
  store i64 0, i64* %13, align 8, !dbg !1873
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1876
  %14 = load i64, i64* %7, align 8, !dbg !1877
  %15 = add i64 %14, -8, !dbg !1877
  store i64 %15, i64* %7, align 8, !dbg !1877
  %16 = inttoptr i64 %15 to i64*, !dbg !1878
  store i64 0, i64* %16, align 8, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1882
  %17 = load i64, i64* %7, align 8, !dbg !1883
  %18 = add i64 %17, -8, !dbg !1883
  store i64 %18, i64* %7, align 8, !dbg !1883
  %19 = inttoptr i64 %18 to i64*, !dbg !1884
  store i64 0, i64* %19, align 8, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1888
  %20 = load i64, i64* %7, align 8, !dbg !1889
  %21 = add i64 %20, -8, !dbg !1889
  store i64 %21, i64* %7, align 8, !dbg !1889
  %22 = inttoptr i64 %21 to i64*, !dbg !1890
  store i64 0, i64* %22, align 8, !dbg !1891
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1894
  %23 = load i64, i64* %7, align 8, !dbg !1895
  %24 = add i64 %23, -8, !dbg !1895
  store i64 %24, i64* %7, align 8, !dbg !1895
  %25 = inttoptr i64 %24 to i64*, !dbg !1896
  store i64 0, i64* %25, align 8, !dbg !1897
  %26 = ptrtoint %struct.nk_fiber* %0 to i64, !dbg !1898
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %26, metadata !662, metadata !DIExpression()), !dbg !1901
  %27 = load i64, i64* %7, align 8, !dbg !1902
  %28 = add i64 %27, -8, !dbg !1902
  store i64 %28, i64* %7, align 8, !dbg !1902
  %29 = inttoptr i64 %28 to i64*, !dbg !1903
  store i64 %26, i64* %29, align 8, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1907
  %30 = load i64, i64* %7, align 8, !dbg !1908
  %31 = add i64 %30, -8, !dbg !1908
  store i64 %31, i64* %7, align 8, !dbg !1908
  %32 = inttoptr i64 %31 to i64*, !dbg !1909
  store i64 0, i64* %32, align 8, !dbg !1910
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1913
  %33 = load i64, i64* %7, align 8, !dbg !1914
  %34 = add i64 %33, -8, !dbg !1914
  store i64 %34, i64* %7, align 8, !dbg !1914
  %35 = inttoptr i64 %34 to i64*, !dbg !1915
  store i64 0, i64* %35, align 8, !dbg !1916
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1919
  %36 = load i64, i64* %7, align 8, !dbg !1920
  %37 = add i64 %36, -8, !dbg !1920
  store i64 %37, i64* %7, align 8, !dbg !1920
  %38 = inttoptr i64 %37 to i64*, !dbg !1921
  store i64 0, i64* %38, align 8, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1925
  %39 = load i64, i64* %7, align 8, !dbg !1926
  %40 = add i64 %39, -8, !dbg !1926
  store i64 %40, i64* %7, align 8, !dbg !1926
  %41 = inttoptr i64 %40 to i64*, !dbg !1927
  store i64 0, i64* %41, align 8, !dbg !1928
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1931
  %42 = load i64, i64* %7, align 8, !dbg !1932
  %43 = add i64 %42, -8, !dbg !1932
  store i64 %43, i64* %7, align 8, !dbg !1932
  %44 = inttoptr i64 %43 to i64*, !dbg !1933
  store i64 0, i64* %44, align 8, !dbg !1934
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1937
  %45 = load i64, i64* %7, align 8, !dbg !1938
  %46 = add i64 %45, -8, !dbg !1938
  store i64 %46, i64* %7, align 8, !dbg !1938
  %47 = inttoptr i64 %46 to i64*, !dbg !1939
  store i64 0, i64* %47, align 8, !dbg !1940
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1943
  %48 = load i64, i64* %7, align 8, !dbg !1944
  %49 = add i64 %48, -8, !dbg !1944
  store i64 %49, i64* %7, align 8, !dbg !1944
  %50 = inttoptr i64 %49 to i64*, !dbg !1945
  store i64 0, i64* %50, align 8, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1949
  %51 = load i64, i64* %7, align 8, !dbg !1950
  %52 = add i64 %51, -8, !dbg !1950
  store i64 %52, i64* %7, align 8, !dbg !1950
  %53 = inttoptr i64 %52 to i64*, !dbg !1951
  store i64 0, i64* %53, align 8, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !657, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !1955
  %54 = load i64, i64* %7, align 8, !dbg !1956
  %55 = add i64 %54, -8, !dbg !1956
  store i64 %55, i64* %7, align 8, !dbg !1956
  %56 = inttoptr i64 %55 to i64*, !dbg !1957
  store i64 0, i64* %56, align 8, !dbg !1958
  ret void, !dbg !1959
}

; Function Attrs: noredzone nounwind
define internal i32 @_nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !1960 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !1964, metadata !DIExpression()), !dbg !1969
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1970
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !1974
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !1975
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !1975
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !1976
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !1976
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !1965, metadata !DIExpression()), !dbg !1977
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 6, !dbg !1978
  %9 = load i32, i32* %8, align 4, !dbg !1978
  %10 = add i32 %9, -3, !dbg !1980
  %11 = icmp ult i32 %10, 2, !dbg !1980
  br i1 %11, label %13, label %12, !dbg !1980

; <label>:12:                                     ; preds = %1
  store i32 2, i32* %8, align 4, !dbg !1981
  br label %13, !dbg !1983

; <label>:13:                                     ; preds = %1, %12
  %14 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1984
  %15 = inttoptr i64 %14 to %struct.cpu*, !dbg !1988
  %16 = getelementptr inbounds %struct.cpu, %struct.cpu* %15, i64 0, i32 5, !dbg !1989
  %17 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %16, align 8, !dbg !1989
  %18 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %17, i64 0, i32 3, !dbg !1990
  %19 = load %struct.nk_fiber*, %struct.nk_fiber** %18, align 8, !dbg !1990
  %20 = icmp eq %struct.nk_fiber* %7, %19, !dbg !1991
  br i1 %20, label %36, label %21, !dbg !1992

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %8, align 4, !dbg !1993
  %23 = icmp eq i32 %22, 3, !dbg !1994
  br i1 %23, label %36, label %24, !dbg !1995

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !1996
  %26 = inttoptr i64 %25 to %struct.cpu*, !dbg !2000
  %27 = getelementptr inbounds %struct.cpu, %struct.cpu* %26, i64 0, i32 5, !dbg !2001
  %28 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %27, align 8, !dbg !2001
  %29 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1966, metadata !DIExpression()), !dbg !2003
  %30 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, !dbg !2004
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1670, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1673, metadata !DIExpression()), !dbg !2007
  %31 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %28, i64 0, i32 4, i32 1, !dbg !2008
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8, !dbg !2008
  call void @llvm.dbg.value(metadata %struct.list_head* %30, metadata !1678, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct.list_head* %32, metadata !1683, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1684, metadata !DIExpression()), !dbg !2012
  store %struct.list_head* %30, %struct.list_head** %31, align 8, !dbg !2013
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 0, i32 0, !dbg !2014
  store %struct.list_head* %29, %struct.list_head** %33, align 8, !dbg !2015
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 12, i32 1, !dbg !2016
  store %struct.list_head* %32, %struct.list_head** %34, align 8, !dbg !2017
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 0, i32 0, !dbg !2018
  store %struct.list_head* %30, %struct.list_head** %35, align 8, !dbg !2019
  br label %36, !dbg !2020

; <label>:36:                                     ; preds = %21, %13, %24
  %37 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 8, !dbg !2021
  %38 = load i32, i32* %37, align 8, !dbg !2021
  %39 = icmp eq i32 %38, 0, !dbg !2023
  br i1 %39, label %40, label %55, !dbg !2024

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2025
  %42 = bitcast %struct.nk_virtual_console** %41 to i64*, !dbg !2025
  %43 = load i64, i64* %42, align 8, !dbg !2025
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console** %41, metadata !2027, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2033
  %44 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2035
  %45 = inttoptr i64 %44 to %struct.cpu*, !dbg !2039
  %46 = getelementptr inbounds %struct.cpu, %struct.cpu* %45, i64 0, i32 5, !dbg !2040
  %47 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %46, align 8, !dbg !2040
  %48 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %47, i64 0, i32 2, !dbg !2041
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %48, align 8, !dbg !2041
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !2032, metadata !DIExpression()) #11, !dbg !2042
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 7, !dbg !2043
  %51 = bitcast %struct.nk_virtual_console** %50 to i64*, !dbg !2044
  store i64 %43, i64* %51, align 8, !dbg !2044
  %52 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2045, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !772, metadata !DIExpression()) #11, !dbg !2045
  call void @llvm.dbg.value(metadata %struct.nk_thread* %52, metadata !771, metadata !DIExpression()) #11, !dbg !2047
  %53 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %52, i64 0, i32 24, !dbg !2048
  %54 = bitcast %struct.nk_virtual_console** %53 to i64*, !dbg !2049
  store i64 %43, i64* %54, align 8, !dbg !2049
  br label %55, !dbg !2050

; <label>:55:                                     ; preds = %36, %40
  %56 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2051
  %57 = inttoptr i64 %56 to %struct.cpu*, !dbg !2054
  %58 = getelementptr inbounds %struct.cpu, %struct.cpu* %57, i64 0, i32 5, !dbg !2055
  %59 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %58, align 8, !dbg !2055
  %60 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %59, i64 0, i32 2, !dbg !2056
  store %struct.nk_fiber* %0, %struct.nk_fiber** %60, align 8, !dbg !2057
  store i32 1, i32* %8, align 4, !dbg !2058
  %61 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 6, !dbg !2059
  store i32 5, i32* %61, align 4, !dbg !2060
  tail call void @nk_fiber_context_switch(%struct.nk_fiber* nonnull %7, %struct.nk_fiber* %0) #12, !dbg !2061
  ret i32 0, !dbg !2062
}

; Function Attrs: noredzone
declare dso_local void @nk_fiber_context_switch(%struct.nk_fiber*, %struct.nk_fiber*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_set_vc(%struct.nk_virtual_console*) local_unnamed_addr #0 !dbg !2028 {
  call void @llvm.dbg.value(metadata %struct.nk_virtual_console* %0, metadata !2027, metadata !DIExpression()), !dbg !2063
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2064
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2068
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2069
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2069
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !2070
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2070
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2032, metadata !DIExpression()), !dbg !2071
  %8 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 7, !dbg !2072
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %8, align 8, !dbg !2073
  %9 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2074, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !772, metadata !DIExpression()) #11, !dbg !2074
  call void @llvm.dbg.value(metadata %struct.nk_thread* %9, metadata !771, metadata !DIExpression()) #11, !dbg !2076
  %10 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %9, i64 0, i32 24, !dbg !2077
  store %struct.nk_virtual_console* %0, %struct.nk_virtual_console** %10, align 8, !dbg !2078
  ret void, !dbg !2079
}

; Function Attrs: noredzone nounwind
define internal void @_nk_fiber_cleanup() #0 !dbg !2080 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2085
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !2089
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !2090
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !2090
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 2, !dbg !2091
  %6 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %6, metadata !2084, metadata !DIExpression()), !dbg !2092
  tail call void @_nk_fiber_exit(%struct.nk_fiber* %6) #10, !dbg !2093
  ret void, !dbg !2094
}

; Function Attrs: noredzone nounwind
define internal zeroext i8 @_is_idle_fiber(%struct.nk_fiber* readnone) local_unnamed_addr #0 !dbg !2095 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2099, metadata !DIExpression()), !dbg !2102
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2103
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2107
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2108
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !2108
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 3, !dbg !2109
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !2100, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2111
  %8 = icmp eq %struct.nk_fiber* %7, %0, !dbg !2112
  %9 = zext i1 %8 to i8, !dbg !2114
  call void @llvm.dbg.value(metadata i8 %9, metadata !2101, metadata !DIExpression()), !dbg !2111
  ret i8 %9, !dbg !2115
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_thread* @_get_random_fiber_thread() local_unnamed_addr #0 !dbg !1625 {
  %1 = alloca i64, align 8
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2116, !srcloc !1636
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1623, metadata !DIExpression()) #11, !dbg !2116
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1622, metadata !DIExpression()) #11, !dbg !2118
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !1621, metadata !DIExpression()) #11, !dbg !2119
  %3 = bitcast i64* %1 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2120
  call void @nk_get_rand_bytes(i8* nonnull %3, i32 8) #12, !dbg !2122
  %4 = load i64, i64* %1, align 8, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %4, metadata !1644, metadata !DIExpression()) #11, !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !2125
  %5 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2126
  %6 = load i32, i32* %5, align 8, !dbg !2126
  %7 = zext i32 %6 to i64, !dbg !2127
  %8 = urem i64 %4, %7, !dbg !2128
  %9 = call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2129, !srcloc !1654
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1631, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1629, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.sys_info* %9, metadata !1628, metadata !DIExpression()), !dbg !2131
  %10 = shl nuw i64 %8, 32, !dbg !2132
  %11 = ashr exact i64 %10, 32, !dbg !2132
  %12 = getelementptr %struct.sys_info, %struct.sys_info* %9, i64 0, i32 0, i64 %11, !dbg !2132
  %13 = load %struct.cpu*, %struct.cpu** %12, align 8, !dbg !2132
  %14 = getelementptr inbounds %struct.cpu, %struct.cpu* %13, i64 0, i32 5, !dbg !2133
  %15 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %14, align 8, !dbg !2133
  %16 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %15, i64 0, i32 1, !dbg !2134
  %17 = load %struct.nk_thread*, %struct.nk_thread** %16, align 8, !dbg !2134
  ret %struct.nk_thread* %17, !dbg !2135
}

; Function Attrs: noredzone nounwind
define internal i32 @_check_all_queues_remove(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !2136 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2138, metadata !DIExpression()), !dbg !2157
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !2158, !srcloc !2159
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2142, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2140, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2139, metadata !DIExpression()), !dbg !2161
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !2162
  %4 = load i32, i32* %3, align 8, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %4, metadata !2144, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2164
  %5 = icmp sgt i32 %4, 0, !dbg !2165
  br i1 %5, label %6, label %38, !dbg !2166

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !2167
  br label %8, !dbg !2167

; <label>:8:                                      ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2147, metadata !DIExpression()), !dbg !2164
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !2167
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !2167
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !2168
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !2168
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2145, metadata !DIExpression()), !dbg !2170
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2149, metadata !DIExpression(DW_OP_deref)), !dbg !2171
  call void @llvm.dbg.value(metadata i8** %15, metadata !2146, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)), !dbg !2172
  %16 = load i8*, i8** %15, align 8, !dbg !2173
  br label %17, !dbg !2174

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !2173
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !2175
  %20 = bitcast i8* %18 to i8**, !dbg !2175
  %21 = load i8*, i8** %20, align 8, !dbg !2175
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1), !dbg !2175
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !2175
  br i1 %22, label %27, label %23, !dbg !2174

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !2173
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2146, metadata !DIExpression()), !dbg !2172
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !2176
  br i1 %26, label %30, label %17, !dbg !2179, !llvm.loop !2180

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i32 undef, metadata !2147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2164
  %29 = icmp slt i64 %28, %7, !dbg !2165
  br i1 %29, label %8, label %38, !dbg !2166, !llvm.loop !2183

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !2185
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !1527, metadata !DIExpression()), !dbg !2187
  %32 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !2189
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8, !dbg !2189
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i64 0, i32 0, !dbg !2190
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8, !dbg !2190
  call void @llvm.dbg.value(metadata %struct.list_head* %33, metadata !1534, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1539, metadata !DIExpression()), !dbg !2193
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 1, !dbg !2194
  store %struct.list_head* %33, %struct.list_head** %36, align 8, !dbg !2195
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 0, i32 0, !dbg !2196
  store %struct.list_head* %35, %struct.list_head** %37, align 8, !dbg !2197
  call void @llvm.dbg.value(metadata %struct.list_head* %31, metadata !780, metadata !DIExpression()), !dbg !2198
  store %struct.list_head* %31, %struct.list_head** %34, align 8, !dbg !2200
  store %struct.list_head* %31, %struct.list_head** %32, align 8, !dbg !2201
  br label %38

; <label>:38:                                     ; preds = %27, %1, %30
  %39 = phi i32 [ 0, %30 ], [ 1, %1 ], [ 1, %27 ]
  ret i32 %39, !dbg !2202
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture readonly, i32, i32, i32) #5

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_init_ap() local_unnamed_addr #0 !dbg !2203 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2232, !srcloc !2233
  call void @llvm.dbg.value(metadata i32 %1, metadata !2208, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i32 %1, metadata !2206, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2235
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2236
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !2210, metadata !DIExpression()), !dbg !2239
  %4 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2240
  %5 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !2241
  store %struct.nk_fiber_percpu_state* %4, %struct.nk_fiber_percpu_state** %5, align 8, !dbg !2242
  %6 = icmp eq %struct.nk_fiber_percpu_state* %4, null, !dbg !2243
  br i1 %6, label %7, label %109, !dbg !2244

; <label>:7:                                      ; preds = %0
  %8 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2245
  %9 = icmp eq i64 %8, 0, !dbg !2251
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %10, metadata !2256, metadata !DIExpression()) #11, !dbg !2258
  %11 = icmp eq i64 %10, 0, !dbg !2259
  br i1 %11, label %17, label %12, !dbg !2261

; <label>:12:                                     ; preds = %7
  %13 = add i64 %10, 10, !dbg !2262
  %14 = inttoptr i64 %13 to i16*, !dbg !2264
  %15 = atomicrmw add i16* %14, i16 0 seq_cst, !dbg !2265
  %16 = zext i16 %15 to i32, !dbg !2265
  br label %17, !dbg !2266

; <label>:17:                                     ; preds = %7, %12
  %18 = phi i32 [ %16, %12 ], [ 1, %7 ], !dbg !2267
  %19 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %19, metadata !2272, metadata !DIExpression()) #11, !dbg !2274
  %20 = icmp eq i64 %19, 0, !dbg !2275
  br i1 %20, label %25, label %21, !dbg !2277

; <label>:21:                                     ; preds = %17
  %22 = add i64 %19, 10, !dbg !2278
  %23 = inttoptr i64 %22 to i16*, !dbg !2280
  %24 = atomicrmw add i16* %23, i16 1 seq_cst, !dbg !2281
  br label %25, !dbg !2282

; <label>:25:                                     ; preds = %17, %21
  br i1 %9, label %83, label %26, !dbg !2283

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2211, metadata !DIExpression()), !dbg !2284
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2285, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !2217, metadata !DIExpression()), !dbg !2284
  %28 = tail call i32 @nk_vc_is_active() #12, !dbg !2288
  %29 = icmp eq i32 %28, 0, !dbg !2288
  %30 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2289
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %31, metadata !2296, metadata !DIExpression()) #11, !dbg !2300
  %32 = icmp eq i64 %31, 0, !dbg !2301
  br i1 %32, label %38, label %33, !dbg !2303

; <label>:33:                                     ; preds = %26
  %34 = add i64 %31, 8, !dbg !2304
  %35 = inttoptr i64 %34 to i16*, !dbg !2306
  %36 = atomicrmw add i16* %35, i16 0 seq_cst, !dbg !2307
  %37 = icmp eq i16 %36, 0, !dbg !2308
  br i1 %37, label %38, label %39, !dbg !2289

; <label>:38:                                     ; preds = %26, %33
  br label %39, !dbg !2289

; <label>:39:                                     ; preds = %33, %38
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %33 ]
  %41 = icmp eq i32 %18, 0, !dbg !2289
  %42 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2289
  %43 = icmp ne %struct.nk_thread* %27, null, !dbg !2289
  br i1 %29, label %60, label %44, !dbg !2309

; <label>:44:                                     ; preds = %39
  br i1 %43, label %45, label %56, !dbg !2310

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2310
  %47 = load i64, i64* %46, align 32, !dbg !2310
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2310
  %49 = load i8, i8* %48, align 8, !dbg !2310
  %50 = icmp eq i8 %49, 0, !dbg !2310
  br i1 %50, label %51, label %56, !dbg !2310

; <label>:51:                                     ; preds = %45
  %52 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2310
  %53 = load i8, i8* %52, align 64, !dbg !2310
  %54 = icmp eq i8 %53, 0, !dbg !2310
  %55 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %52, !dbg !2310
  br label %56, !dbg !2310

; <label>:56:                                     ; preds = %44, %45, %51
  %57 = phi i64 [ %47, %45 ], [ %47, %51 ], [ 0, %44 ]
  %58 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %45 ], [ %55, %51 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %44 ], !dbg !2310
  %59 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %57, i8* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2310
  br label %76, !dbg !2310

; <label>:60:                                     ; preds = %39
  br i1 %43, label %61, label %72, !dbg !2311

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 5, !dbg !2311
  %63 = load i64, i64* %62, align 32, !dbg !2311
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 18, !dbg !2311
  %65 = load i8, i8* %64, align 8, !dbg !2311
  %66 = icmp eq i8 %65, 0, !dbg !2311
  br i1 %66, label %67, label %72, !dbg !2311

; <label>:67:                                     ; preds = %61
  %68 = getelementptr %struct.nk_thread, %struct.nk_thread* %27, i64 0, i32 25, i64 0, !dbg !2311
  %69 = load i8, i8* %68, align 64, !dbg !2311
  %70 = icmp eq i8 %69, 0, !dbg !2311
  %71 = select i1 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %68, !dbg !2311
  br label %72, !dbg !2311

; <label>:72:                                     ; preds = %60, %61, %67
  %73 = phi i64 [ %63, %61 ], [ %63, %67 ], [ 0, %60 ]
  %74 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %61 ], [ %71, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %60 ], !dbg !2311
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %30, i8* %40, i8* %42, i64 %73, i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2311
  br label %76

; <label>:76:                                     ; preds = %72, %56
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %77, metadata !2316, metadata !DIExpression()) #11, !dbg !2318
  %78 = icmp eq i64 %77, 0, !dbg !2319
  br i1 %78, label %109, label %79, !dbg !2321

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !2322
  %81 = inttoptr i64 %80 to i16*, !dbg !2324
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !2325
  br label %109, !dbg !2326

; <label>:83:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i32 %18, metadata !2230, metadata !DIExpression()), !dbg !2327
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !2328
  %85 = icmp eq i32 %84, 0, !dbg !2328
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %86, metadata !2296, metadata !DIExpression()) #11, !dbg !2335
  %87 = icmp eq i64 %86, 0, !dbg !2336
  br i1 %87, label %93, label %88, !dbg !2337

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !2338
  %90 = inttoptr i64 %89 to i16*, !dbg !2339
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !2340
  %92 = icmp eq i16 %91, 0, !dbg !2341
  br i1 %92, label %93, label %94, !dbg !2342

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !2342

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %18, 0, !dbg !2342
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2342
  br i1 %85, label %100, label %98, !dbg !2343

; <label>:98:                                     ; preds = %94
  %99 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2344
  br label %102, !dbg !2344

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %95, i8* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 444) #12, !dbg !2346
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %103, metadata !2316, metadata !DIExpression()) #11, !dbg !2351
  %104 = icmp eq i64 %103, 0, !dbg !2352
  br i1 %104, label %109, label %105, !dbg !2353

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 10, !dbg !2354
  %107 = inttoptr i64 %106 to i16*, !dbg !2355
  %108 = atomicrmw sub i16* %107, i16 1 seq_cst, !dbg !2356
  br label %109, !dbg !2357

; <label>:109:                                    ; preds = %105, %102, %79, %76, %0
  %110 = phi i32 [ 0, %0 ], [ -1, %76 ], [ -1, %79 ], [ -1, %102 ], [ -1, %105 ], !dbg !2358
  ret i32 %110, !dbg !2359
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() unnamed_addr #0 !dbg !2360 {
  %1 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2392, !srcloc !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2369, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %1, metadata !2367, metadata !DIExpression()), !dbg !2394
  %2 = tail call i8* @kmem_malloc_specific(i64 48, i32 %1, i32 0) #12, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()), !dbg !2395
  %3 = icmp eq i8* %2, null, !dbg !2396
  br i1 %3, label %4, label %106, !dbg !2397

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2398
  %6 = icmp eq i64 %5, 0, !dbg !2400
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %7, metadata !2256, metadata !DIExpression()) #11, !dbg !2404
  %8 = icmp eq i64 %7, 0, !dbg !2405
  br i1 %8, label %14, label %9, !dbg !2406

; <label>:9:                                      ; preds = %4
  %10 = add i64 %7, 10, !dbg !2407
  %11 = inttoptr i64 %10 to i16*, !dbg !2408
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2409
  %13 = zext i16 %12 to i32, !dbg !2409
  br label %14, !dbg !2410

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %4 ], !dbg !2411
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %16, metadata !2272, metadata !DIExpression()) #11, !dbg !2415
  %17 = icmp eq i64 %16, 0, !dbg !2416
  br i1 %17, label %22, label %18, !dbg !2417

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2418
  %20 = inttoptr i64 %19 to i16*, !dbg !2419
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2420
  br label %22, !dbg !2421

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2422

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2371, metadata !DIExpression()), !dbg !2423
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2424, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2426
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2377, metadata !DIExpression()), !dbg !2423
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2427
  %26 = icmp eq i32 %25, 0, !dbg !2427
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2428
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %28, metadata !2296, metadata !DIExpression()) #11, !dbg !2433
  %29 = icmp eq i64 %28, 0, !dbg !2434
  br i1 %29, label %35, label %30, !dbg !2435

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2436
  %32 = inttoptr i64 %31 to i16*, !dbg !2437
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2438
  %34 = icmp eq i16 %33, 0, !dbg !2439
  br i1 %34, label %35, label %36, !dbg !2428

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2428

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2428
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2428
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2428
  br i1 %26, label %57, label %41, !dbg !2440

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2441

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2441
  %44 = load i64, i64* %43, align 32, !dbg !2441
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2441
  %46 = load i8, i8* %45, align 8, !dbg !2441
  %47 = icmp eq i8 %46, 0, !dbg !2441
  br i1 %47, label %48, label %53, !dbg !2441

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2441
  %50 = load i8, i8* %49, align 64, !dbg !2441
  %51 = icmp eq i8 %50, 0, !dbg !2441
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2441
  br label %53, !dbg !2441

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2441
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2441
  br label %73, !dbg !2441

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2442

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2442
  %60 = load i64, i64* %59, align 32, !dbg !2442
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2442
  %62 = load i8, i8* %61, align 8, !dbg !2442
  %63 = icmp eq i8 %62, 0, !dbg !2442
  br i1 %63, label %64, label %69, !dbg !2442

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2442
  %66 = load i8, i8* %65, align 64, !dbg !2442
  %67 = icmp eq i8 %66, 0, !dbg !2442
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2442
  br label %69, !dbg !2442

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2442
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.27, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2442
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %74, metadata !2316, metadata !DIExpression()) #11, !dbg !2446
  %75 = icmp eq i64 %74, 0, !dbg !2447
  br i1 %75, label %114, label %76, !dbg !2448

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2449
  %78 = inttoptr i64 %77 to i16*, !dbg !2450
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2451
  br label %114, !dbg !2452

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2390, metadata !DIExpression()), !dbg !2453
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2454
  %82 = icmp eq i32 %81, 0, !dbg !2454
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %83, metadata !2296, metadata !DIExpression()) #11, !dbg !2461
  %84 = icmp eq i64 %83, 0, !dbg !2462
  br i1 %84, label %90, label %85, !dbg !2463

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2464
  %87 = inttoptr i64 %86 to i16*, !dbg !2465
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2466
  %89 = icmp eq i16 %88, 0, !dbg !2467
  br i1 %89, label %90, label %91, !dbg !2468

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2468

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2468
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2468
  br i1 %82, label %97, label %95, !dbg !2469

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2470
  br label %99, !dbg !2470

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i8* %92, i8* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 415) #12, !dbg !2472
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %100, metadata !2316, metadata !DIExpression()) #11, !dbg !2477
  %101 = icmp eq i64 %100, 0, !dbg !2478
  br i1 %101, label %114, label %102, !dbg !2479

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2480
  %104 = inttoptr i64 %103 to i16*, !dbg !2481
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2482
  br label %114, !dbg !2483

; <label>:106:                                    ; preds = %0
  %107 = bitcast i8* %2 to %struct.nk_fiber_percpu_state*, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %107, metadata !2364, metadata !DIExpression()), !dbg !2485
  %108 = tail call i8* @memset(i8* nonnull %2, i8 signext 0, i64 48) #12, !dbg !2486
  %109 = bitcast i8* %2 to i32*, !dbg !2487
  tail call void @spinlock_init(i32* %109) #12, !dbg !2488
  %110 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %110, metadata !780, metadata !DIExpression()), !dbg !2490
  %111 = bitcast i8* %110 to i8**, !dbg !2492
  store i8* %110, i8** %111, align 8, !dbg !2492
  %112 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2493
  %113 = bitcast i8* %112 to i8**, !dbg !2494
  store i8* %110, i8** %113, align 8, !dbg !2494
  br label %115, !dbg !2495

; <label>:114:                                    ; preds = %102, %99, %76, %73
  tail call void @kmem_free(i8* null) #12, !dbg !2496
  br label %115, !dbg !2497

; <label>:115:                                    ; preds = %114, %106
  %116 = phi %struct.nk_fiber_percpu_state* [ %107, %106 ], [ null, %114 ], !dbg !2498
  ret %struct.nk_fiber_percpu_state* %116, !dbg !2499
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
define internal i32 @nk_fiber_init() local_unnamed_addr #0 !dbg !2500 {
  %1 = load i32, i32* getelementptr inbounds (%struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 7), align 8, !dbg !2543
  %2 = zext i32 %1 to i64, !dbg !2544
  %3 = getelementptr %struct.naut_info, %struct.naut_info* @nautilus_info, i64 0, i32 0, i32 0, i64 %2, !dbg !2544
  %4 = load %struct.cpu*, %struct.cpu** %3, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.cpu* %4, metadata !2502, metadata !DIExpression()), !dbg !2545
  %5 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2546
  %6 = icmp eq i64 %5, 0, !dbg !2548
  %7 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %7, metadata !2256, metadata !DIExpression()) #11, !dbg !2552
  %8 = icmp eq i64 %7, 0, !dbg !2553
  br i1 %8, label %14, label %9, !dbg !2554

; <label>:9:                                      ; preds = %0
  %10 = add i64 %7, 10, !dbg !2555
  %11 = inttoptr i64 %10 to i16*, !dbg !2556
  %12 = atomicrmw add i16* %11, i16 0 seq_cst, !dbg !2557
  %13 = zext i16 %12 to i32, !dbg !2557
  br label %14, !dbg !2558

; <label>:14:                                     ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 1, %0 ], !dbg !2559
  %16 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %16, metadata !2272, metadata !DIExpression()) #11, !dbg !2563
  %17 = icmp eq i64 %16, 0, !dbg !2564
  br i1 %17, label %22, label %18, !dbg !2565

; <label>:18:                                     ; preds = %14
  %19 = add i64 %16, 10, !dbg !2566
  %20 = inttoptr i64 %19 to i16*, !dbg !2567
  %21 = atomicrmw add i16* %20, i16 1 seq_cst, !dbg !2568
  br label %22, !dbg !2569

; <label>:22:                                     ; preds = %14, %18
  br i1 %6, label %80, label %23, !dbg !2570

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2503, metadata !DIExpression()), !dbg !2571
  %24 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2572, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !772, metadata !DIExpression()) #11, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !771, metadata !DIExpression()) #11, !dbg !2574
  call void @llvm.dbg.value(metadata %struct.nk_thread* %24, metadata !2507, metadata !DIExpression()), !dbg !2571
  %25 = tail call i32 @nk_vc_is_active() #12, !dbg !2575
  %26 = icmp eq i32 %25, 0, !dbg !2575
  %27 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2576
  %28 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %28, metadata !2296, metadata !DIExpression()) #11, !dbg !2581
  %29 = icmp eq i64 %28, 0, !dbg !2582
  br i1 %29, label %35, label %30, !dbg !2583

; <label>:30:                                     ; preds = %23
  %31 = add i64 %28, 8, !dbg !2584
  %32 = inttoptr i64 %31 to i16*, !dbg !2585
  %33 = atomicrmw add i16* %32, i16 0 seq_cst, !dbg !2586
  %34 = icmp eq i16 %33, 0, !dbg !2587
  br i1 %34, label %35, label %36, !dbg !2576

; <label>:35:                                     ; preds = %23, %30
  br label %36, !dbg !2576

; <label>:36:                                     ; preds = %30, %35
  %37 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %30 ]
  %38 = icmp eq i32 %15, 0, !dbg !2576
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2576
  %40 = icmp ne %struct.nk_thread* %24, null, !dbg !2576
  br i1 %26, label %57, label %41, !dbg !2588

; <label>:41:                                     ; preds = %36
  br i1 %40, label %42, label %53, !dbg !2589

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2589
  %44 = load i64, i64* %43, align 32, !dbg !2589
  %45 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2589
  %46 = load i8, i8* %45, align 8, !dbg !2589
  %47 = icmp eq i8 %46, 0, !dbg !2589
  br i1 %47, label %48, label %53, !dbg !2589

; <label>:48:                                     ; preds = %42
  %49 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2589
  %50 = load i8, i8* %49, align 64, !dbg !2589
  %51 = icmp eq i8 %50, 0, !dbg !2589
  %52 = select i1 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %49, !dbg !2589
  br label %53, !dbg !2589

; <label>:53:                                     ; preds = %41, %42, %48
  %54 = phi i64 [ %44, %42 ], [ %44, %48 ], [ 0, %41 ]
  %55 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %42 ], [ %52, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %41 ], !dbg !2589
  %56 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %54, i8* %55) #12, !dbg !2589
  br label %73, !dbg !2589

; <label>:57:                                     ; preds = %36
  br i1 %40, label %58, label %69, !dbg !2590

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 5, !dbg !2590
  %60 = load i64, i64* %59, align 32, !dbg !2590
  %61 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 18, !dbg !2590
  %62 = load i8, i8* %61, align 8, !dbg !2590
  %63 = icmp eq i8 %62, 0, !dbg !2590
  br i1 %63, label %64, label %69, !dbg !2590

; <label>:64:                                     ; preds = %58
  %65 = getelementptr %struct.nk_thread, %struct.nk_thread* %24, i64 0, i32 25, i64 0, !dbg !2590
  %66 = load i8, i8* %65, align 64, !dbg !2590
  %67 = icmp eq i8 %66, 0, !dbg !2590
  %68 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %65, !dbg !2590
  br label %69, !dbg !2590

; <label>:69:                                     ; preds = %57, %58, %64
  %70 = phi i64 [ %60, %58 ], [ %60, %64 ], [ 0, %57 ]
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %58 ], [ %68, %64 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %57 ], !dbg !2590
  %72 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9.12, i64 0, i64 0), i32 %27, i8* %37, i8* %39, i64 %70, i8* %71) #12, !dbg !2590
  br label %73

; <label>:73:                                     ; preds = %69, %53
  %74 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %74, metadata !2316, metadata !DIExpression()) #11, !dbg !2594
  %75 = icmp eq i64 %74, 0, !dbg !2595
  br i1 %75, label %106, label %76, !dbg !2596

; <label>:76:                                     ; preds = %73
  %77 = add i64 %74, 10, !dbg !2597
  %78 = inttoptr i64 %77 to i16*, !dbg !2598
  %79 = atomicrmw sub i16* %78, i16 1 seq_cst, !dbg !2599
  br label %106, !dbg !2600

; <label>:80:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %15, metadata !2520, metadata !DIExpression()), !dbg !2601
  %81 = tail call i32 @nk_vc_is_active() #12, !dbg !2602
  %82 = icmp eq i32 %81, 0, !dbg !2602
  %83 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %83, metadata !2296, metadata !DIExpression()) #11, !dbg !2609
  %84 = icmp eq i64 %83, 0, !dbg !2610
  br i1 %84, label %90, label %85, !dbg !2611

; <label>:85:                                     ; preds = %80
  %86 = add i64 %83, 8, !dbg !2612
  %87 = inttoptr i64 %86 to i16*, !dbg !2613
  %88 = atomicrmw add i16* %87, i16 0 seq_cst, !dbg !2614
  %89 = icmp eq i16 %88, 0, !dbg !2615
  br i1 %89, label %90, label %91, !dbg !2616

; <label>:90:                                     ; preds = %80, %85
  br label %91, !dbg !2616

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %85 ]
  %93 = icmp eq i32 %15, 0, !dbg !2616
  %94 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2616
  br i1 %82, label %97, label %95, !dbg !2617

; <label>:95:                                     ; preds = %91
  %96 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2618
  br label %99, !dbg !2618

; <label>:97:                                     ; preds = %91
  %98 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %92, i8* %94) #12, !dbg !2620
  br label %99

; <label>:99:                                     ; preds = %97, %95
  %100 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %100, metadata !2316, metadata !DIExpression()) #11, !dbg !2625
  %101 = icmp eq i64 %100, 0, !dbg !2626
  br i1 %101, label %106, label %102, !dbg !2627

; <label>:102:                                    ; preds = %99
  %103 = add i64 %100, 10, !dbg !2628
  %104 = inttoptr i64 %103 to i16*, !dbg !2629
  %105 = atomicrmw sub i16* %104, i16 1 seq_cst, !dbg !2630
  br label %106, !dbg !2631

; <label>:106:                                    ; preds = %102, %99, %76, %73
  %107 = tail call fastcc %struct.nk_fiber_percpu_state* @init_local_fiber_state() #10, !dbg !2632
  %108 = getelementptr inbounds %struct.cpu, %struct.cpu* %4, i64 0, i32 5, !dbg !2633
  store %struct.nk_fiber_percpu_state* %107, %struct.nk_fiber_percpu_state** %108, align 8, !dbg !2634
  %109 = icmp eq %struct.nk_fiber_percpu_state* %107, null, !dbg !2635
  br i1 %109, label %110, label %212, !dbg !2636

; <label>:110:                                    ; preds = %106
  %111 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2637
  %112 = icmp eq i64 %111, 0, !dbg !2639
  %113 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %113, metadata !2256, metadata !DIExpression()) #11, !dbg !2643
  %114 = icmp eq i64 %113, 0, !dbg !2644
  br i1 %114, label %120, label %115, !dbg !2645

; <label>:115:                                    ; preds = %110
  %116 = add i64 %113, 10, !dbg !2646
  %117 = inttoptr i64 %116 to i16*, !dbg !2647
  %118 = atomicrmw add i16* %117, i16 0 seq_cst, !dbg !2648
  %119 = zext i16 %118 to i32, !dbg !2648
  br label %120, !dbg !2649

; <label>:120:                                    ; preds = %110, %115
  %121 = phi i32 [ %119, %115 ], [ 1, %110 ], !dbg !2650
  %122 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %122, metadata !2272, metadata !DIExpression()) #11, !dbg !2654
  %123 = icmp eq i64 %122, 0, !dbg !2655
  br i1 %123, label %128, label %124, !dbg !2656

; <label>:124:                                    ; preds = %120
  %125 = add i64 %122, 10, !dbg !2657
  %126 = inttoptr i64 %125 to i16*, !dbg !2658
  %127 = atomicrmw add i16* %126, i16 1 seq_cst, !dbg !2659
  br label %128, !dbg !2660

; <label>:128:                                    ; preds = %120, %124
  br i1 %112, label %186, label %129, !dbg !2661

; <label>:129:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2522, metadata !DIExpression()), !dbg !2662
  %130 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2663, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !772, metadata !DIExpression()) #11, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !771, metadata !DIExpression()) #11, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.nk_thread* %130, metadata !2528, metadata !DIExpression()), !dbg !2662
  %131 = tail call i32 @nk_vc_is_active() #12, !dbg !2666
  %132 = icmp eq i32 %131, 0, !dbg !2666
  %133 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2667
  %134 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %134, metadata !2296, metadata !DIExpression()) #11, !dbg !2672
  %135 = icmp eq i64 %134, 0, !dbg !2673
  br i1 %135, label %141, label %136, !dbg !2674

; <label>:136:                                    ; preds = %129
  %137 = add i64 %134, 8, !dbg !2675
  %138 = inttoptr i64 %137 to i16*, !dbg !2676
  %139 = atomicrmw add i16* %138, i16 0 seq_cst, !dbg !2677
  %140 = icmp eq i16 %139, 0, !dbg !2678
  br i1 %140, label %141, label %142, !dbg !2667

; <label>:141:                                    ; preds = %129, %136
  br label %142, !dbg !2667

; <label>:142:                                    ; preds = %136, %141
  %143 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %141 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %136 ]
  %144 = icmp eq i32 %121, 0, !dbg !2667
  %145 = select i1 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2667
  %146 = icmp ne %struct.nk_thread* %130, null, !dbg !2667
  br i1 %132, label %163, label %147, !dbg !2679

; <label>:147:                                    ; preds = %142
  br i1 %146, label %148, label %159, !dbg !2680

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2680
  %150 = load i64, i64* %149, align 32, !dbg !2680
  %151 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2680
  %152 = load i8, i8* %151, align 8, !dbg !2680
  %153 = icmp eq i8 %152, 0, !dbg !2680
  br i1 %153, label %154, label %159, !dbg !2680

; <label>:154:                                    ; preds = %148
  %155 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2680
  %156 = load i8, i8* %155, align 64, !dbg !2680
  %157 = icmp eq i8 %156, 0, !dbg !2680
  %158 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %155, !dbg !2680
  br label %159, !dbg !2680

; <label>:159:                                    ; preds = %147, %148, %154
  %160 = phi i64 [ %150, %148 ], [ %150, %154 ], [ 0, %147 ]
  %161 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %148 ], [ %158, %154 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %147 ], !dbg !2680
  %162 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %160, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2680
  br label %179, !dbg !2680

; <label>:163:                                    ; preds = %142
  br i1 %146, label %164, label %175, !dbg !2681

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 5, !dbg !2681
  %166 = load i64, i64* %165, align 32, !dbg !2681
  %167 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 18, !dbg !2681
  %168 = load i8, i8* %167, align 8, !dbg !2681
  %169 = icmp eq i8 %168, 0, !dbg !2681
  br i1 %169, label %170, label %175, !dbg !2681

; <label>:170:                                    ; preds = %164
  %171 = getelementptr %struct.nk_thread, %struct.nk_thread* %130, i64 0, i32 25, i64 0, !dbg !2681
  %172 = load i8, i8* %171, align 64, !dbg !2681
  %173 = icmp eq i8 %172, 0, !dbg !2681
  %174 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %171, !dbg !2681
  br label %175, !dbg !2681

; <label>:175:                                    ; preds = %163, %164, %170
  %176 = phi i64 [ %166, %164 ], [ %166, %170 ], [ 0, %163 ]
  %177 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %164 ], [ %174, %170 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %163 ], !dbg !2681
  %178 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %133, i8* %143, i8* %145, i64 %176, i8* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2681
  br label %179

; <label>:179:                                    ; preds = %175, %159
  %180 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %180, metadata !2316, metadata !DIExpression()) #11, !dbg !2685
  %181 = icmp eq i64 %180, 0, !dbg !2686
  br i1 %181, label %212, label %182, !dbg !2687

; <label>:182:                                    ; preds = %179
  %183 = add i64 %180, 10, !dbg !2688
  %184 = inttoptr i64 %183 to i16*, !dbg !2689
  %185 = atomicrmw sub i16* %184, i16 1 seq_cst, !dbg !2690
  br label %212, !dbg !2691

; <label>:186:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i32 %121, metadata !2541, metadata !DIExpression()), !dbg !2692
  %187 = tail call i32 @nk_vc_is_active() #12, !dbg !2693
  %188 = icmp eq i32 %187, 0, !dbg !2693
  %189 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %189, metadata !2296, metadata !DIExpression()) #11, !dbg !2700
  %190 = icmp eq i64 %189, 0, !dbg !2701
  br i1 %190, label %196, label %191, !dbg !2702

; <label>:191:                                    ; preds = %186
  %192 = add i64 %189, 8, !dbg !2703
  %193 = inttoptr i64 %192 to i16*, !dbg !2704
  %194 = atomicrmw add i16* %193, i16 0 seq_cst, !dbg !2705
  %195 = icmp eq i16 %194, 0, !dbg !2706
  br i1 %195, label %196, label %197, !dbg !2707

; <label>:196:                                    ; preds = %186, %191
  br label %197, !dbg !2707

; <label>:197:                                    ; preds = %191, %196
  %198 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %191 ]
  %199 = icmp eq i32 %121, 0, !dbg !2707
  %200 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2707
  br i1 %188, label %203, label %201, !dbg !2708

; <label>:201:                                    ; preds = %197
  %202 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2709
  br label %205, !dbg !2709

; <label>:203:                                    ; preds = %197
  %204 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8.11, i64 0, i64 0), i8* %198, i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 464) #12, !dbg !2711
  br label %205

; <label>:205:                                    ; preds = %203, %201
  %206 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %206, metadata !2316, metadata !DIExpression()) #11, !dbg !2716
  %207 = icmp eq i64 %206, 0, !dbg !2717
  br i1 %207, label %212, label %208, !dbg !2718

; <label>:208:                                    ; preds = %205
  %209 = add i64 %206, 10, !dbg !2719
  %210 = inttoptr i64 %209 to i16*, !dbg !2720
  %211 = atomicrmw sub i16* %210, i16 1 seq_cst, !dbg !2721
  br label %212, !dbg !2722

; <label>:212:                                    ; preds = %208, %205, %182, %179, %106
  %213 = phi i32 [ 0, %106 ], [ -1, %179 ], [ -1, %182 ], [ -1, %205 ], [ -1, %208 ], !dbg !2723
  ret i32 %213, !dbg !2724
}

; Function Attrs: noredzone nounwind
define internal void @__fiber_thread(i8* nocapture readnone, i8** nocapture readnone) #0 !dbg !2725 {
  %3 = alloca %struct.nk_sched_constraints, align 8
  %4 = alloca %struct.nk_fiber*, align 8
  call void @llvm.dbg.value(metadata i8* undef, metadata !2727, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8** undef, metadata !2728, metadata !DIExpression()), !dbg !2842
  %5 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2843, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !772, metadata !DIExpression()) #11, !dbg !2843
  call void @llvm.dbg.value(metadata %struct.nk_thread* %5, metadata !771, metadata !DIExpression()) #11, !dbg !2845
  %6 = bitcast %struct.nk_thread* %5 to i8*, !dbg !2846
  %7 = tail call i32 @nk_thread_name(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #12, !dbg !2847
  %8 = icmp eq i32 %7, 0, !dbg !2847
  br i1 %8, label %111, label %9, !dbg !2848

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2849
  %11 = icmp eq i64 %10, 0, !dbg !2851
  %12 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2852
  call void @llvm.dbg.value(metadata i64 %12, metadata !2256, metadata !DIExpression()) #11, !dbg !2855
  %13 = icmp eq i64 %12, 0, !dbg !2856
  br i1 %13, label %19, label %14, !dbg !2857

; <label>:14:                                     ; preds = %9
  %15 = add i64 %12, 10, !dbg !2858
  %16 = inttoptr i64 %15 to i16*, !dbg !2859
  %17 = atomicrmw add i16* %16, i16 0 seq_cst, !dbg !2860
  %18 = zext i16 %17 to i32, !dbg !2860
  br label %19, !dbg !2861

; <label>:19:                                     ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ 1, %9 ], !dbg !2862
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %21, metadata !2272, metadata !DIExpression()) #11, !dbg !2866
  %22 = icmp eq i64 %21, 0, !dbg !2867
  br i1 %22, label %27, label %23, !dbg !2868

; <label>:23:                                     ; preds = %19
  %24 = add i64 %21, 10, !dbg !2869
  %25 = inttoptr i64 %24 to i16*, !dbg !2870
  %26 = atomicrmw add i16* %25, i16 1 seq_cst, !dbg !2871
  br label %27, !dbg !2872

; <label>:27:                                     ; preds = %19, %23
  br i1 %11, label %85, label %28, !dbg !2873

; <label>:28:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2729, metadata !DIExpression()), !dbg !2874
  %29 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2875, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !772, metadata !DIExpression()) #11, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !771, metadata !DIExpression()) #11, !dbg !2877
  call void @llvm.dbg.value(metadata %struct.nk_thread* %29, metadata !2735, metadata !DIExpression()), !dbg !2874
  %30 = tail call i32 @nk_vc_is_active() #12, !dbg !2878
  %31 = icmp eq i32 %30, 0, !dbg !2878
  %32 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2879
  %33 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %33, metadata !2296, metadata !DIExpression()) #11, !dbg !2884
  %34 = icmp eq i64 %33, 0, !dbg !2885
  br i1 %34, label %40, label %35, !dbg !2886

; <label>:35:                                     ; preds = %28
  %36 = add i64 %33, 8, !dbg !2887
  %37 = inttoptr i64 %36 to i16*, !dbg !2888
  %38 = atomicrmw add i16* %37, i16 0 seq_cst, !dbg !2889
  %39 = icmp eq i16 %38, 0, !dbg !2890
  br i1 %39, label %40, label %41, !dbg !2879

; <label>:40:                                     ; preds = %28, %35
  br label %41, !dbg !2879

; <label>:41:                                     ; preds = %35, %40
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %35 ]
  %43 = icmp eq i32 %20, 0, !dbg !2879
  %44 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2879
  %45 = icmp ne %struct.nk_thread* %29, null, !dbg !2879
  br i1 %31, label %62, label %46, !dbg !2891

; <label>:46:                                     ; preds = %41
  br i1 %45, label %47, label %58, !dbg !2892

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2892
  %49 = load i64, i64* %48, align 32, !dbg !2892
  %50 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2892
  %51 = load i8, i8* %50, align 8, !dbg !2892
  %52 = icmp eq i8 %51, 0, !dbg !2892
  br i1 %52, label %53, label %58, !dbg !2892

; <label>:53:                                     ; preds = %47
  %54 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2892
  %55 = load i8, i8* %54, align 64, !dbg !2892
  %56 = icmp eq i8 %55, 0, !dbg !2892
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %54, !dbg !2892
  br label %58, !dbg !2892

; <label>:58:                                     ; preds = %46, %47, %53
  %59 = phi i64 [ %49, %47 ], [ %49, %53 ], [ 0, %46 ]
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %47 ], [ %57, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %46 ], !dbg !2892
  %61 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %59, i8* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2892
  br label %78, !dbg !2892

; <label>:62:                                     ; preds = %41
  br i1 %45, label %63, label %74, !dbg !2893

; <label>:63:                                     ; preds = %62
  %64 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 5, !dbg !2893
  %65 = load i64, i64* %64, align 32, !dbg !2893
  %66 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 18, !dbg !2893
  %67 = load i8, i8* %66, align 8, !dbg !2893
  %68 = icmp eq i8 %67, 0, !dbg !2893
  br i1 %68, label %69, label %74, !dbg !2893

; <label>:69:                                     ; preds = %63
  %70 = getelementptr %struct.nk_thread, %struct.nk_thread* %29, i64 0, i32 25, i64 0, !dbg !2893
  %71 = load i8, i8* %70, align 64, !dbg !2893
  %72 = icmp eq i8 %71, 0, !dbg !2893
  %73 = select i1 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %70, !dbg !2893
  br label %74, !dbg !2893

; <label>:74:                                     ; preds = %62, %63, %69
  %75 = phi i64 [ %65, %63 ], [ %65, %69 ], [ 0, %62 ]
  %76 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %63 ], [ %73, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %62 ], !dbg !2893
  %77 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i32 %32, i8* %42, i8* %44, i64 %75, i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2893
  br label %78

; <label>:78:                                     ; preds = %74, %58
  %79 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %79, metadata !2316, metadata !DIExpression()) #11, !dbg !2897
  %80 = icmp eq i64 %79, 0, !dbg !2898
  br i1 %80, label %449, label %81, !dbg !2899

; <label>:81:                                     ; preds = %78
  %82 = add i64 %79, 10, !dbg !2900
  %83 = inttoptr i64 %82 to i16*, !dbg !2901
  %84 = atomicrmw sub i16* %83, i16 1 seq_cst, !dbg !2902
  br label %449, !dbg !2903

; <label>:85:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2748, metadata !DIExpression()), !dbg !2904
  %86 = tail call i32 @nk_vc_is_active() #12, !dbg !2905
  %87 = icmp eq i32 %86, 0, !dbg !2905
  %88 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %88, metadata !2296, metadata !DIExpression()) #11, !dbg !2912
  %89 = icmp eq i64 %88, 0, !dbg !2913
  br i1 %89, label %95, label %90, !dbg !2914

; <label>:90:                                     ; preds = %85
  %91 = add i64 %88, 8, !dbg !2915
  %92 = inttoptr i64 %91 to i16*, !dbg !2916
  %93 = atomicrmw add i16* %92, i16 0 seq_cst, !dbg !2917
  %94 = icmp eq i16 %93, 0, !dbg !2918
  br i1 %94, label %95, label %96, !dbg !2919

; <label>:95:                                     ; preds = %85, %90
  br label %96, !dbg !2919

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %90 ]
  %98 = icmp eq i32 %20, 0, !dbg !2919
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2919
  br i1 %87, label %102, label %100, !dbg !2920

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2921
  br label %104, !dbg !2921

; <label>:102:                                    ; preds = %96
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* %97, i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 515) #12, !dbg !2923
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %105, metadata !2316, metadata !DIExpression()) #11, !dbg !2928
  %106 = icmp eq i64 %105, 0, !dbg !2929
  br i1 %106, label %449, label %107, !dbg !2930

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !2931
  %109 = inttoptr i64 %108 to i16*, !dbg !2932
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !2933
  br label %449, !dbg !2934

; <label>:111:                                    ; preds = %2
  %112 = bitcast %struct.nk_sched_constraints* %3 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %112) #11, !dbg !2935
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %112, i8 0, i64 40, i1 false), !dbg !2936
  %113 = getelementptr inbounds %struct.nk_sched_constraints, %struct.nk_sched_constraints* %3, i64 0, i32 2, i32 0, i32 0, !dbg !2936
  store i64 100000000, i64* %113, align 8, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.nk_sched_constraints* %3, metadata !2750, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  %114 = call i32 @nk_sched_thread_change_constraints(%struct.nk_sched_constraints* nonnull %3) #12, !dbg !2937
  %115 = icmp eq i32 %114, 0, !dbg !2937
  %116 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2938
  br i1 %115, label %219, label %117, !dbg !2939

; <label>:117:                                    ; preds = %111
  %118 = icmp eq i64 %116, 0, !dbg !2940
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %119, metadata !2256, metadata !DIExpression()) #11, !dbg !2944
  %120 = icmp eq i64 %119, 0, !dbg !2945
  br i1 %120, label %126, label %121, !dbg !2946

; <label>:121:                                    ; preds = %117
  %122 = add i64 %119, 10, !dbg !2947
  %123 = inttoptr i64 %122 to i16*, !dbg !2948
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !2949
  %125 = zext i16 %124 to i32, !dbg !2949
  br label %126, !dbg !2950

; <label>:126:                                    ; preds = %117, %121
  %127 = phi i32 [ %125, %121 ], [ 1, %117 ], !dbg !2951
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %128, metadata !2272, metadata !DIExpression()) #11, !dbg !2955
  %129 = icmp eq i64 %128, 0, !dbg !2956
  br i1 %129, label %134, label %130, !dbg !2957

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !2958
  %132 = inttoptr i64 %131 to i16*, !dbg !2959
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !2960
  br label %134, !dbg !2961

; <label>:134:                                    ; preds = %126, %130
  br i1 %118, label %192, label %135, !dbg !2962

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2776, metadata !DIExpression()), !dbg !2963
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !2964, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !2966
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !2782, metadata !DIExpression()), !dbg !2963
  %137 = call i32 @nk_vc_is_active() #12, !dbg !2967
  %138 = icmp eq i32 %137, 0, !dbg !2967
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !2968
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %140, metadata !2296, metadata !DIExpression()) #11, !dbg !2973
  %141 = icmp eq i64 %140, 0, !dbg !2974
  br i1 %141, label %147, label %142, !dbg !2975

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !2976
  %144 = inttoptr i64 %143 to i16*, !dbg !2977
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !2978
  %146 = icmp eq i16 %145, 0, !dbg !2979
  br i1 %146, label %147, label %148, !dbg !2968

; <label>:147:                                    ; preds = %135, %142
  br label %148, !dbg !2968

; <label>:148:                                    ; preds = %142, %147
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !2968
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !2968
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !2968
  br i1 %138, label %169, label %153, !dbg !2980

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !2981

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2981
  %156 = load i64, i64* %155, align 32, !dbg !2981
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2981
  %158 = load i8, i8* %157, align 8, !dbg !2981
  %159 = icmp eq i8 %158, 0, !dbg !2981
  br i1 %159, label %160, label %165, !dbg !2981

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2981
  %162 = load i8, i8* %161, align 64, !dbg !2981
  %163 = icmp eq i8 %162, 0, !dbg !2981
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !2981
  br label %165, !dbg !2981

; <label>:165:                                    ; preds = %153, %154, %160
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !2981
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2981
  br label %185, !dbg !2981

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !2982

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !2982
  %172 = load i64, i64* %171, align 32, !dbg !2982
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !2982
  %174 = load i8, i8* %173, align 8, !dbg !2982
  %175 = icmp eq i8 %174, 0, !dbg !2982
  br i1 %175, label %176, label %181, !dbg !2982

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !2982
  %178 = load i8, i8* %177, align 64, !dbg !2982
  %179 = icmp eq i8 %178, 0, !dbg !2982
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !2982
  br label %181, !dbg !2982

; <label>:181:                                    ; preds = %169, %170, %176
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !2982
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !2982
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %186, metadata !2316, metadata !DIExpression()) #11, !dbg !2986
  %187 = icmp eq i64 %186, 0, !dbg !2987
  br i1 %187, label %218, label %188, !dbg !2988

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !2989
  %190 = inttoptr i64 %189 to i16*, !dbg !2990
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !2991
  br label %218, !dbg !2992

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !2795, metadata !DIExpression()), !dbg !2993
  %193 = call i32 @nk_vc_is_active() #12, !dbg !2994
  %194 = icmp eq i32 %193, 0, !dbg !2994
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %195, metadata !2296, metadata !DIExpression()) #11, !dbg !3001
  %196 = icmp eq i64 %195, 0, !dbg !3002
  br i1 %196, label %202, label %197, !dbg !3003

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3004
  %199 = inttoptr i64 %198 to i16*, !dbg !3005
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3006
  %201 = icmp eq i16 %200, 0, !dbg !3007
  br i1 %201, label %202, label %203, !dbg !3008

; <label>:202:                                    ; preds = %192, %197
  br label %203, !dbg !3008

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3008
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3008
  br i1 %194, label %209, label %207, !dbg !3009

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3010
  br label %211, !dbg !3010

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 525) #12, !dbg !3012
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %212, metadata !2316, metadata !DIExpression()) #11, !dbg !3017
  %213 = icmp eq i64 %212, 0, !dbg !3018
  br i1 %213, label %218, label %214, !dbg !3019

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3020
  %216 = inttoptr i64 %215 to i16*, !dbg !3021
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3022
  br label %218, !dbg !3023

; <label>:218:                                    ; preds = %214, %211, %188, %185
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 526) #13, !dbg !3024
  unreachable, !dbg !3024

; <label>:219:                                    ; preds = %111
  %220 = inttoptr i64 %116 to %struct.cpu*, !dbg !3025
  %221 = getelementptr inbounds %struct.cpu, %struct.cpu* %220, i64 0, i32 5, !dbg !3028
  %222 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %221, align 8, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.nk_fiber_percpu_state* %222, metadata !2797, metadata !DIExpression()), !dbg !3029
  %223 = icmp eq %struct.nk_fiber_percpu_state* %222, null, !dbg !3030
  br i1 %223, label %224, label %326, !dbg !3031

; <label>:224:                                    ; preds = %219
  %225 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3032
  %226 = icmp eq i64 %225, 0, !dbg !3034
  %227 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %227, metadata !2256, metadata !DIExpression()) #11, !dbg !3038
  %228 = icmp eq i64 %227, 0, !dbg !3039
  br i1 %228, label %234, label %229, !dbg !3040

; <label>:229:                                    ; preds = %224
  %230 = add i64 %227, 10, !dbg !3041
  %231 = inttoptr i64 %230 to i16*, !dbg !3042
  %232 = atomicrmw add i16* %231, i16 0 seq_cst, !dbg !3043
  %233 = zext i16 %232 to i32, !dbg !3043
  br label %234, !dbg !3044

; <label>:234:                                    ; preds = %224, %229
  %235 = phi i32 [ %233, %229 ], [ 1, %224 ], !dbg !3045
  %236 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %236, metadata !2272, metadata !DIExpression()) #11, !dbg !3049
  %237 = icmp eq i64 %236, 0, !dbg !3050
  br i1 %237, label %242, label %238, !dbg !3051

; <label>:238:                                    ; preds = %234
  %239 = add i64 %236, 10, !dbg !3052
  %240 = inttoptr i64 %239 to i16*, !dbg !3053
  %241 = atomicrmw add i16* %240, i16 1 seq_cst, !dbg !3054
  br label %242, !dbg !3055

; <label>:242:                                    ; preds = %234, %238
  br i1 %226, label %300, label %243, !dbg !3056

; <label>:243:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2798, metadata !DIExpression()), !dbg !3057
  %244 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3058, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !772, metadata !DIExpression()) #11, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !771, metadata !DIExpression()) #11, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.nk_thread* %244, metadata !2804, metadata !DIExpression()), !dbg !3057
  %245 = call i32 @nk_vc_is_active() #12, !dbg !3061
  %246 = icmp eq i32 %245, 0, !dbg !3061
  %247 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3062
  %248 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %248, metadata !2296, metadata !DIExpression()) #11, !dbg !3067
  %249 = icmp eq i64 %248, 0, !dbg !3068
  br i1 %249, label %255, label %250, !dbg !3069

; <label>:250:                                    ; preds = %243
  %251 = add i64 %248, 8, !dbg !3070
  %252 = inttoptr i64 %251 to i16*, !dbg !3071
  %253 = atomicrmw add i16* %252, i16 0 seq_cst, !dbg !3072
  %254 = icmp eq i16 %253, 0, !dbg !3073
  br i1 %254, label %255, label %256, !dbg !3062

; <label>:255:                                    ; preds = %243, %250
  br label %256, !dbg !3062

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %255 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %250 ]
  %258 = icmp eq i32 %235, 0, !dbg !3062
  %259 = select i1 %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3062
  %260 = icmp ne %struct.nk_thread* %244, null, !dbg !3062
  br i1 %246, label %277, label %261, !dbg !3074

; <label>:261:                                    ; preds = %256
  br i1 %260, label %262, label %273, !dbg !3075

; <label>:262:                                    ; preds = %261
  %263 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3075
  %264 = load i64, i64* %263, align 32, !dbg !3075
  %265 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3075
  %266 = load i8, i8* %265, align 8, !dbg !3075
  %267 = icmp eq i8 %266, 0, !dbg !3075
  br i1 %267, label %268, label %273, !dbg !3075

; <label>:268:                                    ; preds = %262
  %269 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3075
  %270 = load i8, i8* %269, align 64, !dbg !3075
  %271 = icmp eq i8 %270, 0, !dbg !3075
  %272 = select i1 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %269, !dbg !3075
  br label %273, !dbg !3075

; <label>:273:                                    ; preds = %261, %262, %268
  %274 = phi i64 [ %264, %262 ], [ %264, %268 ], [ 0, %261 ]
  %275 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %262 ], [ %272, %268 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %261 ], !dbg !3075
  %276 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %274, i8* %275, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3075
  br label %293, !dbg !3075

; <label>:277:                                    ; preds = %256
  br i1 %260, label %278, label %289, !dbg !3076

; <label>:278:                                    ; preds = %277
  %279 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 5, !dbg !3076
  %280 = load i64, i64* %279, align 32, !dbg !3076
  %281 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 18, !dbg !3076
  %282 = load i8, i8* %281, align 8, !dbg !3076
  %283 = icmp eq i8 %282, 0, !dbg !3076
  br i1 %283, label %284, label %289, !dbg !3076

; <label>:284:                                    ; preds = %278
  %285 = getelementptr %struct.nk_thread, %struct.nk_thread* %244, i64 0, i32 25, i64 0, !dbg !3076
  %286 = load i8, i8* %285, align 64, !dbg !3076
  %287 = icmp eq i8 %286, 0, !dbg !3076
  %288 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %285, !dbg !3076
  br label %289, !dbg !3076

; <label>:289:                                    ; preds = %277, %278, %284
  %290 = phi i64 [ %280, %278 ], [ %280, %284 ], [ 0, %277 ]
  %291 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %278 ], [ %288, %284 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %277 ], !dbg !3076
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i32 %247, i8* %257, i8* %259, i64 %290, i8* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3076
  br label %293

; <label>:293:                                    ; preds = %289, %273
  %294 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %294, metadata !2316, metadata !DIExpression()) #11, !dbg !3080
  %295 = icmp eq i64 %294, 0, !dbg !3081
  br i1 %295, label %326, label %296, !dbg !3082

; <label>:296:                                    ; preds = %293
  %297 = add i64 %294, 10, !dbg !3083
  %298 = inttoptr i64 %297 to i16*, !dbg !3084
  %299 = atomicrmw sub i16* %298, i16 1 seq_cst, !dbg !3085
  br label %326, !dbg !3086

; <label>:300:                                    ; preds = %242
  call void @llvm.dbg.value(metadata i32 %235, metadata !2817, metadata !DIExpression()), !dbg !3087
  %301 = call i32 @nk_vc_is_active() #12, !dbg !3088
  %302 = icmp eq i32 %301, 0, !dbg !3088
  %303 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %303, metadata !2296, metadata !DIExpression()) #11, !dbg !3095
  %304 = icmp eq i64 %303, 0, !dbg !3096
  br i1 %304, label %310, label %305, !dbg !3097

; <label>:305:                                    ; preds = %300
  %306 = add i64 %303, 8, !dbg !3098
  %307 = inttoptr i64 %306 to i16*, !dbg !3099
  %308 = atomicrmw add i16* %307, i16 0 seq_cst, !dbg !3100
  %309 = icmp eq i16 %308, 0, !dbg !3101
  br i1 %309, label %310, label %311, !dbg !3102

; <label>:310:                                    ; preds = %300, %305
  br label %311, !dbg !3102

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %310 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %305 ]
  %313 = icmp eq i32 %235, 0, !dbg !3102
  %314 = select i1 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3102
  br i1 %302, label %317, label %315, !dbg !3103

; <label>:315:                                    ; preds = %311
  %316 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3104
  br label %319, !dbg !3104

; <label>:317:                                    ; preds = %311
  %318 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* %312, i8* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 536) #12, !dbg !3106
  br label %319

; <label>:319:                                    ; preds = %317, %315
  %320 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %320, metadata !2316, metadata !DIExpression()) #11, !dbg !3111
  %321 = icmp eq i64 %320, 0, !dbg !3112
  br i1 %321, label %326, label %322, !dbg !3113

; <label>:322:                                    ; preds = %319
  %323 = add i64 %320, 10, !dbg !3114
  %324 = inttoptr i64 %323 to i16*, !dbg !3115
  %325 = atomicrmw sub i16* %324, i16 1 seq_cst, !dbg !3116
  br label %326, !dbg !3117

; <label>:326:                                    ; preds = %322, %319, %296, %293, %219
  %327 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3118, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !772, metadata !DIExpression()) #11, !dbg !3118
  call void @llvm.dbg.value(metadata %struct.nk_thread* %327, metadata !771, metadata !DIExpression()) #11, !dbg !3120
  %328 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 1, !dbg !3121
  store %struct.nk_thread* %327, %struct.nk_thread** %328, align 8, !dbg !3122
  %329 = bitcast %struct.nk_fiber** %4 to i8*, !dbg !3123
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3123
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2819, metadata !DIExpression(DW_OP_deref)), !dbg !3124
  %330 = call i32 @nk_fiber_create(void (i8*, i8**)* nonnull @__nk_fiber_idle, i8* null, i8** null, i64 0, %struct.nk_fiber** nonnull %4) #10, !dbg !3125
  %331 = icmp slt i32 %330, 0, !dbg !3126
  br i1 %331, label %332, label %434, !dbg !3127

; <label>:332:                                    ; preds = %326
  %333 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3128
  %334 = icmp eq i64 %333, 0, !dbg !3130
  %335 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %335, metadata !2256, metadata !DIExpression()) #11, !dbg !3134
  %336 = icmp eq i64 %335, 0, !dbg !3135
  br i1 %336, label %342, label %337, !dbg !3136

; <label>:337:                                    ; preds = %332
  %338 = add i64 %335, 10, !dbg !3137
  %339 = inttoptr i64 %338 to i16*, !dbg !3138
  %340 = atomicrmw add i16* %339, i16 0 seq_cst, !dbg !3139
  %341 = zext i16 %340 to i32, !dbg !3139
  br label %342, !dbg !3140

; <label>:342:                                    ; preds = %332, %337
  %343 = phi i32 [ %341, %337 ], [ 1, %332 ], !dbg !3141
  %344 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %344, metadata !2272, metadata !DIExpression()) #11, !dbg !3145
  %345 = icmp eq i64 %344, 0, !dbg !3146
  br i1 %345, label %350, label %346, !dbg !3147

; <label>:346:                                    ; preds = %342
  %347 = add i64 %344, 10, !dbg !3148
  %348 = inttoptr i64 %347 to i16*, !dbg !3149
  %349 = atomicrmw add i16* %348, i16 1 seq_cst, !dbg !3150
  br label %350, !dbg !3151

; <label>:350:                                    ; preds = %342, %346
  br i1 %334, label %408, label %351, !dbg !3152

; <label>:351:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2820, metadata !DIExpression()), !dbg !3153
  %352 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3154, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !772, metadata !DIExpression()) #11, !dbg !3154
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !771, metadata !DIExpression()) #11, !dbg !3156
  call void @llvm.dbg.value(metadata %struct.nk_thread* %352, metadata !2826, metadata !DIExpression()), !dbg !3153
  %353 = call i32 @nk_vc_is_active() #12, !dbg !3157
  %354 = icmp eq i32 %353, 0, !dbg !3157
  %355 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3158
  %356 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %356, metadata !2296, metadata !DIExpression()) #11, !dbg !3163
  %357 = icmp eq i64 %356, 0, !dbg !3164
  br i1 %357, label %363, label %358, !dbg !3165

; <label>:358:                                    ; preds = %351
  %359 = add i64 %356, 8, !dbg !3166
  %360 = inttoptr i64 %359 to i16*, !dbg !3167
  %361 = atomicrmw add i16* %360, i16 0 seq_cst, !dbg !3168
  %362 = icmp eq i16 %361, 0, !dbg !3169
  br i1 %362, label %363, label %364, !dbg !3158

; <label>:363:                                    ; preds = %351, %358
  br label %364, !dbg !3158

; <label>:364:                                    ; preds = %358, %363
  %365 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %363 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %358 ]
  %366 = icmp eq i32 %343, 0, !dbg !3158
  %367 = select i1 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3158
  %368 = icmp ne %struct.nk_thread* %352, null, !dbg !3158
  br i1 %354, label %385, label %369, !dbg !3170

; <label>:369:                                    ; preds = %364
  br i1 %368, label %370, label %381, !dbg !3171

; <label>:370:                                    ; preds = %369
  %371 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3171
  %372 = load i64, i64* %371, align 32, !dbg !3171
  %373 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3171
  %374 = load i8, i8* %373, align 8, !dbg !3171
  %375 = icmp eq i8 %374, 0, !dbg !3171
  br i1 %375, label %376, label %381, !dbg !3171

; <label>:376:                                    ; preds = %370
  %377 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3171
  %378 = load i8, i8* %377, align 64, !dbg !3171
  %379 = icmp eq i8 %378, 0, !dbg !3171
  %380 = select i1 %379, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %377, !dbg !3171
  br label %381, !dbg !3171

; <label>:381:                                    ; preds = %369, %370, %376
  %382 = phi i64 [ %372, %370 ], [ %372, %376 ], [ 0, %369 ]
  %383 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %370 ], [ %380, %376 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %369 ], !dbg !3171
  %384 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %382, i8* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3171
  br label %401, !dbg !3171

; <label>:385:                                    ; preds = %364
  br i1 %368, label %386, label %397, !dbg !3172

; <label>:386:                                    ; preds = %385
  %387 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 5, !dbg !3172
  %388 = load i64, i64* %387, align 32, !dbg !3172
  %389 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 18, !dbg !3172
  %390 = load i8, i8* %389, align 8, !dbg !3172
  %391 = icmp eq i8 %390, 0, !dbg !3172
  br i1 %391, label %392, label %397, !dbg !3172

; <label>:392:                                    ; preds = %386
  %393 = getelementptr %struct.nk_thread, %struct.nk_thread* %352, i64 0, i32 25, i64 0, !dbg !3172
  %394 = load i8, i8* %393, align 64, !dbg !3172
  %395 = icmp eq i8 %394, 0, !dbg !3172
  %396 = select i1 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %393, !dbg !3172
  br label %397, !dbg !3172

; <label>:397:                                    ; preds = %385, %386, %392
  %398 = phi i64 [ %388, %386 ], [ %388, %392 ], [ 0, %385 ]
  %399 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %386 ], [ %396, %392 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %385 ], !dbg !3172
  %400 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0), i32 %355, i8* %365, i8* %367, i64 %398, i8* %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3172
  br label %401

; <label>:401:                                    ; preds = %397, %381
  %402 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %402, metadata !2316, metadata !DIExpression()) #11, !dbg !3176
  %403 = icmp eq i64 %402, 0, !dbg !3177
  br i1 %403, label %434, label %404, !dbg !3178

; <label>:404:                                    ; preds = %401
  %405 = add i64 %402, 10, !dbg !3179
  %406 = inttoptr i64 %405 to i16*, !dbg !3180
  %407 = atomicrmw sub i16* %406, i16 1 seq_cst, !dbg !3181
  br label %434, !dbg !3182

; <label>:408:                                    ; preds = %350
  call void @llvm.dbg.value(metadata i32 %343, metadata !2839, metadata !DIExpression()), !dbg !3183
  %409 = call i32 @nk_vc_is_active() #12, !dbg !3184
  %410 = icmp eq i32 %409, 0, !dbg !3184
  %411 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %411, metadata !2296, metadata !DIExpression()) #11, !dbg !3191
  %412 = icmp eq i64 %411, 0, !dbg !3192
  br i1 %412, label %418, label %413, !dbg !3193

; <label>:413:                                    ; preds = %408
  %414 = add i64 %411, 8, !dbg !3194
  %415 = inttoptr i64 %414 to i16*, !dbg !3195
  %416 = atomicrmw add i16* %415, i16 0 seq_cst, !dbg !3196
  %417 = icmp eq i16 %416, 0, !dbg !3197
  br i1 %417, label %418, label %419, !dbg !3198

; <label>:418:                                    ; preds = %408, %413
  br label %419, !dbg !3198

; <label>:419:                                    ; preds = %413, %418
  %420 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %418 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %413 ]
  %421 = icmp eq i32 %343, 0, !dbg !3198
  %422 = select i1 %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3198
  br i1 %410, label %425, label %423, !dbg !3199

; <label>:423:                                    ; preds = %419
  %424 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3200
  br label %427, !dbg !3200

; <label>:425:                                    ; preds = %419
  %426 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %420, i8* %422, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 543) #12, !dbg !3202
  br label %427

; <label>:427:                                    ; preds = %425, %423
  %428 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %428, metadata !2316, metadata !DIExpression()) #11, !dbg !3207
  %429 = icmp eq i64 %428, 0, !dbg !3208
  br i1 %429, label %434, label %430, !dbg !3209

; <label>:430:                                    ; preds = %427
  %431 = add i64 %428, 10, !dbg !3210
  %432 = inttoptr i64 %431 to i16*, !dbg !3211
  %433 = atomicrmw sub i16* %432, i16 1 seq_cst, !dbg !3212
  br label %434, !dbg !3213

; <label>:434:                                    ; preds = %430, %427, %404, %401, %326
  %435 = bitcast %struct.nk_fiber** %4 to i64*, !dbg !3214
  %436 = load i64, i64* %435, align 8, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2819, metadata !DIExpression(DW_OP_deref)), !dbg !3124
  %437 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 2, !dbg !3215
  %438 = bitcast %struct.nk_fiber** %437 to i64*, !dbg !3216
  store i64 %436, i64* %438, align 8, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !2819, metadata !DIExpression(DW_OP_deref)), !dbg !3124
  %439 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %222, i64 0, i32 3, !dbg !3217
  %440 = bitcast %struct.nk_fiber** %439 to i64*, !dbg !3218
  store i64 %436, i64* %440, align 8, !dbg !3218
  %441 = inttoptr i64 %436 to %struct.nk_fiber*, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2819, metadata !DIExpression()), !dbg !3124
  %442 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 8, !dbg !3220
  store i32 1, i32* %442, align 8, !dbg !3221
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !2819, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %441, metadata !1849, metadata !DIExpression()) #11, !dbg !3222
  %443 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 13, !dbg !3224
  %444 = load void (i8*, i8**)*, void (i8*, i8**)** %443, align 8, !dbg !3224
  %445 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 14, !dbg !3225
  %446 = load i8*, i8** %445, align 8, !dbg !3225
  %447 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %441, i64 0, i32 15, !dbg !3226
  %448 = load i8**, i8*** %447, align 8, !dbg !3226
  call void %444(i8* %446, i8** %448) #12, !dbg !3227
  call void @_nk_fiber_exit(%struct.nk_fiber* %441) #12, !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %329) #11, !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %112) #11, !dbg !3229
  br label %449

; <label>:449:                                    ; preds = %107, %104, %81, %78, %434
  ret void, !dbg !3229
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
define internal void @__nk_fiber_idle(i8* nocapture readnone, i8** nocapture readnone) #7 !dbg !3230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3232, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8** %1, metadata !3233, metadata !DIExpression()), !dbg !3235
  br label %3, !dbg !3236

; <label>:3:                                      ; preds = %70, %2
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3237
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !3247
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !3248
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !3248
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 1, !dbg !3249
  %9 = load %struct.nk_thread*, %struct.nk_thread** %8, align 8, !dbg !3249
  %10 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3250, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !772, metadata !DIExpression()) #11, !dbg !3250
  call void @llvm.dbg.value(metadata %struct.nk_thread* %10, metadata !771, metadata !DIExpression()) #11, !dbg !3252
  %11 = icmp eq %struct.nk_thread* %9, %10, !dbg !3253
  br i1 %11, label %12, label %nk_fiber_yield.exit, !dbg !3254

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3255
  %14 = inttoptr i64 %13 to %struct.cpu*, !dbg !3260
  %15 = getelementptr inbounds %struct.cpu, %struct.cpu* %14, i64 0, i32 5, !dbg !3261
  %16 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %15, align 8, !dbg !3261
  %17 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %16, i64 0, i32 4, !dbg !3262
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1494, metadata !DIExpression()) #11, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.list_head* %17, metadata !1515, metadata !DIExpression()) #11, !dbg !3265
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 0, i32 0, !dbg !3267
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8, !dbg !3267
  %20 = icmp eq %struct.list_head* %19, %17, !dbg !3268
  br i1 %20, label %33, label %21, !dbg !3269

; <label>:21:                                     ; preds = %12
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3270
  %22 = getelementptr %struct.list_head, %struct.list_head* %19, i64 -7, i32 1, !dbg !3270
  %23 = bitcast %struct.list_head** %22 to %struct.nk_fiber*, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1496, metadata !DIExpression()) #11, !dbg !3270
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1495, metadata !DIExpression()) #11, !dbg !3264
  %24 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 13, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !1527, metadata !DIExpression()) #11, !dbg !3272
  %25 = getelementptr inbounds %struct.list_head*, %struct.list_head** %22, i64 14, !dbg !3274
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !3274
  %27 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.list_head* %26, metadata !1534, metadata !DIExpression()) #11, !dbg !3276
  call void @llvm.dbg.value(metadata %struct.list_head* %27, metadata !1539, metadata !DIExpression()) #11, !dbg !3278
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i64 0, i32 1, !dbg !3279
  store %struct.list_head* %26, %struct.list_head** %28, align 8, !dbg !3280
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 0, i32 0, !dbg !3281
  store %struct.list_head* %27, %struct.list_head** %29, align 8, !dbg !3282
  call void @llvm.dbg.value(metadata %struct.list_head** %24, metadata !780, metadata !DIExpression()) #11, !dbg !3283
  %30 = bitcast %struct.list_head** %24 to %struct.list_head***, !dbg !3285
  store %struct.list_head** %24, %struct.list_head*** %30, align 8, !dbg !3285
  %31 = bitcast %struct.list_head** %25 to %struct.list_head***, !dbg !3286
  store %struct.list_head** %24, %struct.list_head*** %31, align 8, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !1495, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %23, metadata !3244, metadata !DIExpression()) #11, !dbg !3287
  %32 = icmp eq %struct.list_head** %22, null, !dbg !3288
  br i1 %32, label %33, label %54, !dbg !3290

; <label>:33:                                     ; preds = %21, %12
  %34 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3291
  %35 = inttoptr i64 %34 to %struct.cpu*, !dbg !3297
  %36 = getelementptr inbounds %struct.cpu, %struct.cpu* %35, i64 0, i32 5, !dbg !3298
  %37 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %36, align 8, !dbg !3298
  %38 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %37, i64 0, i32 2, !dbg !3299
  %39 = load %struct.nk_fiber*, %struct.nk_fiber** %38, align 8, !dbg !3299
  %40 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3300
  %41 = inttoptr i64 %40 to %struct.cpu*, !dbg !3304
  %42 = getelementptr inbounds %struct.cpu, %struct.cpu* %41, i64 0, i32 5, !dbg !3305
  %43 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %42, align 8, !dbg !3305
  %44 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %43, i64 0, i32 3, !dbg !3306
  %45 = load %struct.nk_fiber*, %struct.nk_fiber** %44, align 8, !dbg !3306
  %46 = icmp eq %struct.nk_fiber* %39, %45, !dbg !3307
  br i1 %46, label %nk_fiber_yield.exit, label %47, !dbg !3308

; <label>:47:                                     ; preds = %33
  %48 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3309
  %49 = inttoptr i64 %48 to %struct.cpu*, !dbg !3314
  %50 = getelementptr inbounds %struct.cpu, %struct.cpu* %49, i64 0, i32 5, !dbg !3315
  %51 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %50, align 8, !dbg !3315
  %52 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %51, i64 0, i32 3, !dbg !3316
  %53 = load %struct.nk_fiber*, %struct.nk_fiber** %52, align 8, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3244, metadata !DIExpression()) #11, !dbg !3287
  br label %54, !dbg !3317

; <label>:54:                                     ; preds = %47, %21
  %55 = phi %struct.nk_fiber* [ %53, %47 ], [ %23, %21 ], !dbg !3318
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3244, metadata !DIExpression()) #11, !dbg !3287
  %56 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %55) #12, !dbg !3319
  br label %nk_fiber_yield.exit, !dbg !3320

nk_fiber_yield.exit:                              ; preds = %3, %33, %54
  %57 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 0, %54 ], !dbg !3318
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3321
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !3326
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !3327
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !3327
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.list_head* %62, metadata !3329, metadata !DIExpression()), !dbg !3333
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i64 0, i32 0, !dbg !3335
  %64 = load %struct.list_head*, %struct.list_head** %63, align 8, !dbg !3335
  call void @llvm.dbg.value(metadata %struct.list_head* %64, metadata !3332, metadata !DIExpression()), !dbg !3336
  %65 = icmp eq %struct.list_head* %64, %62, !dbg !3337
  br i1 %65, label %66, label %70, !dbg !3338

; <label>:66:                                     ; preds = %nk_fiber_yield.exit
  %67 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 4, i32 1, !dbg !3339
  %68 = load %struct.list_head*, %struct.list_head** %67, align 8, !dbg !3339
  %69 = icmp eq %struct.list_head* %68, %62, !dbg !3340
  br i1 %69, label %71, label %70, !dbg !3341

; <label>:70:                                     ; preds = %66, %nk_fiber_yield.exit, %71
  br label %3, !dbg !3342, !llvm.loop !3343

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @nk_sleep(i64 10000000) #12, !dbg !3345
  br label %70, !dbg !3347
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_create(void (i8*, i8**)*, i8*, i8**, i64, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !602 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !601, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !606, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8** %2, metadata !607, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %3, metadata !608, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %4, metadata !609, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !610, metadata !DIExpression()), !dbg !3353
  %6 = icmp eq i64 %3, 0, !dbg !3354
  %7 = select i1 %6, i64 2097152, i64 %3, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %7, metadata !611, metadata !DIExpression()), !dbg !3355
  %8 = tail call i8* @kmem_malloc(i64 152) #12, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %8, metadata !610, metadata !DIExpression()), !dbg !3353
  %9 = icmp eq i8* %8, null, !dbg !3357
  br i1 %9, label %104, label %10, !dbg !3358

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @memset(i8* nonnull %8, i8 signext 0, i64 152) #12, !dbg !3359
  %12 = getelementptr inbounds i8, i8* %8, i64 44, !dbg !3360
  %13 = bitcast i8* %12 to i32*, !dbg !3360
  store i32 0, i32* %13, align 4, !dbg !3361
  %14 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3362
  %15 = bitcast i8* %14 to i64*, !dbg !3362
  store i64 %7, i64* %15, align 8, !dbg !3363
  %16 = tail call i8* @kmem_malloc(i64 %7) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %16, metadata !614, metadata !DIExpression()), !dbg !3364
  %17 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3365
  %18 = bitcast i8* %17 to i8**, !dbg !3365
  store i8* %16, i8** %18, align 8, !dbg !3366
  %19 = icmp eq i8* %16, null, !dbg !3367
  br i1 %19, label %20, label %21, !dbg !3368

; <label>:20:                                     ; preds = %10
  tail call void @kmem_free(i8* nonnull %8) #12, !dbg !3369
  br label %104, !dbg !3370

; <label>:21:                                     ; preds = %10
  %22 = ptrtoint i8* %16 to i64, !dbg !3368
  %23 = getelementptr inbounds i8, i8* %8, i64 120, !dbg !3371
  %24 = bitcast i8* %23 to void (i8*, i8**)**, !dbg !3371
  store void (i8*, i8**)* %0, void (i8*, i8**)** %24, align 8, !dbg !3372
  %25 = getelementptr inbounds i8, i8* %8, i64 128, !dbg !3373
  %26 = bitcast i8* %25 to i8**, !dbg !3373
  store i8* %1, i8** %26, align 8, !dbg !3374
  %27 = getelementptr inbounds i8, i8* %8, i64 136, !dbg !3375
  %28 = bitcast i8* %27 to i8***, !dbg !3375
  store i8** %2, i8*** %28, align 8, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %8, metadata !648, metadata !DIExpression()), !dbg !3377
  %29 = load i64, i64* %15, align 8, !dbg !3379
  %30 = bitcast i8* %8 to i64*, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), metadata !662, metadata !DIExpression()), !dbg !3383
  %31 = add i64 %22, -8, !dbg !3384
  %32 = add i64 %31, %29, !dbg !3385
  store i64 %32, i64* %30, align 8, !dbg !3385
  %33 = inttoptr i64 %32 to i64*, !dbg !3386
  store i64 ptrtoint (void (%struct.nk_fiber*)* @_fiber_wrapper to i64), i64* %33, align 8, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3390
  %34 = load i64, i64* %30, align 8, !dbg !3391
  %35 = add i64 %34, -8, !dbg !3391
  store i64 %35, i64* %30, align 8, !dbg !3391
  %36 = inttoptr i64 %35 to i64*, !dbg !3392
  store i64 0, i64* %36, align 8, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3396
  %37 = load i64, i64* %30, align 8, !dbg !3397
  %38 = add i64 %37, -8, !dbg !3397
  store i64 %38, i64* %30, align 8, !dbg !3397
  %39 = inttoptr i64 %38 to i64*, !dbg !3398
  store i64 0, i64* %39, align 8, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3402
  %40 = load i64, i64* %30, align 8, !dbg !3403
  %41 = add i64 %40, -8, !dbg !3403
  store i64 %41, i64* %30, align 8, !dbg !3403
  %42 = inttoptr i64 %41 to i64*, !dbg !3404
  store i64 0, i64* %42, align 8, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3408
  %43 = load i64, i64* %30, align 8, !dbg !3409
  %44 = add i64 %43, -8, !dbg !3409
  store i64 %44, i64* %30, align 8, !dbg !3409
  %45 = inttoptr i64 %44 to i64*, !dbg !3410
  store i64 0, i64* %45, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %8, metadata !657, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3414
  %46 = load i64, i64* %30, align 8, !dbg !3415
  %47 = add i64 %46, -8, !dbg !3415
  store i64 %47, i64* %30, align 8, !dbg !3415
  %48 = inttoptr i64 %47 to i64*, !dbg !3416
  store i64 0, i64* %48, align 8, !dbg !3417
  %49 = ptrtoint i8* %8 to i64, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %49, metadata !662, metadata !DIExpression()), !dbg !3421
  %50 = load i64, i64* %30, align 8, !dbg !3422
  %51 = add i64 %50, -8, !dbg !3422
  store i64 %51, i64* %30, align 8, !dbg !3422
  %52 = inttoptr i64 %51 to i64*, !dbg !3423
  store i64 %49, i64* %52, align 8, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3427
  %53 = load i64, i64* %30, align 8, !dbg !3428
  %54 = add i64 %53, -8, !dbg !3428
  store i64 %54, i64* %30, align 8, !dbg !3428
  %55 = inttoptr i64 %54 to i64*, !dbg !3429
  store i64 0, i64* %55, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3433
  %56 = load i64, i64* %30, align 8, !dbg !3434
  %57 = add i64 %56, -8, !dbg !3434
  store i64 %57, i64* %30, align 8, !dbg !3434
  %58 = inttoptr i64 %57 to i64*, !dbg !3435
  store i64 0, i64* %58, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3439
  %59 = load i64, i64* %30, align 8, !dbg !3440
  %60 = add i64 %59, -8, !dbg !3440
  store i64 %60, i64* %30, align 8, !dbg !3440
  %61 = inttoptr i64 %60 to i64*, !dbg !3441
  store i64 0, i64* %61, align 8, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3445
  %62 = load i64, i64* %30, align 8, !dbg !3446
  %63 = add i64 %62, -8, !dbg !3446
  store i64 %63, i64* %30, align 8, !dbg !3446
  %64 = inttoptr i64 %63 to i64*, !dbg !3447
  store i64 0, i64* %64, align 8, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3451
  %65 = load i64, i64* %30, align 8, !dbg !3452
  %66 = add i64 %65, -8, !dbg !3452
  store i64 %66, i64* %30, align 8, !dbg !3452
  %67 = inttoptr i64 %66 to i64*, !dbg !3453
  store i64 0, i64* %67, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3457
  %68 = load i64, i64* %30, align 8, !dbg !3458
  %69 = add i64 %68, -8, !dbg !3458
  store i64 %69, i64* %30, align 8, !dbg !3458
  %70 = inttoptr i64 %69 to i64*, !dbg !3459
  store i64 0, i64* %70, align 8, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3463
  %71 = load i64, i64* %30, align 8, !dbg !3464
  %72 = add i64 %71, -8, !dbg !3464
  store i64 %72, i64* %30, align 8, !dbg !3464
  %73 = inttoptr i64 %72 to i64*, !dbg !3465
  store i64 0, i64* %73, align 8, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3469
  %74 = load i64, i64* %30, align 8, !dbg !3470
  %75 = add i64 %74, -8, !dbg !3470
  store i64 %75, i64* %30, align 8, !dbg !3470
  %76 = inttoptr i64 %75 to i64*, !dbg !3471
  store i64 0, i64* %76, align 8, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %49, metadata !657, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 0, metadata !662, metadata !DIExpression()), !dbg !3475
  %77 = load i64, i64* %30, align 8, !dbg !3476
  %78 = add i64 %77, -8, !dbg !3476
  store i64 %78, i64* %30, align 8, !dbg !3476
  %79 = inttoptr i64 %78 to i64*, !dbg !3477
  store i64 0, i64* %79, align 8, !dbg !3478
  %80 = icmp eq %struct.nk_fiber** %4, null, !dbg !3479
  br i1 %80, label %83, label %81, !dbg !3480

; <label>:81:                                     ; preds = %21
  %82 = bitcast %struct.nk_fiber** %4 to i8**, !dbg !3481
  store i8* %8, i8** %82, align 8, !dbg !3481
  br label %83, !dbg !3482

; <label>:83:                                     ; preds = %21, %81
  %84 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3483, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !772, metadata !DIExpression()) #11, !dbg !3483
  call void @llvm.dbg.value(metadata %struct.nk_thread* %84, metadata !771, metadata !DIExpression()) #11, !dbg !3485
  %85 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %84, i64 0, i32 24, !dbg !3486
  %86 = bitcast %struct.nk_virtual_console** %85 to i64*, !dbg !3486
  %87 = load i64, i64* %86, align 8, !dbg !3486
  %88 = getelementptr inbounds i8, i8* %8, i64 48, !dbg !3487
  %89 = bitcast i8* %88 to i64*, !dbg !3488
  store i64 %87, i64* %89, align 8, !dbg !3488
  %90 = getelementptr inbounds i8, i8* %8, i64 104, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %90, metadata !780, metadata !DIExpression()), !dbg !3490
  %91 = bitcast i8* %90 to i8**, !dbg !3492
  store i8* %90, i8** %91, align 8, !dbg !3492
  %92 = getelementptr inbounds i8, i8* %8, i64 112, !dbg !3493
  %93 = bitcast i8* %92 to i8**, !dbg !3494
  store i8* %90, i8** %93, align 8, !dbg !3494
  %94 = getelementptr inbounds i8, i8* %8, i64 96, !dbg !3495
  %95 = bitcast i8* %94 to i32*, !dbg !3495
  store i32 0, i32* %95, align 8, !dbg !3496
  %96 = getelementptr inbounds i8, i8* %8, i64 64, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %96, metadata !780, metadata !DIExpression()), !dbg !3498
  %97 = bitcast i8* %96 to i8**, !dbg !3500
  store i8* %96, i8** %97, align 8, !dbg !3500
  %98 = getelementptr inbounds i8, i8* %8, i64 72, !dbg !3501
  %99 = bitcast i8* %98 to i8**, !dbg !3502
  store i8* %96, i8** %99, align 8, !dbg !3502
  %100 = getelementptr inbounds i8, i8* %8, i64 80, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %100, metadata !780, metadata !DIExpression()), !dbg !3504
  %101 = bitcast i8* %100 to i8**, !dbg !3506
  store i8* %100, i8** %101, align 8, !dbg !3506
  %102 = getelementptr inbounds i8, i8* %8, i64 88, !dbg !3507
  %103 = bitcast i8* %102 to i8**, !dbg !3508
  store i8* %100, i8** %103, align 8, !dbg !3508
  br label %104, !dbg !3509

; <label>:104:                                    ; preds = %5, %83, %20
  %105 = phi i32 [ 0, %83 ], [ -22, %20 ], [ -22, %5 ], !dbg !3510
  ret i32 %105, !dbg !3511
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_yield() local_unnamed_addr #8 !dbg !3242 {
  %1 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3512
  %2 = inttoptr i64 %1 to %struct.cpu*, !dbg !3516
  %3 = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 5, !dbg !3517
  %4 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %3, align 8, !dbg !3517
  %5 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %4, i64 0, i32 1, !dbg !3518
  %6 = load %struct.nk_thread*, %struct.nk_thread** %5, align 8, !dbg !3518
  %7 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3519, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !772, metadata !DIExpression()) #11, !dbg !3519
  call void @llvm.dbg.value(metadata %struct.nk_thread* %7, metadata !771, metadata !DIExpression()) #11, !dbg !3521
  %8 = icmp eq %struct.nk_thread* %6, %7, !dbg !3522
  br i1 %8, label %9, label %54, !dbg !3523

; <label>:9:                                      ; preds = %0
  %10 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3524
  %11 = inttoptr i64 %10 to %struct.cpu*, !dbg !3529
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !3530
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !3530
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1494, metadata !DIExpression()) #11, !dbg !3532
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !1515, metadata !DIExpression()) #11, !dbg !3534
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i64 0, i32 0, !dbg !3536
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !3536
  %17 = icmp eq %struct.list_head* %16, %14, !dbg !3537
  br i1 %17, label %30, label %18, !dbg !3538

; <label>:18:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3539
  %19 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -7, i32 1, !dbg !3539
  %20 = bitcast %struct.list_head** %19 to %struct.nk_fiber*, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1496, metadata !DIExpression()) #11, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1495, metadata !DIExpression()) #11, !dbg !3533
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 13, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !1527, metadata !DIExpression()) #11, !dbg !3541
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 14, !dbg !3543
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3543
  %24 = load %struct.list_head*, %struct.list_head** %21, align 8, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.list_head* %23, metadata !1534, metadata !DIExpression()) #11, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1539, metadata !DIExpression()) #11, !dbg !3547
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 1, !dbg !3548
  store %struct.list_head* %23, %struct.list_head** %25, align 8, !dbg !3549
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i64 0, i32 0, !dbg !3550
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.list_head** %21, metadata !780, metadata !DIExpression()) #11, !dbg !3552
  %27 = bitcast %struct.list_head** %21 to %struct.list_head***, !dbg !3554
  store %struct.list_head** %21, %struct.list_head*** %27, align 8, !dbg !3554
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3555
  store %struct.list_head** %21, %struct.list_head*** %28, align 8, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !1495, metadata !DIExpression()) #11, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %20, metadata !3244, metadata !DIExpression()), !dbg !3556
  %29 = icmp eq %struct.list_head** %19, null, !dbg !3557
  br i1 %29, label %30, label %51, !dbg !3558

; <label>:30:                                     ; preds = %9, %18
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3559
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !3563
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !3564
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !3564
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 2, !dbg !3565
  %36 = load %struct.nk_fiber*, %struct.nk_fiber** %35, align 8, !dbg !3565
  %37 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3566
  %38 = inttoptr i64 %37 to %struct.cpu*, !dbg !3570
  %39 = getelementptr inbounds %struct.cpu, %struct.cpu* %38, i64 0, i32 5, !dbg !3571
  %40 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %39, align 8, !dbg !3571
  %41 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %40, i64 0, i32 3, !dbg !3572
  %42 = load %struct.nk_fiber*, %struct.nk_fiber** %41, align 8, !dbg !3572
  %43 = icmp eq %struct.nk_fiber* %36, %42, !dbg !3573
  br i1 %43, label %54, label %44, !dbg !3574

; <label>:44:                                     ; preds = %30
  %45 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3575
  %46 = inttoptr i64 %45 to %struct.cpu*, !dbg !3579
  %47 = getelementptr inbounds %struct.cpu, %struct.cpu* %46, i64 0, i32 5, !dbg !3580
  %48 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %47, align 8, !dbg !3580
  %49 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %48, i64 0, i32 3, !dbg !3581
  %50 = load %struct.nk_fiber*, %struct.nk_fiber** %49, align 8, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %50, metadata !3244, metadata !DIExpression()), !dbg !3556
  br label %51, !dbg !3582

; <label>:51:                                     ; preds = %44, %18
  %52 = phi %struct.nk_fiber* [ %50, %44 ], [ %20, %18 ], !dbg !3583
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %52, metadata !3244, metadata !DIExpression()), !dbg !3556
  %53 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %52) #10, !dbg !3584
  br label %54, !dbg !3585

; <label>:54:                                     ; preds = %51, %30, %0
  %55 = phi i32 [ 1, %0 ], [ 0, %30 ], [ 0, %51 ], !dbg !3583
  ret i32 %55, !dbg !3586
}

; Function Attrs: noredzone
declare dso_local i32 @nk_sleep(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @nk_fiber_startup() local_unnamed_addr #0 !dbg !3587 {
  %1 = alloca i8*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3630
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3632
  call void @llvm.dbg.value(metadata %struct.cpu* %3, metadata !3589, metadata !DIExpression()), !dbg !3633
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3634
  %5 = icmp eq i64 %4, 0, !dbg !3636
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %6, metadata !2256, metadata !DIExpression()) #11, !dbg !3640
  %7 = icmp eq i64 %6, 0, !dbg !3641
  br i1 %7, label %13, label %8, !dbg !3642

; <label>:8:                                      ; preds = %0
  %9 = add i64 %6, 10, !dbg !3643
  %10 = inttoptr i64 %9 to i16*, !dbg !3644
  %11 = atomicrmw add i16* %10, i16 0 seq_cst, !dbg !3645
  %12 = zext i16 %11 to i32, !dbg !3645
  br label %13, !dbg !3646

; <label>:13:                                     ; preds = %0, %8
  %14 = phi i32 [ %12, %8 ], [ 1, %0 ], !dbg !3647
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3648
  call void @llvm.dbg.value(metadata i64 %15, metadata !2272, metadata !DIExpression()) #11, !dbg !3651
  %16 = icmp eq i64 %15, 0, !dbg !3652
  br i1 %16, label %21, label %17, !dbg !3653

; <label>:17:                                     ; preds = %13
  %18 = add i64 %15, 10, !dbg !3654
  %19 = inttoptr i64 %18 to i16*, !dbg !3655
  %20 = atomicrmw add i16* %19, i16 1 seq_cst, !dbg !3656
  br label %21, !dbg !3657

; <label>:21:                                     ; preds = %13, %17
  br i1 %5, label %83, label %22, !dbg !3658

; <label>:22:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3590, metadata !DIExpression()), !dbg !3659
  %23 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3660, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !772, metadata !DIExpression()) #11, !dbg !3660
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !771, metadata !DIExpression()) #11, !dbg !3662
  call void @llvm.dbg.value(metadata %struct.nk_thread* %23, metadata !3594, metadata !DIExpression()), !dbg !3659
  %24 = tail call i32 @nk_vc_is_active() #12, !dbg !3663
  %25 = icmp eq i32 %24, 0, !dbg !3663
  %26 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3664
  %27 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %27, metadata !2296, metadata !DIExpression()) #11, !dbg !3669
  %28 = icmp eq i64 %27, 0, !dbg !3670
  br i1 %28, label %34, label %29, !dbg !3671

; <label>:29:                                     ; preds = %22
  %30 = add i64 %27, 8, !dbg !3672
  %31 = inttoptr i64 %30 to i16*, !dbg !3673
  %32 = atomicrmw add i16* %31, i16 0 seq_cst, !dbg !3674
  %33 = icmp eq i16 %32, 0, !dbg !3675
  br i1 %33, label %34, label %35, !dbg !3664

; <label>:34:                                     ; preds = %22, %29
  br label %35, !dbg !3664

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %29 ]
  %37 = icmp eq i32 %14, 0, !dbg !3664
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3664
  %39 = icmp ne %struct.nk_thread* %23, null, !dbg !3664
  br i1 %25, label %58, label %40, !dbg !3676

; <label>:40:                                     ; preds = %35
  br i1 %39, label %41, label %52, !dbg !3677

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3677
  %43 = load i64, i64* %42, align 32, !dbg !3677
  %44 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3677
  %45 = load i8, i8* %44, align 8, !dbg !3677
  %46 = icmp eq i8 %45, 0, !dbg !3677
  br i1 %46, label %47, label %52, !dbg !3677

; <label>:47:                                     ; preds = %41
  %48 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3677
  %49 = load i8, i8* %48, align 64, !dbg !3677
  %50 = icmp eq i8 %49, 0, !dbg !3677
  %51 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %48, !dbg !3677
  br label %52, !dbg !3677

; <label>:52:                                     ; preds = %40, %41, %47
  %53 = phi i64 [ %43, %41 ], [ %43, %47 ], [ 0, %40 ]
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %41 ], [ %51, %47 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %40 ], !dbg !3677
  %55 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3677
  %56 = load i32, i32* %55, align 8, !dbg !3677
  %57 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %53, i8* %54, i32 %56) #12, !dbg !3677
  br label %76, !dbg !3677

; <label>:58:                                     ; preds = %35
  br i1 %39, label %59, label %70, !dbg !3678

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 5, !dbg !3678
  %61 = load i64, i64* %60, align 32, !dbg !3678
  %62 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 18, !dbg !3678
  %63 = load i8, i8* %62, align 8, !dbg !3678
  %64 = icmp eq i8 %63, 0, !dbg !3678
  br i1 %64, label %65, label %70, !dbg !3678

; <label>:65:                                     ; preds = %59
  %66 = getelementptr %struct.nk_thread, %struct.nk_thread* %23, i64 0, i32 25, i64 0, !dbg !3678
  %67 = load i8, i8* %66, align 64, !dbg !3678
  %68 = icmp eq i8 %67, 0, !dbg !3678
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %66, !dbg !3678
  br label %70, !dbg !3678

; <label>:70:                                     ; preds = %58, %59, %65
  %71 = phi i64 [ %61, %59 ], [ %61, %65 ], [ 0, %58 ]
  %72 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %59 ], [ %69, %65 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %58 ], !dbg !3678
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3678
  %74 = load i32, i32* %73, align 8, !dbg !3678
  %75 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i32 %26, i8* %36, i8* %38, i64 %71, i8* %72, i32 %74) #12, !dbg !3678
  br label %76

; <label>:76:                                     ; preds = %70, %52
  %77 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %77, metadata !2316, metadata !DIExpression()) #11, !dbg !3682
  %78 = icmp eq i64 %77, 0, !dbg !3683
  br i1 %78, label %111, label %79, !dbg !3684

; <label>:79:                                     ; preds = %76
  %80 = add i64 %77, 10, !dbg !3685
  %81 = inttoptr i64 %80 to i16*, !dbg !3686
  %82 = atomicrmw sub i16* %81, i16 1 seq_cst, !dbg !3687
  br label %111, !dbg !3688

; <label>:83:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i32 %14, metadata !3607, metadata !DIExpression()), !dbg !3689
  %84 = tail call i32 @nk_vc_is_active() #12, !dbg !3690
  %85 = icmp eq i32 %84, 0, !dbg !3690
  %86 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %86, metadata !2296, metadata !DIExpression()) #11, !dbg !3697
  %87 = icmp eq i64 %86, 0, !dbg !3698
  br i1 %87, label %93, label %88, !dbg !3699

; <label>:88:                                     ; preds = %83
  %89 = add i64 %86, 8, !dbg !3700
  %90 = inttoptr i64 %89 to i16*, !dbg !3701
  %91 = atomicrmw add i16* %90, i16 0 seq_cst, !dbg !3702
  %92 = icmp eq i16 %91, 0, !dbg !3703
  br i1 %92, label %93, label %94, !dbg !3704

; <label>:93:                                     ; preds = %83, %88
  br label %94, !dbg !3704

; <label>:94:                                     ; preds = %88, %93
  %95 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %88 ]
  %96 = icmp eq i32 %14, 0, !dbg !3704
  %97 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3704
  %98 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 6, !dbg !3704
  %99 = load i32, i32* %98, align 8, !dbg !3704
  br i1 %85, label %102, label %100, !dbg !3705

; <label>:100:                                    ; preds = %94
  %101 = tail call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3706
  br label %104, !dbg !3706

; <label>:102:                                    ; preds = %94
  %103 = tail call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i8* %95, i8* %97, i32 %99) #12, !dbg !3708
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %105, metadata !2316, metadata !DIExpression()) #11, !dbg !3713
  %106 = icmp eq i64 %105, 0, !dbg !3714
  br i1 %106, label %111, label %107, !dbg !3715

; <label>:107:                                    ; preds = %104
  %108 = add i64 %105, 10, !dbg !3716
  %109 = inttoptr i64 %108 to i16*, !dbg !3717
  %110 = atomicrmw sub i16* %109, i16 1 seq_cst, !dbg !3718
  br label %111, !dbg !3719

; <label>:111:                                    ; preds = %107, %104, %79, %76
  %112 = bitcast i8** %1 to i8*, !dbg !3720
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3720
  %113 = tail call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3751, !srcloc !3752
  call void @llvm.dbg.value(metadata i32 %113, metadata !3728, metadata !DIExpression()) #11, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %113, metadata !3725, metadata !DIExpression()) #11, !dbg !3753
  call void @llvm.dbg.value(metadata i8** %1, metadata !3723, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3754
  %114 = call i32 @nk_thread_start(void (i8*, i8**)* nonnull @__fiber_thread, i8* null, i8** null, i8 zeroext 1, i64 2097152, i8** nonnull %1, i32 %113) #12, !dbg !3755
  %115 = icmp eq i32 %114, 0, !dbg !3755
  br i1 %115, label %321, label %116, !dbg !3756

; <label>:116:                                    ; preds = %111
  %117 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3757
  %118 = icmp eq i64 %117, 0, !dbg !3759
  %119 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %119, metadata !2256, metadata !DIExpression()) #11, !dbg !3763
  %120 = icmp eq i64 %119, 0, !dbg !3764
  br i1 %120, label %126, label %121, !dbg !3765

; <label>:121:                                    ; preds = %116
  %122 = add i64 %119, 10, !dbg !3766
  %123 = inttoptr i64 %122 to i16*, !dbg !3767
  %124 = atomicrmw add i16* %123, i16 0 seq_cst, !dbg !3768
  %125 = zext i16 %124 to i32, !dbg !3768
  br label %126, !dbg !3769

; <label>:126:                                    ; preds = %121, %116
  %127 = phi i32 [ %125, %121 ], [ 1, %116 ], !dbg !3770
  %128 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %128, metadata !2272, metadata !DIExpression()) #11, !dbg !3774
  %129 = icmp eq i64 %128, 0, !dbg !3775
  br i1 %129, label %134, label %130, !dbg !3776

; <label>:130:                                    ; preds = %126
  %131 = add i64 %128, 10, !dbg !3777
  %132 = inttoptr i64 %131 to i16*, !dbg !3778
  %133 = atomicrmw add i16* %132, i16 1 seq_cst, !dbg !3779
  br label %134, !dbg !3780

; <label>:134:                                    ; preds = %130, %126
  br i1 %118, label %192, label %135, !dbg !3781

; <label>:135:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3730, metadata !DIExpression()) #11, !dbg !3782
  %136 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3783, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !772, metadata !DIExpression()) #11, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !771, metadata !DIExpression()) #11, !dbg !3785
  call void @llvm.dbg.value(metadata %struct.nk_thread* %136, metadata !3735, metadata !DIExpression()) #11, !dbg !3782
  %137 = call i32 @nk_vc_is_active() #12, !dbg !3786
  %138 = icmp eq i32 %137, 0, !dbg !3786
  %139 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3787
  %140 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %140, metadata !2296, metadata !DIExpression()) #11, !dbg !3792
  %141 = icmp eq i64 %140, 0, !dbg !3793
  br i1 %141, label %147, label %142, !dbg !3794

; <label>:142:                                    ; preds = %135
  %143 = add i64 %140, 8, !dbg !3795
  %144 = inttoptr i64 %143 to i16*, !dbg !3796
  %145 = atomicrmw add i16* %144, i16 0 seq_cst, !dbg !3797
  %146 = icmp eq i16 %145, 0, !dbg !3798
  br i1 %146, label %147, label %148, !dbg !3787

; <label>:147:                                    ; preds = %142, %135
  br label %148, !dbg !3787

; <label>:148:                                    ; preds = %147, %142
  %149 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %142 ]
  %150 = icmp eq i32 %127, 0, !dbg !3787
  %151 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3787
  %152 = icmp ne %struct.nk_thread* %136, null, !dbg !3787
  br i1 %138, label %169, label %153, !dbg !3799

; <label>:153:                                    ; preds = %148
  br i1 %152, label %154, label %165, !dbg !3800

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3800
  %156 = load i64, i64* %155, align 32, !dbg !3800
  %157 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3800
  %158 = load i8, i8* %157, align 8, !dbg !3800
  %159 = icmp eq i8 %158, 0, !dbg !3800
  br i1 %159, label %160, label %165, !dbg !3800

; <label>:160:                                    ; preds = %154
  %161 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3800
  %162 = load i8, i8* %161, align 64, !dbg !3800
  %163 = icmp eq i8 %162, 0, !dbg !3800
  %164 = select i1 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %161, !dbg !3800
  br label %165, !dbg !3800

; <label>:165:                                    ; preds = %160, %154, %153
  %166 = phi i64 [ %156, %154 ], [ %156, %160 ], [ 0, %153 ]
  %167 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %154 ], [ %164, %160 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %153 ], !dbg !3800
  %168 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %166, i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3800
  br label %185, !dbg !3800

; <label>:169:                                    ; preds = %148
  br i1 %152, label %170, label %181, !dbg !3801

; <label>:170:                                    ; preds = %169
  %171 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 5, !dbg !3801
  %172 = load i64, i64* %171, align 32, !dbg !3801
  %173 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 18, !dbg !3801
  %174 = load i8, i8* %173, align 8, !dbg !3801
  %175 = icmp eq i8 %174, 0, !dbg !3801
  br i1 %175, label %176, label %181, !dbg !3801

; <label>:176:                                    ; preds = %170
  %177 = getelementptr %struct.nk_thread, %struct.nk_thread* %136, i64 0, i32 25, i64 0, !dbg !3801
  %178 = load i8, i8* %177, align 64, !dbg !3801
  %179 = icmp eq i8 %178, 0, !dbg !3801
  %180 = select i1 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %177, !dbg !3801
  br label %181, !dbg !3801

; <label>:181:                                    ; preds = %176, %170, %169
  %182 = phi i64 [ %172, %170 ], [ %172, %176 ], [ 0, %169 ]
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %170 ], [ %180, %176 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %169 ], !dbg !3801
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 %139, i8* %149, i8* %151, i64 %182, i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3801
  br label %185

; <label>:185:                                    ; preds = %181, %165
  %186 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %186, metadata !2316, metadata !DIExpression()) #11, !dbg !3805
  %187 = icmp eq i64 %186, 0, !dbg !3806
  br i1 %187, label %218, label %188, !dbg !3807

; <label>:188:                                    ; preds = %185
  %189 = add i64 %186, 10, !dbg !3808
  %190 = inttoptr i64 %189 to i16*, !dbg !3809
  %191 = atomicrmw sub i16* %190, i16 1 seq_cst, !dbg !3810
  br label %218, !dbg !3811

; <label>:192:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i32 %127, metadata !3748, metadata !DIExpression()) #11, !dbg !3812
  %193 = call i32 @nk_vc_is_active() #12, !dbg !3813
  %194 = icmp eq i32 %193, 0, !dbg !3813
  %195 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %195, metadata !2296, metadata !DIExpression()) #11, !dbg !3820
  %196 = icmp eq i64 %195, 0, !dbg !3821
  br i1 %196, label %202, label %197, !dbg !3822

; <label>:197:                                    ; preds = %192
  %198 = add i64 %195, 8, !dbg !3823
  %199 = inttoptr i64 %198 to i16*, !dbg !3824
  %200 = atomicrmw add i16* %199, i16 0 seq_cst, !dbg !3825
  %201 = icmp eq i16 %200, 0, !dbg !3826
  br i1 %201, label %202, label %203, !dbg !3827

; <label>:202:                                    ; preds = %197, %192
  br label %203, !dbg !3827

; <label>:203:                                    ; preds = %202, %197
  %204 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %202 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %197 ]
  %205 = icmp eq i32 %127, 0, !dbg !3827
  %206 = select i1 %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3827
  br i1 %194, label %209, label %207, !dbg !3828

; <label>:207:                                    ; preds = %203
  %208 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3829
  br label %211, !dbg !3829

; <label>:209:                                    ; preds = %203
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i8* %204, i8* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 563) #12, !dbg !3831
  br label %211

; <label>:211:                                    ; preds = %209, %207
  %212 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %212, metadata !2316, metadata !DIExpression()) #11, !dbg !3836
  %213 = icmp eq i64 %212, 0, !dbg !3837
  br i1 %213, label %218, label %214, !dbg !3838

; <label>:214:                                    ; preds = %211
  %215 = add i64 %212, 10, !dbg !3839
  %216 = inttoptr i64 %215 to i16*, !dbg !3840
  %217 = atomicrmw sub i16* %216, i16 1 seq_cst, !dbg !3841
  br label %218, !dbg !3842

; <label>:218:                                    ; preds = %185, %188, %211, %214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3843
  %219 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3844
  %220 = icmp eq i64 %219, 0, !dbg !3846
  %221 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %221, metadata !2256, metadata !DIExpression()) #11, !dbg !3850
  %222 = icmp eq i64 %221, 0, !dbg !3851
  br i1 %222, label %228, label %223, !dbg !3852

; <label>:223:                                    ; preds = %218
  %224 = add i64 %221, 10, !dbg !3853
  %225 = inttoptr i64 %224 to i16*, !dbg !3854
  %226 = atomicrmw add i16* %225, i16 0 seq_cst, !dbg !3855
  %227 = zext i16 %226 to i32, !dbg !3855
  br label %228, !dbg !3856

; <label>:228:                                    ; preds = %218, %223
  %229 = phi i32 [ %227, %223 ], [ 1, %218 ], !dbg !3857
  %230 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %230, metadata !2272, metadata !DIExpression()) #11, !dbg !3861
  %231 = icmp eq i64 %230, 0, !dbg !3862
  br i1 %231, label %236, label %232, !dbg !3863

; <label>:232:                                    ; preds = %228
  %233 = add i64 %230, 10, !dbg !3864
  %234 = inttoptr i64 %233 to i16*, !dbg !3865
  %235 = atomicrmw add i16* %234, i16 1 seq_cst, !dbg !3866
  br label %236, !dbg !3867

; <label>:236:                                    ; preds = %228, %232
  br i1 %220, label %294, label %237, !dbg !3868

; <label>:237:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3609, metadata !DIExpression()), !dbg !3869
  %238 = call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3870, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !772, metadata !DIExpression()) #11, !dbg !3870
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !771, metadata !DIExpression()) #11, !dbg !3872
  call void @llvm.dbg.value(metadata %struct.nk_thread* %238, metadata !3615, metadata !DIExpression()), !dbg !3869
  %239 = call i32 @nk_vc_is_active() #12, !dbg !3873
  %240 = icmp eq i32 %239, 0, !dbg !3873
  %241 = call i32 asm sideeffect "movl  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 40) #11, !dbg !3874
  %242 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %242, metadata !2296, metadata !DIExpression()) #11, !dbg !3879
  %243 = icmp eq i64 %242, 0, !dbg !3880
  br i1 %243, label %249, label %244, !dbg !3881

; <label>:244:                                    ; preds = %237
  %245 = add i64 %242, 8, !dbg !3882
  %246 = inttoptr i64 %245 to i16*, !dbg !3883
  %247 = atomicrmw add i16* %246, i16 0 seq_cst, !dbg !3884
  %248 = icmp eq i16 %247, 0, !dbg !3885
  br i1 %248, label %249, label %250, !dbg !3874

; <label>:249:                                    ; preds = %237, %244
  br label %250, !dbg !3874

; <label>:250:                                    ; preds = %244, %249
  %251 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %249 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %244 ]
  %252 = icmp eq i32 %229, 0, !dbg !3874
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3874
  %254 = icmp ne %struct.nk_thread* %238, null, !dbg !3874
  br i1 %240, label %271, label %255, !dbg !3886

; <label>:255:                                    ; preds = %250
  br i1 %254, label %256, label %267, !dbg !3887

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3887
  %258 = load i64, i64* %257, align 32, !dbg !3887
  %259 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3887
  %260 = load i8, i8* %259, align 8, !dbg !3887
  %261 = icmp eq i8 %260, 0, !dbg !3887
  br i1 %261, label %262, label %267, !dbg !3887

; <label>:262:                                    ; preds = %256
  %263 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3887
  %264 = load i8, i8* %263, align 64, !dbg !3887
  %265 = icmp eq i8 %264, 0, !dbg !3887
  %266 = select i1 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %263, !dbg !3887
  br label %267, !dbg !3887

; <label>:267:                                    ; preds = %255, %256, %262
  %268 = phi i64 [ %258, %256 ], [ %258, %262 ], [ 0, %255 ]
  %269 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %256 ], [ %266, %262 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %255 ], !dbg !3887
  %270 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %268, i8* %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3887
  br label %287, !dbg !3887

; <label>:271:                                    ; preds = %250
  br i1 %254, label %272, label %283, !dbg !3888

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 5, !dbg !3888
  %274 = load i64, i64* %273, align 32, !dbg !3888
  %275 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 18, !dbg !3888
  %276 = load i8, i8* %275, align 8, !dbg !3888
  %277 = icmp eq i8 %276, 0, !dbg !3888
  br i1 %277, label %278, label %283, !dbg !3888

; <label>:278:                                    ; preds = %272
  %279 = getelementptr %struct.nk_thread, %struct.nk_thread* %238, i64 0, i32 25, i64 0, !dbg !3888
  %280 = load i8, i8* %279, align 64, !dbg !3888
  %281 = icmp eq i8 %280, 0, !dbg !3888
  %282 = select i1 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.6, i64 0, i64 0), i8* %279, !dbg !3888
  br label %283, !dbg !3888

; <label>:283:                                    ; preds = %271, %272, %278
  %284 = phi i64 [ %274, %272 ], [ %274, %278 ], [ 0, %271 ]
  %285 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.7, i64 0, i64 0), %272 ], [ %282, %278 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.8, i64 0, i64 0), %271 ], !dbg !3888
  %286 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0), i32 %241, i8* %251, i8* %253, i64 %284, i8* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3888
  br label %287

; <label>:287:                                    ; preds = %283, %267
  %288 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %288, metadata !2316, metadata !DIExpression()) #11, !dbg !3892
  %289 = icmp eq i64 %288, 0, !dbg !3893
  br i1 %289, label %320, label %290, !dbg !3894

; <label>:290:                                    ; preds = %287
  %291 = add i64 %288, 10, !dbg !3895
  %292 = inttoptr i64 %291 to i16*, !dbg !3896
  %293 = atomicrmw sub i16* %292, i16 1 seq_cst, !dbg !3897
  br label %320, !dbg !3898

; <label>:294:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 %229, metadata !3628, metadata !DIExpression()), !dbg !3899
  %295 = call i32 @nk_vc_is_active() #12, !dbg !3900
  %296 = icmp eq i32 %295, 0, !dbg !3900
  %297 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %297, metadata !2296, metadata !DIExpression()) #11, !dbg !3907
  %298 = icmp eq i64 %297, 0, !dbg !3908
  br i1 %298, label %304, label %299, !dbg !3909

; <label>:299:                                    ; preds = %294
  %300 = add i64 %297, 8, !dbg !3910
  %301 = inttoptr i64 %300 to i16*, !dbg !3911
  %302 = atomicrmw add i16* %301, i16 0 seq_cst, !dbg !3912
  %303 = icmp eq i16 %302, 0, !dbg !3913
  br i1 %303, label %304, label %305, !dbg !3914

; <label>:304:                                    ; preds = %294, %299
  br label %305, !dbg !3914

; <label>:305:                                    ; preds = %299, %304
  %306 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), %304 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i64 0, i64 0), %299 ]
  %307 = icmp eq i32 %229, 0, !dbg !3914
  %308 = select i1 %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.3, i64 0, i64 0), !dbg !3914
  br i1 %296, label %311, label %309, !dbg !3915

; <label>:309:                                    ; preds = %305
  %310 = call i32 (i8*, ...) @nk_vc_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3916
  br label %313, !dbg !3916

; <label>:311:                                    ; preds = %305
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.24, i64 0, i64 0), i8* %306, i8* %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 575) #12, !dbg !3918
  br label %313

; <label>:313:                                    ; preds = %311, %309
  %314 = call i64 @msr_read(i32 -1073741567) #12, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %314, metadata !2316, metadata !DIExpression()) #11, !dbg !3923
  %315 = icmp eq i64 %314, 0, !dbg !3924
  br i1 %315, label %320, label %316, !dbg !3925

; <label>:316:                                    ; preds = %313
  %317 = add i64 %314, 10, !dbg !3926
  %318 = inttoptr i64 %317 to i16*, !dbg !3927
  %319 = atomicrmw sub i16* %318, i16 1 seq_cst, !dbg !3928
  br label %320, !dbg !3929

; <label>:320:                                    ; preds = %316, %313, %290, %287
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.10, i64 0, i64 0), i32 576) #13, !dbg !3930
  unreachable, !dbg !3930

; <label>:321:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #11, !dbg !3843
  ret void, !dbg !3931
}

; Function Attrs: noredzone
declare dso_local i32 @nk_thread_start(void (i8*, i8**)*, i8*, i8**, i8 zeroext, i64, i8**, i32) local_unnamed_addr #3

; Function Attrs: noinline noredzone nounwind
define internal i32 @nk_fiber_start(void (i8*, i8**)*, i8*, i8**, i64, i8 zeroext, %struct.nk_fiber**) local_unnamed_addr #8 !dbg !584 {
  call void @llvm.dbg.value(metadata void (i8*, i8**)* %0, metadata !583, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8** %2, metadata !590, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %3, metadata !591, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8 %4, metadata !592, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %5, metadata !593, metadata !DIExpression()), !dbg !3937
  %7 = tail call i32 @nk_fiber_create(void (i8*, i8**)* %0, i8* %1, i8** %2, i64 %3, %struct.nk_fiber** %5) #10, !dbg !3938
  %8 = load %struct.nk_fiber*, %struct.nk_fiber** %5, align 8, !dbg !3939
  %9 = tail call i32 @nk_fiber_run(%struct.nk_fiber* %8, i8 zeroext %4) #10, !dbg !3940
  ret i32 0, !dbg !3941
}

; Function Attrs: noinline noredzone nounwind
define internal i32 @wrapper_nk_fiber_yield() local_unnamed_addr #8 !dbg !3942 {
  %1 = tail call i32 (i8*, ...) @nk_vc_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !3943
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3944
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !3949
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !3950
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !3950
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 1, !dbg !3951
  %7 = load %struct.nk_thread*, %struct.nk_thread** %6, align 8, !dbg !3951
  %8 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !3952, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !772, metadata !DIExpression()) #11, !dbg !3952
  call void @llvm.dbg.value(metadata %struct.nk_thread* %8, metadata !771, metadata !DIExpression()) #11, !dbg !3954
  %9 = icmp eq %struct.nk_thread* %7, %8, !dbg !3955
  br i1 %9, label %10, label %nk_fiber_yield.exit, !dbg !3956

; <label>:10:                                     ; preds = %0
  %11 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3957
  %12 = inttoptr i64 %11 to %struct.cpu*, !dbg !3962
  %13 = getelementptr inbounds %struct.cpu, %struct.cpu* %12, i64 0, i32 5, !dbg !3963
  %14 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %13, align 8, !dbg !3963
  %15 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %14, i64 0, i32 4, !dbg !3964
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1494, metadata !DIExpression()) #11, !dbg !3965
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !3966
  call void @llvm.dbg.value(metadata %struct.list_head* %15, metadata !1515, metadata !DIExpression()) #11, !dbg !3967
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i64 0, i32 0, !dbg !3969
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8, !dbg !3969
  %18 = icmp eq %struct.list_head* %17, %15, !dbg !3970
  br i1 %18, label %31, label %19, !dbg !3971

; <label>:19:                                     ; preds = %10
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !3972
  %20 = getelementptr %struct.list_head, %struct.list_head* %17, i64 -7, i32 1, !dbg !3972
  %21 = bitcast %struct.list_head** %20 to %struct.nk_fiber*, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1496, metadata !DIExpression()) #11, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1495, metadata !DIExpression()) #11, !dbg !3966
  %22 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 13, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !1527, metadata !DIExpression()) #11, !dbg !3974
  %23 = getelementptr inbounds %struct.list_head*, %struct.list_head** %20, i64 14, !dbg !3976
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8, !dbg !3976
  %25 = load %struct.list_head*, %struct.list_head** %22, align 8, !dbg !3977
  call void @llvm.dbg.value(metadata %struct.list_head* %24, metadata !1534, metadata !DIExpression()) #11, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.list_head* %25, metadata !1539, metadata !DIExpression()) #11, !dbg !3980
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i64 0, i32 1, !dbg !3981
  store %struct.list_head* %24, %struct.list_head** %26, align 8, !dbg !3982
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 0, i32 0, !dbg !3983
  store %struct.list_head* %25, %struct.list_head** %27, align 8, !dbg !3984
  call void @llvm.dbg.value(metadata %struct.list_head** %22, metadata !780, metadata !DIExpression()) #11, !dbg !3985
  %28 = bitcast %struct.list_head** %22 to %struct.list_head***, !dbg !3987
  store %struct.list_head** %22, %struct.list_head*** %28, align 8, !dbg !3987
  %29 = bitcast %struct.list_head** %23 to %struct.list_head***, !dbg !3988
  store %struct.list_head** %22, %struct.list_head*** %29, align 8, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !1495, metadata !DIExpression()) #11, !dbg !3966
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %21, metadata !3244, metadata !DIExpression()) #11, !dbg !3989
  %30 = icmp eq %struct.list_head** %20, null, !dbg !3990
  br i1 %30, label %31, label %52, !dbg !3991

; <label>:31:                                     ; preds = %19, %10
  %32 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3992
  %33 = inttoptr i64 %32 to %struct.cpu*, !dbg !3996
  %34 = getelementptr inbounds %struct.cpu, %struct.cpu* %33, i64 0, i32 5, !dbg !3997
  %35 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %34, align 8, !dbg !3997
  %36 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %35, i64 0, i32 2, !dbg !3998
  %37 = load %struct.nk_fiber*, %struct.nk_fiber** %36, align 8, !dbg !3998
  %38 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !3999
  %39 = inttoptr i64 %38 to %struct.cpu*, !dbg !4003
  %40 = getelementptr inbounds %struct.cpu, %struct.cpu* %39, i64 0, i32 5, !dbg !4004
  %41 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %40, align 8, !dbg !4004
  %42 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %41, i64 0, i32 3, !dbg !4005
  %43 = load %struct.nk_fiber*, %struct.nk_fiber** %42, align 8, !dbg !4005
  %44 = icmp eq %struct.nk_fiber* %37, %43, !dbg !4006
  br i1 %44, label %nk_fiber_yield.exit, label %45, !dbg !4007

; <label>:45:                                     ; preds = %31
  %46 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4008
  %47 = inttoptr i64 %46 to %struct.cpu*, !dbg !4012
  %48 = getelementptr inbounds %struct.cpu, %struct.cpu* %47, i64 0, i32 5, !dbg !4013
  %49 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %48, align 8, !dbg !4013
  %50 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %49, i64 0, i32 3, !dbg !4014
  %51 = load %struct.nk_fiber*, %struct.nk_fiber** %50, align 8, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %51, metadata !3244, metadata !DIExpression()) #11, !dbg !3989
  br label %52, !dbg !4015

; <label>:52:                                     ; preds = %45, %19
  %53 = phi %struct.nk_fiber* [ %51, %45 ], [ %21, %19 ], !dbg !4016
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %53, metadata !3244, metadata !DIExpression()) #11, !dbg !3989
  %54 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %53) #12, !dbg !4017
  br label %nk_fiber_yield.exit, !dbg !4018

nk_fiber_yield.exit:                              ; preds = %0, %31, %52
  %55 = phi i32 [ 1, %0 ], [ 0, %31 ], [ 0, %52 ], !dbg !4016
  ret i32 %55, !dbg !4019
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_yield_to(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4020 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4022, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !2138, metadata !DIExpression()) #11, !dbg !4027
  %2 = tail call %struct.sys_info* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 72) #11, !dbg !4029, !srcloc !2159
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2142, metadata !DIExpression()) #11, !dbg !4029
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2140, metadata !DIExpression()) #11, !dbg !4030
  call void @llvm.dbg.value(metadata %struct.sys_info* %2, metadata !2139, metadata !DIExpression()) #11, !dbg !4031
  %3 = getelementptr inbounds %struct.sys_info, %struct.sys_info* %2, i64 0, i32 2, !dbg !4032
  %4 = load i32, i32* %3, align 8, !dbg !4032
  call void @llvm.dbg.value(metadata i32 %4, metadata !2144, metadata !DIExpression()) #11, !dbg !4033
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #11, !dbg !4034
  %5 = icmp sgt i32 %4, 0, !dbg !4035
  br i1 %5, label %6, label %30, !dbg !4036

; <label>:6:                                      ; preds = %1
  %7 = sext i32 %4 to i64, !dbg !4037
  br label %8, !dbg !4037

; <label>:8:                                      ; preds = %27, %6
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2147, metadata !DIExpression()) #11, !dbg !4034
  %10 = getelementptr %struct.sys_info, %struct.sys_info* %2, i64 0, i32 0, i64 %9, !dbg !4037
  %11 = load %struct.cpu*, %struct.cpu** %10, align 8, !dbg !4037
  %12 = getelementptr inbounds %struct.cpu, %struct.cpu* %11, i64 0, i32 5, !dbg !4038
  %13 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %12, align 8, !dbg !4038
  %14 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %13, i64 0, i32 4, !dbg !4039
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2145, metadata !DIExpression()) #11, !dbg !4040
  %15 = bitcast %struct.list_head* %14 to i8**, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.list_head* %14, metadata !2149, metadata !DIExpression(DW_OP_deref)) #11, !dbg !4041
  call void @llvm.dbg.value(metadata i8** %15, metadata !2146, metadata !DIExpression(DW_OP_deref, DW_OP_constu, 104, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !4042
  %16 = load i8*, i8** %15, align 8, !dbg !4043
  br label %17, !dbg !4044

; <label>:17:                                     ; preds = %23, %8
  %18 = phi i8* [ %16, %8 ], [ %21, %23 ], !dbg !4043
  %19 = bitcast i8* %18 to %struct.list_head*, !dbg !4045
  %20 = bitcast i8* %18 to i8**, !dbg !4045
  %21 = load i8*, i8** %20, align 8, !dbg !4045
  tail call void @llvm.prefetch(i8* %21, i32 0, i32 3, i32 1) #11, !dbg !4045
  %22 = icmp eq %struct.list_head* %14, %19, !dbg !4045
  br i1 %22, label %27, label %23, !dbg !4044

; <label>:23:                                     ; preds = %17
  %24 = getelementptr i8, i8* %18, i64 -104, !dbg !4043
  %25 = bitcast i8* %24 to %struct.nk_fiber*, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !2146, metadata !DIExpression()) #11, !dbg !4042
  %26 = icmp eq %struct.nk_fiber* %25, %0, !dbg !4046
  br i1 %26, label %75, label %17, !dbg !4047, !llvm.loop !2180

; <label>:27:                                     ; preds = %17
  %28 = add nuw nsw i64 %9, 1, !dbg !4048
  call void @llvm.dbg.value(metadata i32 undef, metadata !2147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !4034
  %29 = icmp slt i64 %28, %7, !dbg !4035
  br i1 %29, label %8, label %30, !dbg !4036, !llvm.loop !2183

; <label>:30:                                     ; preds = %27, %1
  %31 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4049
  %32 = inttoptr i64 %31 to %struct.cpu*, !dbg !4054
  %33 = getelementptr inbounds %struct.cpu, %struct.cpu* %32, i64 0, i32 5, !dbg !4055
  %34 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %33, align 8, !dbg !4055
  %35 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %34, i64 0, i32 4, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1494, metadata !DIExpression()) #11, !dbg !4057
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !4058
  call void @llvm.dbg.value(metadata %struct.list_head* %35, metadata !1515, metadata !DIExpression()) #11, !dbg !4059
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 0, i32 0, !dbg !4061
  %37 = load %struct.list_head*, %struct.list_head** %36, align 8, !dbg !4061
  %38 = icmp eq %struct.list_head* %37, %35, !dbg !4062
  br i1 %38, label %51, label %39, !dbg !4063

; <label>:39:                                     ; preds = %30
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4064
  %40 = getelementptr %struct.list_head, %struct.list_head* %37, i64 -7, i32 1, !dbg !4064
  %41 = bitcast %struct.list_head** %40 to %struct.nk_fiber*, !dbg !4064
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1496, metadata !DIExpression()) #11, !dbg !4064
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1495, metadata !DIExpression()) #11, !dbg !4058
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 13, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !1527, metadata !DIExpression()) #11, !dbg !4066
  %43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %40, i64 14, !dbg !4068
  %44 = load %struct.list_head*, %struct.list_head** %43, align 8, !dbg !4068
  %45 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4069
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1534, metadata !DIExpression()) #11, !dbg !4070
  call void @llvm.dbg.value(metadata %struct.list_head* %45, metadata !1539, metadata !DIExpression()) #11, !dbg !4072
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %45, i64 0, i32 1, !dbg !4073
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4074
  %47 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 0, !dbg !4075
  store %struct.list_head* %45, %struct.list_head** %47, align 8, !dbg !4076
  call void @llvm.dbg.value(metadata %struct.list_head** %42, metadata !780, metadata !DIExpression()) #11, !dbg !4077
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4079
  store %struct.list_head** %42, %struct.list_head*** %48, align 8, !dbg !4079
  %49 = bitcast %struct.list_head** %43 to %struct.list_head***, !dbg !4080
  store %struct.list_head** %42, %struct.list_head*** %49, align 8, !dbg !4080
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !1495, metadata !DIExpression()) #11, !dbg !4058
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %41, metadata !4023, metadata !DIExpression()), !dbg !4081
  %50 = icmp eq %struct.list_head** %40, null, !dbg !4082
  br i1 %50, label %51, label %72, !dbg !4084

; <label>:51:                                     ; preds = %30, %39
  %52 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4085
  %53 = inttoptr i64 %52 to %struct.cpu*, !dbg !4091
  %54 = getelementptr inbounds %struct.cpu, %struct.cpu* %53, i64 0, i32 5, !dbg !4092
  %55 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %54, align 8, !dbg !4092
  %56 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %55, i64 0, i32 2, !dbg !4093
  %57 = load %struct.nk_fiber*, %struct.nk_fiber** %56, align 8, !dbg !4093
  %58 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4094
  %59 = inttoptr i64 %58 to %struct.cpu*, !dbg !4098
  %60 = getelementptr inbounds %struct.cpu, %struct.cpu* %59, i64 0, i32 5, !dbg !4099
  %61 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %60, align 8, !dbg !4099
  %62 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %61, i64 0, i32 3, !dbg !4100
  %63 = load %struct.nk_fiber*, %struct.nk_fiber** %62, align 8, !dbg !4100
  %64 = icmp eq %struct.nk_fiber* %57, %63, !dbg !4101
  br i1 %64, label %84, label %65, !dbg !4102

; <label>:65:                                     ; preds = %51
  %66 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4103
  %67 = inttoptr i64 %66 to %struct.cpu*, !dbg !4108
  %68 = getelementptr inbounds %struct.cpu, %struct.cpu* %67, i64 0, i32 5, !dbg !4109
  %69 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %68, align 8, !dbg !4109
  %70 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %69, i64 0, i32 3, !dbg !4110
  %71 = load %struct.nk_fiber*, %struct.nk_fiber** %70, align 8, !dbg !4110
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %71, metadata !4023, metadata !DIExpression()), !dbg !4081
  br label %72, !dbg !4111

; <label>:72:                                     ; preds = %65, %39
  %73 = phi %struct.nk_fiber* [ %71, %65 ], [ %41, %39 ], !dbg !4112
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %73, metadata !4023, metadata !DIExpression()), !dbg !4081
  %74 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %73) #10, !dbg !4113
  br label %84, !dbg !4114

; <label>:75:                                     ; preds = %23
  %76 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, !dbg !4115
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !1527, metadata !DIExpression()) #11, !dbg !4116
  %77 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 12, i32 1, !dbg !4118
  %78 = load %struct.list_head*, %struct.list_head** %77, align 8, !dbg !4118
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %76, i64 0, i32 0, !dbg !4119
  %80 = load %struct.list_head*, %struct.list_head** %79, align 8, !dbg !4119
  call void @llvm.dbg.value(metadata %struct.list_head* %78, metadata !1534, metadata !DIExpression()) #11, !dbg !4120
  call void @llvm.dbg.value(metadata %struct.list_head* %80, metadata !1539, metadata !DIExpression()) #11, !dbg !4122
  %81 = getelementptr inbounds %struct.list_head, %struct.list_head* %80, i64 0, i32 1, !dbg !4123
  store %struct.list_head* %78, %struct.list_head** %81, align 8, !dbg !4124
  %82 = getelementptr inbounds %struct.list_head, %struct.list_head* %78, i64 0, i32 0, !dbg !4125
  store %struct.list_head* %80, %struct.list_head** %82, align 8, !dbg !4126
  call void @llvm.dbg.value(metadata %struct.list_head* %76, metadata !780, metadata !DIExpression()) #11, !dbg !4127
  store %struct.list_head* %76, %struct.list_head** %79, align 8, !dbg !4129
  store %struct.list_head* %76, %struct.list_head** %77, align 8, !dbg !4130
  %83 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4131
  br label %84, !dbg !4132

; <label>:84:                                     ; preds = %72, %51, %75
  %85 = phi i32 [ 0, %75 ], [ 1, %72 ], [ 0, %51 ], !dbg !4133
  ret i32 %85, !dbg !4134
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield(i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4135 {
  call void @llvm.dbg.value(metadata i8 (i8*)* %0, metadata !4142, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %1, metadata !4143, metadata !DIExpression()), !dbg !4145
  %3 = tail call zeroext i8 %0(i8* %1) #12, !dbg !4146
  %4 = icmp eq i8 %3, 0, !dbg !4146
  br i1 %4, label %60, label %5, !dbg !4148

; <label>:5:                                      ; preds = %2
  %6 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4149
  %7 = inttoptr i64 %6 to %struct.cpu*, !dbg !4155
  %8 = getelementptr inbounds %struct.cpu, %struct.cpu* %7, i64 0, i32 5, !dbg !4156
  %9 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %8, align 8, !dbg !4156
  %10 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %9, i64 0, i32 1, !dbg !4157
  %11 = load %struct.nk_thread*, %struct.nk_thread** %10, align 8, !dbg !4157
  %12 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4158, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !772, metadata !DIExpression()) #11, !dbg !4158
  call void @llvm.dbg.value(metadata %struct.nk_thread* %12, metadata !771, metadata !DIExpression()) #11, !dbg !4160
  %13 = icmp eq %struct.nk_thread* %11, %12, !dbg !4161
  br i1 %13, label %14, label %nk_fiber_yield.exit, !dbg !4162

; <label>:14:                                     ; preds = %5
  %15 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4163
  %16 = inttoptr i64 %15 to %struct.cpu*, !dbg !4168
  %17 = getelementptr inbounds %struct.cpu, %struct.cpu* %16, i64 0, i32 5, !dbg !4169
  %18 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %17, align 8, !dbg !4169
  %19 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %18, i64 0, i32 4, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1494, metadata !DIExpression()) #11, !dbg !4171
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.list_head* %19, metadata !1515, metadata !DIExpression()) #11, !dbg !4173
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i64 0, i32 0, !dbg !4175
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8, !dbg !4175
  %22 = icmp eq %struct.list_head* %21, %19, !dbg !4176
  br i1 %22, label %35, label %23, !dbg !4177

; <label>:23:                                     ; preds = %14
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4178
  %24 = getelementptr %struct.list_head, %struct.list_head* %21, i64 -7, i32 1, !dbg !4178
  %25 = bitcast %struct.list_head** %24 to %struct.nk_fiber*, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1496, metadata !DIExpression()) #11, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1495, metadata !DIExpression()) #11, !dbg !4172
  %26 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 13, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !1527, metadata !DIExpression()) #11, !dbg !4180
  %27 = getelementptr inbounds %struct.list_head*, %struct.list_head** %24, i64 14, !dbg !4182
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8, !dbg !4182
  %29 = load %struct.list_head*, %struct.list_head** %26, align 8, !dbg !4183
  call void @llvm.dbg.value(metadata %struct.list_head* %28, metadata !1534, metadata !DIExpression()) #11, !dbg !4184
  call void @llvm.dbg.value(metadata %struct.list_head* %29, metadata !1539, metadata !DIExpression()) #11, !dbg !4186
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i64 0, i32 1, !dbg !4187
  store %struct.list_head* %28, %struct.list_head** %30, align 8, !dbg !4188
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i64 0, i32 0, !dbg !4189
  store %struct.list_head* %29, %struct.list_head** %31, align 8, !dbg !4190
  call void @llvm.dbg.value(metadata %struct.list_head** %26, metadata !780, metadata !DIExpression()) #11, !dbg !4191
  %32 = bitcast %struct.list_head** %26 to %struct.list_head***, !dbg !4193
  store %struct.list_head** %26, %struct.list_head*** %32, align 8, !dbg !4193
  %33 = bitcast %struct.list_head** %27 to %struct.list_head***, !dbg !4194
  store %struct.list_head** %26, %struct.list_head*** %33, align 8, !dbg !4194
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !1495, metadata !DIExpression()) #11, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %25, metadata !3244, metadata !DIExpression()) #11, !dbg !4195
  %34 = icmp eq %struct.list_head** %24, null, !dbg !4196
  br i1 %34, label %35, label %56, !dbg !4197

; <label>:35:                                     ; preds = %23, %14
  %36 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4198
  %37 = inttoptr i64 %36 to %struct.cpu*, !dbg !4202
  %38 = getelementptr inbounds %struct.cpu, %struct.cpu* %37, i64 0, i32 5, !dbg !4203
  %39 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %38, align 8, !dbg !4203
  %40 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %39, i64 0, i32 2, !dbg !4204
  %41 = load %struct.nk_fiber*, %struct.nk_fiber** %40, align 8, !dbg !4204
  %42 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4205
  %43 = inttoptr i64 %42 to %struct.cpu*, !dbg !4209
  %44 = getelementptr inbounds %struct.cpu, %struct.cpu* %43, i64 0, i32 5, !dbg !4210
  %45 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %44, align 8, !dbg !4210
  %46 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %45, i64 0, i32 3, !dbg !4211
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %46, align 8, !dbg !4211
  %48 = icmp eq %struct.nk_fiber* %41, %47, !dbg !4212
  br i1 %48, label %nk_fiber_yield.exit, label %49, !dbg !4213

; <label>:49:                                     ; preds = %35
  %50 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4214
  %51 = inttoptr i64 %50 to %struct.cpu*, !dbg !4218
  %52 = getelementptr inbounds %struct.cpu, %struct.cpu* %51, i64 0, i32 5, !dbg !4219
  %53 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %52, align 8, !dbg !4219
  %54 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %53, i64 0, i32 3, !dbg !4220
  %55 = load %struct.nk_fiber*, %struct.nk_fiber** %54, align 8, !dbg !4220
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %55, metadata !3244, metadata !DIExpression()) #11, !dbg !4195
  br label %56, !dbg !4221

; <label>:56:                                     ; preds = %49, %23
  %57 = phi %struct.nk_fiber* [ %55, %49 ], [ %25, %23 ], !dbg !4222
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %57, metadata !3244, metadata !DIExpression()) #11, !dbg !4195
  %58 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %57) #12, !dbg !4223
  br label %nk_fiber_yield.exit, !dbg !4224

nk_fiber_yield.exit:                              ; preds = %5, %35, %56
  %59 = phi i32 [ 1, %5 ], [ 0, %35 ], [ 0, %56 ], !dbg !4222
  br label %60, !dbg !4225

; <label>:60:                                     ; preds = %2, %nk_fiber_yield.exit
  %61 = phi i32 [ %59, %nk_fiber_yield.exit ], [ 1, %2 ], !dbg !4226
  ret i32 %61, !dbg !4227
}

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_conditional_yield_to(%struct.nk_fiber*, i8 (i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !4228 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4232, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 (i8*)* %1, metadata !4233, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8* %2, metadata !4234, metadata !DIExpression()), !dbg !4237
  %4 = tail call zeroext i8 %1(i8* %2) #12, !dbg !4238
  %5 = icmp eq i8 %4, 0, !dbg !4238
  br i1 %5, label %8, label %6, !dbg !4240

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @nk_fiber_yield_to(%struct.nk_fiber* %0) #10, !dbg !4241
  br label %8, !dbg !4243

; <label>:8:                                      ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 1, %3 ], !dbg !4244
  ret i32 %9, !dbg !4245
}

; Function Attrs: noredzone nounwind
define internal %struct.nk_fiber* @__nk_fiber_fork() local_unnamed_addr #0 !dbg !4246 {
  %1 = alloca %struct.nk_fiber*, align 8
  %2 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4265
  %3 = inttoptr i64 %2 to %struct.cpu*, !dbg !4269
  %4 = getelementptr inbounds %struct.cpu, %struct.cpu* %3, i64 0, i32 5, !dbg !4270
  %5 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %4, align 8, !dbg !4270
  %6 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %5, i64 0, i32 2, !dbg !4271
  %7 = load %struct.nk_fiber*, %struct.nk_fiber** %6, align 8, !dbg !4271
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %7, metadata !4248, metadata !DIExpression()), !dbg !4272
  %8 = tail call i64 asm sideeffect "movq %rsp, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4273, !srcloc !4274
  call void @llvm.dbg.value(metadata i64 %8, metadata !4255, metadata !DIExpression()), !dbg !4275
  %9 = tail call i8* @llvm.frameaddress(i32 0), !dbg !4276
  call void @llvm.dbg.value(metadata i8* %9, metadata !4256, metadata !DIExpression()), !dbg !4277
  %10 = tail call i8* @llvm.frameaddress(i32 1), !dbg !4278
  call void @llvm.dbg.value(metadata i8* %10, metadata !4257, metadata !DIExpression()), !dbg !4279
  %11 = tail call i8* @llvm.frameaddress(i32 2), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %11, metadata !4258, metadata !DIExpression()), !dbg !4281
  %12 = getelementptr i8, i8* %9, i64 8, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %12, metadata !4259, metadata !DIExpression()), !dbg !4283
  %13 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 1, !dbg !4284
  %14 = load i8*, i8** %13, align 8, !dbg !4284
  %15 = icmp ugt i8* %11, %14, !dbg !4286
  %16 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %7, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !dbg !4287
  %18 = getelementptr i8, i8* %14, i64 %17, !dbg !4288
  %19 = icmp ult i8* %11, %18, !dbg !4289
  %20 = and i1 %15, %19, !dbg !4290
  %21 = select i1 %20, i8* %11, i8* %10, !dbg !4290
  call void @llvm.dbg.value(metadata i8* %21, metadata !4258, metadata !DIExpression()), !dbg !4281
  %22 = getelementptr i8, i8* %9, i64 80, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %22, metadata !4260, metadata !DIExpression()), !dbg !4292
  %23 = getelementptr i8, i8* %21, i64 8, !dbg !4293
  %24 = ptrtoint i8* %23 to i64, !dbg !4294
  %25 = ptrtoint i8* %12 to i64, !dbg !4294
  %26 = sub i64 %24, %25, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %26, metadata !4249, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !4295
  %27 = ptrtoint i8* %10 to i64, !dbg !4296
  call void @llvm.dbg.value(metadata i64 undef, metadata !4251, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 72, metadata !4252, metadata !DIExpression()), !dbg !4298
  %28 = bitcast i8* %22 to i64*, !dbg !4299
  %29 = load i64, i64* %28, align 8, !dbg !4299
  %30 = sub i64 %29, %25, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %30, metadata !4253, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %17, metadata !4250, metadata !DIExpression()), !dbg !4302
  %31 = bitcast %struct.nk_fiber** %1 to i8*, !dbg !4303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4303
  call void @llvm.dbg.value(metadata %struct.nk_fiber** %1, metadata !4261, metadata !DIExpression(DW_OP_deref)), !dbg !4304
  %32 = call i32 @nk_fiber_create(void (i8*, i8**)* null, i8* null, i8** null, i64 %17, %struct.nk_fiber** nonnull %1) #10, !dbg !4305
  %33 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4306
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !4261, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %33, metadata !657, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), metadata !662, metadata !DIExpression()), !dbg !4309
  %34 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %33, i64 0, i32 0, !dbg !4310
  %35 = load i64, i64* %34, align 8, !dbg !4311
  %36 = add i64 %35, -8, !dbg !4311
  store i64 %36, i64* %34, align 8, !dbg !4311
  %37 = inttoptr i64 %36 to i64*, !dbg !4312
  store i64 ptrtoint (void ()* @_nk_fiber_cleanup to i64), i64* %37, align 8, !dbg !4313
  %38 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4314
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %38, metadata !4261, metadata !DIExpression()), !dbg !4304
  %39 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %38, i64 0, i32 1, !dbg !4315
  %40 = load i8*, i8** %39, align 8, !dbg !4315
  call void @llvm.dbg.value(metadata i8* %40, metadata !4254, metadata !DIExpression()), !dbg !4316
  %41 = getelementptr i8, i8* %40, i64 %17, !dbg !4317
  %42 = sub i64 -16, %26, !dbg !4318
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !4318
  %44 = call i8* @memcpy(i8* %43, i8* %12, i64 %26) #12, !dbg !4319
  %45 = getelementptr i8, i8* %43, i64 8, !dbg !4320
  %46 = ptrtoint i8* %45 to i64, !dbg !4321
  %47 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4322
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %47, metadata !4261, metadata !DIExpression()), !dbg !4304
  %48 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %47, i64 0, i32 0, !dbg !4323
  store i64 %46, i64* %48, align 8, !dbg !4324
  %49 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4325
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %49, metadata !4261, metadata !DIExpression()), !dbg !4304
  %50 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %49, i64 0, i32 0, !dbg !4326
  %51 = load i64, i64* %50, align 8, !dbg !4326
  %52 = add i64 %51, 64, !dbg !4327
  %53 = inttoptr i64 %52 to i8**, !dbg !4328
  call void @llvm.dbg.value(metadata i8** %53, metadata !4262, metadata !DIExpression()), !dbg !4329
  %54 = add i64 %30, %51, !dbg !4330
  %55 = inttoptr i64 %54 to i8*, !dbg !4331
  store i8* %55, i8** %53, align 8, !dbg !4332
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4333
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %56, metadata !4261, metadata !DIExpression()), !dbg !4304
  %57 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %56, i64 0, i32 0, !dbg !4334
  %58 = load i64, i64* %57, align 8, !dbg !4334
  %59 = sub i64 8, %25, !dbg !4296
  %60 = add i64 %59, %27, !dbg !4335
  %61 = add i64 %60, %58, !dbg !4336
  %62 = inttoptr i64 %61 to i8**, !dbg !4337
  call void @llvm.dbg.value(metadata i8** %62, metadata !4263, metadata !DIExpression()), !dbg !4338
  %63 = getelementptr i8*, i8** %62, i64 -1, !dbg !4339
  call void @llvm.dbg.value(metadata i8** %63, metadata !4264, metadata !DIExpression()), !dbg !4340
  %64 = bitcast i8** %63 to <2 x i8*>*, !dbg !4341
  store <2 x i8*> <i8* bitcast (void ()* @_nk_fiber_cleanup to i8*), i8* null>, <2 x i8*>* %64, align 8, !dbg !4341
  %65 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4342
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %65, metadata !4261, metadata !DIExpression()), !dbg !4304
  %66 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %65, i64 0, i32 0, !dbg !4343
  %67 = load i64, i64* %66, align 8, !dbg !4343
  %68 = add i64 %67, 112, !dbg !4344
  %69 = inttoptr i64 %68 to i64*, !dbg !4345
  store i64 0, i64* %69, align 8, !dbg !4346
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4347
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !4261, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !1599, metadata !DIExpression()) #11, !dbg !4348
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()) #11, !dbg !4350
  %71 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4351
  %72 = inttoptr i64 %71 to %struct.cpu*, !dbg !4355
  call void @llvm.dbg.value(metadata %struct.cpu* %72, metadata !1605, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_stack_value)) #11, !dbg !4356
  %73 = getelementptr inbounds %struct.cpu, %struct.cpu* %72, i64 0, i32 5, !dbg !4357
  %74 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %73, align 8, !dbg !4357
  %75 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %74, i64 0, i32 1, !dbg !4357
  %76 = load %struct.nk_thread*, %struct.nk_thread** %75, align 8, !dbg !4357
  call void @llvm.dbg.value(metadata %struct.nk_thread* %76, metadata !1605, metadata !DIExpression()) #11, !dbg !4356
  %77 = call i64 @msr_read(i32 -1073741567) #12, !dbg !4358
  %78 = inttoptr i64 %77 to %struct.cpu*, !dbg !4362
  %79 = getelementptr inbounds %struct.cpu, %struct.cpu* %78, i64 0, i32 5, !dbg !4363
  %80 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %79, align 8, !dbg !4363
  %81 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, !dbg !4364
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1606, metadata !DIExpression()) #11, !dbg !4365
  %82 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 6, !dbg !4366
  store i32 1, i32* %82, align 4, !dbg !4367
  %83 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, !dbg !4368
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1670, metadata !DIExpression()) #11, !dbg !4369
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1673, metadata !DIExpression()) #11, !dbg !4371
  %84 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %80, i64 0, i32 4, i32 1, !dbg !4372
  %85 = load %struct.list_head*, %struct.list_head** %84, align 8, !dbg !4372
  call void @llvm.dbg.value(metadata %struct.list_head* %83, metadata !1678, metadata !DIExpression()) #11, !dbg !4373
  call void @llvm.dbg.value(metadata %struct.list_head* %85, metadata !1683, metadata !DIExpression()) #11, !dbg !4375
  call void @llvm.dbg.value(metadata %struct.list_head* %81, metadata !1684, metadata !DIExpression()) #11, !dbg !4376
  store %struct.list_head* %83, %struct.list_head** %84, align 8, !dbg !4377
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %83, i64 0, i32 0, !dbg !4378
  store %struct.list_head* %81, %struct.list_head** %86, align 8, !dbg !4379
  %87 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %70, i64 0, i32 12, i32 1, !dbg !4380
  store %struct.list_head* %85, %struct.list_head** %87, align 8, !dbg !4381
  %88 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i64 0, i32 0, !dbg !4382
  store %struct.list_head* %83, %struct.list_head** %88, align 8, !dbg !4383
  %89 = getelementptr inbounds %struct.nk_thread, %struct.nk_thread* %76, i64 0, i32 13, !dbg !4384
  %90 = load %struct.nk_timer*, %struct.nk_timer** %89, align 16, !dbg !4384
  %91 = icmp eq %struct.nk_timer* %90, null, !dbg !4385
  br i1 %91, label %94, label %92, !dbg !4386

; <label>:92:                                     ; preds = %0
  %93 = call i32 @nk_timer_cancel(%struct.nk_timer* nonnull %90) #12, !dbg !4387
  br label %94, !dbg !4388

; <label>:94:                                     ; preds = %0, %92
  %95 = load %struct.nk_fiber*, %struct.nk_fiber** %1, align 8, !dbg !4389
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %95, metadata !4261, metadata !DIExpression()), !dbg !4304
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #11, !dbg !4390
  ret %struct.nk_fiber* %95, !dbg !4391
}

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) #9

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i32 @nk_fiber_join(%struct.nk_fiber*) local_unnamed_addr #0 !dbg !4392 {
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %0, metadata !4394, metadata !DIExpression()), !dbg !4397
  %2 = icmp eq %struct.nk_fiber* %0, null, !dbg !4398
  br i1 %2, label %75, label %3, !dbg !4400

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4401
  %5 = inttoptr i64 %4 to %struct.cpu*, !dbg !4405
  %6 = getelementptr inbounds %struct.cpu, %struct.cpu* %5, i64 0, i32 5, !dbg !4406
  %7 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %6, align 8, !dbg !4406
  %8 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %7, i64 0, i32 2, !dbg !4407
  %9 = load %struct.nk_fiber*, %struct.nk_fiber** %8, align 8, !dbg !4407
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %9, metadata !4395, metadata !DIExpression()), !dbg !4408
  %10 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, !dbg !4409
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !4396, metadata !DIExpression()), !dbg !4410
  %11 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, !dbg !4411
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1670, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1673, metadata !DIExpression()), !dbg !4414
  %12 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 9, i32 1, !dbg !4415
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8, !dbg !4415
  call void @llvm.dbg.value(metadata %struct.list_head* %11, metadata !1678, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata %struct.list_head* %13, metadata !1683, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata %struct.list_head* %10, metadata !1684, metadata !DIExpression()), !dbg !4419
  store %struct.list_head* %11, %struct.list_head** %12, align 8, !dbg !4420
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i64 0, i32 0, !dbg !4421
  store %struct.list_head* %10, %struct.list_head** %14, align 8, !dbg !4422
  %15 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 10, i32 1, !dbg !4423
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4424
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i64 0, i32 0, !dbg !4425
  store %struct.list_head* %11, %struct.list_head** %16, align 8, !dbg !4426
  %17 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %0, i64 0, i32 11, !dbg !4427
  %18 = load i32, i32* %17, align 8, !dbg !4428
  %19 = add i32 %18, 1, !dbg !4428
  store i32 %19, i32* %17, align 8, !dbg !4428
  %20 = getelementptr inbounds %struct.nk_fiber, %struct.nk_fiber* %9, i64 0, i32 6, !dbg !4429
  store i32 3, i32* %20, align 4, !dbg !4430
  %21 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4431
  %22 = inttoptr i64 %21 to %struct.cpu*, !dbg !4436
  %23 = getelementptr inbounds %struct.cpu, %struct.cpu* %22, i64 0, i32 5, !dbg !4437
  %24 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %23, align 8, !dbg !4437
  %25 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %24, i64 0, i32 1, !dbg !4438
  %26 = load %struct.nk_thread*, %struct.nk_thread** %25, align 8, !dbg !4438
  %27 = tail call %struct.nk_thread* asm sideeffect "movq  %gs:${1:P}, $0", "=r,n,~{dirflag},~{fpsr},~{flags}"(i64 0) #11, !dbg !4439, !srcloc !774
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !772, metadata !DIExpression()) #11, !dbg !4439
  call void @llvm.dbg.value(metadata %struct.nk_thread* %27, metadata !771, metadata !DIExpression()) #11, !dbg !4441
  %28 = icmp eq %struct.nk_thread* %26, %27, !dbg !4442
  br i1 %28, label %29, label %nk_fiber_yield.exit, !dbg !4443

; <label>:29:                                     ; preds = %3
  %30 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4444
  %31 = inttoptr i64 %30 to %struct.cpu*, !dbg !4449
  %32 = getelementptr inbounds %struct.cpu, %struct.cpu* %31, i64 0, i32 5, !dbg !4450
  %33 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %32, align 8, !dbg !4450
  %34 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %33, i64 0, i32 4, !dbg !4451
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1494, metadata !DIExpression()) #11, !dbg !4452
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1495, metadata !DIExpression()) #11, !dbg !4453
  call void @llvm.dbg.value(metadata %struct.list_head* %34, metadata !1515, metadata !DIExpression()) #11, !dbg !4454
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 0, i32 0, !dbg !4456
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8, !dbg !4456
  %37 = icmp eq %struct.list_head* %36, %34, !dbg !4457
  br i1 %37, label %50, label %38, !dbg !4458

; <label>:38:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct.nk_fiber* null, metadata !1496, metadata !DIExpression()) #11, !dbg !4459
  %39 = getelementptr %struct.list_head, %struct.list_head* %36, i64 -7, i32 1, !dbg !4459
  %40 = bitcast %struct.list_head** %39 to %struct.nk_fiber*, !dbg !4459
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1496, metadata !DIExpression()) #11, !dbg !4459
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1495, metadata !DIExpression()) #11, !dbg !4453
  %41 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 13, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !1527, metadata !DIExpression()) #11, !dbg !4461
  %42 = getelementptr inbounds %struct.list_head*, %struct.list_head** %39, i64 14, !dbg !4463
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8, !dbg !4463
  %44 = load %struct.list_head*, %struct.list_head** %41, align 8, !dbg !4464
  call void @llvm.dbg.value(metadata %struct.list_head* %43, metadata !1534, metadata !DIExpression()) #11, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.list_head* %44, metadata !1539, metadata !DIExpression()) #11, !dbg !4467
  %45 = getelementptr inbounds %struct.list_head, %struct.list_head* %44, i64 0, i32 1, !dbg !4468
  store %struct.list_head* %43, %struct.list_head** %45, align 8, !dbg !4469
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 0, i32 0, !dbg !4470
  store %struct.list_head* %44, %struct.list_head** %46, align 8, !dbg !4471
  call void @llvm.dbg.value(metadata %struct.list_head** %41, metadata !780, metadata !DIExpression()) #11, !dbg !4472
  %47 = bitcast %struct.list_head** %41 to %struct.list_head***, !dbg !4474
  store %struct.list_head** %41, %struct.list_head*** %47, align 8, !dbg !4474
  %48 = bitcast %struct.list_head** %42 to %struct.list_head***, !dbg !4475
  store %struct.list_head** %41, %struct.list_head*** %48, align 8, !dbg !4475
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !1495, metadata !DIExpression()) #11, !dbg !4453
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %40, metadata !3244, metadata !DIExpression()) #11, !dbg !4476
  %49 = icmp eq %struct.list_head** %39, null, !dbg !4477
  br i1 %49, label %50, label %71, !dbg !4478

; <label>:50:                                     ; preds = %38, %29
  %51 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4479
  %52 = inttoptr i64 %51 to %struct.cpu*, !dbg !4483
  %53 = getelementptr inbounds %struct.cpu, %struct.cpu* %52, i64 0, i32 5, !dbg !4484
  %54 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %53, align 8, !dbg !4484
  %55 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %54, i64 0, i32 2, !dbg !4485
  %56 = load %struct.nk_fiber*, %struct.nk_fiber** %55, align 8, !dbg !4485
  %57 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4486
  %58 = inttoptr i64 %57 to %struct.cpu*, !dbg !4490
  %59 = getelementptr inbounds %struct.cpu, %struct.cpu* %58, i64 0, i32 5, !dbg !4491
  %60 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %59, align 8, !dbg !4491
  %61 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %60, i64 0, i32 3, !dbg !4492
  %62 = load %struct.nk_fiber*, %struct.nk_fiber** %61, align 8, !dbg !4492
  %63 = icmp eq %struct.nk_fiber* %56, %62, !dbg !4493
  br i1 %63, label %nk_fiber_yield.exit, label %64, !dbg !4494

; <label>:64:                                     ; preds = %50
  %65 = tail call i64 @msr_read(i32 -1073741567) #12, !dbg !4495
  %66 = inttoptr i64 %65 to %struct.cpu*, !dbg !4499
  %67 = getelementptr inbounds %struct.cpu, %struct.cpu* %66, i64 0, i32 5, !dbg !4500
  %68 = load %struct.nk_fiber_percpu_state*, %struct.nk_fiber_percpu_state** %67, align 8, !dbg !4500
  %69 = getelementptr inbounds %struct.nk_fiber_percpu_state, %struct.nk_fiber_percpu_state* %68, i64 0, i32 3, !dbg !4501
  %70 = load %struct.nk_fiber*, %struct.nk_fiber** %69, align 8, !dbg !4501
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %70, metadata !3244, metadata !DIExpression()) #11, !dbg !4476
  br label %71, !dbg !4502

; <label>:71:                                     ; preds = %64, %38
  %72 = phi %struct.nk_fiber* [ %70, %64 ], [ %40, %38 ], !dbg !4503
  call void @llvm.dbg.value(metadata %struct.nk_fiber* %72, metadata !3244, metadata !DIExpression()) #11, !dbg !4476
  %73 = tail call i32 @_nk_fiber_yield_to(%struct.nk_fiber* %72) #12, !dbg !4504
  br label %nk_fiber_yield.exit, !dbg !4505

nk_fiber_yield.exit:                              ; preds = %3, %50, %71
  %74 = phi i32 [ 1, %3 ], [ 0, %50 ], [ 0, %71 ], !dbg !4503
  br label %75

; <label>:75:                                     ; preds = %1, %nk_fiber_yield.exit
  %76 = phi i32 [ %74, %nk_fiber_yield.exit ], [ -1, %1 ], !dbg !4506
  ret i32 %76, !dbg !4507
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
!774 = !{i32 -2147260791}
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
!1000 = !DILocation(line: 62, column: 9, scope: !981)
!1001 = distinct !{!1001, !996, !1002}
!1002 = !DILocation(line: 65, column: 3, scope: !981)
!1003 = !DILocation(line: 0, scope: !981)
!1004 = !DILocation(line: 66, column: 3, scope: !981)
!1005 = !DILocation(line: 67, column: 3, scope: !981)
!1006 = !DILocation(line: 68, column: 1, scope: !981)
!1007 = distinct !DISubprogram(name: "routine_simple_2", scope: !3, file: !3, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1008 = !{!1009, !1010, !1011, !1012}
!1009 = !DILocalVariable(name: "i", arg: 1, scope: !1007, file: !3, line: 70, type: !31)
!1010 = !DILocalVariable(name: "o", arg: 2, scope: !1007, file: !3, line: 70, type: !75)
!1011 = !DILocalVariable(name: "end", scope: !1007, file: !3, line: 72, type: !24)
!1012 = !DILocalVariable(name: "a", scope: !1007, file: !3, line: 74, type: !7)
!1013 = !DILocation(line: 70, column: 29, scope: !1007)
!1014 = !DILocation(line: 70, column: 39, scope: !1007)
!1015 = !DILocation(line: 72, column: 19, scope: !1007)
!1016 = !DILocation(line: 72, column: 13, scope: !1007)
!1017 = !DILocation(line: 73, column: 19, scope: !1007)
!1018 = !DILocation(line: 73, column: 3, scope: !1007)
!1019 = !DILocation(line: 74, column: 16, scope: !1007)
!1020 = !DILocation(line: 75, column: 3, scope: !1007)
!1021 = !DILocation(line: 76, column: 13, scope: !1007)
!1022 = !DILocation(line: 76, column: 11, scope: !1007)
!1023 = !DILocation(line: 76, column: 3, scope: !1007)
!1024 = !DILocation(line: 77, column: 52, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 76, column: 18)
!1026 = !DILocation(line: 77, column: 5, scope: !1025)
!1027 = !DILocation(line: 76, column: 9, scope: !1007)
!1028 = distinct !{!1028, !1023, !1029}
!1029 = !DILocation(line: 79, column: 3, scope: !1007)
!1030 = !DILocation(line: 0, scope: !1007)
!1031 = !DILocation(line: 80, column: 3, scope: !1007)
!1032 = !DILocation(line: 81, column: 3, scope: !1007)
!1033 = !DILocation(line: 82, column: 1, scope: !1007)
!1034 = distinct !DISubprogram(name: "handle_fibers1", scope: !3, file: !3, line: 127, type: !117, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1035 = !{!1036, !1037}
!1036 = !DILocalVariable(name: "buf", arg: 1, scope: !1034, file: !3, line: 127, type: !113)
!1037 = !DILocalVariable(name: "priv", arg: 2, scope: !1034, file: !3, line: 127, type: !31)
!1038 = !DILocation(line: 127, column: 23, scope: !1034)
!1039 = !DILocation(line: 127, column: 35, scope: !1034)
!1040 = !DILocation(line: 88, column: 3, scope: !1041, inlinedAt: !1048)
!1041 = distinct !DISubprogram(name: "test_simple_routine1", scope: !3, file: !3, line: 86, type: !507, scopeLine: 87, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "simple", scope: !1041, file: !3, line: 88, type: !511)
!1044 = !DILocalVariable(name: "t", scope: !1041, file: !3, line: 90, type: !25)
!1045 = !DILocalVariable(name: "f_input", scope: !1041, file: !3, line: 92, type: !24)
!1046 = !DILocalVariable(name: "p", scope: !1047, file: !3, line: 92, type: !31)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 92, column: 23)
!1048 = distinct !DILocation(line: 129, column: 3, scope: !1034)
!1049 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 89, column: 8, scope: !1041, inlinedAt: !1048)
!1051 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1050)
!1052 = !DILocation(line: 89, column: 26, scope: !1041, inlinedAt: !1048)
!1053 = !DILocation(line: 89, column: 6, scope: !1041, inlinedAt: !1048)
!1054 = !DILocation(line: 90, column: 3, scope: !1041, inlinedAt: !1048)
!1055 = !DILocation(line: 91, column: 3, scope: !1041, inlinedAt: !1048)
!1056 = !DILocation(line: 92, column: 23, scope: !1047, inlinedAt: !1048)
!1057 = !DILocation(line: 93, column: 8, scope: !1058, inlinedAt: !1048)
!1058 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 93, column: 7)
!1059 = !DILocation(line: 93, column: 7, scope: !1041, inlinedAt: !1048)
!1060 = !DILocation(line: 94, column: 5, scope: !1061, inlinedAt: !1048)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 93, column: 17)
!1062 = !DILocation(line: 95, column: 5, scope: !1061, inlinedAt: !1048)
!1063 = !DILocation(line: 92, column: 23, scope: !1041, inlinedAt: !1048)
!1064 = !DILocation(line: 92, column: 13, scope: !1041, inlinedAt: !1048)
!1065 = !DILocation(line: 97, column: 14, scope: !1041, inlinedAt: !1048)
!1066 = !DILocation(line: 90, column: 12, scope: !1041, inlinedAt: !1048)
!1067 = !DILocation(line: 97, column: 16, scope: !1041, inlinedAt: !1048)
!1068 = !DILocation(line: 97, column: 12, scope: !1041, inlinedAt: !1048)
!1069 = !DILocation(line: 88, column: 15, scope: !1041, inlinedAt: !1048)
!1070 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 98, column: 3, scope: !1041, inlinedAt: !1048)
!1072 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1071)
!1073 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1071)
!1074 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1071)
!1075 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1071)
!1076 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1071)
!1077 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1071)
!1079 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1078)
!1080 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1078)
!1081 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1078)
!1082 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1078)
!1083 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1078)
!1084 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1078)
!1085 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1078)
!1086 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1078)
!1087 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1078)
!1088 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1078)
!1089 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1078)
!1090 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1078)
!1091 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1078)
!1092 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1078)
!1093 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1078)
!1094 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1078)
!1095 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1078)
!1096 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1078)
!1097 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1078)
!1098 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1078)
!1099 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1078)
!1100 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1078)
!1101 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1078)
!1102 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1078)
!1103 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1078)
!1104 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1078)
!1105 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1078)
!1106 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1078)
!1108 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1107)
!1109 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1107)
!1110 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1107)
!1112 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1111)
!1113 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1107)
!1114 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1111)
!1115 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1111)
!1116 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1111)
!1117 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1107)
!1119 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1118)
!1120 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1118)
!1121 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1118)
!1122 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1118)
!1123 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1107)
!1125 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1124)
!1126 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1124)
!1127 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1124)
!1128 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1124)
!1129 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1107)
!1131 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1130)
!1132 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1130)
!1133 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1130)
!1134 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1130)
!1135 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1107)
!1137 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1136)
!1138 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1136)
!1139 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1136)
!1140 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1136)
!1141 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1107)
!1143 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1142)
!1144 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1142)
!1145 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1142)
!1146 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1142)
!1147 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1107)
!1148 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1107)
!1150 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1149)
!1151 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1149)
!1152 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1149)
!1153 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1149)
!1154 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1107)
!1156 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1155)
!1157 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1155)
!1158 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1155)
!1159 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1155)
!1160 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1107)
!1162 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1161)
!1163 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1161)
!1164 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1161)
!1165 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1161)
!1166 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1107)
!1168 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1167)
!1169 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1167)
!1170 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1167)
!1171 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1167)
!1172 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1107)
!1174 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1173)
!1175 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1173)
!1176 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1173)
!1177 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1173)
!1178 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1107)
!1180 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1179)
!1181 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1179)
!1182 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1179)
!1183 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1179)
!1184 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1107)
!1186 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1185)
!1187 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1185)
!1188 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1185)
!1189 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1185)
!1190 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1107)
!1192 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1191)
!1193 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1191)
!1194 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1191)
!1195 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1191)
!1196 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1107)
!1198 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1197)
!1199 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1197)
!1200 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1197)
!1201 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1197)
!1202 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1107)
!1204 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1203)
!1205 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1203)
!1206 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1203)
!1207 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1203)
!1208 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1078)
!1209 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1078)
!1211 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1210)
!1212 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1078)
!1213 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1078)
!1214 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1078)
!1215 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1078)
!1216 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1078)
!1218 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1217)
!1219 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1217)
!1220 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1217)
!1221 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1078)
!1222 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1078)
!1223 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1078)
!1224 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1078)
!1226 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1225)
!1227 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1225)
!1228 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1225)
!1229 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1078)
!1230 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1078)
!1232 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1231)
!1233 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1231)
!1234 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1231)
!1235 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1078)
!1236 = !DILocation(line: 0, scope: !602, inlinedAt: !1078)
!1237 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1071)
!1238 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1071)
!1239 = !DILocation(line: 99, column: 3, scope: !1041, inlinedAt: !1048)
!1240 = !DILocation(line: 100, column: 1, scope: !1041, inlinedAt: !1048)
!1241 = !DILocation(line: 130, column: 3, scope: !1034)
!1242 = !DILocation(line: 88, column: 3, scope: !1041)
!1243 = !DILocation(line: 258, column: 26, scope: !544, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 89, column: 8, scope: !1041)
!1245 = !DILocation(line: 258, column: 26, scope: !545, inlinedAt: !1244)
!1246 = !DILocation(line: 89, column: 26, scope: !1041)
!1247 = !DILocation(line: 89, column: 6, scope: !1041)
!1248 = !DILocation(line: 90, column: 3, scope: !1041)
!1249 = !DILocation(line: 91, column: 3, scope: !1041)
!1250 = !DILocation(line: 92, column: 23, scope: !1047)
!1251 = !DILocation(line: 93, column: 8, scope: !1058)
!1252 = !DILocation(line: 93, column: 7, scope: !1041)
!1253 = !DILocation(line: 94, column: 5, scope: !1061)
!1254 = !DILocation(line: 95, column: 5, scope: !1061)
!1255 = !DILocation(line: 92, column: 23, scope: !1041)
!1256 = !DILocation(line: 92, column: 13, scope: !1041)
!1257 = !DILocation(line: 97, column: 14, scope: !1041)
!1258 = !DILocation(line: 90, column: 12, scope: !1041)
!1259 = !DILocation(line: 97, column: 16, scope: !1041)
!1260 = !DILocation(line: 97, column: 12, scope: !1041)
!1261 = !DILocation(line: 88, column: 15, scope: !1041)
!1262 = !DILocation(line: 693, column: 35, scope: !584, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 98, column: 3, scope: !1041)
!1264 = !DILocation(line: 693, column: 46, scope: !584, inlinedAt: !1263)
!1265 = !DILocation(line: 693, column: 60, scope: !584, inlinedAt: !1263)
!1266 = !DILocation(line: 693, column: 84, scope: !584, inlinedAt: !1263)
!1267 = !DILocation(line: 693, column: 104, scope: !584, inlinedAt: !1263)
!1268 = !DILocation(line: 693, column: 134, scope: !584, inlinedAt: !1263)
!1269 = !DILocation(line: 602, column: 36, scope: !602, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 695, column: 3, scope: !584, inlinedAt: !1263)
!1271 = !DILocation(line: 602, column: 47, scope: !602, inlinedAt: !1270)
!1272 = !DILocation(line: 602, column: 61, scope: !602, inlinedAt: !1270)
!1273 = !DILocation(line: 602, column: 85, scope: !602, inlinedAt: !1270)
!1274 = !DILocation(line: 602, column: 110, scope: !602, inlinedAt: !1270)
!1275 = !DILocation(line: 605, column: 15, scope: !602, inlinedAt: !1270)
!1276 = !DILocation(line: 608, column: 19, scope: !602, inlinedAt: !1270)
!1277 = !DILocation(line: 611, column: 11, scope: !613, inlinedAt: !1270)
!1278 = !DILocation(line: 614, column: 8, scope: !626, inlinedAt: !1270)
!1279 = !DILocation(line: 614, column: 7, scope: !602, inlinedAt: !1270)
!1280 = !DILocation(line: 620, column: 3, scope: !602, inlinedAt: !1270)
!1281 = !DILocation(line: 623, column: 10, scope: !602, inlinedAt: !1270)
!1282 = !DILocation(line: 623, column: 19, scope: !602, inlinedAt: !1270)
!1283 = !DILocation(line: 625, column: 10, scope: !602, inlinedAt: !1270)
!1284 = !DILocation(line: 625, column: 21, scope: !602, inlinedAt: !1270)
!1285 = !DILocation(line: 628, column: 26, scope: !615, inlinedAt: !1270)
!1286 = !DILocation(line: 628, column: 10, scope: !602, inlinedAt: !1270)
!1287 = !DILocation(line: 628, column: 16, scope: !602, inlinedAt: !1270)
!1288 = !DILocation(line: 631, column: 8, scope: !637, inlinedAt: !1270)
!1289 = !DILocation(line: 631, column: 7, scope: !602, inlinedAt: !1270)
!1290 = !DILocation(line: 634, column: 5, scope: !640, inlinedAt: !1270)
!1291 = !DILocation(line: 635, column: 5, scope: !640, inlinedAt: !1270)
!1292 = !DILocation(line: 639, column: 10, scope: !602, inlinedAt: !1270)
!1293 = !DILocation(line: 639, column: 14, scope: !602, inlinedAt: !1270)
!1294 = !DILocation(line: 640, column: 10, scope: !602, inlinedAt: !1270)
!1295 = !DILocation(line: 640, column: 16, scope: !602, inlinedAt: !1270)
!1296 = !DILocation(line: 641, column: 10, scope: !602, inlinedAt: !1270)
!1297 = !DILocation(line: 641, column: 17, scope: !602, inlinedAt: !1270)
!1298 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 644, column: 3, scope: !602, inlinedAt: !1270)
!1300 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !1299)
!1301 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !1299)
!1302 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !1299)
!1304 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1303)
!1305 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !1299)
!1306 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1303)
!1307 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1303)
!1308 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1303)
!1309 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !1299)
!1311 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1310)
!1312 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1310)
!1313 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1310)
!1314 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1310)
!1315 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !1299)
!1317 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1316)
!1318 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1316)
!1319 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1316)
!1320 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1316)
!1321 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !1299)
!1323 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1322)
!1324 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1322)
!1325 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1322)
!1326 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1322)
!1327 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !1299)
!1329 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1328)
!1330 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1328)
!1331 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1328)
!1332 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1328)
!1333 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !1299)
!1335 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1334)
!1336 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1334)
!1337 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1334)
!1338 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1334)
!1339 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !1299)
!1340 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !1299)
!1342 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1341)
!1343 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1341)
!1344 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1341)
!1345 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1341)
!1346 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !1299)
!1348 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1347)
!1349 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1347)
!1350 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1347)
!1351 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1347)
!1352 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !1299)
!1354 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1353)
!1355 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1353)
!1356 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1353)
!1357 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1353)
!1358 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !1299)
!1360 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1359)
!1361 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1359)
!1362 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1359)
!1363 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1359)
!1364 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !1299)
!1366 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1365)
!1367 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1365)
!1368 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1365)
!1369 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1365)
!1370 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !1299)
!1372 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1371)
!1373 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1371)
!1374 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1371)
!1375 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1371)
!1376 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !1299)
!1378 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1377)
!1379 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1377)
!1380 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1377)
!1381 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1377)
!1382 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !1299)
!1384 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1383)
!1385 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1383)
!1386 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1383)
!1387 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1383)
!1388 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !1299)
!1390 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1389)
!1391 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1389)
!1392 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1389)
!1393 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1389)
!1394 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !1299)
!1396 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1395)
!1397 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1395)
!1398 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1395)
!1399 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1395)
!1400 = !DILocation(line: 648, column: 19, scope: !762, inlinedAt: !1270)
!1401 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 650, column: 15, scope: !602, inlinedAt: !1270)
!1403 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !1402)
!1404 = !DILocation(line: 650, column: 33, scope: !602, inlinedAt: !1270)
!1405 = !DILocation(line: 650, column: 10, scope: !602, inlinedAt: !1270)
!1406 = !DILocation(line: 650, column: 13, scope: !602, inlinedAt: !1270)
!1407 = !DILocation(line: 653, column: 27, scope: !602, inlinedAt: !1270)
!1408 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 653, column: 3, scope: !602, inlinedAt: !1270)
!1410 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1409)
!1411 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1409)
!1412 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1409)
!1413 = !DILocation(line: 656, column: 10, scope: !602, inlinedAt: !1270)
!1414 = !DILocation(line: 656, column: 19, scope: !602, inlinedAt: !1270)
!1415 = !DILocation(line: 657, column: 27, scope: !602, inlinedAt: !1270)
!1416 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 657, column: 3, scope: !602, inlinedAt: !1270)
!1418 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1417)
!1419 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1417)
!1420 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1417)
!1421 = !DILocation(line: 658, column: 27, scope: !602, inlinedAt: !1270)
!1422 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 658, column: 3, scope: !602, inlinedAt: !1270)
!1424 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1423)
!1425 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !1423)
!1426 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1423)
!1427 = !DILocation(line: 660, column: 3, scope: !602, inlinedAt: !1270)
!1428 = !DILocation(line: 0, scope: !602, inlinedAt: !1270)
!1429 = !DILocation(line: 696, column: 16, scope: !584, inlinedAt: !1263)
!1430 = !DILocation(line: 696, column: 3, scope: !584, inlinedAt: !1263)
!1431 = !DILocation(line: 99, column: 3, scope: !1041)
!1432 = !DILocation(line: 0, scope: !1041)
!1433 = !DILocation(line: 100, column: 1, scope: !1041)
!1434 = distinct !DISubprogram(name: "_get_fiber_state", scope: !124, file: !124, line: 76, type: !1435, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiber_state", file: !124, line: 66, baseType: !281)
!1439 = !{}
!1440 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1445)
!1441 = distinct !DISubprogram(name: "get_cpu", scope: !1442, file: !1442, line: 127, type: !1443, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1442 = !DIFile(filename: "include/nautilus/percpu.h", directory: "/home/sgi9754/nautilus-cs446")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!270}
!1445 = distinct !DILocation(line: 78, column: 10, scope: !1434)
!1446 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1445)
!1447 = !DILocation(line: 78, column: 21, scope: !1434)
!1448 = !DILocation(line: 78, column: 3, scope: !1434)
!1449 = distinct !DISubprogram(name: "nk_fiber_current", scope: !124, file: !124, line: 83, type: !1450, scopeLine: 84, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!240}
!1452 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 85, column: 10, scope: !1449)
!1455 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1453)
!1456 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1454)
!1457 = !DILocation(line: 85, column: 30, scope: !1449)
!1458 = !DILocation(line: 85, column: 3, scope: !1449)
!1459 = distinct !DISubprogram(name: "_nk_idle_fiber", scope: !124, file: !124, line: 90, type: !1450, scopeLine: 91, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1460 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 92, column: 10, scope: !1459)
!1463 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1461)
!1464 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1462)
!1465 = !DILocation(line: 92, column: 30, scope: !1459)
!1466 = !DILocation(line: 92, column: 3, scope: !1459)
!1467 = distinct !DISubprogram(name: "_get_fiber_thread", scope: !124, file: !124, line: 96, type: !768, scopeLine: 97, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1468 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 98, column: 10, scope: !1467)
!1471 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1469)
!1472 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1470)
!1473 = !DILocation(line: 98, column: 30, scope: !1467)
!1474 = !DILocation(line: 98, column: 3, scope: !1467)
!1475 = distinct !DISubprogram(name: "_get_sched_head", scope: !124, file: !124, line: 103, type: !1476, scopeLine: 104, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!150}
!1478 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 105, column: 12, scope: !1475)
!1481 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1479)
!1482 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1480)
!1483 = !DILocation(line: 105, column: 32, scope: !1475)
!1484 = !DILocation(line: 105, column: 3, scope: !1475)
!1485 = !DILocation(line: 113, column: 31, scope: !658)
!1486 = !DILocation(line: 113, column: 43, scope: !658)
!1487 = !DILocation(line: 115, column: 8, scope: !658)
!1488 = !DILocation(line: 115, column: 12, scope: !658)
!1489 = !DILocation(line: 116, column: 6, scope: !658)
!1490 = !DILocation(line: 116, column: 26, scope: !658)
!1491 = !DILocation(line: 117, column: 1, scope: !658)
!1492 = distinct !DISubprogram(name: "_rr_policy", scope: !124, file: !124, line: 119, type: !1450, scopeLine: 120, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1493)
!1493 = !{!1494, !1495, !1496, !1500}
!1494 = !DILocalVariable(name: "fiber_sched_queue", scope: !1492, file: !124, line: 122, type: !150)
!1495 = !DILocalVariable(name: "fiber_to_schedule", scope: !1492, file: !124, line: 125, type: !240)
!1496 = !DILocalVariable(name: "first", scope: !1497, file: !124, line: 128, type: !240)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !124, line: 128, column: 25)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !124, line: 126, column: 40)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !124, line: 126, column: 7)
!1500 = !DILocalVariable(name: "__mptr", scope: !1501, file: !124, line: 128, type: !1504)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !124, line: 128, column: 25)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !124, line: 128, column: 25)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !124, line: 128, column: 25)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1506 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 122, column: 41, scope: !1492)
!1510 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1507)
!1511 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1508)
!1512 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !1509)
!1513 = !DILocation(line: 122, column: 21, scope: !1492)
!1514 = !DILocation(line: 125, column: 15, scope: !1492)
!1515 = !DILocalVariable(name: "head", arg: 1, scope: !1516, file: !53, line: 184, type: !1504)
!1516 = distinct !DISubprogram(name: "list_empty", scope: !53, file: !53, line: 184, type: !1517, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!48, !1504}
!1519 = !{!1515}
!1520 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 126, column: 9, scope: !1499)
!1522 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !1521)
!1523 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !1521)
!1524 = !DILocation(line: 126, column: 7, scope: !1492)
!1525 = !DILocation(line: 128, column: 25, scope: !1497)
!1526 = !DILocation(line: 131, column: 40, scope: !1498)
!1527 = !DILocalVariable(name: "entry", arg: 1, scope: !1528, file: !53, line: 151, type: !150)
!1528 = distinct !DISubprogram(name: "list_del_init", scope: !53, file: !53, line: 151, type: !782, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1529)
!1529 = !{!1527}
!1530 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 131, column: 5, scope: !1498)
!1532 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !1531)
!1533 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !1531)
!1534 = !DILocalVariable(name: "prev", arg: 1, scope: !1535, file: !53, line: 128, type: !150)
!1535 = distinct !DISubprogram(name: "__list_del", scope: !53, file: !53, line: 128, type: !1536, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !150, !150}
!1538 = !{!1534, !1539}
!1539 = !DILocalVariable(name: "next", arg: 2, scope: !1535, file: !53, line: 128, type: !150)
!1540 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !1531)
!1542 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !1541)
!1543 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !1541)
!1544 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !1541)
!1545 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !1541)
!1546 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !1541)
!1547 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !1531)
!1549 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1548)
!1550 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1548)
!1551 = !DILocation(line: 132, column: 3, scope: !1498)
!1552 = !DILocation(line: 0, scope: !1492)
!1553 = !DILocation(line: 139, column: 3, scope: !1492)
!1554 = distinct !DISubprogram(name: "_nk_fiber_exit", scope: !124, file: !124, line: 144, type: !650, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1563}
!1556 = !DILocalVariable(name: "f", arg: 1, scope: !1554, file: !124, line: 144, type: !240)
!1557 = !DILocalVariable(name: "next", scope: !1554, file: !124, line: 149, type: !240)
!1558 = !DILocalVariable(name: "temp", scope: !1554, file: !124, line: 155, type: !240)
!1559 = !DILocalVariable(name: "waitq", scope: !1554, file: !124, line: 156, type: !150)
!1560 = !DILocalVariable(name: "first", scope: !1561, file: !124, line: 163, type: !240)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !124, line: 163, column: 12)
!1562 = distinct !DILexicalBlock(scope: !1554, file: !124, line: 160, column: 25)
!1563 = !DILocalVariable(name: "__mptr", scope: !1564, file: !124, line: 163, type: !1504)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !124, line: 163, column: 12)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !124, line: 163, column: 12)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !124, line: 163, column: 12)
!1567 = !DILocation(line: 144, column: 33, scope: !1554)
!1568 = !DILocation(line: 147, column: 6, scope: !1554)
!1569 = !DILocation(line: 147, column: 15, scope: !1554)
!1570 = !DILocation(line: 149, column: 15, scope: !1554)
!1571 = !DILocation(line: 156, column: 34, scope: !1554)
!1572 = !DILocation(line: 156, column: 21, scope: !1554)
!1573 = !DILocation(line: 160, column: 12, scope: !1554)
!1574 = !DILocation(line: 160, column: 21, scope: !1554)
!1575 = !DILocation(line: 160, column: 3, scope: !1554)
!1576 = !DILocation(line: 163, column: 12, scope: !1561)
!1577 = !DILocation(line: 163, column: 12, scope: !1566)
!1578 = !DILocation(line: 155, column: 15, scope: !1554)
!1579 = !DILocation(line: 164, column: 27, scope: !1562)
!1580 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 164, column: 5, scope: !1562)
!1582 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !1581)
!1583 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !1581)
!1584 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !1581)
!1586 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !1585)
!1587 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !1585)
!1588 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !1585)
!1589 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !1585)
!1590 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !1585)
!1591 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !1581)
!1593 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1592)
!1594 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1592)
!1595 = !DILocation(line: 165, column: 16, scope: !1562)
!1596 = !DILocation(line: 168, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1562, file: !124, line: 168, column: 9)
!1598 = !DILocation(line: 168, column: 9, scope: !1562)
!1599 = !DILocalVariable(name: "f", arg: 1, scope: !1600, file: !124, line: 663, type: !240)
!1600 = distinct !DISubprogram(name: "nk_fiber_run", scope: !124, file: !124, line: 663, type: !1601, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!48, !240, !29}
!1603 = !{!1599, !1604, !1605, !1606}
!1604 = !DILocalVariable(name: "random_cpu_flag", arg: 2, scope: !1600, file: !124, line: 663, type: !29)
!1605 = !DILocalVariable(name: "curr_thread", scope: !1600, file: !124, line: 666, type: !285)
!1606 = !DILocalVariable(name: "fiber_sched_queue", scope: !1600, file: !124, line: 674, type: !150)
!1607 = !DILocation(line: 663, column: 30, scope: !1600, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 171, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1597, file: !124, line: 168, column: 14)
!1610 = !DILocation(line: 663, column: 41, scope: !1600, inlinedAt: !1608)
!1611 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 666, column: 30, scope: !1600, inlinedAt: !1608)
!1615 = !DILocation(line: 666, column: 16, scope: !1600, inlinedAt: !1608)
!1616 = !DILocation(line: 366, column: 29, scope: !1617, inlinedAt: !1624)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !124, line: 366, column: 29)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !124, line: 366, column: 29)
!1619 = distinct !DISubprogram(name: "_nk_initial_placement", scope: !124, file: !124, line: 363, type: !507, scopeLine: 364, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "sys", scope: !1619, file: !124, line: 366, type: !264)
!1622 = !DILocalVariable(name: "__r", scope: !1618, file: !124, line: 366, type: !264)
!1623 = !DILocalVariable(name: "__r", scope: !1617, file: !124, line: 366, type: !264)
!1624 = distinct !DILocation(line: 373, column: 20, scope: !1625, inlinedAt: !1633)
!1625 = distinct !DISubprogram(name: "_get_random_fiber_thread", scope: !124, file: !124, line: 370, type: !768, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629, !1631}
!1627 = !DILocalVariable(name: "random_cpu", scope: !1625, file: !124, line: 373, type: !48)
!1628 = !DILocalVariable(name: "sys", scope: !1625, file: !124, line: 374, type: !264)
!1629 = !DILocalVariable(name: "__r", scope: !1630, file: !124, line: 374, type: !264)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !124, line: 374, column: 27)
!1631 = !DILocalVariable(name: "__r", scope: !1632, file: !124, line: 374, type: !264)
!1632 = distinct !DILexicalBlock(scope: !1630, file: !124, line: 374, column: 27)
!1633 = distinct !DILocation(line: 670, column: 19, scope: !1634, inlinedAt: !1608)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !124, line: 669, column: 23)
!1635 = distinct !DILexicalBlock(scope: !1600, file: !124, line: 669, column: 7)
!1636 = !{i32 -2147185111}
!1637 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !1624)
!1638 = !DILocation(line: 366, column: 23, scope: !1619, inlinedAt: !1624)
!1639 = !DILocation(line: 358, column: 5, scope: !1640, inlinedAt: !1645)
!1640 = distinct !DISubprogram(name: "_get_random", scope: !124, file: !124, line: 356, type: !1641, scopeLine: 357, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!25}
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "t", scope: !1640, file: !124, line: 358, type: !25)
!1645 = distinct !DILocation(line: 367, column: 18, scope: !1619, inlinedAt: !1624)
!1646 = !DILocation(line: 359, column: 5, scope: !1640, inlinedAt: !1645)
!1647 = !DILocation(line: 360, column: 12, scope: !1640, inlinedAt: !1645)
!1648 = !DILocation(line: 358, column: 14, scope: !1640, inlinedAt: !1645)
!1649 = !DILocation(line: 361, column: 1, scope: !1640, inlinedAt: !1645)
!1650 = !DILocation(line: 367, column: 39, scope: !1619, inlinedAt: !1624)
!1651 = !DILocation(line: 367, column: 34, scope: !1619, inlinedAt: !1624)
!1652 = !DILocation(line: 367, column: 32, scope: !1619, inlinedAt: !1624)
!1653 = !DILocation(line: 374, column: 27, scope: !1632, inlinedAt: !1633)
!1654 = !{i32 -2147182110}
!1655 = !DILocation(line: 374, column: 27, scope: !1630, inlinedAt: !1633)
!1656 = !DILocation(line: 374, column: 21, scope: !1625, inlinedAt: !1633)
!1657 = !DILocation(line: 375, column: 10, scope: !1625, inlinedAt: !1633)
!1658 = !DILocation(line: 0, scope: !1600, inlinedAt: !1608)
!1659 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 674, column: 41, scope: !1600, inlinedAt: !1608)
!1663 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1660)
!1664 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1661)
!1665 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !1662)
!1666 = !DILocation(line: 674, column: 21, scope: !1600, inlinedAt: !1608)
!1667 = !DILocation(line: 678, column: 6, scope: !1600, inlinedAt: !1608)
!1668 = !DILocation(line: 678, column: 15, scope: !1600, inlinedAt: !1608)
!1669 = !DILocation(line: 679, column: 22, scope: !1600, inlinedAt: !1608)
!1670 = !DILocalVariable(name: "nelm", arg: 1, scope: !1671, file: !53, line: 116, type: !150)
!1671 = distinct !DISubprogram(name: "list_add_tail", scope: !53, file: !53, line: 116, type: !1536, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1672)
!1672 = !{!1670, !1673}
!1673 = !DILocalVariable(name: "head", arg: 2, scope: !1671, file: !53, line: 116, type: !150)
!1674 = !DILocation(line: 116, column: 52, scope: !1671, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 679, column: 3, scope: !1600, inlinedAt: !1608)
!1676 = !DILocation(line: 116, column: 76, scope: !1671, inlinedAt: !1675)
!1677 = !DILocation(line: 118, column: 25, scope: !1671, inlinedAt: !1675)
!1678 = !DILocalVariable(name: "nelm", arg: 1, scope: !1679, file: !53, line: 85, type: !150)
!1679 = distinct !DISubprogram(name: "__list_add", scope: !53, file: !53, line: 85, type: !1680, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !150, !150, !150}
!1682 = !{!1678, !1683, !1684}
!1683 = !DILocalVariable(name: "prev", arg: 2, scope: !1679, file: !53, line: 86, type: !150)
!1684 = !DILocalVariable(name: "next", arg: 3, scope: !1679, file: !53, line: 87, type: !150)
!1685 = !DILocation(line: 85, column: 49, scope: !1679, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 118, column: 2, scope: !1671, inlinedAt: !1675)
!1687 = !DILocation(line: 86, column: 28, scope: !1679, inlinedAt: !1686)
!1688 = !DILocation(line: 87, column: 28, scope: !1679, inlinedAt: !1686)
!1689 = !DILocation(line: 89, column: 13, scope: !1679, inlinedAt: !1686)
!1690 = !DILocation(line: 90, column: 8, scope: !1679, inlinedAt: !1686)
!1691 = !DILocation(line: 90, column: 13, scope: !1679, inlinedAt: !1686)
!1692 = !DILocation(line: 91, column: 8, scope: !1679, inlinedAt: !1686)
!1693 = !DILocation(line: 91, column: 13, scope: !1679, inlinedAt: !1686)
!1694 = !DILocation(line: 92, column: 8, scope: !1679, inlinedAt: !1686)
!1695 = !DILocation(line: 92, column: 13, scope: !1679, inlinedAt: !1686)
!1696 = !DILocation(line: 683, column: 20, scope: !1697, inlinedAt: !1608)
!1697 = distinct !DILexicalBlock(scope: !1600, file: !124, line: 683, column: 7)
!1698 = !DILocation(line: 683, column: 7, scope: !1697, inlinedAt: !1608)
!1699 = !DILocation(line: 683, column: 7, scope: !1600, inlinedAt: !1608)
!1700 = !DILocation(line: 687, column: 5, scope: !1701, inlinedAt: !1608)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !124, line: 683, column: 26)
!1702 = !DILocation(line: 688, column: 3, scope: !1701, inlinedAt: !1608)
!1703 = distinct !{!1703, !1575, !1704}
!1704 = !DILocation(line: 173, column: 3, scope: !1554)
!1705 = !DILocation(line: 175, column: 6, scope: !1554)
!1706 = !DILocation(line: 175, column: 14, scope: !1554)
!1707 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 179, column: 10, scope: !1554)
!1712 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1708)
!1713 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1709)
!1714 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !1710)
!1715 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !1711)
!1716 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !1711)
!1717 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !1711)
!1719 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !1718)
!1720 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !1718)
!1721 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !1711)
!1722 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !1711)
!1723 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !1711)
!1724 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !1711)
!1726 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !1725)
!1727 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !1725)
!1728 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !1725)
!1730 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !1729)
!1731 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !1729)
!1732 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !1729)
!1733 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !1729)
!1734 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !1729)
!1735 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !1725)
!1737 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1736)
!1738 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1736)
!1739 = !DILocation(line: 180, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1554, file: !124, line: 180, column: 7)
!1741 = !DILocation(line: 180, column: 7, scope: !1554)
!1742 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 181, column: 12, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !124, line: 180, column: 16)
!1747 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1743)
!1748 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1744)
!1749 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !1745)
!1750 = !DILocation(line: 182, column: 3, scope: !1746)
!1751 = !DILocation(line: 0, scope: !1554)
!1752 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 183, column: 3, scope: !1554)
!1755 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1753)
!1756 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1754)
!1757 = !DILocation(line: 183, column: 23, scope: !1554)
!1758 = !DILocation(line: 183, column: 34, scope: !1554)
!1759 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 186, column: 19, scope: !1554)
!1762 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1760)
!1763 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1761)
!1764 = !DILocation(line: 186, column: 39, scope: !1554)
!1765 = !DILocation(line: 186, column: 51, scope: !1554)
!1766 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 186, column: 3, scope: !1554)
!1768 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !1767)
!1769 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !1767)
!1770 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !1767)
!1772 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !1771)
!1773 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !1771)
!1774 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !1771)
!1775 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !1771)
!1776 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !1771)
!1777 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !1767)
!1779 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !1778)
!1780 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !1778)
!1781 = !DILocation(line: 189, column: 3, scope: !1554)
!1782 = !DILocation(line: 190, column: 3, scope: !1554)
!1783 = !DILocation(line: 193, column: 3, scope: !1554)
!1784 = !DILocation(line: 196, column: 1, scope: !1554)
!1785 = !DILocation(line: 663, column: 30, scope: !1600)
!1786 = !DILocation(line: 663, column: 41, scope: !1600)
!1787 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 666, column: 30, scope: !1600)
!1791 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1788)
!1792 = !DILocation(line: 666, column: 16, scope: !1600)
!1793 = !DILocation(line: 669, column: 7, scope: !1635)
!1794 = !DILocation(line: 669, column: 7, scope: !1600)
!1795 = !DILocation(line: 366, column: 29, scope: !1617, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 373, column: 20, scope: !1625, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 670, column: 19, scope: !1634)
!1798 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !1796)
!1799 = !DILocation(line: 366, column: 23, scope: !1619, inlinedAt: !1796)
!1800 = !DILocation(line: 358, column: 5, scope: !1640, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 367, column: 18, scope: !1619, inlinedAt: !1796)
!1802 = !DILocation(line: 359, column: 5, scope: !1640, inlinedAt: !1801)
!1803 = !DILocation(line: 360, column: 12, scope: !1640, inlinedAt: !1801)
!1804 = !DILocation(line: 358, column: 14, scope: !1640, inlinedAt: !1801)
!1805 = !DILocation(line: 361, column: 1, scope: !1640, inlinedAt: !1801)
!1806 = !DILocation(line: 367, column: 39, scope: !1619, inlinedAt: !1796)
!1807 = !DILocation(line: 367, column: 34, scope: !1619, inlinedAt: !1796)
!1808 = !DILocation(line: 367, column: 32, scope: !1619, inlinedAt: !1796)
!1809 = !DILocation(line: 374, column: 27, scope: !1632, inlinedAt: !1797)
!1810 = !DILocation(line: 374, column: 27, scope: !1630, inlinedAt: !1797)
!1811 = !DILocation(line: 374, column: 21, scope: !1625, inlinedAt: !1797)
!1812 = !DILocation(line: 375, column: 10, scope: !1625, inlinedAt: !1797)
!1813 = !DILocation(line: 671, column: 3, scope: !1634)
!1814 = !DILocation(line: 0, scope: !1600)
!1815 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 674, column: 41, scope: !1600)
!1819 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1816)
!1820 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1817)
!1821 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !1818)
!1822 = !DILocation(line: 674, column: 21, scope: !1600)
!1823 = !DILocation(line: 678, column: 6, scope: !1600)
!1824 = !DILocation(line: 678, column: 15, scope: !1600)
!1825 = !DILocation(line: 679, column: 22, scope: !1600)
!1826 = !DILocation(line: 116, column: 52, scope: !1671, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 679, column: 3, scope: !1600)
!1828 = !DILocation(line: 116, column: 76, scope: !1671, inlinedAt: !1827)
!1829 = !DILocation(line: 118, column: 25, scope: !1671, inlinedAt: !1827)
!1830 = !DILocation(line: 85, column: 49, scope: !1679, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 118, column: 2, scope: !1671, inlinedAt: !1827)
!1832 = !DILocation(line: 86, column: 28, scope: !1679, inlinedAt: !1831)
!1833 = !DILocation(line: 87, column: 28, scope: !1679, inlinedAt: !1831)
!1834 = !DILocation(line: 89, column: 13, scope: !1679, inlinedAt: !1831)
!1835 = !DILocation(line: 90, column: 8, scope: !1679, inlinedAt: !1831)
!1836 = !DILocation(line: 90, column: 13, scope: !1679, inlinedAt: !1831)
!1837 = !DILocation(line: 91, column: 8, scope: !1679, inlinedAt: !1831)
!1838 = !DILocation(line: 91, column: 13, scope: !1679, inlinedAt: !1831)
!1839 = !DILocation(line: 92, column: 8, scope: !1679, inlinedAt: !1831)
!1840 = !DILocation(line: 92, column: 13, scope: !1679, inlinedAt: !1831)
!1841 = !DILocation(line: 683, column: 20, scope: !1697)
!1842 = !DILocation(line: 683, column: 7, scope: !1697)
!1843 = !DILocation(line: 683, column: 7, scope: !1600)
!1844 = !DILocation(line: 687, column: 5, scope: !1701)
!1845 = !DILocation(line: 688, column: 3, scope: !1701)
!1846 = !DILocation(line: 690, column: 3, scope: !1600)
!1847 = distinct !DISubprogram(name: "_fiber_wrapper", scope: !124, file: !124, line: 198, type: !650, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1848)
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "f_to", arg: 1, scope: !1847, file: !124, line: 198, type: !240)
!1850 = !DILocation(line: 198, column: 33, scope: !1847)
!1851 = !DILocation(line: 202, column: 9, scope: !1847)
!1852 = !DILocation(line: 202, column: 19, scope: !1847)
!1853 = !DILocation(line: 202, column: 32, scope: !1847)
!1854 = !DILocation(line: 202, column: 3, scope: !1847)
!1855 = !DILocation(line: 208, column: 3, scope: !1847)
!1856 = !DILocation(line: 210, column: 3, scope: !1847)
!1857 = !DILocation(line: 274, column: 33, scope: !649)
!1858 = !DILocation(line: 276, column: 26, scope: !649)
!1859 = !DILocation(line: 276, column: 37, scope: !649)
!1860 = !DILocation(line: 276, column: 6, scope: !649)
!1861 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 277, column: 3, scope: !649)
!1863 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1862)
!1864 = !DILocation(line: 276, column: 32, scope: !649)
!1865 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1862)
!1866 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1862)
!1867 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1862)
!1868 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 278, column: 3, scope: !649)
!1870 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1869)
!1871 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1869)
!1872 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1869)
!1873 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1869)
!1874 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 279, column: 3, scope: !649)
!1876 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1875)
!1877 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1875)
!1878 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1875)
!1879 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1875)
!1880 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 280, column: 3, scope: !649)
!1882 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1881)
!1883 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1881)
!1884 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1881)
!1885 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1881)
!1886 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 281, column: 3, scope: !649)
!1888 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1887)
!1889 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1887)
!1890 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1887)
!1891 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1887)
!1892 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 282, column: 3, scope: !649)
!1894 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1893)
!1895 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1893)
!1896 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1893)
!1897 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1893)
!1898 = !DILocation(line: 283, column: 18, scope: !649)
!1899 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 283, column: 3, scope: !649)
!1901 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1900)
!1902 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1900)
!1903 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1900)
!1904 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1900)
!1905 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 284, column: 3, scope: !649)
!1907 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1906)
!1908 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1906)
!1909 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1906)
!1910 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1906)
!1911 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 285, column: 3, scope: !649)
!1913 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1912)
!1914 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1912)
!1915 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1912)
!1916 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1912)
!1917 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 286, column: 3, scope: !649)
!1919 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1918)
!1920 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1918)
!1921 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1918)
!1922 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1918)
!1923 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 287, column: 3, scope: !649)
!1925 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1924)
!1926 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1924)
!1927 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1924)
!1928 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1924)
!1929 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 288, column: 3, scope: !649)
!1931 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1930)
!1932 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1930)
!1933 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1930)
!1934 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1930)
!1935 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 289, column: 3, scope: !649)
!1937 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1936)
!1938 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1936)
!1939 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1936)
!1940 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1936)
!1941 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 290, column: 3, scope: !649)
!1943 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1942)
!1944 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1942)
!1945 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1942)
!1946 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1942)
!1947 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 291, column: 3, scope: !649)
!1949 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1948)
!1950 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1948)
!1951 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1948)
!1952 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1948)
!1953 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 292, column: 3, scope: !649)
!1955 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !1954)
!1956 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !1954)
!1957 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !1954)
!1958 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !1954)
!1959 = !DILocation(line: 294, column: 3, scope: !649)
!1960 = distinct !DISubprogram(name: "_nk_fiber_yield_to", scope: !124, file: !124, line: 299, type: !1961, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!48, !240}
!1963 = !{!1964, !1965, !1966}
!1964 = !DILocalVariable(name: "f_to", arg: 1, scope: !1960, file: !124, line: 299, type: !240)
!1965 = !DILocalVariable(name: "f_from", scope: !1960, file: !124, line: 302, type: !240)
!1966 = !DILocalVariable(name: "fiber_sched_queue", scope: !1967, file: !124, line: 312, type: !150)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !124, line: 310, column: 63)
!1968 = distinct !DILexicalBlock(scope: !1960, file: !124, line: 310, column: 7)
!1969 = !DILocation(line: 299, column: 36, scope: !1960)
!1970 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 302, column: 24, scope: !1960)
!1974 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1971)
!1975 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1972)
!1976 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !1973)
!1977 = !DILocation(line: 302, column: 15, scope: !1960)
!1978 = !DILocation(line: 305, column: 15, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1960, file: !124, line: 305, column: 7)
!1980 = !DILocation(line: 305, column: 32, scope: !1979)
!1981 = !DILocation(line: 306, column: 22, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !124, line: 305, column: 61)
!1983 = !DILocation(line: 307, column: 3, scope: !1982)
!1984 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 310, column: 17, scope: !1968)
!1988 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1985)
!1989 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1986)
!1990 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !1987)
!1991 = !DILocation(line: 310, column: 14, scope: !1968)
!1992 = !DILocation(line: 310, column: 34, scope: !1968)
!1993 = !DILocation(line: 310, column: 45, scope: !1968)
!1994 = !DILocation(line: 310, column: 54, scope: !1968)
!1995 = !DILocation(line: 310, column: 7, scope: !1960)
!1996 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 312, column: 43, scope: !1967)
!2000 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !1997)
!2001 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !1998)
!2002 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !1999)
!2003 = !DILocation(line: 312, column: 23, scope: !1967)
!2004 = !DILocation(line: 318, column: 29, scope: !1967)
!2005 = !DILocation(line: 116, column: 52, scope: !1671, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 318, column: 5, scope: !1967)
!2007 = !DILocation(line: 116, column: 76, scope: !1671, inlinedAt: !2006)
!2008 = !DILocation(line: 118, column: 25, scope: !1671, inlinedAt: !2006)
!2009 = !DILocation(line: 85, column: 49, scope: !1679, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 118, column: 2, scope: !1671, inlinedAt: !2006)
!2011 = !DILocation(line: 86, column: 28, scope: !1679, inlinedAt: !2010)
!2012 = !DILocation(line: 87, column: 28, scope: !1679, inlinedAt: !2010)
!2013 = !DILocation(line: 89, column: 13, scope: !1679, inlinedAt: !2010)
!2014 = !DILocation(line: 90, column: 8, scope: !1679, inlinedAt: !2010)
!2015 = !DILocation(line: 90, column: 13, scope: !1679, inlinedAt: !2010)
!2016 = !DILocation(line: 91, column: 8, scope: !1679, inlinedAt: !2010)
!2017 = !DILocation(line: 91, column: 13, scope: !1679, inlinedAt: !2010)
!2018 = !DILocation(line: 92, column: 8, scope: !1679, inlinedAt: !2010)
!2019 = !DILocation(line: 92, column: 13, scope: !1679, inlinedAt: !2010)
!2020 = !DILocation(line: 319, column: 3, scope: !1967)
!2021 = !DILocation(line: 323, column: 16, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1960, file: !124, line: 323, column: 7)
!2023 = !DILocation(line: 323, column: 8, scope: !2022)
!2024 = !DILocation(line: 323, column: 7, scope: !1960)
!2025 = !DILocation(line: 324, column: 29, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !124, line: 323, column: 24)
!2027 = !DILocalVariable(name: "vc", arg: 1, scope: !2028, file: !124, line: 906, type: !88)
!2028 = distinct !DISubprogram(name: "nk_fiber_set_vc", scope: !124, file: !124, line: 906, type: !2029, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !88}
!2031 = !{!2027, !2032}
!2032 = !DILocalVariable(name: "curr_fiber", scope: !2028, file: !124, line: 909, type: !240)
!2033 = !DILocation(line: 906, column: 49, scope: !2028, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 324, column: 5, scope: !2026)
!2035 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 909, column: 28, scope: !2028, inlinedAt: !2034)
!2039 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2036)
!2040 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !2037)
!2041 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !2038)
!2042 = !DILocation(line: 909, column: 15, scope: !2028, inlinedAt: !2034)
!2043 = !DILocation(line: 912, column: 15, scope: !2028, inlinedAt: !2034)
!2044 = !DILocation(line: 912, column: 18, scope: !2028, inlinedAt: !2034)
!2045 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 913, column: 3, scope: !2028, inlinedAt: !2034)
!2047 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2046)
!2048 = !DILocation(line: 913, column: 21, scope: !2028, inlinedAt: !2034)
!2049 = !DILocation(line: 913, column: 24, scope: !2028, inlinedAt: !2034)
!2050 = !DILocation(line: 325, column: 3, scope: !2026)
!2051 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 328, column: 3, scope: !1960)
!2054 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2052)
!2055 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !2053)
!2056 = !DILocation(line: 328, column: 23, scope: !1960)
!2057 = !DILocation(line: 328, column: 34, scope: !1960)
!2058 = !DILocation(line: 329, column: 20, scope: !1960)
!2059 = !DILocation(line: 330, column: 9, scope: !1960)
!2060 = !DILocation(line: 330, column: 18, scope: !1960)
!2061 = !DILocation(line: 331, column: 3, scope: !1960)
!2062 = !DILocation(line: 333, column: 3, scope: !1960)
!2063 = !DILocation(line: 906, column: 49, scope: !2028)
!2064 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 909, column: 28, scope: !2028)
!2068 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2065)
!2069 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !2066)
!2070 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !2067)
!2071 = !DILocation(line: 909, column: 15, scope: !2028)
!2072 = !DILocation(line: 912, column: 15, scope: !2028)
!2073 = !DILocation(line: 912, column: 18, scope: !2028)
!2074 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 913, column: 3, scope: !2028)
!2076 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2075)
!2077 = !DILocation(line: 913, column: 21, scope: !2028)
!2078 = !DILocation(line: 913, column: 24, scope: !2028)
!2079 = !DILocation(line: 914, column: 1, scope: !2028)
!2080 = distinct !DISubprogram(name: "_nk_fiber_cleanup", scope: !124, file: !124, line: 336, type: !2081, scopeLine: 337, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null}
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "curr", scope: !2080, file: !124, line: 338, type: !240)
!2085 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 338, column: 22, scope: !2080)
!2089 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2086)
!2090 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !2087)
!2091 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !2088)
!2092 = !DILocation(line: 338, column: 15, scope: !2080)
!2093 = !DILocation(line: 340, column: 3, scope: !2080)
!2094 = !DILocation(line: 341, column: 1, scope: !2080)
!2095 = distinct !DISubprogram(name: "_is_idle_fiber", scope: !124, file: !124, line: 343, type: !2096, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!29, !240}
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "f", arg: 1, scope: !2095, file: !124, line: 343, type: !240)
!2100 = !DILocalVariable(name: "idle_fiber", scope: !2095, file: !124, line: 345, type: !240)
!2101 = !DILocalVariable(name: "result", scope: !2095, file: !124, line: 348, type: !29)
!2102 = !DILocation(line: 343, column: 36, scope: !2095)
!2103 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 345, column: 28, scope: !2095)
!2107 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2104)
!2108 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !2105)
!2109 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !2106)
!2110 = !DILocation(line: 345, column: 15, scope: !2095)
!2111 = !DILocation(line: 348, column: 11, scope: !2095)
!2112 = !DILocation(line: 349, column: 18, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2095, file: !124, line: 349, column: 7)
!2114 = !DILocation(line: 349, column: 7, scope: !2095)
!2115 = !DILocation(line: 353, column: 3, scope: !2095)
!2116 = !DILocation(line: 366, column: 29, scope: !1617, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 373, column: 20, scope: !1625)
!2118 = !DILocation(line: 366, column: 29, scope: !1618, inlinedAt: !2117)
!2119 = !DILocation(line: 366, column: 23, scope: !1619, inlinedAt: !2117)
!2120 = !DILocation(line: 358, column: 5, scope: !1640, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 367, column: 18, scope: !1619, inlinedAt: !2117)
!2122 = !DILocation(line: 359, column: 5, scope: !1640, inlinedAt: !2121)
!2123 = !DILocation(line: 360, column: 12, scope: !1640, inlinedAt: !2121)
!2124 = !DILocation(line: 358, column: 14, scope: !1640, inlinedAt: !2121)
!2125 = !DILocation(line: 361, column: 1, scope: !1640, inlinedAt: !2121)
!2126 = !DILocation(line: 367, column: 39, scope: !1619, inlinedAt: !2117)
!2127 = !DILocation(line: 367, column: 34, scope: !1619, inlinedAt: !2117)
!2128 = !DILocation(line: 367, column: 32, scope: !1619, inlinedAt: !2117)
!2129 = !DILocation(line: 374, column: 27, scope: !1632)
!2130 = !DILocation(line: 374, column: 27, scope: !1630)
!2131 = !DILocation(line: 374, column: 21, scope: !1625)
!2132 = !DILocation(line: 375, column: 10, scope: !1625)
!2133 = !DILocation(line: 375, column: 33, scope: !1625)
!2134 = !DILocation(line: 375, column: 42, scope: !1625)
!2135 = !DILocation(line: 375, column: 3, scope: !1625)
!2136 = distinct !DISubprogram(name: "_check_all_queues_remove", scope: !124, file: !124, line: 383, type: !1961, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2137)
!2137 = !{!2138, !2139, !2140, !2142, !2144, !2145, !2146, !2147, !2149, !2154}
!2138 = !DILocalVariable(name: "to_del", arg: 1, scope: !2136, file: !124, line: 383, type: !240)
!2139 = !DILocalVariable(name: "sys", scope: !2136, file: !124, line: 386, type: !264)
!2140 = !DILocalVariable(name: "__r", scope: !2141, file: !124, line: 386, type: !264)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !124, line: 386, column: 26)
!2142 = !DILocalVariable(name: "__r", scope: !2143, file: !124, line: 386, type: !264)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !124, line: 386, column: 26)
!2144 = !DILocalVariable(name: "cpu_iter", scope: !2136, file: !124, line: 387, type: !48)
!2145 = !DILocalVariable(name: "temp", scope: !2136, file: !124, line: 390, type: !150)
!2146 = !DILocalVariable(name: "test", scope: !2136, file: !124, line: 391, type: !240)
!2147 = !DILocalVariable(name: "iter", scope: !2148, file: !124, line: 392, type: !48)
!2148 = distinct !DILexicalBlock(scope: !2136, file: !124, line: 392, column: 3)
!2149 = !DILocalVariable(name: "__mptr", scope: !2150, file: !124, line: 395, type: !1504)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !124, line: 395, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !124, line: 395, column: 5)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !124, line: 392, column: 46)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !124, line: 392, column: 3)
!2154 = !DILocalVariable(name: "__mptr", scope: !2155, file: !124, line: 395, type: !1504)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !124, line: 395, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !124, line: 395, column: 5)
!2157 = !DILocation(line: 383, column: 42, scope: !2136)
!2158 = !DILocation(line: 386, column: 26, scope: !2143)
!2159 = !{i32 -2147179109}
!2160 = !DILocation(line: 386, column: 26, scope: !2141)
!2161 = !DILocation(line: 386, column: 20, scope: !2136)
!2162 = !DILocation(line: 387, column: 23, scope: !2136)
!2163 = !DILocation(line: 387, column: 7, scope: !2136)
!2164 = !DILocation(line: 392, column: 12, scope: !2148)
!2165 = !DILocation(line: 392, column: 27, scope: !2153)
!2166 = !DILocation(line: 392, column: 3, scope: !2148)
!2167 = !DILocation(line: 394, column: 14, scope: !2152)
!2168 = !DILocation(line: 394, column: 31, scope: !2152)
!2169 = !DILocation(line: 394, column: 40, scope: !2152)
!2170 = !DILocation(line: 390, column: 21, scope: !2136)
!2171 = !DILocation(line: 395, column: 5, scope: !2150)
!2172 = !DILocation(line: 391, column: 15, scope: !2136)
!2173 = !DILocation(line: 0, scope: !2151)
!2174 = !DILocation(line: 395, column: 5, scope: !2151)
!2175 = !DILocation(line: 395, column: 5, scope: !2156)
!2176 = !DILocation(line: 400, column: 16, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !124, line: 400, column: 11)
!2178 = distinct !DILexicalBlock(scope: !2156, file: !124, line: 395, column: 48)
!2179 = !DILocation(line: 400, column: 11, scope: !2178)
!2180 = distinct !{!2180, !2174, !2181}
!2181 = !DILocation(line: 404, column: 5, scope: !2151)
!2182 = !DILocation(line: 392, column: 43, scope: !2153)
!2183 = distinct !{!2183, !2166, !2184}
!2184 = !DILocation(line: 405, column: 3, scope: !2148)
!2185 = !DILocation(line: 401, column: 33, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2177, file: !124, line: 400, column: 26)
!2187 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 401, column: 9, scope: !2186)
!2189 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !2188)
!2190 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !2188)
!2191 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !2188)
!2193 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !2192)
!2194 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !2192)
!2195 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !2192)
!2196 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !2192)
!2197 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !2192)
!2198 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !2188)
!2200 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2199)
!2201 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2199)
!2202 = !DILocation(line: 408, column: 1, scope: !2136)
!2203 = distinct !DISubprogram(name: "nk_fiber_init_ap", scope: !124, file: !124, line: 435, type: !507, scopeLine: 436, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2204)
!2204 = !{!2205, !2206, !2208, !2210, !2211, !2217, !2218, !2223, !2225, !2228, !2230}
!2205 = !DILocalVariable(name: "id", scope: !2203, file: !124, line: 437, type: !291)
!2206 = !DILocalVariable(name: "__r", scope: !2207, file: !124, line: 437, type: !291)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !124, line: 437, column: 19)
!2208 = !DILocalVariable(name: "__r", scope: !2209, file: !124, line: 437, type: !291)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !124, line: 437, column: 19)
!2210 = !DILocalVariable(name: "my_cpu", scope: !2203, file: !124, line: 438, type: !270)
!2211 = !DILocalVariable(name: "_p", scope: !2212, file: !124, line: 444, type: !48)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !124, line: 444, column: 2)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !124, line: 444, column: 2)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !124, line: 444, column: 2)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !124, line: 443, column: 29)
!2216 = distinct !DILexicalBlock(scope: !2203, file: !124, line: 443, column: 9)
!2217 = !DILocalVariable(name: "_t", scope: !2212, file: !124, line: 444, type: !160)
!2218 = !DILocalVariable(name: "__r", scope: !2219, file: !124, line: 444, type: !291)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !124, line: 444, column: 2)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !124, line: 444, column: 2)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !124, line: 444, column: 2)
!2222 = distinct !DILexicalBlock(scope: !2212, file: !124, line: 444, column: 2)
!2223 = !DILocalVariable(name: "__r", scope: !2224, file: !124, line: 444, type: !291)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !124, line: 444, column: 2)
!2225 = !DILocalVariable(name: "__r", scope: !2226, file: !124, line: 444, type: !291)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !124, line: 444, column: 2)
!2227 = distinct !DILexicalBlock(scope: !2221, file: !124, line: 444, column: 2)
!2228 = !DILocalVariable(name: "__r", scope: !2229, file: !124, line: 444, type: !291)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !124, line: 444, column: 2)
!2230 = !DILocalVariable(name: "_p", scope: !2231, file: !124, line: 444, type: !48)
!2231 = distinct !DILexicalBlock(scope: !2213, file: !124, line: 444, column: 2)
!2232 = !DILocation(line: 437, column: 19, scope: !2209)
!2233 = !{i32 -2147162346}
!2234 = !DILocation(line: 437, column: 19, scope: !2207)
!2235 = !DILocation(line: 437, column: 14, scope: !2203)
!2236 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 438, column: 27, scope: !2203)
!2238 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !2237)
!2239 = !DILocation(line: 438, column: 18, scope: !2203)
!2240 = !DILocation(line: 442, column: 23, scope: !2203)
!2241 = !DILocation(line: 442, column: 13, scope: !2203)
!2242 = !DILocation(line: 442, column: 21, scope: !2203)
!2243 = !DILocation(line: 443, column: 10, scope: !2216)
!2244 = !DILocation(line: 443, column: 9, scope: !2203)
!2245 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2250)
!2246 = distinct !DISubprogram(name: "__cpu_state_get_cpu", scope: !2247, file: !2247, line: 39, type: !2248, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!2247 = !DIFile(filename: "include/nautilus/cpu_state.h", directory: "/home/sgi9754/nautilus-cs446")
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!31}
!2250 = distinct !DILocation(line: 444, column: 2, scope: !2213)
!2251 = !DILocation(line: 444, column: 2, scope: !2213)
!2252 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2257)
!2254 = distinct !DISubprogram(name: "preempt_is_disabled", scope: !2247, file: !2247, line: 82, type: !507, scopeLine: 83, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2255)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "base", scope: !2254, file: !2247, line: 84, type: !31)
!2257 = distinct !DILocation(line: 0, scope: !2213)
!2258 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2257)
!2259 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2257)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !2247, line: 85, column: 9)
!2261 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2257)
!2262 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2257)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !2247, line: 85, column: 15)
!2264 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2257)
!2265 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2257)
!2266 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2257)
!2267 = !DILocation(line: 0, scope: !2260, inlinedAt: !2257)
!2268 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2273)
!2270 = distinct !DISubprogram(name: "preempt_disable", scope: !2247, file: !2247, line: 46, type: !2081, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2271)
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "base", scope: !2270, file: !2247, line: 48, type: !31)
!2273 = distinct !DILocation(line: 0, scope: !2213)
!2274 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2273)
!2275 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2273)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !2247, line: 49, column: 9)
!2277 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2273)
!2278 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2273)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !2247, line: 49, column: 15)
!2280 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2273)
!2281 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2273)
!2282 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2273)
!2283 = !DILocation(line: 444, column: 2, scope: !2214)
!2284 = !DILocation(line: 444, column: 2, scope: !2212)
!2285 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 444, column: 2, scope: !2212)
!2287 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2286)
!2288 = !DILocation(line: 444, column: 2, scope: !2221)
!2289 = !DILocation(line: 0, scope: !2221)
!2290 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2297)
!2292 = distinct !DISubprogram(name: "interrupt_nesting_level", scope: !2247, file: !2247, line: 94, type: !2293, scopeLine: 95, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!39}
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "base", scope: !2292, file: !2247, line: 96, type: !31)
!2297 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2299)
!2298 = distinct !DISubprogram(name: "in_interrupt_context", scope: !2247, file: !2247, line: 105, type: !507, scopeLine: 106, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!2299 = distinct !DILocation(line: 0, scope: !2221)
!2300 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2297)
!2301 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2297)
!2302 = distinct !DILexicalBlock(scope: !2292, file: !2247, line: 97, column: 9)
!2303 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2297)
!2304 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2297)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !2247, line: 97, column: 15)
!2306 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2297)
!2307 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2297)
!2308 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2297)
!2309 = !DILocation(line: 444, column: 2, scope: !2222)
!2310 = !DILocation(line: 444, column: 2, scope: !2220)
!2311 = !DILocation(line: 444, column: 2, scope: !2227)
!2312 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2317)
!2314 = distinct !DISubprogram(name: "preempt_enable", scope: !2247, file: !2247, line: 57, type: !2081, scopeLine: 58, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2315)
!2315 = !{!2316}
!2316 = !DILocalVariable(name: "base", scope: !2314, file: !2247, line: 59, type: !31)
!2317 = distinct !DILocation(line: 444, column: 2, scope: !2212)
!2318 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2317)
!2319 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2317)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !2247, line: 60, column: 9)
!2321 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2317)
!2322 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2317)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !2247, line: 60, column: 15)
!2324 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2317)
!2325 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2317)
!2326 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2317)
!2327 = !DILocation(line: 444, column: 2, scope: !2231)
!2328 = !DILocation(line: 444, column: 2, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !124, line: 444, column: 2)
!2330 = distinct !DILexicalBlock(scope: !2231, file: !124, line: 444, column: 2)
!2331 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 0, scope: !2329)
!2335 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2333)
!2336 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2333)
!2337 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2333)
!2338 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2333)
!2339 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2333)
!2340 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2333)
!2341 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2333)
!2342 = !DILocation(line: 0, scope: !2329)
!2343 = !DILocation(line: 444, column: 2, scope: !2330)
!2344 = !DILocation(line: 444, column: 2, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2329, file: !124, line: 444, column: 2)
!2346 = !DILocation(line: 444, column: 2, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2329, file: !124, line: 444, column: 2)
!2348 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 444, column: 2, scope: !2231)
!2351 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2350)
!2352 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2350)
!2353 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2350)
!2354 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2350)
!2355 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2350)
!2356 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2350)
!2357 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2350)
!2358 = !DILocation(line: 0, scope: !2203)
!2359 = !DILocation(line: 449, column: 1, scope: !2203)
!2360 = distinct !DISubprogram(name: "init_local_fiber_state", scope: !124, file: !124, line: 410, type: !2361, scopeLine: 411, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!280}
!2363 = !{!2364, !2365, !2367, !2369, !2371, !2377, !2378, !2383, !2385, !2388, !2390}
!2364 = !DILocalVariable(name: "state", scope: !2360, file: !124, line: 412, type: !280)
!2365 = !DILocalVariable(name: "p", scope: !2366, file: !124, line: 412, type: !31)
!2366 = distinct !DILexicalBlock(scope: !2360, file: !124, line: 412, column: 74)
!2367 = !DILocalVariable(name: "__r", scope: !2368, file: !124, line: 412, type: !291)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !124, line: 412, column: 74)
!2369 = !DILocalVariable(name: "__r", scope: !2370, file: !124, line: 412, type: !291)
!2370 = distinct !DILexicalBlock(scope: !2368, file: !124, line: 412, column: 74)
!2371 = !DILocalVariable(name: "_p", scope: !2372, file: !124, line: 415, type: !48)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !124, line: 415, column: 9)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !124, line: 415, column: 9)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !124, line: 415, column: 9)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !124, line: 414, column: 17)
!2376 = distinct !DILexicalBlock(scope: !2360, file: !124, line: 414, column: 9)
!2377 = !DILocalVariable(name: "_t", scope: !2372, file: !124, line: 415, type: !160)
!2378 = !DILocalVariable(name: "__r", scope: !2379, file: !124, line: 415, type: !291)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !124, line: 415, column: 9)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !124, line: 415, column: 9)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !124, line: 415, column: 9)
!2382 = distinct !DILexicalBlock(scope: !2372, file: !124, line: 415, column: 9)
!2383 = !DILocalVariable(name: "__r", scope: !2384, file: !124, line: 415, type: !291)
!2384 = distinct !DILexicalBlock(scope: !2379, file: !124, line: 415, column: 9)
!2385 = !DILocalVariable(name: "__r", scope: !2386, file: !124, line: 415, type: !291)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !124, line: 415, column: 9)
!2387 = distinct !DILexicalBlock(scope: !2381, file: !124, line: 415, column: 9)
!2388 = !DILocalVariable(name: "__r", scope: !2389, file: !124, line: 415, type: !291)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !124, line: 415, column: 9)
!2390 = !DILocalVariable(name: "_p", scope: !2391, file: !124, line: 415, type: !48)
!2391 = distinct !DILexicalBlock(scope: !2373, file: !124, line: 415, column: 9)
!2392 = !DILocation(line: 412, column: 74, scope: !2370)
!2393 = !{i32 -2147173855}
!2394 = !DILocation(line: 412, column: 74, scope: !2368)
!2395 = !DILocation(line: 412, column: 74, scope: !2366)
!2396 = !DILocation(line: 414, column: 10, scope: !2376)
!2397 = !DILocation(line: 414, column: 9, scope: !2360)
!2398 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 415, column: 9, scope: !2373)
!2400 = !DILocation(line: 415, column: 9, scope: !2373)
!2401 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 0, scope: !2373)
!2404 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2403)
!2405 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2403)
!2406 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2403)
!2407 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2403)
!2408 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2403)
!2409 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2403)
!2410 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2403)
!2411 = !DILocation(line: 0, scope: !2260, inlinedAt: !2403)
!2412 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 0, scope: !2373)
!2415 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2414)
!2416 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2414)
!2417 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2414)
!2418 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2414)
!2419 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2414)
!2420 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2414)
!2421 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2414)
!2422 = !DILocation(line: 415, column: 9, scope: !2374)
!2423 = !DILocation(line: 415, column: 9, scope: !2372)
!2424 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 415, column: 9, scope: !2372)
!2426 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2425)
!2427 = !DILocation(line: 415, column: 9, scope: !2381)
!2428 = !DILocation(line: 0, scope: !2381)
!2429 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 0, scope: !2381)
!2433 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2431)
!2434 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2431)
!2435 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2431)
!2436 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2431)
!2437 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2431)
!2438 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2431)
!2439 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2431)
!2440 = !DILocation(line: 415, column: 9, scope: !2382)
!2441 = !DILocation(line: 415, column: 9, scope: !2380)
!2442 = !DILocation(line: 415, column: 9, scope: !2387)
!2443 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 415, column: 9, scope: !2372)
!2446 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2445)
!2447 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2445)
!2448 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2445)
!2449 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2445)
!2450 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2445)
!2451 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2445)
!2452 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2445)
!2453 = !DILocation(line: 415, column: 9, scope: !2391)
!2454 = !DILocation(line: 415, column: 9, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !124, line: 415, column: 9)
!2456 = distinct !DILexicalBlock(scope: !2391, file: !124, line: 415, column: 9)
!2457 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 0, scope: !2455)
!2461 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2459)
!2462 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2459)
!2463 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2459)
!2464 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2459)
!2465 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2459)
!2466 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2459)
!2467 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2459)
!2468 = !DILocation(line: 0, scope: !2455)
!2469 = !DILocation(line: 415, column: 9, scope: !2456)
!2470 = !DILocation(line: 415, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2455, file: !124, line: 415, column: 9)
!2472 = !DILocation(line: 415, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2455, file: !124, line: 415, column: 9)
!2474 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 415, column: 9, scope: !2391)
!2477 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2476)
!2478 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2476)
!2479 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2476)
!2480 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2476)
!2481 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2476)
!2482 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2476)
!2483 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2476)
!2484 = !DILocation(line: 412, column: 43, scope: !2360)
!2485 = !DILocation(line: 412, column: 35, scope: !2360)
!2486 = !DILocation(line: 419, column: 2, scope: !2360)
!2487 = !DILocation(line: 421, column: 27, scope: !2360)
!2488 = !DILocation(line: 421, column: 5, scope: !2360)
!2489 = !DILocation(line: 424, column: 29, scope: !2360)
!2490 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 424, column: 5, scope: !2360)
!2492 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !2491)
!2493 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !2491)
!2494 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !2491)
!2495 = !DILocation(line: 426, column: 5, scope: !2360)
!2496 = !DILocation(line: 429, column: 5, scope: !2360)
!2497 = !DILocation(line: 431, column: 5, scope: !2360)
!2498 = !DILocation(line: 0, scope: !2360)
!2499 = !DILocation(line: 432, column: 1, scope: !2360)
!2500 = distinct !DISubprogram(name: "nk_fiber_init", scope: !124, file: !124, line: 452, type: !507, scopeLine: 453, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2501)
!2501 = !{!2502, !2503, !2507, !2508, !2513, !2515, !2518, !2520, !2522, !2528, !2529, !2534, !2536, !2539, !2541}
!2502 = !DILocalVariable(name: "my_cpu", scope: !2500, file: !124, line: 454, type: !270)
!2503 = !DILocalVariable(name: "_p", scope: !2504, file: !124, line: 456, type: !48)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !124, line: 456, column: 5)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !124, line: 456, column: 5)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !124, line: 456, column: 5)
!2507 = !DILocalVariable(name: "_t", scope: !2504, file: !124, line: 456, type: !160)
!2508 = !DILocalVariable(name: "__r", scope: !2509, file: !124, line: 456, type: !291)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !124, line: 456, column: 5)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !124, line: 456, column: 5)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !124, line: 456, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !124, line: 456, column: 5)
!2513 = !DILocalVariable(name: "__r", scope: !2514, file: !124, line: 456, type: !291)
!2514 = distinct !DILexicalBlock(scope: !2509, file: !124, line: 456, column: 5)
!2515 = !DILocalVariable(name: "__r", scope: !2516, file: !124, line: 456, type: !291)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !124, line: 456, column: 5)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !124, line: 456, column: 5)
!2518 = !DILocalVariable(name: "__r", scope: !2519, file: !124, line: 456, type: !291)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !124, line: 456, column: 5)
!2520 = !DILocalVariable(name: "_p", scope: !2521, file: !124, line: 456, type: !48)
!2521 = distinct !DILexicalBlock(scope: !2505, file: !124, line: 456, column: 5)
!2522 = !DILocalVariable(name: "_p", scope: !2523, file: !124, line: 464, type: !48)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !124, line: 464, column: 2)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !124, line: 464, column: 2)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !124, line: 464, column: 2)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !124, line: 463, column: 29)
!2527 = distinct !DILexicalBlock(scope: !2500, file: !124, line: 463, column: 9)
!2528 = !DILocalVariable(name: "_t", scope: !2523, file: !124, line: 464, type: !160)
!2529 = !DILocalVariable(name: "__r", scope: !2530, file: !124, line: 464, type: !291)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !124, line: 464, column: 2)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !124, line: 464, column: 2)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !124, line: 464, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2523, file: !124, line: 464, column: 2)
!2534 = !DILocalVariable(name: "__r", scope: !2535, file: !124, line: 464, type: !291)
!2535 = distinct !DILexicalBlock(scope: !2530, file: !124, line: 464, column: 2)
!2536 = !DILocalVariable(name: "__r", scope: !2537, file: !124, line: 464, type: !291)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !124, line: 464, column: 2)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !124, line: 464, column: 2)
!2539 = !DILocalVariable(name: "__r", scope: !2540, file: !124, line: 464, type: !291)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !124, line: 464, column: 2)
!2541 = !DILocalVariable(name: "_p", scope: !2542, file: !124, line: 464, type: !48)
!2542 = distinct !DILexicalBlock(scope: !2524, file: !124, line: 464, column: 2)
!2543 = !DILocation(line: 454, column: 88, scope: !2500)
!2544 = !DILocation(line: 454, column: 27, scope: !2500)
!2545 = !DILocation(line: 454, column: 18, scope: !2500)
!2546 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 456, column: 5, scope: !2505)
!2548 = !DILocation(line: 456, column: 5, scope: !2505)
!2549 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 0, scope: !2505)
!2552 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2551)
!2553 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2551)
!2554 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2551)
!2555 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2551)
!2556 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2551)
!2557 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2551)
!2558 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2551)
!2559 = !DILocation(line: 0, scope: !2260, inlinedAt: !2551)
!2560 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 0, scope: !2505)
!2563 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2562)
!2564 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2562)
!2565 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2562)
!2566 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2562)
!2567 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2562)
!2568 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2562)
!2569 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2562)
!2570 = !DILocation(line: 456, column: 5, scope: !2506)
!2571 = !DILocation(line: 456, column: 5, scope: !2504)
!2572 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 456, column: 5, scope: !2504)
!2574 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2573)
!2575 = !DILocation(line: 456, column: 5, scope: !2511)
!2576 = !DILocation(line: 0, scope: !2511)
!2577 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 0, scope: !2511)
!2581 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2579)
!2582 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2579)
!2583 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2579)
!2584 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2579)
!2585 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2579)
!2586 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2579)
!2587 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2579)
!2588 = !DILocation(line: 456, column: 5, scope: !2512)
!2589 = !DILocation(line: 456, column: 5, scope: !2510)
!2590 = !DILocation(line: 456, column: 5, scope: !2517)
!2591 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 456, column: 5, scope: !2504)
!2594 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2593)
!2595 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2593)
!2596 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2593)
!2597 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2593)
!2598 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2593)
!2599 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2593)
!2600 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2593)
!2601 = !DILocation(line: 456, column: 5, scope: !2521)
!2602 = !DILocation(line: 456, column: 5, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !124, line: 456, column: 5)
!2604 = distinct !DILexicalBlock(scope: !2521, file: !124, line: 456, column: 5)
!2605 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 0, scope: !2603)
!2609 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2607)
!2610 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2607)
!2611 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2607)
!2612 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2607)
!2613 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2607)
!2614 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2607)
!2615 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2607)
!2616 = !DILocation(line: 0, scope: !2603)
!2617 = !DILocation(line: 456, column: 5, scope: !2604)
!2618 = !DILocation(line: 456, column: 5, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2603, file: !124, line: 456, column: 5)
!2620 = !DILocation(line: 456, column: 5, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2603, file: !124, line: 456, column: 5)
!2622 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 456, column: 5, scope: !2521)
!2625 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2624)
!2626 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2624)
!2627 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2624)
!2628 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2624)
!2629 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2624)
!2630 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2624)
!2631 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2624)
!2632 = !DILocation(line: 462, column: 23, scope: !2500)
!2633 = !DILocation(line: 462, column: 13, scope: !2500)
!2634 = !DILocation(line: 462, column: 21, scope: !2500)
!2635 = !DILocation(line: 463, column: 10, scope: !2527)
!2636 = !DILocation(line: 463, column: 9, scope: !2500)
!2637 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 464, column: 2, scope: !2524)
!2639 = !DILocation(line: 464, column: 2, scope: !2524)
!2640 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 0, scope: !2524)
!2643 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2642)
!2644 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2642)
!2645 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2642)
!2646 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2642)
!2647 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2642)
!2648 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2642)
!2649 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2642)
!2650 = !DILocation(line: 0, scope: !2260, inlinedAt: !2642)
!2651 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 0, scope: !2524)
!2654 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2653)
!2655 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2653)
!2656 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2653)
!2657 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2653)
!2658 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2653)
!2659 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2653)
!2660 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2653)
!2661 = !DILocation(line: 464, column: 2, scope: !2525)
!2662 = !DILocation(line: 464, column: 2, scope: !2523)
!2663 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 464, column: 2, scope: !2523)
!2665 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2664)
!2666 = !DILocation(line: 464, column: 2, scope: !2532)
!2667 = !DILocation(line: 0, scope: !2532)
!2668 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 0, scope: !2532)
!2672 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2670)
!2673 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2670)
!2674 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2670)
!2675 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2670)
!2676 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2670)
!2677 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2670)
!2678 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2670)
!2679 = !DILocation(line: 464, column: 2, scope: !2533)
!2680 = !DILocation(line: 464, column: 2, scope: !2531)
!2681 = !DILocation(line: 464, column: 2, scope: !2538)
!2682 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 464, column: 2, scope: !2523)
!2685 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2684)
!2686 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2684)
!2687 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2684)
!2688 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2684)
!2689 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2684)
!2690 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2684)
!2691 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2684)
!2692 = !DILocation(line: 464, column: 2, scope: !2542)
!2693 = !DILocation(line: 464, column: 2, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !124, line: 464, column: 2)
!2695 = distinct !DILexicalBlock(scope: !2542, file: !124, line: 464, column: 2)
!2696 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 0, scope: !2694)
!2700 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2698)
!2701 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2698)
!2702 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2698)
!2703 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2698)
!2704 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2698)
!2705 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2698)
!2706 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2698)
!2707 = !DILocation(line: 0, scope: !2694)
!2708 = !DILocation(line: 464, column: 2, scope: !2695)
!2709 = !DILocation(line: 464, column: 2, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !124, line: 464, column: 2)
!2711 = !DILocation(line: 464, column: 2, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2694, file: !124, line: 464, column: 2)
!2713 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 464, column: 2, scope: !2542)
!2716 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2715)
!2717 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2715)
!2718 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2715)
!2719 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2715)
!2720 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2715)
!2721 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2715)
!2722 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2715)
!2723 = !DILocation(line: 0, scope: !2500)
!2724 = !DILocation(line: 469, column: 1, scope: !2500)
!2725 = distinct !DISubprogram(name: "__fiber_thread", scope: !124, file: !124, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !2726)
!2726 = !{!2727, !2728, !2729, !2735, !2736, !2741, !2743, !2746, !2748, !2750, !2776, !2782, !2783, !2788, !2790, !2793, !2795, !2797, !2798, !2804, !2805, !2810, !2812, !2815, !2817, !2819, !2820, !2826, !2827, !2832, !2834, !2837, !2839}
!2727 = !DILocalVariable(name: "in", arg: 1, scope: !2725, file: !124, line: 511, type: !31)
!2728 = !DILocalVariable(name: "out", arg: 2, scope: !2725, file: !124, line: 511, type: !75)
!2729 = !DILocalVariable(name: "_p", scope: !2730, file: !124, line: 515, type: !48)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !124, line: 515, column: 5)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !124, line: 515, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !124, line: 515, column: 5)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !124, line: 514, column: 51)
!2734 = distinct !DILexicalBlock(scope: !2725, file: !124, line: 514, column: 7)
!2735 = !DILocalVariable(name: "_t", scope: !2730, file: !124, line: 515, type: !160)
!2736 = !DILocalVariable(name: "__r", scope: !2737, file: !124, line: 515, type: !291)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !124, line: 515, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !124, line: 515, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !124, line: 515, column: 5)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !124, line: 515, column: 5)
!2741 = !DILocalVariable(name: "__r", scope: !2742, file: !124, line: 515, type: !291)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !124, line: 515, column: 5)
!2743 = !DILocalVariable(name: "__r", scope: !2744, file: !124, line: 515, type: !291)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !124, line: 515, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !124, line: 515, column: 5)
!2746 = !DILocalVariable(name: "__r", scope: !2747, file: !124, line: 515, type: !291)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !124, line: 515, column: 5)
!2748 = !DILocalVariable(name: "_p", scope: !2749, file: !124, line: 515, type: !48)
!2749 = distinct !DILexicalBlock(scope: !2731, file: !124, line: 515, column: 5)
!2750 = !DILocalVariable(name: "c", scope: !2725, file: !124, line: 520, type: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_constraints", file: !86, line: 67, size: 320, elements: !2752)
!2752 = !{!2753, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2751, file: !86, line: 68, baseType: !2754, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_sched_constraint_type_t", file: !86, line: 66, baseType: !234)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_priority_class", scope: !2751, file: !86, line: 79, baseType: !29, size: 8, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2751, file: !86, line: 80, baseType: !2757, size: 256, offset: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2751, file: !86, line: 80, size: 256, elements: !2758)
!2758 = !{!2759, !2765, !2772}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !2757, file: !86, line: 81, baseType: !2760, size: 192)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_periodic_constraints", file: !86, line: 49, size: 192, elements: !2761)
!2761 = !{!2762, !2763, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2760, file: !86, line: 50, baseType: !25, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2760, file: !86, line: 51, baseType: !25, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2760, file: !86, line: 52, baseType: !25, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "sporadic", scope: !2757, file: !86, line: 82, baseType: !2766, size: 256)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_sporadic_constraints", file: !86, line: 55, size: 256, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !2766, file: !86, line: 56, baseType: !25, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2766, file: !86, line: 57, baseType: !25, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2766, file: !86, line: 58, baseType: !25, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic_priority", scope: !2766, file: !86, line: 59, baseType: !25, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "aperiodic", scope: !2757, file: !86, line: 83, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nk_sched_aperiodic_constraints", file: !86, line: 62, size: 64, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2773, file: !86, line: 63, baseType: !25, size: 64)
!2776 = !DILocalVariable(name: "_p", scope: !2777, file: !124, line: 525, type: !48)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !124, line: 525, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !124, line: 525, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !124, line: 525, column: 5)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !124, line: 524, column: 47)
!2781 = distinct !DILexicalBlock(scope: !2725, file: !124, line: 524, column: 7)
!2782 = !DILocalVariable(name: "_t", scope: !2777, file: !124, line: 525, type: !160)
!2783 = !DILocalVariable(name: "__r", scope: !2784, file: !124, line: 525, type: !291)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !124, line: 525, column: 5)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !124, line: 525, column: 5)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !124, line: 525, column: 5)
!2787 = distinct !DILexicalBlock(scope: !2777, file: !124, line: 525, column: 5)
!2788 = !DILocalVariable(name: "__r", scope: !2789, file: !124, line: 525, type: !291)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !124, line: 525, column: 5)
!2790 = !DILocalVariable(name: "__r", scope: !2791, file: !124, line: 525, type: !291)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !124, line: 525, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !124, line: 525, column: 5)
!2793 = !DILocalVariable(name: "__r", scope: !2794, file: !124, line: 525, type: !291)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !124, line: 525, column: 5)
!2795 = !DILocalVariable(name: "_p", scope: !2796, file: !124, line: 525, type: !48)
!2796 = distinct !DILexicalBlock(scope: !2778, file: !124, line: 525, column: 5)
!2797 = !DILocalVariable(name: "state", scope: !2725, file: !124, line: 534, type: !1437)
!2798 = !DILocalVariable(name: "_p", scope: !2799, file: !124, line: 536, type: !48)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !124, line: 536, column: 5)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !124, line: 536, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !124, line: 536, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !124, line: 535, column: 17)
!2803 = distinct !DILexicalBlock(scope: !2725, file: !124, line: 535, column: 7)
!2804 = !DILocalVariable(name: "_t", scope: !2799, file: !124, line: 536, type: !160)
!2805 = !DILocalVariable(name: "__r", scope: !2806, file: !124, line: 536, type: !291)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !124, line: 536, column: 5)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !124, line: 536, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !124, line: 536, column: 5)
!2809 = distinct !DILexicalBlock(scope: !2799, file: !124, line: 536, column: 5)
!2810 = !DILocalVariable(name: "__r", scope: !2811, file: !124, line: 536, type: !291)
!2811 = distinct !DILexicalBlock(scope: !2806, file: !124, line: 536, column: 5)
!2812 = !DILocalVariable(name: "__r", scope: !2813, file: !124, line: 536, type: !291)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !124, line: 536, column: 5)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !124, line: 536, column: 5)
!2815 = !DILocalVariable(name: "__r", scope: !2816, file: !124, line: 536, type: !291)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !124, line: 536, column: 5)
!2817 = !DILocalVariable(name: "_p", scope: !2818, file: !124, line: 536, type: !48)
!2818 = distinct !DILexicalBlock(scope: !2800, file: !124, line: 536, column: 5)
!2819 = !DILocalVariable(name: "idle_fiber_ptr", scope: !2725, file: !124, line: 541, type: !240)
!2820 = !DILocalVariable(name: "_p", scope: !2821, file: !124, line: 543, type: !48)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !124, line: 543, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !124, line: 543, column: 5)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !124, line: 543, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !124, line: 542, column: 71)
!2825 = distinct !DILexicalBlock(scope: !2725, file: !124, line: 542, column: 7)
!2826 = !DILocalVariable(name: "_t", scope: !2821, file: !124, line: 543, type: !160)
!2827 = !DILocalVariable(name: "__r", scope: !2828, file: !124, line: 543, type: !291)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !124, line: 543, column: 5)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 543, column: 5)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !124, line: 543, column: 5)
!2831 = distinct !DILexicalBlock(scope: !2821, file: !124, line: 543, column: 5)
!2832 = !DILocalVariable(name: "__r", scope: !2833, file: !124, line: 543, type: !291)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !124, line: 543, column: 5)
!2834 = !DILocalVariable(name: "__r", scope: !2835, file: !124, line: 543, type: !291)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !124, line: 543, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !124, line: 543, column: 5)
!2837 = !DILocalVariable(name: "__r", scope: !2838, file: !124, line: 543, type: !291)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !124, line: 543, column: 5)
!2839 = !DILocalVariable(name: "_p", scope: !2840, file: !124, line: 543, type: !48)
!2840 = distinct !DILexicalBlock(scope: !2822, file: !124, line: 543, column: 5)
!2841 = !DILocation(line: 511, column: 27, scope: !2725)
!2842 = !DILocation(line: 511, column: 38, scope: !2725)
!2843 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 514, column: 22, scope: !2734)
!2845 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2844)
!2846 = !DILocation(line: 514, column: 22, scope: !2734)
!2847 = !DILocation(line: 514, column: 7, scope: !2734)
!2848 = !DILocation(line: 514, column: 7, scope: !2725)
!2849 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 515, column: 5, scope: !2731)
!2851 = !DILocation(line: 515, column: 5, scope: !2731)
!2852 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 0, scope: !2731)
!2855 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2854)
!2856 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2854)
!2857 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2854)
!2858 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2854)
!2859 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2854)
!2860 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2854)
!2861 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2854)
!2862 = !DILocation(line: 0, scope: !2260, inlinedAt: !2854)
!2863 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 0, scope: !2731)
!2866 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2865)
!2867 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2865)
!2868 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2865)
!2869 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2865)
!2870 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2865)
!2871 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2865)
!2872 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2865)
!2873 = !DILocation(line: 515, column: 5, scope: !2732)
!2874 = !DILocation(line: 515, column: 5, scope: !2730)
!2875 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 515, column: 5, scope: !2730)
!2877 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2876)
!2878 = !DILocation(line: 515, column: 5, scope: !2739)
!2879 = !DILocation(line: 0, scope: !2739)
!2880 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 0, scope: !2739)
!2884 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2882)
!2885 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2882)
!2886 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2882)
!2887 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2882)
!2888 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2882)
!2889 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2882)
!2890 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2882)
!2891 = !DILocation(line: 515, column: 5, scope: !2740)
!2892 = !DILocation(line: 515, column: 5, scope: !2738)
!2893 = !DILocation(line: 515, column: 5, scope: !2745)
!2894 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 515, column: 5, scope: !2730)
!2897 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2896)
!2898 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2896)
!2899 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2896)
!2900 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2896)
!2901 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2896)
!2902 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2896)
!2903 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2896)
!2904 = !DILocation(line: 515, column: 5, scope: !2749)
!2905 = !DILocation(line: 515, column: 5, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !124, line: 515, column: 5)
!2907 = distinct !DILexicalBlock(scope: !2749, file: !124, line: 515, column: 5)
!2908 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 0, scope: !2906)
!2912 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2910)
!2913 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2910)
!2914 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2910)
!2915 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2910)
!2916 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2910)
!2917 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2910)
!2918 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2910)
!2919 = !DILocation(line: 0, scope: !2906)
!2920 = !DILocation(line: 515, column: 5, scope: !2907)
!2921 = !DILocation(line: 515, column: 5, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2906, file: !124, line: 515, column: 5)
!2923 = !DILocation(line: 515, column: 5, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2906, file: !124, line: 515, column: 5)
!2925 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 515, column: 5, scope: !2749)
!2928 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2927)
!2929 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2927)
!2930 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2927)
!2931 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2927)
!2932 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2927)
!2933 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2927)
!2934 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2927)
!2935 = !DILocation(line: 520, column: 3, scope: !2725)
!2936 = !DILocation(line: 520, column: 31, scope: !2725)
!2937 = !DILocation(line: 524, column: 7, scope: !2781)
!2938 = !DILocation(line: 0, scope: !2725)
!2939 = !DILocation(line: 524, column: 7, scope: !2725)
!2940 = !DILocation(line: 525, column: 5, scope: !2778)
!2941 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 0, scope: !2778)
!2944 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !2943)
!2945 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !2943)
!2946 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !2943)
!2947 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !2943)
!2948 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !2943)
!2949 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !2943)
!2950 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !2943)
!2951 = !DILocation(line: 0, scope: !2260, inlinedAt: !2943)
!2952 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 0, scope: !2778)
!2955 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !2954)
!2956 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !2954)
!2957 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !2954)
!2958 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !2954)
!2959 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !2954)
!2960 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !2954)
!2961 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !2954)
!2962 = !DILocation(line: 525, column: 5, scope: !2779)
!2963 = !DILocation(line: 525, column: 5, scope: !2777)
!2964 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 525, column: 5, scope: !2777)
!2966 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !2965)
!2967 = !DILocation(line: 525, column: 5, scope: !2786)
!2968 = !DILocation(line: 0, scope: !2786)
!2969 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 0, scope: !2786)
!2973 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2971)
!2974 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2971)
!2975 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2971)
!2976 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2971)
!2977 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2971)
!2978 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2971)
!2979 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2971)
!2980 = !DILocation(line: 525, column: 5, scope: !2787)
!2981 = !DILocation(line: 525, column: 5, scope: !2785)
!2982 = !DILocation(line: 525, column: 5, scope: !2792)
!2983 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 525, column: 5, scope: !2777)
!2986 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !2985)
!2987 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !2985)
!2988 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !2985)
!2989 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !2985)
!2990 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !2985)
!2991 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !2985)
!2992 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !2985)
!2993 = !DILocation(line: 525, column: 5, scope: !2796)
!2994 = !DILocation(line: 525, column: 5, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !124, line: 525, column: 5)
!2996 = distinct !DILexicalBlock(scope: !2796, file: !124, line: 525, column: 5)
!2997 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 0, scope: !2995)
!3001 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !2999)
!3002 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !2999)
!3003 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !2999)
!3004 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !2999)
!3005 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !2999)
!3006 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !2999)
!3007 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !2999)
!3008 = !DILocation(line: 0, scope: !2995)
!3009 = !DILocation(line: 525, column: 5, scope: !2996)
!3010 = !DILocation(line: 525, column: 5, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2995, file: !124, line: 525, column: 5)
!3012 = !DILocation(line: 525, column: 5, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2995, file: !124, line: 525, column: 5)
!3014 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 525, column: 5, scope: !2796)
!3017 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3016)
!3018 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3016)
!3019 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3016)
!3020 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3016)
!3021 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3016)
!3022 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3016)
!3023 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3016)
!3024 = !DILocation(line: 526, column: 5, scope: !2780)
!3025 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 534, column: 24, scope: !2725)
!3028 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3027)
!3029 = !DILocation(line: 534, column: 16, scope: !2725)
!3030 = !DILocation(line: 535, column: 8, scope: !2803)
!3031 = !DILocation(line: 535, column: 7, scope: !2725)
!3032 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 536, column: 5, scope: !2800)
!3034 = !DILocation(line: 536, column: 5, scope: !2800)
!3035 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 0, scope: !2800)
!3038 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !3037)
!3039 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !3037)
!3040 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !3037)
!3041 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !3037)
!3042 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !3037)
!3043 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !3037)
!3044 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !3037)
!3045 = !DILocation(line: 0, scope: !2260, inlinedAt: !3037)
!3046 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 0, scope: !2800)
!3049 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !3048)
!3050 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !3048)
!3051 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !3048)
!3052 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !3048)
!3053 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !3048)
!3054 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !3048)
!3055 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !3048)
!3056 = !DILocation(line: 536, column: 5, scope: !2801)
!3057 = !DILocation(line: 536, column: 5, scope: !2799)
!3058 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 536, column: 5, scope: !2799)
!3060 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3059)
!3061 = !DILocation(line: 536, column: 5, scope: !2808)
!3062 = !DILocation(line: 0, scope: !2808)
!3063 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 0, scope: !2808)
!3067 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3065)
!3068 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3065)
!3069 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3065)
!3070 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3065)
!3071 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3065)
!3072 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3065)
!3073 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3065)
!3074 = !DILocation(line: 536, column: 5, scope: !2809)
!3075 = !DILocation(line: 536, column: 5, scope: !2807)
!3076 = !DILocation(line: 536, column: 5, scope: !2814)
!3077 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 536, column: 5, scope: !2799)
!3080 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3079)
!3081 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3079)
!3082 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3079)
!3083 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3079)
!3084 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3079)
!3085 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3079)
!3086 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3079)
!3087 = !DILocation(line: 536, column: 5, scope: !2818)
!3088 = !DILocation(line: 536, column: 5, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !124, line: 536, column: 5)
!3090 = distinct !DILexicalBlock(scope: !2818, file: !124, line: 536, column: 5)
!3091 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 0, scope: !3089)
!3095 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3093)
!3096 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3093)
!3097 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3093)
!3098 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3093)
!3099 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3093)
!3100 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3093)
!3101 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3093)
!3102 = !DILocation(line: 0, scope: !3089)
!3103 = !DILocation(line: 536, column: 5, scope: !3090)
!3104 = !DILocation(line: 536, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3089, file: !124, line: 536, column: 5)
!3106 = !DILocation(line: 536, column: 5, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3089, file: !124, line: 536, column: 5)
!3108 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 536, column: 5, scope: !2818)
!3111 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3110)
!3112 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3110)
!3113 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3110)
!3114 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3110)
!3115 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3110)
!3116 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3110)
!3117 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3110)
!3118 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 538, column: 25, scope: !2725)
!3120 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3119)
!3121 = !DILocation(line: 538, column: 10, scope: !2725)
!3122 = !DILocation(line: 538, column: 23, scope: !2725)
!3123 = !DILocation(line: 541, column: 3, scope: !2725)
!3124 = !DILocation(line: 541, column: 15, scope: !2725)
!3125 = !DILocation(line: 542, column: 7, scope: !2825)
!3126 = !DILocation(line: 542, column: 66, scope: !2825)
!3127 = !DILocation(line: 542, column: 7, scope: !2725)
!3128 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 543, column: 5, scope: !2822)
!3130 = !DILocation(line: 543, column: 5, scope: !2822)
!3131 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 0, scope: !2822)
!3134 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !3133)
!3135 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !3133)
!3136 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !3133)
!3137 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !3133)
!3138 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !3133)
!3139 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !3133)
!3140 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !3133)
!3141 = !DILocation(line: 0, scope: !2260, inlinedAt: !3133)
!3142 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 0, scope: !2822)
!3145 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !3144)
!3146 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !3144)
!3147 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !3144)
!3148 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !3144)
!3149 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !3144)
!3150 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !3144)
!3151 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !3144)
!3152 = !DILocation(line: 543, column: 5, scope: !2823)
!3153 = !DILocation(line: 543, column: 5, scope: !2821)
!3154 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 543, column: 5, scope: !2821)
!3156 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3155)
!3157 = !DILocation(line: 543, column: 5, scope: !2830)
!3158 = !DILocation(line: 0, scope: !2830)
!3159 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 0, scope: !2830)
!3163 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3161)
!3164 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3161)
!3165 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3161)
!3166 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3161)
!3167 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3161)
!3168 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3161)
!3169 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3161)
!3170 = !DILocation(line: 543, column: 5, scope: !2831)
!3171 = !DILocation(line: 543, column: 5, scope: !2829)
!3172 = !DILocation(line: 543, column: 5, scope: !2836)
!3173 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 543, column: 5, scope: !2821)
!3176 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3175)
!3177 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3175)
!3178 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3175)
!3179 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3175)
!3180 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3175)
!3181 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3175)
!3182 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3175)
!3183 = !DILocation(line: 543, column: 5, scope: !2840)
!3184 = !DILocation(line: 543, column: 5, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !124, line: 543, column: 5)
!3186 = distinct !DILexicalBlock(scope: !2840, file: !124, line: 543, column: 5)
!3187 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 0, scope: !3185)
!3191 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3189)
!3192 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3189)
!3193 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3189)
!3194 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3189)
!3195 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3189)
!3196 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3189)
!3197 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3189)
!3198 = !DILocation(line: 0, scope: !3185)
!3199 = !DILocation(line: 543, column: 5, scope: !3186)
!3200 = !DILocation(line: 543, column: 5, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3185, file: !124, line: 543, column: 5)
!3202 = !DILocation(line: 543, column: 5, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3185, file: !124, line: 543, column: 5)
!3204 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 543, column: 5, scope: !2840)
!3207 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3206)
!3208 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3206)
!3209 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3206)
!3210 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3206)
!3211 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3206)
!3212 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3206)
!3213 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3206)
!3214 = !DILocation(line: 547, column: 23, scope: !2725)
!3215 = !DILocation(line: 547, column: 10, scope: !2725)
!3216 = !DILocation(line: 547, column: 21, scope: !2725)
!3217 = !DILocation(line: 548, column: 10, scope: !2725)
!3218 = !DILocation(line: 548, column: 21, scope: !2725)
!3219 = !DILocation(line: 551, column: 3, scope: !2725)
!3220 = !DILocation(line: 551, column: 19, scope: !2725)
!3221 = !DILocation(line: 551, column: 27, scope: !2725)
!3222 = !DILocation(line: 198, column: 33, scope: !1847, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 554, column: 3, scope: !2725)
!3224 = !DILocation(line: 202, column: 9, scope: !1847, inlinedAt: !3223)
!3225 = !DILocation(line: 202, column: 19, scope: !1847, inlinedAt: !3223)
!3226 = !DILocation(line: 202, column: 32, scope: !1847, inlinedAt: !3223)
!3227 = !DILocation(line: 202, column: 3, scope: !1847, inlinedAt: !3223)
!3228 = !DILocation(line: 208, column: 3, scope: !1847, inlinedAt: !3223)
!3229 = !DILocation(line: 557, column: 1, scope: !2725)
!3230 = distinct !DISubprogram(name: "__nk_fiber_idle", scope: !124, file: !124, line: 479, type: !81, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3231)
!3231 = !{!3232, !3233}
!3232 = !DILocalVariable(name: "in", arg: 1, scope: !3230, file: !124, line: 479, type: !31)
!3233 = !DILocalVariable(name: "out", arg: 2, scope: !3230, file: !124, line: 479, type: !75)
!3234 = !DILocation(line: 479, column: 35, scope: !3230)
!3235 = !DILocation(line: 479, column: 46, scope: !3230)
!3236 = !DILocation(line: 481, column: 3, scope: !3230)
!3237 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 704, column: 7, scope: !3241, inlinedAt: !3245)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !124, line: 704, column: 7)
!3242 = distinct !DISubprogram(name: "nk_fiber_yield", scope: !124, file: !124, line: 702, type: !507, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3243)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "f_to", scope: !3242, file: !124, line: 708, type: !240)
!3245 = distinct !DILocation(line: 489, column: 5, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3230, file: !124, line: 481, column: 13)
!3247 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3238)
!3248 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3239)
!3249 = !DILocation(line: 98, column: 30, scope: !1467, inlinedAt: !3240)
!3250 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 704, column: 30, scope: !3241, inlinedAt: !3245)
!3252 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3251)
!3253 = !DILocation(line: 704, column: 27, scope: !3241, inlinedAt: !3245)
!3254 = !DILocation(line: 704, column: 7, scope: !3242, inlinedAt: !3245)
!3255 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 708, column: 22, scope: !3242, inlinedAt: !3245)
!3260 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3256)
!3261 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3257)
!3262 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !3258)
!3263 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !3259)
!3264 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !3259)
!3265 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !3259)
!3267 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !3266)
!3268 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !3266)
!3269 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !3259)
!3270 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !3259)
!3271 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !3259)
!3272 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !3259)
!3274 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !3273)
!3275 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !3273)
!3276 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !3273)
!3278 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !3277)
!3279 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !3277)
!3280 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !3277)
!3281 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !3277)
!3282 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !3277)
!3283 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !3273)
!3285 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3284)
!3286 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3284)
!3287 = !DILocation(line: 708, column: 15, scope: !3242, inlinedAt: !3245)
!3288 = !DILocation(line: 718, column: 12, scope: !3289, inlinedAt: !3245)
!3289 = distinct !DILexicalBlock(scope: !3242, file: !124, line: 718, column: 7)
!3290 = !DILocation(line: 718, column: 7, scope: !3242, inlinedAt: !3245)
!3291 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 719, column: 9, scope: !3295, inlinedAt: !3245)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !124, line: 719, column: 9)
!3296 = distinct !DILexicalBlock(scope: !3289, file: !124, line: 718, column: 21)
!3297 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3292)
!3298 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3293)
!3299 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !3294)
!3300 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 719, column: 31, scope: !3295, inlinedAt: !3245)
!3304 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3301)
!3305 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3302)
!3306 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !3303)
!3307 = !DILocation(line: 719, column: 28, scope: !3295, inlinedAt: !3245)
!3308 = !DILocation(line: 719, column: 9, scope: !3296, inlinedAt: !3245)
!3309 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 723, column: 16, scope: !3313, inlinedAt: !3245)
!3313 = distinct !DILexicalBlock(scope: !3295, file: !124, line: 722, column: 12)
!3314 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3310)
!3315 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3311)
!3316 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !3312)
!3317 = !DILocation(line: 725, column: 3, scope: !3296, inlinedAt: !3245)
!3318 = !DILocation(line: 0, scope: !3242, inlinedAt: !3245)
!3319 = !DILocation(line: 727, column: 10, scope: !3242, inlinedAt: !3245)
!3320 = !DILocation(line: 727, column: 3, scope: !3242, inlinedAt: !3245)
!3321 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 490, column: 28, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3246, file: !124, line: 490, column: 9)
!3326 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3322)
!3327 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3323)
!3328 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !3324)
!3329 = !DILocalVariable(name: "head", arg: 1, scope: !3330, file: !53, line: 201, type: !1504)
!3330 = distinct !DISubprogram(name: "list_empty_careful", scope: !53, file: !53, line: 201, type: !1517, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3331)
!3331 = !{!3329, !3332}
!3332 = !DILocalVariable(name: "next", scope: !3330, file: !53, line: 203, type: !150)
!3333 = !DILocation(line: 201, column: 62, scope: !3330, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 490, column: 9, scope: !3325)
!3335 = !DILocation(line: 203, column: 33, scope: !3330, inlinedAt: !3334)
!3336 = !DILocation(line: 203, column: 20, scope: !3330, inlinedAt: !3334)
!3337 = !DILocation(line: 204, column: 15, scope: !3330, inlinedAt: !3334)
!3338 = !DILocation(line: 204, column: 24, scope: !3330, inlinedAt: !3334)
!3339 = !DILocation(line: 204, column: 42, scope: !3330, inlinedAt: !3334)
!3340 = !DILocation(line: 204, column: 33, scope: !3330, inlinedAt: !3334)
!3341 = !DILocation(line: 490, column: 9, scope: !3246)
!3342 = !DILocation(line: 489, column: 5, scope: !3246)
!3343 = distinct !{!3343, !3236, !3344}
!3344 = !DILocation(line: 508, column: 3, scope: !3230)
!3345 = !DILocation(line: 492, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3325, file: !124, line: 490, column: 47)
!3347 = !DILocation(line: 494, column: 5, scope: !3346)
!3348 = !DILocation(line: 602, column: 36, scope: !602)
!3349 = !DILocation(line: 602, column: 47, scope: !602)
!3350 = !DILocation(line: 602, column: 61, scope: !602)
!3351 = !DILocation(line: 602, column: 85, scope: !602)
!3352 = !DILocation(line: 602, column: 110, scope: !602)
!3353 = !DILocation(line: 605, column: 15, scope: !602)
!3354 = !DILocation(line: 608, column: 41, scope: !602)
!3355 = !DILocation(line: 608, column: 19, scope: !602)
!3356 = !DILocation(line: 611, column: 11, scope: !613)
!3357 = !DILocation(line: 614, column: 8, scope: !626)
!3358 = !DILocation(line: 614, column: 7, scope: !602)
!3359 = !DILocation(line: 620, column: 3, scope: !602)
!3360 = !DILocation(line: 623, column: 10, scope: !602)
!3361 = !DILocation(line: 623, column: 19, scope: !602)
!3362 = !DILocation(line: 625, column: 10, scope: !602)
!3363 = !DILocation(line: 625, column: 21, scope: !602)
!3364 = !DILocation(line: 628, column: 26, scope: !615)
!3365 = !DILocation(line: 628, column: 10, scope: !602)
!3366 = !DILocation(line: 628, column: 16, scope: !602)
!3367 = !DILocation(line: 631, column: 8, scope: !637)
!3368 = !DILocation(line: 631, column: 7, scope: !602)
!3369 = !DILocation(line: 634, column: 5, scope: !640)
!3370 = !DILocation(line: 635, column: 5, scope: !640)
!3371 = !DILocation(line: 639, column: 10, scope: !602)
!3372 = !DILocation(line: 639, column: 14, scope: !602)
!3373 = !DILocation(line: 640, column: 10, scope: !602)
!3374 = !DILocation(line: 640, column: 16, scope: !602)
!3375 = !DILocation(line: 641, column: 10, scope: !602)
!3376 = !DILocation(line: 641, column: 17, scope: !602)
!3377 = !DILocation(line: 274, column: 33, scope: !649, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 644, column: 3, scope: !602)
!3379 = !DILocation(line: 276, column: 37, scope: !649, inlinedAt: !3378)
!3380 = !DILocation(line: 276, column: 6, scope: !649, inlinedAt: !3378)
!3381 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 277, column: 3, scope: !649, inlinedAt: !3378)
!3383 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3382)
!3384 = !DILocation(line: 276, column: 32, scope: !649, inlinedAt: !3378)
!3385 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3382)
!3386 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3382)
!3387 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3382)
!3388 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 278, column: 3, scope: !649, inlinedAt: !3378)
!3390 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3389)
!3391 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3389)
!3392 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3389)
!3393 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3389)
!3394 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 279, column: 3, scope: !649, inlinedAt: !3378)
!3396 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3395)
!3397 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3395)
!3398 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3395)
!3399 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3395)
!3400 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 280, column: 3, scope: !649, inlinedAt: !3378)
!3402 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3401)
!3403 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3401)
!3404 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3401)
!3405 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3401)
!3406 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 281, column: 3, scope: !649, inlinedAt: !3378)
!3408 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3407)
!3409 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3407)
!3410 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3407)
!3411 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3407)
!3412 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 282, column: 3, scope: !649, inlinedAt: !3378)
!3414 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3413)
!3415 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3413)
!3416 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3413)
!3417 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3413)
!3418 = !DILocation(line: 283, column: 18, scope: !649, inlinedAt: !3378)
!3419 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 283, column: 3, scope: !649, inlinedAt: !3378)
!3421 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3420)
!3422 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3420)
!3423 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3420)
!3424 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3420)
!3425 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 284, column: 3, scope: !649, inlinedAt: !3378)
!3427 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3426)
!3428 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3426)
!3429 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3426)
!3430 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3426)
!3431 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 285, column: 3, scope: !649, inlinedAt: !3378)
!3433 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3432)
!3434 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3432)
!3435 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3432)
!3436 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3432)
!3437 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 286, column: 3, scope: !649, inlinedAt: !3378)
!3439 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3438)
!3440 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3438)
!3441 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3438)
!3442 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3438)
!3443 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 287, column: 3, scope: !649, inlinedAt: !3378)
!3445 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3444)
!3446 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3444)
!3447 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3444)
!3448 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3444)
!3449 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 288, column: 3, scope: !649, inlinedAt: !3378)
!3451 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3450)
!3452 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3450)
!3453 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3450)
!3454 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3450)
!3455 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 289, column: 3, scope: !649, inlinedAt: !3378)
!3457 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3456)
!3458 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3456)
!3459 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3456)
!3460 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3456)
!3461 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 290, column: 3, scope: !649, inlinedAt: !3378)
!3463 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3462)
!3464 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3462)
!3465 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3462)
!3466 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3462)
!3467 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 291, column: 3, scope: !649, inlinedAt: !3378)
!3469 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3468)
!3470 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3468)
!3471 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3468)
!3472 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3468)
!3473 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 292, column: 3, scope: !649, inlinedAt: !3378)
!3475 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !3474)
!3476 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !3474)
!3477 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !3474)
!3478 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !3474)
!3479 = !DILocation(line: 647, column: 7, scope: !763)
!3480 = !DILocation(line: 647, column: 7, scope: !602)
!3481 = !DILocation(line: 648, column: 19, scope: !762)
!3482 = !DILocation(line: 649, column: 3, scope: !762)
!3483 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 650, column: 15, scope: !602)
!3485 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3484)
!3486 = !DILocation(line: 650, column: 33, scope: !602)
!3487 = !DILocation(line: 650, column: 10, scope: !602)
!3488 = !DILocation(line: 650, column: 13, scope: !602)
!3489 = !DILocation(line: 653, column: 27, scope: !602)
!3490 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 653, column: 3, scope: !602)
!3492 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3491)
!3493 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3491)
!3494 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3491)
!3495 = !DILocation(line: 656, column: 10, scope: !602)
!3496 = !DILocation(line: 656, column: 19, scope: !602)
!3497 = !DILocation(line: 657, column: 27, scope: !602)
!3498 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 657, column: 3, scope: !602)
!3500 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3499)
!3501 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3499)
!3502 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3499)
!3503 = !DILocation(line: 658, column: 27, scope: !602)
!3504 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 658, column: 3, scope: !602)
!3506 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3505)
!3507 = !DILocation(line: 76, column: 8, scope: !781, inlinedAt: !3505)
!3508 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3505)
!3509 = !DILocation(line: 660, column: 3, scope: !602)
!3510 = !DILocation(line: 0, scope: !602)
!3511 = !DILocation(line: 661, column: 1, scope: !602)
!3512 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 704, column: 7, scope: !3241)
!3516 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3513)
!3517 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3514)
!3518 = !DILocation(line: 98, column: 30, scope: !1467, inlinedAt: !3515)
!3519 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 704, column: 30, scope: !3241)
!3521 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3520)
!3522 = !DILocation(line: 704, column: 27, scope: !3241)
!3523 = !DILocation(line: 704, column: 7, scope: !3242)
!3524 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 708, column: 22, scope: !3242)
!3529 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3525)
!3530 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3526)
!3531 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !3527)
!3532 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !3528)
!3533 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !3528)
!3534 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !3528)
!3536 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !3535)
!3537 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !3535)
!3538 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !3528)
!3539 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !3528)
!3540 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !3528)
!3541 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !3528)
!3543 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !3542)
!3544 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !3542)
!3545 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !3542)
!3547 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !3546)
!3548 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !3546)
!3549 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !3546)
!3550 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !3546)
!3551 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !3546)
!3552 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !3542)
!3554 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3553)
!3555 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3553)
!3556 = !DILocation(line: 708, column: 15, scope: !3242)
!3557 = !DILocation(line: 718, column: 12, scope: !3289)
!3558 = !DILocation(line: 718, column: 7, scope: !3242)
!3559 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 719, column: 9, scope: !3295)
!3563 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3560)
!3564 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3561)
!3565 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !3562)
!3566 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 719, column: 31, scope: !3295)
!3570 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3567)
!3571 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3568)
!3572 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !3569)
!3573 = !DILocation(line: 719, column: 28, scope: !3295)
!3574 = !DILocation(line: 719, column: 9, scope: !3296)
!3575 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 723, column: 16, scope: !3313)
!3579 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3576)
!3580 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3577)
!3581 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !3578)
!3582 = !DILocation(line: 725, column: 3, scope: !3296)
!3583 = !DILocation(line: 0, scope: !3242)
!3584 = !DILocation(line: 727, column: 10, scope: !3242)
!3585 = !DILocation(line: 727, column: 3, scope: !3242)
!3586 = !DILocation(line: 728, column: 1, scope: !3242)
!3587 = distinct !DISubprogram(name: "nk_fiber_startup", scope: !124, file: !124, line: 570, type: !2081, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3588)
!3588 = !{!3589, !3590, !3594, !3595, !3600, !3602, !3605, !3607, !3609, !3615, !3616, !3621, !3623, !3626, !3628}
!3589 = !DILocalVariable(name: "my_cpu", scope: !3587, file: !124, line: 572, type: !270)
!3590 = !DILocalVariable(name: "_p", scope: !3591, file: !124, line: 573, type: !48)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !124, line: 573, column: 5)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !124, line: 573, column: 5)
!3593 = distinct !DILexicalBlock(scope: !3587, file: !124, line: 573, column: 5)
!3594 = !DILocalVariable(name: "_t", scope: !3591, file: !124, line: 573, type: !160)
!3595 = !DILocalVariable(name: "__r", scope: !3596, file: !124, line: 573, type: !291)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !124, line: 573, column: 5)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !124, line: 573, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !124, line: 573, column: 5)
!3599 = distinct !DILexicalBlock(scope: !3591, file: !124, line: 573, column: 5)
!3600 = !DILocalVariable(name: "__r", scope: !3601, file: !124, line: 573, type: !291)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !124, line: 573, column: 5)
!3602 = !DILocalVariable(name: "__r", scope: !3603, file: !124, line: 573, type: !291)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !124, line: 573, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3598, file: !124, line: 573, column: 5)
!3605 = !DILocalVariable(name: "__r", scope: !3606, file: !124, line: 573, type: !291)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !124, line: 573, column: 5)
!3607 = !DILocalVariable(name: "_p", scope: !3608, file: !124, line: 573, type: !48)
!3608 = distinct !DILexicalBlock(scope: !3592, file: !124, line: 573, column: 5)
!3609 = !DILocalVariable(name: "_p", scope: !3610, file: !124, line: 575, type: !48)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !124, line: 575, column: 2)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !124, line: 575, column: 2)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !124, line: 575, column: 2)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !124, line: 574, column: 45)
!3614 = distinct !DILexicalBlock(scope: !3587, file: !124, line: 574, column: 9)
!3615 = !DILocalVariable(name: "_t", scope: !3610, file: !124, line: 575, type: !160)
!3616 = !DILocalVariable(name: "__r", scope: !3617, file: !124, line: 575, type: !291)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !124, line: 575, column: 2)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !124, line: 575, column: 2)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !124, line: 575, column: 2)
!3620 = distinct !DILexicalBlock(scope: !3610, file: !124, line: 575, column: 2)
!3621 = !DILocalVariable(name: "__r", scope: !3622, file: !124, line: 575, type: !291)
!3622 = distinct !DILexicalBlock(scope: !3617, file: !124, line: 575, column: 2)
!3623 = !DILocalVariable(name: "__r", scope: !3624, file: !124, line: 575, type: !291)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !124, line: 575, column: 2)
!3625 = distinct !DILexicalBlock(scope: !3619, file: !124, line: 575, column: 2)
!3626 = !DILocalVariable(name: "__r", scope: !3627, file: !124, line: 575, type: !291)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !124, line: 575, column: 2)
!3628 = !DILocalVariable(name: "_p", scope: !3629, file: !124, line: 575, type: !48)
!3629 = distinct !DILexicalBlock(scope: !3611, file: !124, line: 575, column: 2)
!3630 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 572, column: 26, scope: !3587)
!3632 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3631)
!3633 = !DILocation(line: 572, column: 17, scope: !3587)
!3634 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 573, column: 5, scope: !3592)
!3636 = !DILocation(line: 573, column: 5, scope: !3592)
!3637 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 0, scope: !3592)
!3640 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !3639)
!3641 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !3639)
!3642 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !3639)
!3643 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !3639)
!3644 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !3639)
!3645 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !3639)
!3646 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !3639)
!3647 = !DILocation(line: 0, scope: !2260, inlinedAt: !3639)
!3648 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 0, scope: !3592)
!3651 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !3650)
!3652 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !3650)
!3653 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !3650)
!3654 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !3650)
!3655 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !3650)
!3656 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !3650)
!3657 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !3650)
!3658 = !DILocation(line: 573, column: 5, scope: !3593)
!3659 = !DILocation(line: 573, column: 5, scope: !3591)
!3660 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 573, column: 5, scope: !3591)
!3662 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3661)
!3663 = !DILocation(line: 573, column: 5, scope: !3598)
!3664 = !DILocation(line: 0, scope: !3598)
!3665 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 0, scope: !3598)
!3669 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3667)
!3670 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3667)
!3671 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3667)
!3672 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3667)
!3673 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3667)
!3674 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3667)
!3675 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3667)
!3676 = !DILocation(line: 573, column: 5, scope: !3599)
!3677 = !DILocation(line: 573, column: 5, scope: !3597)
!3678 = !DILocation(line: 573, column: 5, scope: !3604)
!3679 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 573, column: 5, scope: !3591)
!3682 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3681)
!3683 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3681)
!3684 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3681)
!3685 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3681)
!3686 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3681)
!3687 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3681)
!3688 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3681)
!3689 = !DILocation(line: 573, column: 5, scope: !3608)
!3690 = !DILocation(line: 573, column: 5, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !124, line: 573, column: 5)
!3692 = distinct !DILexicalBlock(scope: !3608, file: !124, line: 573, column: 5)
!3693 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 0, scope: !3691)
!3697 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3695)
!3698 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3695)
!3699 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3695)
!3700 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3695)
!3701 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3695)
!3702 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3695)
!3703 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3695)
!3704 = !DILocation(line: 0, scope: !3691)
!3705 = !DILocation(line: 573, column: 5, scope: !3692)
!3706 = !DILocation(line: 573, column: 5, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3691, file: !124, line: 573, column: 5)
!3708 = !DILocation(line: 573, column: 5, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3691, file: !124, line: 573, column: 5)
!3710 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 573, column: 5, scope: !3608)
!3713 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3712)
!3714 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3712)
!3715 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3712)
!3716 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3712)
!3717 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3712)
!3718 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3712)
!3719 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3712)
!3720 = !DILocation(line: 561, column: 3, scope: !3721, inlinedAt: !3750)
!3721 = distinct !DISubprogram(name: "__start_fiber_thread_for_this_cpu", scope: !124, file: !124, line: 559, type: !507, scopeLine: 560, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !3722)
!3722 = !{!3723, !3725, !3728, !3730, !3735, !3736, !3741, !3743, !3746, !3748}
!3723 = !DILocalVariable(name: "tid", scope: !3721, file: !124, line: 561, type: !3724)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "nk_thread_id_t", file: !16, line: 57, baseType: !31)
!3725 = !DILocalVariable(name: "__r", scope: !3726, file: !124, line: 562, type: !291)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !124, line: 562, column: 79)
!3727 = distinct !DILexicalBlock(scope: !3721, file: !124, line: 562, column: 7)
!3728 = !DILocalVariable(name: "__r", scope: !3729, file: !124, line: 562, type: !291)
!3729 = distinct !DILexicalBlock(scope: !3726, file: !124, line: 562, column: 79)
!3730 = !DILocalVariable(name: "_p", scope: !3731, file: !124, line: 563, type: !48)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !124, line: 563, column: 7)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !124, line: 563, column: 7)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !124, line: 563, column: 7)
!3734 = distinct !DILexicalBlock(scope: !3727, file: !124, line: 562, column: 93)
!3735 = !DILocalVariable(name: "_t", scope: !3731, file: !124, line: 563, type: !160)
!3736 = !DILocalVariable(name: "__r", scope: !3737, file: !124, line: 563, type: !291)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !124, line: 563, column: 7)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !124, line: 563, column: 7)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !124, line: 563, column: 7)
!3740 = distinct !DILexicalBlock(scope: !3731, file: !124, line: 563, column: 7)
!3741 = !DILocalVariable(name: "__r", scope: !3742, file: !124, line: 563, type: !291)
!3742 = distinct !DILexicalBlock(scope: !3737, file: !124, line: 563, column: 7)
!3743 = !DILocalVariable(name: "__r", scope: !3744, file: !124, line: 563, type: !291)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !124, line: 563, column: 7)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !124, line: 563, column: 7)
!3746 = !DILocalVariable(name: "__r", scope: !3747, file: !124, line: 563, type: !291)
!3747 = distinct !DILexicalBlock(scope: !3744, file: !124, line: 563, column: 7)
!3748 = !DILocalVariable(name: "_p", scope: !3749, file: !124, line: 563, type: !48)
!3749 = distinct !DILexicalBlock(scope: !3732, file: !124, line: 563, column: 7)
!3750 = distinct !DILocation(line: 574, column: 9, scope: !3614)
!3751 = !DILocation(line: 562, column: 79, scope: !3729, inlinedAt: !3750)
!3752 = !{i32 -2147099479}
!3753 = !DILocation(line: 562, column: 79, scope: !3726, inlinedAt: !3750)
!3754 = !DILocation(line: 561, column: 18, scope: !3721, inlinedAt: !3750)
!3755 = !DILocation(line: 562, column: 7, scope: !3727, inlinedAt: !3750)
!3756 = !DILocation(line: 562, column: 7, scope: !3721, inlinedAt: !3750)
!3757 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3750)
!3759 = !DILocation(line: 563, column: 7, scope: !3732, inlinedAt: !3750)
!3760 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 0, scope: !3732, inlinedAt: !3750)
!3763 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !3762)
!3764 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !3762)
!3765 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !3762)
!3766 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !3762)
!3767 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !3762)
!3768 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !3762)
!3769 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !3762)
!3770 = !DILocation(line: 0, scope: !2260, inlinedAt: !3762)
!3771 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 0, scope: !3732, inlinedAt: !3750)
!3774 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !3773)
!3775 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !3773)
!3776 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !3773)
!3777 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !3773)
!3778 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !3773)
!3779 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !3773)
!3780 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !3773)
!3781 = !DILocation(line: 563, column: 7, scope: !3733, inlinedAt: !3750)
!3782 = !DILocation(line: 563, column: 7, scope: !3731, inlinedAt: !3750)
!3783 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 563, column: 7, scope: !3731, inlinedAt: !3750)
!3785 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3784)
!3786 = !DILocation(line: 563, column: 7, scope: !3739, inlinedAt: !3750)
!3787 = !DILocation(line: 0, scope: !3739, inlinedAt: !3750)
!3788 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 0, scope: !3739, inlinedAt: !3750)
!3792 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3790)
!3793 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3790)
!3794 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3790)
!3795 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3790)
!3796 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3790)
!3797 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3790)
!3798 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3790)
!3799 = !DILocation(line: 563, column: 7, scope: !3740, inlinedAt: !3750)
!3800 = !DILocation(line: 563, column: 7, scope: !3738, inlinedAt: !3750)
!3801 = !DILocation(line: 563, column: 7, scope: !3745, inlinedAt: !3750)
!3802 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 563, column: 7, scope: !3731, inlinedAt: !3750)
!3805 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3804)
!3806 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3804)
!3807 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3804)
!3808 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3804)
!3809 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3804)
!3810 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3804)
!3811 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3804)
!3812 = !DILocation(line: 563, column: 7, scope: !3749, inlinedAt: !3750)
!3813 = !DILocation(line: 563, column: 7, scope: !3814, inlinedAt: !3750)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !124, line: 563, column: 7)
!3815 = distinct !DILexicalBlock(scope: !3749, file: !124, line: 563, column: 7)
!3816 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 0, scope: !3814, inlinedAt: !3750)
!3820 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3818)
!3821 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3818)
!3822 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3818)
!3823 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3818)
!3824 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3818)
!3825 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3818)
!3826 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3818)
!3827 = !DILocation(line: 0, scope: !3814, inlinedAt: !3750)
!3828 = !DILocation(line: 563, column: 7, scope: !3815, inlinedAt: !3750)
!3829 = !DILocation(line: 563, column: 7, scope: !3830, inlinedAt: !3750)
!3830 = distinct !DILexicalBlock(scope: !3814, file: !124, line: 563, column: 7)
!3831 = !DILocation(line: 563, column: 7, scope: !3832, inlinedAt: !3750)
!3832 = distinct !DILexicalBlock(scope: !3814, file: !124, line: 563, column: 7)
!3833 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 563, column: 7, scope: !3749, inlinedAt: !3750)
!3836 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3835)
!3837 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3835)
!3838 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3835)
!3839 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3835)
!3840 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3835)
!3841 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3835)
!3842 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3835)
!3843 = !DILocation(line: 568, column: 1, scope: !3721, inlinedAt: !3750)
!3844 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 575, column: 2, scope: !3611)
!3846 = !DILocation(line: 575, column: 2, scope: !3611)
!3847 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 84, column: 18, scope: !2254, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 0, scope: !3611)
!3850 = !DILocation(line: 84, column: 11, scope: !2254, inlinedAt: !3849)
!3851 = !DILocation(line: 85, column: 9, scope: !2260, inlinedAt: !3849)
!3852 = !DILocation(line: 85, column: 9, scope: !2254, inlinedAt: !3849)
!3853 = !DILocation(line: 87, column: 57, scope: !2263, inlinedAt: !3849)
!3854 = !DILocation(line: 87, column: 30, scope: !2263, inlinedAt: !3849)
!3855 = !DILocation(line: 87, column: 9, scope: !2263, inlinedAt: !3849)
!3856 = !DILocation(line: 87, column: 2, scope: !2263, inlinedAt: !3849)
!3857 = !DILocation(line: 0, scope: !2260, inlinedAt: !3849)
!3858 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 48, column: 18, scope: !2270, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 0, scope: !3611)
!3861 = !DILocation(line: 48, column: 11, scope: !2270, inlinedAt: !3860)
!3862 = !DILocation(line: 49, column: 9, scope: !2276, inlinedAt: !3860)
!3863 = !DILocation(line: 49, column: 9, scope: !2270, inlinedAt: !3860)
!3864 = !DILocation(line: 51, column: 50, scope: !2279, inlinedAt: !3860)
!3865 = !DILocation(line: 51, column: 23, scope: !2279, inlinedAt: !3860)
!3866 = !DILocation(line: 51, column: 2, scope: !2279, inlinedAt: !3860)
!3867 = !DILocation(line: 52, column: 5, scope: !2279, inlinedAt: !3860)
!3868 = !DILocation(line: 575, column: 2, scope: !3612)
!3869 = !DILocation(line: 575, column: 2, scope: !3610)
!3870 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 575, column: 2, scope: !3610)
!3872 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3871)
!3873 = !DILocation(line: 575, column: 2, scope: !3619)
!3874 = !DILocation(line: 0, scope: !3619)
!3875 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 0, scope: !3619)
!3879 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3877)
!3880 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3877)
!3881 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3877)
!3882 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3877)
!3883 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3877)
!3884 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3877)
!3885 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3877)
!3886 = !DILocation(line: 575, column: 2, scope: !3620)
!3887 = !DILocation(line: 575, column: 2, scope: !3618)
!3888 = !DILocation(line: 575, column: 2, scope: !3625)
!3889 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 575, column: 2, scope: !3610)
!3892 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3891)
!3893 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3891)
!3894 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3891)
!3895 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3891)
!3896 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3891)
!3897 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3891)
!3898 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3891)
!3899 = !DILocation(line: 575, column: 2, scope: !3629)
!3900 = !DILocation(line: 575, column: 2, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !124, line: 575, column: 2)
!3902 = distinct !DILexicalBlock(scope: !3629, file: !124, line: 575, column: 2)
!3903 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 96, column: 18, scope: !2292, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 107, column: 12, scope: !2298, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 0, scope: !3901)
!3907 = !DILocation(line: 96, column: 11, scope: !2292, inlinedAt: !3905)
!3908 = !DILocation(line: 97, column: 9, scope: !2302, inlinedAt: !3905)
!3909 = !DILocation(line: 97, column: 9, scope: !2292, inlinedAt: !3905)
!3910 = !DILocation(line: 98, column: 57, scope: !2305, inlinedAt: !3905)
!3911 = !DILocation(line: 98, column: 30, scope: !2305, inlinedAt: !3905)
!3912 = !DILocation(line: 98, column: 9, scope: !2305, inlinedAt: !3905)
!3913 = !DILocation(line: 98, column: 2, scope: !2305, inlinedAt: !3905)
!3914 = !DILocation(line: 0, scope: !3901)
!3915 = !DILocation(line: 575, column: 2, scope: !3902)
!3916 = !DILocation(line: 575, column: 2, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3901, file: !124, line: 575, column: 2)
!3918 = !DILocation(line: 575, column: 2, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3901, file: !124, line: 575, column: 2)
!3920 = !DILocation(line: 43, column: 21, scope: !2246, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 59, column: 18, scope: !2314, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 575, column: 2, scope: !3629)
!3923 = !DILocation(line: 59, column: 11, scope: !2314, inlinedAt: !3922)
!3924 = !DILocation(line: 60, column: 9, scope: !2320, inlinedAt: !3922)
!3925 = !DILocation(line: 60, column: 9, scope: !2314, inlinedAt: !3922)
!3926 = !DILocation(line: 62, column: 50, scope: !2323, inlinedAt: !3922)
!3927 = !DILocation(line: 62, column: 23, scope: !2323, inlinedAt: !3922)
!3928 = !DILocation(line: 62, column: 2, scope: !2323, inlinedAt: !3922)
!3929 = !DILocation(line: 63, column: 5, scope: !2323, inlinedAt: !3922)
!3930 = !DILocation(line: 576, column: 2, scope: !3613)
!3931 = !DILocation(line: 579, column: 1, scope: !3587)
!3932 = !DILocation(line: 693, column: 35, scope: !584)
!3933 = !DILocation(line: 693, column: 46, scope: !584)
!3934 = !DILocation(line: 693, column: 60, scope: !584)
!3935 = !DILocation(line: 693, column: 84, scope: !584)
!3936 = !DILocation(line: 693, column: 104, scope: !584)
!3937 = !DILocation(line: 693, column: 134, scope: !584)
!3938 = !DILocation(line: 695, column: 3, scope: !584)
!3939 = !DILocation(line: 696, column: 16, scope: !584)
!3940 = !DILocation(line: 696, column: 3, scope: !584)
!3941 = !DILocation(line: 698, column: 3, scope: !584)
!3942 = distinct !DISubprogram(name: "wrapper_nk_fiber_yield", scope: !124, file: !124, line: 730, type: !507, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !1439)
!3943 = !DILocation(line: 732, column: 3, scope: !3942)
!3944 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 704, column: 7, scope: !3241, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 733, column: 10, scope: !3942)
!3949 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3945)
!3950 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3946)
!3951 = !DILocation(line: 98, column: 30, scope: !1467, inlinedAt: !3947)
!3952 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 704, column: 30, scope: !3241, inlinedAt: !3948)
!3954 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !3953)
!3955 = !DILocation(line: 704, column: 27, scope: !3241, inlinedAt: !3948)
!3956 = !DILocation(line: 704, column: 7, scope: !3242, inlinedAt: !3948)
!3957 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 708, column: 22, scope: !3242, inlinedAt: !3948)
!3962 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3958)
!3963 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3959)
!3964 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !3960)
!3965 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !3961)
!3966 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !3961)
!3967 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !3961)
!3969 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !3968)
!3970 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !3968)
!3971 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !3961)
!3972 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !3961)
!3973 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !3961)
!3974 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !3961)
!3976 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !3975)
!3977 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !3975)
!3978 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !3975)
!3980 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !3979)
!3981 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !3979)
!3982 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !3979)
!3983 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !3979)
!3984 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !3979)
!3985 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !3975)
!3987 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !3986)
!3988 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !3986)
!3989 = !DILocation(line: 708, column: 15, scope: !3242, inlinedAt: !3948)
!3990 = !DILocation(line: 718, column: 12, scope: !3289, inlinedAt: !3948)
!3991 = !DILocation(line: 718, column: 7, scope: !3242, inlinedAt: !3948)
!3992 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 719, column: 9, scope: !3295, inlinedAt: !3948)
!3996 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !3993)
!3997 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !3994)
!3998 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !3995)
!3999 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 719, column: 31, scope: !3295, inlinedAt: !3948)
!4003 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4000)
!4004 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4001)
!4005 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4002)
!4006 = !DILocation(line: 719, column: 28, scope: !3295, inlinedAt: !3948)
!4007 = !DILocation(line: 719, column: 9, scope: !3296, inlinedAt: !3948)
!4008 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 723, column: 16, scope: !3313, inlinedAt: !3948)
!4012 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4009)
!4013 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4010)
!4014 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4011)
!4015 = !DILocation(line: 725, column: 3, scope: !3296, inlinedAt: !3948)
!4016 = !DILocation(line: 0, scope: !3242, inlinedAt: !3948)
!4017 = !DILocation(line: 727, column: 10, scope: !3242, inlinedAt: !3948)
!4018 = !DILocation(line: 727, column: 3, scope: !3242, inlinedAt: !3948)
!4019 = !DILocation(line: 733, column: 3, scope: !3942)
!4020 = distinct !DISubprogram(name: "nk_fiber_yield_to", scope: !124, file: !124, line: 736, type: !1961, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4021)
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "f_to", arg: 1, scope: !4020, file: !124, line: 736, type: !240)
!4023 = !DILocalVariable(name: "new_to", scope: !4024, file: !124, line: 744, type: !240)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !124, line: 740, column: 38)
!4025 = distinct !DILexicalBlock(scope: !4020, file: !124, line: 740, column: 7)
!4026 = !DILocation(line: 736, column: 35, scope: !4020)
!4027 = !DILocation(line: 383, column: 42, scope: !2136, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 740, column: 7, scope: !4025)
!4029 = !DILocation(line: 386, column: 26, scope: !2143, inlinedAt: !4028)
!4030 = !DILocation(line: 386, column: 26, scope: !2141, inlinedAt: !4028)
!4031 = !DILocation(line: 386, column: 20, scope: !2136, inlinedAt: !4028)
!4032 = !DILocation(line: 387, column: 23, scope: !2136, inlinedAt: !4028)
!4033 = !DILocation(line: 387, column: 7, scope: !2136, inlinedAt: !4028)
!4034 = !DILocation(line: 392, column: 12, scope: !2148, inlinedAt: !4028)
!4035 = !DILocation(line: 392, column: 27, scope: !2153, inlinedAt: !4028)
!4036 = !DILocation(line: 392, column: 3, scope: !2148, inlinedAt: !4028)
!4037 = !DILocation(line: 394, column: 14, scope: !2152, inlinedAt: !4028)
!4038 = !DILocation(line: 394, column: 31, scope: !2152, inlinedAt: !4028)
!4039 = !DILocation(line: 394, column: 40, scope: !2152, inlinedAt: !4028)
!4040 = !DILocation(line: 390, column: 21, scope: !2136, inlinedAt: !4028)
!4041 = !DILocation(line: 395, column: 5, scope: !2150, inlinedAt: !4028)
!4042 = !DILocation(line: 391, column: 15, scope: !2136, inlinedAt: !4028)
!4043 = !DILocation(line: 0, scope: !2151, inlinedAt: !4028)
!4044 = !DILocation(line: 395, column: 5, scope: !2151, inlinedAt: !4028)
!4045 = !DILocation(line: 395, column: 5, scope: !2156, inlinedAt: !4028)
!4046 = !DILocation(line: 400, column: 16, scope: !2177, inlinedAt: !4028)
!4047 = !DILocation(line: 400, column: 11, scope: !2178, inlinedAt: !4028)
!4048 = !DILocation(line: 392, column: 43, scope: !2153, inlinedAt: !4028)
!4049 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 744, column: 26, scope: !4024)
!4054 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4050)
!4055 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4051)
!4056 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !4052)
!4057 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !4053)
!4058 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !4053)
!4059 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !4053)
!4061 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !4060)
!4062 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !4060)
!4063 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !4053)
!4064 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !4053)
!4065 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !4053)
!4066 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !4053)
!4068 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !4067)
!4069 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !4067)
!4070 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !4067)
!4072 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !4071)
!4073 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !4071)
!4074 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !4071)
!4075 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !4071)
!4076 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !4071)
!4077 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !4067)
!4079 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4078)
!4080 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4078)
!4081 = !DILocation(line: 744, column: 17, scope: !4024)
!4082 = !DILocation(line: 746, column: 16, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4024, file: !124, line: 746, column: 9)
!4084 = !DILocation(line: 746, column: 9, scope: !4024)
!4085 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 747, column: 11, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !124, line: 747, column: 11)
!4090 = distinct !DILexicalBlock(scope: !4083, file: !124, line: 746, column: 25)
!4091 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4086)
!4092 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4087)
!4093 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !4088)
!4094 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 747, column: 33, scope: !4089)
!4098 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4095)
!4099 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4096)
!4100 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4097)
!4101 = !DILocation(line: 747, column: 30, scope: !4089)
!4102 = !DILocation(line: 747, column: 11, scope: !4090)
!4103 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 751, column: 20, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4089, file: !124, line: 750, column: 14)
!4108 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4104)
!4109 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4105)
!4110 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4106)
!4111 = !DILocation(line: 753, column: 5, scope: !4090)
!4112 = !DILocation(line: 0, scope: !4024)
!4113 = !DILocation(line: 756, column: 5, scope: !4024)
!4114 = !DILocation(line: 758, column: 5, scope: !4024)
!4115 = !DILocation(line: 401, column: 33, scope: !2186, inlinedAt: !4028)
!4116 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 401, column: 9, scope: !2186, inlinedAt: !4028)
!4118 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !4117)
!4119 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !4117)
!4120 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !4117)
!4122 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !4121)
!4123 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !4121)
!4124 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !4121)
!4125 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !4121)
!4126 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !4121)
!4127 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !4117)
!4129 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4128)
!4130 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4128)
!4131 = !DILocation(line: 762, column: 3, scope: !4020)
!4132 = !DILocation(line: 765, column: 3, scope: !4020)
!4133 = !DILocation(line: 0, scope: !4020)
!4134 = !DILocation(line: 766, column: 1, scope: !4020)
!4135 = distinct !DISubprogram(name: "nk_fiber_conditional_yield", scope: !124, file: !124, line: 768, type: !4136, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4141)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!48, !4138, !31}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!29, !31}
!4141 = !{!4142, !4143}
!4142 = !DILocalVariable(name: "cond_function", arg: 1, scope: !4135, file: !124, line: 768, type: !4138)
!4143 = !DILocalVariable(name: "state", arg: 2, scope: !4135, file: !124, line: 768, type: !31)
!4144 = !DILocation(line: 768, column: 42, scope: !4135)
!4145 = !DILocation(line: 768, column: 77, scope: !4135)
!4146 = !DILocation(line: 770, column: 7, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4135, file: !124, line: 770, column: 7)
!4148 = !DILocation(line: 770, column: 7, scope: !4135)
!4149 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 704, column: 7, scope: !3241, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 771, column: 12, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4147, file: !124, line: 770, column: 28)
!4155 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4150)
!4156 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4151)
!4157 = !DILocation(line: 98, column: 30, scope: !1467, inlinedAt: !4152)
!4158 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 704, column: 30, scope: !3241, inlinedAt: !4153)
!4160 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4159)
!4161 = !DILocation(line: 704, column: 27, scope: !3241, inlinedAt: !4153)
!4162 = !DILocation(line: 704, column: 7, scope: !3242, inlinedAt: !4153)
!4163 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 708, column: 22, scope: !3242, inlinedAt: !4153)
!4168 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4164)
!4169 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4165)
!4170 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !4166)
!4171 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !4167)
!4172 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !4167)
!4173 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !4167)
!4175 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !4174)
!4176 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !4174)
!4177 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !4167)
!4178 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !4167)
!4179 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !4167)
!4180 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !4167)
!4182 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !4181)
!4183 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !4181)
!4184 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !4181)
!4186 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !4185)
!4187 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !4185)
!4188 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !4185)
!4189 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !4185)
!4190 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !4185)
!4191 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !4181)
!4193 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4192)
!4194 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4192)
!4195 = !DILocation(line: 708, column: 15, scope: !3242, inlinedAt: !4153)
!4196 = !DILocation(line: 718, column: 12, scope: !3289, inlinedAt: !4153)
!4197 = !DILocation(line: 718, column: 7, scope: !3242, inlinedAt: !4153)
!4198 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 719, column: 9, scope: !3295, inlinedAt: !4153)
!4202 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4199)
!4203 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4200)
!4204 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !4201)
!4205 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 719, column: 31, scope: !3295, inlinedAt: !4153)
!4209 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4206)
!4210 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4207)
!4211 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4208)
!4212 = !DILocation(line: 719, column: 28, scope: !3295, inlinedAt: !4153)
!4213 = !DILocation(line: 719, column: 9, scope: !3296, inlinedAt: !4153)
!4214 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 723, column: 16, scope: !3313, inlinedAt: !4153)
!4218 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4215)
!4219 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4216)
!4220 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4217)
!4221 = !DILocation(line: 725, column: 3, scope: !3296, inlinedAt: !4153)
!4222 = !DILocation(line: 0, scope: !3242, inlinedAt: !4153)
!4223 = !DILocation(line: 727, column: 10, scope: !3242, inlinedAt: !4153)
!4224 = !DILocation(line: 727, column: 3, scope: !3242, inlinedAt: !4153)
!4225 = !DILocation(line: 771, column: 5, scope: !4154)
!4226 = !DILocation(line: 0, scope: !4135)
!4227 = !DILocation(line: 774, column: 1, scope: !4135)
!4228 = distinct !DISubprogram(name: "nk_fiber_conditional_yield_to", scope: !124, file: !124, line: 776, type: !4229, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!48, !240, !4138, !31}
!4231 = !{!4232, !4233, !4234}
!4232 = !DILocalVariable(name: "fib", arg: 1, scope: !4228, file: !124, line: 776, type: !240)
!4233 = !DILocalVariable(name: "cond_function", arg: 2, scope: !4228, file: !124, line: 776, type: !4138)
!4234 = !DILocalVariable(name: "state", arg: 3, scope: !4228, file: !124, line: 776, type: !31)
!4235 = !DILocation(line: 776, column: 47, scope: !4228)
!4236 = !DILocation(line: 776, column: 62, scope: !4228)
!4237 = !DILocation(line: 776, column: 97, scope: !4228)
!4238 = !DILocation(line: 778, column: 7, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4228, file: !124, line: 778, column: 7)
!4240 = !DILocation(line: 778, column: 7, scope: !4228)
!4241 = !DILocation(line: 779, column: 12, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !124, line: 778, column: 28)
!4243 = !DILocation(line: 779, column: 5, scope: !4242)
!4244 = !DILocation(line: 0, scope: !4228)
!4245 = !DILocation(line: 782, column: 1, scope: !4228)
!4246 = distinct !DISubprogram(name: "__nk_fiber_fork", scope: !124, file: !124, line: 784, type: !1450, scopeLine: 785, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4248 = !DILocalVariable(name: "curr", scope: !4246, file: !124, line: 787, type: !240)
!4249 = !DILocalVariable(name: "size", scope: !4246, file: !124, line: 790, type: !25)
!4250 = !DILocalVariable(name: "alloc_size", scope: !4246, file: !124, line: 790, type: !25)
!4251 = !DILocalVariable(name: "rbp1_offset_from_ret0_addr", scope: !4246, file: !124, line: 791, type: !25)
!4252 = !DILocalVariable(name: "rbp_stash_offset_from_ret0_addr", scope: !4246, file: !124, line: 792, type: !25)
!4253 = !DILocalVariable(name: "rbp_offset_from_ret0_addr", scope: !4246, file: !124, line: 793, type: !25)
!4254 = !DILocalVariable(name: "child_stack", scope: !4246, file: !124, line: 794, type: !31)
!4255 = !DILocalVariable(name: "rsp", scope: !4246, file: !124, line: 795, type: !25)
!4256 = !DILocalVariable(name: "rbp0", scope: !4246, file: !124, line: 800, type: !31)
!4257 = !DILocalVariable(name: "rbp1", scope: !4246, file: !124, line: 801, type: !31)
!4258 = !DILocalVariable(name: "rbp_tos", scope: !4246, file: !124, line: 802, type: !31)
!4259 = !DILocalVariable(name: "ret0_addr", scope: !4246, file: !124, line: 803, type: !31)
!4260 = !DILocalVariable(name: "rbp_stash_addr", scope: !4246, file: !124, line: 815, type: !31)
!4261 = !DILocalVariable(name: "new", scope: !4246, file: !124, line: 831, type: !240)
!4262 = !DILocalVariable(name: "rbp_stash_ptr", scope: !4246, file: !124, line: 847, type: !75)
!4263 = !DILocalVariable(name: "rbp2_ptr", scope: !4246, file: !124, line: 851, type: !75)
!4264 = !DILocalVariable(name: "ret2_ptr", scope: !4246, file: !124, line: 852, type: !75)
!4265 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 787, column: 22, scope: !4246)
!4269 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4266)
!4270 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4267)
!4271 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !4268)
!4272 = !DILocation(line: 787, column: 15, scope: !4246)
!4273 = !DILocation(line: 798, column: 3, scope: !4246)
!4274 = !{i32 23631}
!4275 = !DILocation(line: 795, column: 16, scope: !4246)
!4276 = !DILocation(line: 800, column: 21, scope: !4246)
!4277 = !DILocation(line: 800, column: 9, scope: !4246)
!4278 = !DILocation(line: 801, column: 21, scope: !4246)
!4279 = !DILocation(line: 801, column: 9, scope: !4246)
!4280 = !DILocation(line: 802, column: 21, scope: !4246)
!4281 = !DILocation(line: 802, column: 9, scope: !4246)
!4282 = !DILocation(line: 803, column: 26, scope: !4246)
!4283 = !DILocation(line: 803, column: 9, scope: !4246)
!4284 = !DILocation(line: 805, column: 44, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4246, file: !124, line: 805, column: 7)
!4286 = !DILocation(line: 805, column: 25, scope: !4285)
!4287 = !DILocation(line: 0, scope: !4246)
!4288 = !DILocation(line: 806, column: 46, scope: !4285)
!4289 = !DILocation(line: 806, column: 20, scope: !4285)
!4290 = !DILocation(line: 805, column: 50, scope: !4285)
!4291 = !DILocation(line: 815, column: 36, scope: !4246)
!4292 = !DILocation(line: 815, column: 9, scope: !4246)
!4293 = !DILocation(line: 821, column: 19, scope: !4246)
!4294 = !DILocation(line: 821, column: 24, scope: !4246)
!4295 = !DILocation(line: 790, column: 12, scope: !4246)
!4296 = !DILocation(line: 822, column: 37, scope: !4246)
!4297 = !DILocation(line: 791, column: 16, scope: !4246)
!4298 = !DILocation(line: 792, column: 16, scope: !4246)
!4299 = !DILocation(line: 825, column: 32, scope: !4246)
!4300 = !DILocation(line: 825, column: 57, scope: !4246)
!4301 = !DILocation(line: 793, column: 16, scope: !4246)
!4302 = !DILocation(line: 790, column: 18, scope: !4246)
!4303 = !DILocation(line: 831, column: 3, scope: !4246)
!4304 = !DILocation(line: 831, column: 15, scope: !4246)
!4305 = !DILocation(line: 832, column: 3, scope: !4246)
!4306 = !DILocation(line: 835, column: 15, scope: !4246)
!4307 = !DILocation(line: 113, column: 31, scope: !658, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 835, column: 3, scope: !4246)
!4309 = !DILocation(line: 113, column: 43, scope: !658, inlinedAt: !4308)
!4310 = !DILocation(line: 115, column: 8, scope: !658, inlinedAt: !4308)
!4311 = !DILocation(line: 115, column: 12, scope: !658, inlinedAt: !4308)
!4312 = !DILocation(line: 116, column: 6, scope: !658, inlinedAt: !4308)
!4313 = !DILocation(line: 116, column: 26, scope: !658, inlinedAt: !4308)
!4314 = !DILocation(line: 837, column: 17, scope: !4246)
!4315 = !DILocation(line: 837, column: 22, scope: !4246)
!4316 = !DILocation(line: 794, column: 17, scope: !4246)
!4317 = !DILocation(line: 839, column: 22, scope: !4246)
!4318 = !DILocation(line: 839, column: 35, scope: !4246)
!4319 = !DILocation(line: 839, column: 3, scope: !4246)
!4320 = !DILocation(line: 840, column: 57, scope: !4246)
!4321 = !DILocation(line: 840, column: 14, scope: !4246)
!4322 = !DILocation(line: 840, column: 3, scope: !4246)
!4323 = !DILocation(line: 840, column: 8, scope: !4246)
!4324 = !DILocation(line: 840, column: 12, scope: !4246)
!4325 = !DILocation(line: 847, column: 35, scope: !4246)
!4326 = !DILocation(line: 847, column: 40, scope: !4246)
!4327 = !DILocation(line: 847, column: 78, scope: !4246)
!4328 = !DILocation(line: 847, column: 26, scope: !4246)
!4329 = !DILocation(line: 847, column: 10, scope: !4246)
!4330 = !DILocation(line: 848, column: 37, scope: !4246)
!4331 = !DILocation(line: 848, column: 20, scope: !4246)
!4332 = !DILocation(line: 848, column: 18, scope: !4246)
!4333 = !DILocation(line: 851, column: 30, scope: !4246)
!4334 = !DILocation(line: 851, column: 35, scope: !4246)
!4335 = !DILocation(line: 851, column: 39, scope: !4246)
!4336 = !DILocation(line: 851, column: 68, scope: !4246)
!4337 = !DILocation(line: 851, column: 21, scope: !4246)
!4338 = !DILocation(line: 851, column: 10, scope: !4246)
!4339 = !DILocation(line: 852, column: 29, scope: !4246)
!4340 = !DILocation(line: 852, column: 10, scope: !4246)
!4341 = !DILocation(line: 861, column: 13, scope: !4246)
!4342 = !DILocation(line: 868, column: 16, scope: !4246)
!4343 = !DILocation(line: 868, column: 21, scope: !4246)
!4344 = !DILocation(line: 868, column: 24, scope: !4246)
!4345 = !DILocation(line: 868, column: 4, scope: !4246)
!4346 = !DILocation(line: 868, column: 41, scope: !4246)
!4347 = !DILocation(line: 871, column: 16, scope: !4246)
!4348 = !DILocation(line: 663, column: 30, scope: !1600, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 871, column: 3, scope: !4246)
!4350 = !DILocation(line: 663, column: 41, scope: !1600, inlinedAt: !4349)
!4351 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 666, column: 30, scope: !1600, inlinedAt: !4349)
!4355 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4352)
!4356 = !DILocation(line: 666, column: 16, scope: !1600, inlinedAt: !4349)
!4357 = !DILocation(line: 0, scope: !1600, inlinedAt: !4349)
!4358 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 674, column: 41, scope: !1600, inlinedAt: !4349)
!4362 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4359)
!4363 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4360)
!4364 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !4361)
!4365 = !DILocation(line: 674, column: 21, scope: !1600, inlinedAt: !4349)
!4366 = !DILocation(line: 678, column: 6, scope: !1600, inlinedAt: !4349)
!4367 = !DILocation(line: 678, column: 15, scope: !1600, inlinedAt: !4349)
!4368 = !DILocation(line: 679, column: 22, scope: !1600, inlinedAt: !4349)
!4369 = !DILocation(line: 116, column: 52, scope: !1671, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 679, column: 3, scope: !1600, inlinedAt: !4349)
!4371 = !DILocation(line: 116, column: 76, scope: !1671, inlinedAt: !4370)
!4372 = !DILocation(line: 118, column: 25, scope: !1671, inlinedAt: !4370)
!4373 = !DILocation(line: 85, column: 49, scope: !1679, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 118, column: 2, scope: !1671, inlinedAt: !4370)
!4375 = !DILocation(line: 86, column: 28, scope: !1679, inlinedAt: !4374)
!4376 = !DILocation(line: 87, column: 28, scope: !1679, inlinedAt: !4374)
!4377 = !DILocation(line: 89, column: 13, scope: !1679, inlinedAt: !4374)
!4378 = !DILocation(line: 90, column: 8, scope: !1679, inlinedAt: !4374)
!4379 = !DILocation(line: 90, column: 13, scope: !1679, inlinedAt: !4374)
!4380 = !DILocation(line: 91, column: 8, scope: !1679, inlinedAt: !4374)
!4381 = !DILocation(line: 91, column: 13, scope: !1679, inlinedAt: !4374)
!4382 = !DILocation(line: 92, column: 8, scope: !1679, inlinedAt: !4374)
!4383 = !DILocation(line: 92, column: 13, scope: !1679, inlinedAt: !4374)
!4384 = !DILocation(line: 683, column: 20, scope: !1697, inlinedAt: !4349)
!4385 = !DILocation(line: 683, column: 7, scope: !1697, inlinedAt: !4349)
!4386 = !DILocation(line: 683, column: 7, scope: !1600, inlinedAt: !4349)
!4387 = !DILocation(line: 687, column: 5, scope: !1701, inlinedAt: !4349)
!4388 = !DILocation(line: 688, column: 3, scope: !1701, inlinedAt: !4349)
!4389 = !DILocation(line: 873, column: 10, scope: !4246)
!4390 = !DILocation(line: 874, column: 1, scope: !4246)
!4391 = !DILocation(line: 873, column: 3, scope: !4246)
!4392 = distinct !DISubprogram(name: "nk_fiber_join", scope: !124, file: !124, line: 877, type: !1961, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !123, retainedNodes: !4393)
!4393 = !{!4394, !4395, !4396}
!4394 = !DILocalVariable(name: "wait_on", arg: 1, scope: !4392, file: !124, line: 877, type: !240)
!4395 = !DILocalVariable(name: "curr_fiber", scope: !4392, file: !124, line: 887, type: !240)
!4396 = !DILocalVariable(name: "wait_q", scope: !4392, file: !124, line: 896, type: !150)
!4397 = !DILocation(line: 877, column: 31, scope: !4392)
!4398 = !DILocation(line: 883, column: 8, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4392, file: !124, line: 883, column: 7)
!4400 = !DILocation(line: 883, column: 7, scope: !4392)
!4401 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 887, column: 28, scope: !4392)
!4405 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4402)
!4406 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4403)
!4407 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !4404)
!4408 = !DILocation(line: 887, column: 15, scope: !4392)
!4409 = !DILocation(line: 896, column: 41, scope: !4392)
!4410 = !DILocation(line: 896, column: 21, scope: !4392)
!4411 = !DILocation(line: 897, column: 31, scope: !4392)
!4412 = !DILocation(line: 116, column: 52, scope: !1671, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 897, column: 3, scope: !4392)
!4414 = !DILocation(line: 116, column: 76, scope: !1671, inlinedAt: !4413)
!4415 = !DILocation(line: 118, column: 25, scope: !1671, inlinedAt: !4413)
!4416 = !DILocation(line: 85, column: 49, scope: !1679, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 118, column: 2, scope: !1671, inlinedAt: !4413)
!4418 = !DILocation(line: 86, column: 28, scope: !1679, inlinedAt: !4417)
!4419 = !DILocation(line: 87, column: 28, scope: !1679, inlinedAt: !4417)
!4420 = !DILocation(line: 89, column: 13, scope: !1679, inlinedAt: !4417)
!4421 = !DILocation(line: 90, column: 8, scope: !1679, inlinedAt: !4417)
!4422 = !DILocation(line: 90, column: 13, scope: !1679, inlinedAt: !4417)
!4423 = !DILocation(line: 91, column: 8, scope: !1679, inlinedAt: !4417)
!4424 = !DILocation(line: 91, column: 13, scope: !1679, inlinedAt: !4417)
!4425 = !DILocation(line: 92, column: 8, scope: !1679, inlinedAt: !4417)
!4426 = !DILocation(line: 92, column: 13, scope: !1679, inlinedAt: !4417)
!4427 = !DILocation(line: 898, column: 12, scope: !4392)
!4428 = !DILocation(line: 898, column: 20, scope: !4392)
!4429 = !DILocation(line: 899, column: 15, scope: !4392)
!4430 = !DILocation(line: 899, column: 24, scope: !4392)
!4431 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 98, column: 10, scope: !1467, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 704, column: 7, scope: !3241, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 903, column: 10, scope: !4392)
!4436 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4432)
!4437 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4433)
!4438 = !DILocation(line: 98, column: 30, scope: !1467, inlinedAt: !4434)
!4439 = !DILocation(line: 258, column: 26, scope: !765, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 704, column: 30, scope: !3241, inlinedAt: !4435)
!4441 = !DILocation(line: 258, column: 26, scope: !766, inlinedAt: !4440)
!4442 = !DILocation(line: 704, column: 27, scope: !3241, inlinedAt: !4435)
!4443 = !DILocation(line: 704, column: 7, scope: !3242, inlinedAt: !4435)
!4444 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 105, column: 12, scope: !1475, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 122, column: 41, scope: !1492, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 708, column: 22, scope: !3242, inlinedAt: !4435)
!4449 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4445)
!4450 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4446)
!4451 = !DILocation(line: 105, column: 32, scope: !1475, inlinedAt: !4447)
!4452 = !DILocation(line: 122, column: 21, scope: !1492, inlinedAt: !4448)
!4453 = !DILocation(line: 125, column: 15, scope: !1492, inlinedAt: !4448)
!4454 = !DILocation(line: 184, column: 54, scope: !1516, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 126, column: 9, scope: !1499, inlinedAt: !4448)
!4456 = !DILocation(line: 186, column: 15, scope: !1516, inlinedAt: !4455)
!4457 = !DILocation(line: 186, column: 20, scope: !1516, inlinedAt: !4455)
!4458 = !DILocation(line: 126, column: 7, scope: !1492, inlinedAt: !4448)
!4459 = !DILocation(line: 128, column: 25, scope: !1497, inlinedAt: !4448)
!4460 = !DILocation(line: 131, column: 40, scope: !1498, inlinedAt: !4448)
!4461 = !DILocation(line: 151, column: 52, scope: !1528, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 131, column: 5, scope: !1498, inlinedAt: !4448)
!4463 = !DILocation(line: 153, column: 20, scope: !1528, inlinedAt: !4462)
!4464 = !DILocation(line: 153, column: 33, scope: !1528, inlinedAt: !4462)
!4465 = !DILocation(line: 128, column: 50, scope: !1535, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 153, column: 2, scope: !1528, inlinedAt: !4462)
!4467 = !DILocation(line: 128, column: 75, scope: !1535, inlinedAt: !4466)
!4468 = !DILocation(line: 130, column: 8, scope: !1535, inlinedAt: !4466)
!4469 = !DILocation(line: 130, column: 13, scope: !1535, inlinedAt: !4466)
!4470 = !DILocation(line: 131, column: 8, scope: !1535, inlinedAt: !4466)
!4471 = !DILocation(line: 131, column: 13, scope: !1535, inlinedAt: !4466)
!4472 = !DILocation(line: 73, column: 53, scope: !781, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 154, column: 2, scope: !1528, inlinedAt: !4462)
!4474 = !DILocation(line: 75, column: 13, scope: !781, inlinedAt: !4473)
!4475 = !DILocation(line: 76, column: 13, scope: !781, inlinedAt: !4473)
!4476 = !DILocation(line: 708, column: 15, scope: !3242, inlinedAt: !4435)
!4477 = !DILocation(line: 718, column: 12, scope: !3289, inlinedAt: !4435)
!4478 = !DILocation(line: 718, column: 7, scope: !3242, inlinedAt: !4435)
!4479 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 85, column: 10, scope: !1449, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 719, column: 9, scope: !3295, inlinedAt: !4435)
!4483 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4480)
!4484 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4481)
!4485 = !DILocation(line: 85, column: 30, scope: !1449, inlinedAt: !4482)
!4486 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 719, column: 31, scope: !3295, inlinedAt: !4435)
!4490 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4487)
!4491 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4488)
!4492 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4489)
!4493 = !DILocation(line: 719, column: 28, scope: !3295, inlinedAt: !4435)
!4494 = !DILocation(line: 719, column: 9, scope: !3296, inlinedAt: !4435)
!4495 = !DILocation(line: 129, column: 25, scope: !1441, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 78, column: 10, scope: !1434, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 92, column: 10, scope: !1459, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 723, column: 16, scope: !3313, inlinedAt: !4435)
!4499 = !DILocation(line: 129, column: 12, scope: !1441, inlinedAt: !4496)
!4500 = !DILocation(line: 78, column: 21, scope: !1434, inlinedAt: !4497)
!4501 = !DILocation(line: 92, column: 30, scope: !1459, inlinedAt: !4498)
!4502 = !DILocation(line: 725, column: 3, scope: !3296, inlinedAt: !4435)
!4503 = !DILocation(line: 0, scope: !3242, inlinedAt: !4435)
!4504 = !DILocation(line: 727, column: 10, scope: !3242, inlinedAt: !4435)
!4505 = !DILocation(line: 727, column: 3, scope: !3242, inlinedAt: !4435)
!4506 = !DILocation(line: 0, scope: !4392)
!4507 = !DILocation(line: 904, column: 1, scope: !4392)
